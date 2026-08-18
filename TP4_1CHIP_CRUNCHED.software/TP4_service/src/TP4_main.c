#include <stdio.h>
#include <xil_io.h>
#include <xil_types.h>
#include "xparameters.h"
#include "netif/xadapter.h"
//#include "platform.h"
//#include "platform_config.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "sleep.h"
#include "lwip/priv/tcp_priv.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "lwip/udp.h"
#include "xaxiethernet.h"
#include "xil_cache.h"
#include "netif/xaxiemacif.h"
#include <xemac_ieee_reg.h>
#include "xiic_l.h"
#include "xintc.h"
#include "xtmrctr.h"
#include "TP4_main.h"
#include "xaxiethernet_hw.h"

//Comment this out when building for flash
//#define SKIP_REBOOT
//////////////////// GLOBAL VARIABLES ///////////////////////////////
static u8 send_buf[UDP_SEND_BUFSIZE];
static u8 hk_send_buf[64];

//These timers are used for TCP
volatile int TcpFastTmrFlag;
volatile u64_t tickcntr = 0;

//Increment when packet received
u32 recvd_pkt_number = 0;
//Increment when timer times out, send an HK packet when it hits desired value
u32 elapsed_time = 0;
//HK_rate = 0 turns it off altogether, else rate is in 1/4 sec increment
u8 HK_rate = 4;

int last_cmd_pkt_ser_no = -1;

//** Generic data structure used for all lwIP network interfaces, contains IP addr, mask, gateway, ...
static struct netif my_netif;
//A pointer to (?) that structure
struct netif *my_netif_ptr;

//A packet buffer for whatever data we send out
struct pbuf *cmd_pbuf;
struct pbuf *ok_pbuf;
char * payload_ptr;

//The udp protocol control block for sending and receiving commands/housekeeping
struct udp_pcb *cmd_pcb;
//The udp protocol control block for sending housekeeping data
struct udp_pcb *hk_pcb;

//IPv4 addresses
struct ip4_addr ipaddr, netmask, gw;
struct ip4_addr host_ipaddr;

u8 udp_received = 0;
u16 max_xmit_interval_timer = 0;
u16 hk_interval_timer = 0;

u8 serno_from_host = 0;
u16 loopcount = 0;

u16 last_write_resp_serno = 0;
u32 Status;
volatile int delay;

u32 commands_received = 0;
//A pointer to  a character in the RecvBuffer
//s8 RxBufPtr = 0;


u8 science_enable = 0;

u8 Temp1[2];
u8 Temp2[2];
u8 Temp3[2];
u8 Temp4[2];
u8 i2c_mux[2];
u8 i2c_mux_rd[2];
u8 iic_temp_cmd[1] = {0x00};
u8 iic_conf_cmd[1] = {0x01};
u8 iic_tlow_cmd[2] = {0x02};
u8 iic_thi_cmd[3] = {0x03};

u16 read_resp_errors = 0;
u16 write_resp_errors = 0;
u32 test;
u32 last_rx_frames = 0;
u32 first_fcs_read = 0;
//These u32s store the values written to the GPIO regs so they can be set bit-by-bit
u32 GPIO_CMAC_reg = 0;
u32 GPIO1_reg = 0;
u32 GPIO_CENT_port1_reg = 0;
u32 GPIO_CENT_port2_reg = 0;

XTmrCtr TimerCounter; /* The instance of the timer counter */
XIntc  InterruptController;

//XAxiEthernet *xaxiemacp;

//u32 loop_count = 0;
int main ()
{
	xil_printf("\n\r****************TP4 service loop********* ***********\n\r");
	/* Read LED GPIO MSB before anything writes to it.
	 * After hardware reset (power-on, CPU_RESET): reads 0x00.
	 * After software reset (jump to 0): retains the value we wrote last time.
	 * Used to detect cold boot vs warm software reset. */
	u32 boot_flag = Xil_In32(XPAR_AXI_GPIO_0_BASEADDR) & 0x80;


	XTmrCtr *TmrPtr = &TimerCounter;
	// I don't see where the timer ever gets set up.  Trying to fix that here for Vitis 2025.2
	//The timer instance pointer
	Status = XTmrCtr_Initialize(TmrPtr, XPAR_AXI_TIMER_0_BASEADDR);
	//Set the Timer registers.
	//Reg 1, TLR, the value to load.  For .25 sec interrupt, 100MHz clock, want 25,000,000 
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR + 4, 0x17d7840);
	//Reg 0, status, bit 0 = 0 for generate mode
	//				 bit 1 = 1 for count down
	//				 bit 2 = 0 disable gen out
	//				 bit 3 = 0 disable capture
	//				 bit 4 = 1 to reload value after carry out
	//				 bit 5 = 1 to load the TLR value
	//				 bit 6 = 1 to enable the interrupt output
	//				 bit 7 = 1 to enable the timer
	//				 bit 8 = 0; a 1 clears the interrupt, write a 1 in the ISR
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR, 0xf2);
	//Relase the Load TLR bit
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR, 0xd2);
	
	u32 temp[8];
	for ( int i = 0; i < 8; i++)
	{
		temp[i] = Xil_In32(XPAR_AXI_TIMER_0_BASEADDR + (i<<2));
	}
	//The Interrupt controller instance pointer
	//static XIntc *IntPtr; 
	XIntc *IntPtr = &InterruptController;
	Status = XIntc_Initialize(IntPtr, XPAR_XINTC_0_BASEADDR);
	Status = XIntc_Connect(IntPtr, XPAR_FABRIC_AXI_TIMER_0_INTR,
		  (XInterruptHandler)timer_callback, TmrPtr);
	Status = XIntc_Start(IntPtr,XIN_REAL_MODE);

	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] = {
		0x00, 0x0a, 0x35, 0x00, 0x01, 0x03 };
	my_netif_ptr = &my_netif;
	//init_platform();
	

	lwip_init();

	  /* Set I2C MUX to point to FMC connector */
	SetIICMux(1);

	/* initialize IP addresses to be used */
	IP4_ADDR(&ipaddr,  192, 168,   1, 10);
	IP4_ADDR(&netmask, 255, 255, 255,  0);
	IP4_ADDR(&gw,      192, 168,   1,  1);
	IP4_ADDR(&host_ipaddr,      192, 168,   1,  100);
	xil_printf("mac_address = %x %x %x %x %x %x\r\n",mac_ethernet_address[0],mac_ethernet_address[1],mac_ethernet_address[2],
			                                         mac_ethernet_address[3],mac_ethernet_address[4],mac_ethernet_address[5]);
	if (!xemac_add(my_netif_ptr, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						XPAR_AXI_ETHERNET_0_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
		
	}
	u8 count;
	#ifndef SKIP_REBOOT
	if (boot_flag == 0) {
		/* Cold boot: xemac_add just switched the DP83867IS from RGMII strap
		 * mode to SGMII, starting the 625 MHz LVDS clock. The SGMII ISERDES
		 * needs time to self-align to this clock before xemac_add is called
		 * again (which resets the AXI Ethernet). Without this delay the second
		 * xemac_add runs ~1s after the first — not enough. 15s mimics the
		 * 10-15s SREC bootloader gap that makes MB_DDR_test work. */
		Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR, 0x80);
		xil_printf("Cold boot: waiting 30s for SGMII ISERDES to align...\r\n");
		//Flash some LEDs so we know something is going on
		for (count = 0; count < 60; count++){
			msleep(500);
			Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR, 0x80 | count);
		}
		xil_printf("Resetting...\r\n");
		software_reset();
	}
	#endif
	xil_printf("Waiting for copper link...\r\n");
		for (count = 0; count < 40; count++){
			msleep(100);
			Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR, 0x80 | count);
		}
	xil_printf("Copper link wait done.\r\n");
	PHY_WriteExt(0x0170, 0x80F);
	PHY_WriteExt(0x1D5, 0xf508);
	PHY_DumpRegs();
	netif_set_default(my_netif_ptr);

	/* specify that the network if is up */
	netif_set_up(my_netif_ptr);

	print_ip_settings(&ipaddr, &netmask, &gw);

	err_t err;

	/* create a udp socket for the command data */
	cmd_pcb = udp_new();
	if (!cmd_pcb) {
		xil_printf("Error creating PCB. Out of Memory\r\n");
		return -1;
	}
	/* bind to local address- we'll receive commands on this one */
	if ((err = udp_bind(cmd_pcb, &ipaddr, UDP_CMD_PORT)) != ERR_OK) {
	xil_printf("error on udp_bind: %x\n\r", err);
	}
	/* connect to remote address-  */
	if ((err = udp_connect(cmd_pcb, &host_ipaddr, UDP_CMD_PORT)) != ERR_OK) {
		xil_printf("error on udp_connect: %x\n\r", err);
	}


	/* create a udp socket for the housekeeping data */
	hk_pcb = udp_new();
	/* connect to remote address-  */
	if ((err = udp_connect(hk_pcb, &host_ipaddr, UDP_HK_PORT)) != ERR_OK) {
		xil_printf("error on udp_connect: %x\n\r", err);
	}

	//register the receive data callback
	udp_recv(cmd_pcb, (udp_recv_fn)recv_callback, NULL);


	volatile int delay;
   // De-assert both resets
   //    bit 0 is the (-true) reset to slow control out and in modules
   //    bit 1 is the (-true) reset to the ASIC
	Xil_Out32(RESET_SYNC_ADDR, 3);

	//Write_GPIO(1, ...) is a write to the general purpose GPIO port
	//Reset the SimpleRx State Machine
	Write_GPIO(1, RX_RESET, 1);
	for (delay = 0; delay < 1000; delay++);
	Write_GPIO(1, RX_RESET, 0);
	//Hold the SimpleRx Tx section reset
	//Write_GPIO(1, RESET_BLOCKSYNC, 1);
	//Write_GPIO(1, RESET_TX_DP, 1);

	//Assert RX_PAUSE
	Write_GPIO(1, RX_PAUSE, 1);

	//Set some defaults
	//Turn off Fake gen
	Write_GPIO(1, FAKE_RATE_MASK, 0x0);
	//Turn ON decode of pixel addresses
	Write_GPIO(1, DECODE_ON_MASK, 0x1);
	//Turn ON TOTTOA decode
	Write_GPIO(1, DECODE_TOTTOA_MASK, 0x1);
	//Turn ON Gray to binary decode
	Write_GPIO(1, GRAY_DECODE_MASK, 0x1);
	//Set digpix pulsewidth to 16 (100ns)
	Write_GPIO(1, DIGPIX_PW_MASK, 0x10);
	//Turn on the rollover core
	Write_GPIO(1, ROLLOVER_ON_MASK, 0x1);
	//Turn on the external processor core
	Write_GPIO(1, GAIN_OFFSET_ON_MASK, 0x1);

	//Some default values for the centroiding core
	//Time Window is in 195ps steps, 5000 = 10us
	Write_GPIO(3, CENTROID_TIME_WIN_MASK, 5000);
	//EPS is the spatial distance, in pixels I guess
	Write_GPIO(3, CENTROID_EPS_MASK, 10);
	//These are the min and max # pixels in a cluster
	Write_GPIO(2, CENTROID_LOW_PIX_MASK, 1);
	Write_GPIO(2, CENTROID_HIGH_PIX_MASK, 100);
	//Turn off centroiding core and exclude it from the flow
	Write_GPIO(3, CENTROID_ENABLE_MASK, 0);
	Write_GPIO(3, CENTROID_IN_FLOW_MASK, 0);

	//Set T0_Sync Low
    Xil_Out32(T0_SYNC_ADDR, 0);

	//Write_GPIO(0, ...) is a write to the CMAC control GPIO port
#define DELAY_TIME 0
	//Assert xceiver reset
    Write_GPIO(0, XCEIVER_RESETL_MASK, 0);
    for (delay = 0; delay < DELAY_TIME; delay++);
    //De-assert xceiver reset
    Write_GPIO(0, XCEIVER_RESETL_MASK, 1);
    for (delay = 0; delay < DELAY_TIME; delay++);
    //Deassert LPMODE
    Write_GPIO(0, XCEIVER_LPMODE_MASK, 0);
    for (delay = 0; delay < DELAY_TIME; delay++);
    //Enable Rxs
    Write_GPIO(0, RX_ENABLE_MASK, 1);
    for (delay = 0; delay < DELAY_TIME; delay++);
    //Enable Tx_send_RFIs
    Write_GPIO(0, TX_SEND_RFI_MASK, 1);
    //Wait for Rx Aligned
    while((Xil_In32(XPAR_AXI_GPIO_1_BASEADDR) & CMAC_RX_ALIGNED) == 0);

    //Disable Tx_send_RFIs
    Write_GPIO(0, TX_SEND_RFI_MASK, 0);


    //Enable Txs
    Write_GPIO(0, TX_ENABLE_MASK, 1);
    for (delay = 0; delay < DELAY_TIME; delay++);
    //Enable RX RSFEC
    Write_GPIO(0, RX_RSFEC_ENABLE_MASK, 1);
    for (delay = 0; delay < DELAY_TIME; delay++);
    //Enable TX RSFEC
    Write_GPIO(0, TX_RSFEC_ENABLE_MASK, 1);
    for (delay = 0; delay < DELAY_TIME; delay++);
    //Enable RX RSFEC Correction
    Write_GPIO(0, RX_RSFEC_ENABLE_COR_MASK, 1);
    for (delay = 0; delay < DELAY_TIME; delay++);
    //Enable RX RSFEC Indication
    Write_GPIO(0, RX_RSFEC_ENABLE_IND_MASK, 1);
    for (delay = 0; delay < DELAY_TIME; delay++);

    //Since the Science packets are all the same length and sent to the broadcast address,
    //  we can just calculate the IP header checksum once, it won't change.
    //Make a u16 array to operate on
    u16 ip_hdr[10];
    ip_hdr[0] = IP_VER;
    ip_hdr[1] = TOT_LENGTH;
    ip_hdr[2] = ID_FIELD;
    ip_hdr[3] = FLAGS_TTL_UDP>>16;
    ip_hdr[4] = FLAGS_TTL_UDP & 0xffff;
    ip_hdr[5] = IP_CSUM;
    ip_hdr[6] = SOURCE_IP>>16;
    ip_hdr[7] = SOURCE_IP & 0xffff;
    ip_hdr[8] = DEST_IP>>16;
    ip_hdr[9] = DEST_IP & 0xffff;

    u16 ip_csum = ComputeIPChecksum(ip_hdr);
    Write_Headers(ip_csum);

    //Set up the TP4 ADC for a 28ms conversion (power-on default is 53 sec)
	WriteASICReg32(0xa030, 0x10);
	WriteASICReg32(0xa031, 0x8000);


	/* now enable interrupts */
	//platform_enable_interrupts();
	//Enable only the timer and the Ethernet FIFO interrupts
	XIntc_Enable(IntPtr, 0);
	XIntc_Enable(IntPtr, 1);
#ifdef CRUNCHED
	xil_printf("Setting Offset LUT\n");
	Set_Offset_LUT();
	xil_printf("Setting Gain LUT\n");
	Set_Gain_LUT();
	//Read_Gain_LUT();
#endif
	while(1)
	{
			//This needs to be called periodically
			xemacif_input(my_netif_ptr);
			//if ((loop_count & 0xffff)==0xffff) xil_printf("Loopcount %d \n\r", loop_count);
			//loop_count++;

			if (TcpFastTmrFlag)
			{
				//This gets called about every 250ms
				TcpFastTmrFlag = 0;
				elapsed_time++;
				max_xmit_interval_timer++;
				hk_interval_timer++;
			}

	if (udp_received == 1)
		{

		udp_received = 0;
		}
	if (HK_rate > 0)
		if (hk_interval_timer >= HK_rate)
		{
			hk_interval_timer= 0;
			SendHK();
		}
	}
}

/*
u8 ascii_to_val(char hex_digit)
{
	u8 value = 0;
	if ((hex_digit >= 0x30) && (hex_digit <= 0x39)) value = hex_digit - 0x30;
	if ((hex_digit == 'a') || (hex_digit == 'A')) value = 10;
	if ((hex_digit == 'b') || (hex_digit == 'B')) value = 11;
	if ((hex_digit == 'c') || (hex_digit == 'C')) value = 12;
	if ((hex_digit == 'd') || (hex_digit == 'D')) value = 13;
	if ((hex_digit == 'e') || (hex_digit == 'E')) value = 14;
	if ((hex_digit == 'f') || (hex_digit == 'F')) value = 15;
	return value;
}
*/

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	print_ip("Board IP:       ", ip);
	print_ip("Netmask :       ", mask);
	print_ip("Gateway :       ", gw);
}

void
print_ip(char *msg, struct ip4_addr *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void
recv_callback(void *arg, struct udp_pcb *tpcb,
                               struct pbuf *p, struct ip4_addr *addr, u16_t port)
{
		//This is called by the TEMAC interrupt when a UDP packet for us is received
	u8 *cmdp;
	cmdp = (u8 *) (p->payload);
#ifdef PRINT_PKT_MSG
		xil_printf("Got one, packet number %d command_byte %x \n\r", recvd_pkt_number++, *cmdp);
#endif
		commands_received++;
		int ser_no;
		int i;
		int word;
		int bcnt;
		int cmd;
		int words;
		u8 fake_rate;
		u16 reg_addr;
		//Set flag for main routine
		udp_received = 1;
		volatile int delay;
		//This code to just receive a packet and check the sequential SN in 1st byte, as a link test
		/*
		if (cmdp[0] == 255) xil_printf("loop %d\n\r", loopcount++);
		if (cmdp[0] != serno_from_host + 1)
			xil_printf("serno error %d\n\r", cmdp[0]);
		serno_from_host = cmdp[0];

		pbuf_free(p);
		return;
		*/
		switch(cmdp[0]) {
	    case 0x5 :       // reset
	    // Pulse ASIC reset
	    //  bit 0 is the (-true) reset to the slow control
	    //  bit 1 is the (-true) reset to the ASIC
	    	Xil_Out32(RESET_SYNC_ADDR, 0);
	        xil_printf("\n\rResetting Timepix\n\r");
	        for (delay = 0; delay < 1000; delay++);
	        Xil_Out32(RESET_SYNC_ADDR, 3);
	        write_resp_errors = 0;
	        read_resp_errors = 0;
	        empty_fifo();
	        //last_cmd_pkt_ser_no = 0;
	        break;
	    case 0x6 :       // reset

	    	Write_GPIO(1, RESET_RX_PLL_DP, 1);
	        for (delay = 0; delay < 1000; delay++);
	    	Write_GPIO(1, RESET_RX_DP, 1);
	        for (delay = 0; delay < 1000; delay++);
	    	//Write_GPIO(1, RX_RESET, 0);
	    	Write_GPIO(1, RESET_RX_PLL_DP, 0);
	        for (delay = 0; delay < 1000; delay++);
	    	Write_GPIO(1, RESET_RX_DP, 0);
	    	break;
	    case 0x7 :       // enable or disable science
	    	if (cmdp[1] == 1)
	    	{
	    		science_enable = 1;
	    		xil_printf("Science Packets On\n\r");
	    	    //Deassert Pause
	    	    Write_GPIO(1, RX_PAUSE, 0);
	    	}
	    	else
	    	{
	    		(science_enable = 0);
	    		xil_printf("Science Packets Off\n\r");
	    	    //Deassert Pause
	    	    Write_GPIO(1, RX_PAUSE, 1);
	    	}
	    	xil_printf("Read Response Errors %d\n\r", read_resp_errors);
	    	xil_printf("Write Response Errors %d\n\r", write_resp_errors);
	    	break;
	    case 0x8 :       // set or reset the receiver
	    	Write_GPIO(1, RX_RESET, (u32)cmdp[1]);
	    	break;
	    case 0x9 :       // pulse the FIFO reset
	    	Write_GPIO(1, RX_FIFO_RESET, 1);
	    	Write_GPIO(1, RX_FIFO_RESET, 0);
	    	break;
	    case 0x10:
	    	fake_rate = cmdp[1];
	    	Write_GPIO(1, FAKE_RATE_MASK, fake_rate);
	    	break;
	    case 0x11:
	    	Write_GPIO(1, DECODE_ON_MASK, cmdp[1]);
	    	Write_GPIO(1, GRAY_DECODE_MASK, cmdp[2]);
	    	Write_GPIO(1, DECODE_TOTTOA_MASK, cmdp[3]);
	    	Write_GPIO(1, DIGPIX_PW_MASK, cmdp[4]);
	    	Write_GPIO(1, ROLLOVER_ON_MASK, cmdp[5]);
	    	Write_GPIO(1, GAIN_OFFSET_ON_MASK, cmdp[6]);
	    	Write_GPIO(3, CENTROID_ENABLE_MASK, cmdp[7]);
	    	Write_GPIO(3, CENTROID_IN_FLOW_MASK, cmdp[7]);

	    	break;
	    case 0x12:
	    	Write_GPIO(1, RESET_BLOCKSYNC, 1);
	    	Write_GPIO(1, RESET_BLOCKSYNC, 0);
	    	break;
	    case 0x13:
	    	Write_GPIO(1, RESET_TX_DP, 1);
	    	Write_GPIO(1, RESET_TX_DP, 0);
	    	break;
	    case 0x14:
	    	Write_GPIO(1, RESET_RX_PLL_DP, 1);
	    	Write_GPIO(1, RESET_RX_PLL_DP, 0);
	    	break;
	    case 0x15:
	    	Write_GPIO(1, RESET_RX_DP, 1);
	    	Write_GPIO(1, RESET_RX_DP, 0);
	    	break;

	    case 0x16:        //Single Timepix write command
	      // Commands come in with hex encoding
	      // AA 00 00 80 71 FF FF   - write 0xFFFF to register 0x8071
#ifdef PRINT_PKT_MSG
	      xil_printf("WR ");
#endif
	      reg_addr = (cmdp[4]<<8) + cmdp[5];
		  //When turning HB on or off, read out the PHY regs
		  //if (reg_addr == 0x4c02) PHY_DumpRegs();
	      i = 1;
	      while (i < p->len) {
		    if (i == 1)
		    {
				word = cmdp[1] << 24;
        		ser_no = cmdp[2] + (cmdp[3]<<8);
				word |= cmdp[4];
		    }
	        else
	        {
				word = cmdp[i] << 24;
				word |= cmdp[i+1] << 16;
				word |= cmdp[i+2] << 8;
				word |= cmdp[i+3];
	        }
#ifdef PRINT_PKT_MSG
	        if (i < 8) xil_printf("%08x ", word);
#endif
	        Xil_Out32(CMD_OUT_ADDR,word);
		      //if ((reg_addr == 0xa00c) || (reg_addr == 0xa00b))
		    	//  xil_printf("%08x %08x\n\r",reg_addr, word);
	        i += 4;
	      }
	      //xil_printf("Ser_no = %d \n\r", ser_no);
	      if (ser_no == last_cmd_pkt_ser_no )// && (last_cmd_pkt_ser_no != -1))
	    	  xil_printf("Error, ser_no %04x, repeated, reg %04x, \n\r",ser_no, reg_addr);
	      else if ((ser_no != last_cmd_pkt_ser_no + 1))// && (last_cmd_pkt_ser_no != -1))
	    	  xil_printf("Error, ser_no %04x, skipped %d packets\n\r",ser_no, ser_no - last_cmd_pkt_ser_no - 1);
	      last_cmd_pkt_ser_no = ser_no;
	      Xil_Out32(SEND_CMD_ADDR,0);     // a write here sends the command
	      //Make this blocking, by waiting a time proportional to the
	      //  command length.  Commands are 5 bytes + the payload length.
	      //  At 40MHz, a byte takes 200ns.  So we'd like to wait something like
	      //  .2*(5+4*len)us.  Maybe 2 clocks per count, = 20ns.
	      //  So count to (1*.8len)*50 = 50 +40*len
	      //u32 wait_time = 50+40*(p->len);
	      //for (delay = 0; delay < wait_time; delay++);
		  u32 wait_time = 0.8*(p->len) + 1;  //in us
		  usleep(wait_time);

#ifdef ENABLE_RESEND
	      cmd = cmdp[4] << 8 | cmdp[5];   // build 16 bit command from bytes 4 and 5
	       if (check_wresponse(cmd))
	       {
	          xil_printf("Error getting response for command %x\n", cmd);
	          write_resp_errors++;
	       }
	        else {
	  //If all is well, send the ACK
	          send_ok(ser_no);
	        }

#endif
#ifdef PRINT_PKT_MSG
	      xil_printf("\n\r");
#endif
	      break;
	    case 0x17:        //Single Timepix read command
	      // Commands come in with hex encoding
	      // AA 00 01 80 71 FF FF   - read register 0x8071
#ifdef PRINT_PKT_MSG
	      xil_printf("RD ");
#endif
	      //Put in some delay before clearing FIFO, bc a previous write response may still be
	      //  coming in.
	      for (delay = 0; delay < DELAY_B4_FF_CLEAR; delay++);
	      //Get rid of old stuff in FIFO
		  empty_fifo();
	      i = 2;
	      while (i < p->len) {
	        word = cmdp[i] << 24;
	        word |= cmdp[i+1] << 16;
	        word |= cmdp[i+2] << 8;
	        word |= cmdp[i+3];
#ifdef PRINT_PKT_MSG	      if (ser_no == last_cmd_pkt_ser_no)// && (last_cmd_pkt_ser_no != -1))
	    	  xil_printf("Error, ser_no %d, repeated \n\r",ser_no);

	        if (i < 8) xil_printf("%08x ", word);
#endif
	        Xil_Out32(CMD_OUT_ADDR,word);
	        i += 4;
	      }
	      Xil_Out32(SEND_CMD_ADDR,0);     // a write here sends the command
	      //Make this blocking, by waiting a time proportional to the
	      //  command length.  Commands are 5 bytes + the payload length.
	      //  At 40MHz, a byte takes 200ns.  So we'd like to wait something like
	      //  .2*(5+4*len)us.  
		  wait_time = 0.8*(p->len) + 1;  //in us
		  usleep(wait_time);
#ifdef PRINT_PKT_MSG
	      xil_printf("\n\r");               // do some delay, then check what respose we got
#endif
	      cmd = cmdp[5] << 8 | cmdp[6];   // build 16 bit command from bytes 5 and 6
	      words = cmdp[1];                // number of words to expect in response
          //check response
	      i = read_response(cmd,words);
	      if (i){
	          xil_printf("\n\rError getting response for readback %x %d\n\r", cmd, i);
	      	  read_resp_errors++;
	      }
	     break;

		case 0x18:
			//Bulk pixel read through the slow control system
			//We send a read request to reg 0x4203/0xC203 32 times,
			// each time reading back 32B (256b) of data, plus 8B of overhead, from the register
			//After the 32 read requests, there shoul be 32 * 40B = 1280B in the SC FIFO
			//We package this up into a UDP packet and send it.
			//We do the above 112 times, so 112 UDP packets
			delay = 0;  //Weird, compiler needs a statement before a variable def?
			u8 num_packets = 0;
			u8 num_reads = 0;
			u8 top = cmdp[1] & 1;
  			u8 send_buf[UDP_SEND_BUFSIZE];
			for (num_packets = 0; num_packets < 113; num_packets++)
				{
				xil_printf("sending bulk read command\n\r");
				for (num_reads = 0; num_reads < 32; num_reads++)
					{
						//The word to be shifted out starts with the 0xaa header, then 16'h0001 (= read)
						// then teh 16b register address
						Xil_Out32(CMD_OUT_ADDR,0xaa000100 | (top ? 0xC2 : 0x42));
						Xil_Out32(CMD_OUT_ADDR,0x03000000);
	      				Xil_Out32(SEND_CMD_ADDR,0);     // a write here sends the command
						//we need to wait for the ata to come back before sending another command
						// the response is 256 + 40b overhead, 296b at 40MHz, 7.4us
						usleep(10);
					}
					Status = read_bulk_resp(send_buf);
					if (Status !=0) xil_printf("read_bulk_resp error code %d\n\r", Status);
					else
					{
						cmd_pbuf = pbuf_alloc(PBUF_TRANSPORT, 1280, PBUF_RAM);
						memcpy(cmd_pbuf->payload,send_buf,1280);
						udp_send(cmd_pcb, cmd_pbuf);
						pbuf_free(cmd_pbuf);
					}
				}
				//Now send an EOC packet
						cmd_pbuf = pbuf_alloc(PBUF_TRANSPORT, 4, PBUF_RAM);
						u32* p32 = (u32*)send_buf;
						*p32 = 0xFFFFFFFE;
						memcpy(cmd_pbuf->payload,send_buf,4);
						udp_send(cmd_pcb, cmd_pbuf);
						pbuf_free(cmd_pbuf);
				
				break;
				
	    case 0x20:
			//PHY_DumpRegs();

	    	hk_interval_timer = 0;
	    	HK_rate = cmdp[1];
	    	//I added the following to read out some of the TEMAC registers to understand why
	    	//  there are packet failures.
	    	/*
	    	if (HK_rate == 0)
	    		{
	    			commands_received = 0;
	    			first_fcs_read = Xil_In32(XPAR_AXI_ETHERNET_0_BASEADDR + 0x298);
	    		}
	    	else
	    		{
	    			xil_printf("comrec = %d\n\r", commands_received);
	    			u32 val, ii;
	    			u32 rx_frames = 0;
	    			u32 fcs_read;
	    			u16 reg_off[14] = {0x200, 0x210, 0x218, 0x220, 0x228, 0x230, 0x238, 0x240,
	    								0x248, 0x250, 0x290, 0x298, 0x2a0, 0x340};

	    			for (ii = 0; ii < 14; ii++)
	    			{
	    				val = Xil_In32(XPAR_AXI_ETHERNET_0_BASEADDR + reg_off[ii]);
	    				xil_printf("add  %x,%d \n\r", reg_off[ii], val);
	    				if ((ii>=3) & (ii<=8)) rx_frames += val;
	    				if (ii == 11) fcs_read = val;
	    			}
	    			xil_printf("frames  %d \n\r", rx_frames - last_rx_frames);
	    			xil_printf("FCS errors  %d \n\r", fcs_read - first_fcs_read);
	    			last_rx_frames = rx_frames;
	    		}
	    		*/
	       break;
	    case 0x24:        // Read i2c MUX
	      bcnt = XIic_Recv(IIC_BASE_ADDRESS, 0x76, i2c_mux_rd, 1, XIIC_STOP);
	      if (XIic_WaitBusFree(IIC_BASE_ADDRESS) != XST_SUCCESS) {
	        xil_printf("Error waiting for bus!\n");
	        break;
	      }
	      xil_printf("MUX readback: %x\n",*i2c_mux_rd);
	      break;
	    case 0x25:        // Write i2c MUX
	      SetIICMux(1);
		  break;

	    case 0x30:       // open shutter
	    	//Pulse the T0_Sync high then low
	        //Xil_Out32(T0_SYNC_ADDR, 1);
	        //Xil_Out32(T0_SYNC_ADDR, 0);
	        //Try the T0Sync Start Command
	      //WriteASICReg32(0x8051, 0x9);
	      Xil_Out32(SHUTTER_ADDR, 1);
		  //Clear out the ASIC response to the WriteASIC command
		  //empty_fifo(); 
	      xil_printf("Opening Shutter\n\r");
	      break;
	    case 0x31:       // close shutter
	      Xil_Out32(SHUTTER_ADDR, 0);
	      xil_printf("Closing Shutter\n\r");
	      break;
#ifdef CRUNCHED
	    case 0x32:
	    	Prog_Gain_LUT((u16)*(cmdp+2),(u16*)(cmdp + 4));
	    	break;
	    case 0x33:
	    	Prog_Offset_LUT((u16)*(cmdp+2),(u16*)(cmdp + 4));
	    	break;
	    case 0x40:
	    	Write_GPIO(3, CENTROID_TIME_WIN_MASK, *(u16*)(cmdp+2));
	    	Write_GPIO(3, CENTROID_EPS_MASK, *(u16*)(cmdp+4));
	    	Write_GPIO(2, CENTROID_LOW_PIX_MASK, *(u16*)(cmdp+6));
	    	Write_GPIO(2, CENTROID_HIGH_PIX_MASK, *(u16*)(cmdp+8));
			break;
#endif
		case 0x41:
		//Turn on (or off) one or more of the DIGPIX bits
		Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + 8, cmdp[1] & 0xf);

		}
		pbuf_free(p);

		return;
}

void empty_fifo()
{
  int fifo_empty;
  u32 buf;

  fifo_empty = Xil_In32(SC_IN_ADDR+4) & 1;    // The LSB is the command response FIFO Empty flag
  while (!fifo_empty) {
    buf = Xil_In32(SC_IN_ADDR);
    fifo_empty = Xil_In32(SC_IN_ADDR+4) & 1;  // The LSB is the command response FIFO Empty flag
  }
}

// Keep reading the SC_IN registers until a response comes in
// 00AA000000803000         - write of register 0x8030, 2 words
// 00AA00010080300000008000 - read of register, 3 words
// 00AA00010043000003901FC0 - read 0x4300, 3 words
// Register 4300: Status b'00': Payload b'03901FC0'
//
// Turns out the FIFO read count doesn't work as expected. As soon as a word is written
// to the FIFO, the value falls through to the output, and the count stays at 0.
// When a 2nd word is written, for some reason, the count still stays 0.
// Only after a 3rd word is written does the count go to 1.
//
// cmd is the command expected
// words is the size in 32 bit words of the register
int read_response(int cmd, int words)
{
  u32 fifo_count;
  u32 packet_fifo_count;
  u32 buf;
  char temp[9];
//#define UDP_SEND_BUFSIZE 1440 // this is defined in TP4_main.h
  //u8 send_buf[UDP_SEND_BUFSIZE];  //defined globally
  int i,j,k;
  //int fifo_empty;
  int read;
  int cmd_resp;   // command response sent to Xilinx
  //int expected;   // expected number of words in read read response value
  //u8 read_from_packfifo = (cmd == 0x4203) || (cmd == 0xc203);
  u8 read_from_packfifo = 0;
  //fifo_empty = Xil_In32(SC_IN_ADDR+4) & 1;    // The LSB is the command response FIFO Empty flag

  i=0;      // index into 32 bit values
  k=0;      // index into nibble counter
  send_buf[k++] = 0x88;                           // mark data as register readback
  do {
    fifo_count = Xil_In32(SC_IN_ADDR+8) & 0x7FF;  // The bottom 11 bits are the count of words
  	packet_fifo_count = (Xil_In32(SC_IN_ADDR+8)>>16) & 0x7FF;
    i++;
    //From Claude:
    if ((i & 0xFFF) == 0) xemacif_input(my_netif_ptr);  // keep draining Eth FIFO while waiting
    if (i > 0xFFFFFF) return 1;                   // Timeout after trying long enough
  } while (fifo_count < words);                   // If fifo has > 2 words on it, fifo_count=words-2

  // Read sync word
  buf =  Xil_In32(SC_IN_ADDR);
#ifdef PRINT_PKT_MSG
  xil_printf("Resp %x ", buf);
#endif
  sprintf(temp, "%08X", buf);
  for (j=0; j<8; j++) {
    send_buf[k++] = temp[j];
  }
  read = buf & 1;                   // read or write response
  // Read command word
  buf =  Xil_In32(SC_IN_ADDR);
#ifdef PRINT_PKT_MSG
  xil_printf("%x ", buf);
#endif
  sprintf(temp, "%08X", buf);
  for (j=0; j<8; j++) {
    send_buf[k++] = temp[j];
  }
  cmd_resp = buf >> 8;              // command being responded to
  if (cmd != cmd_resp) return 2;    // wrong command response
  if (!read) return 3;              // not a read

  // Finally, read in values from either the command or the packet FIFO
  i=0;
  while (i < words) {
    //buf = Xil_In32(SC_IN_ADDR);
    buf = read_from_packfifo ? Xil_In32(SC_IN_ADDR + 0xc): Xil_In32(SC_IN_ADDR);
#ifdef PRINT_PKT_MSG
    xil_printf("%x ", buf);
#endif
    sprintf(temp, "%08X", buf);
    for (j=0; j<8; j++) {
      send_buf[k++] = temp[j];
    }
    i++;                                  // number of words read out
  };
#ifdef PRINT_PKT_MSG
  xil_printf("\n\r");
#endif
//  xil_printf("Received register readback of %d words\n", i);
  send_buf[k++] = 0;
  //xil_printf("%s\n",send_buf);
  cmd_pbuf = pbuf_alloc(PBUF_TRANSPORT, k, PBUF_RAM);
  memcpy(cmd_pbuf->payload,send_buf,k);
  udp_send(cmd_pcb, cmd_pbuf);
  pbuf_free(cmd_pbuf);

  return 0;
}

int check_wresponse(int cmd)
{
  int i,j,k;
  int fifo_empty;
  int read;
  int cmd_resp;

  i=0;      // index into 32 bit values
  k=0;      // index into nibble counter

//Wait for data in the FIFO, maximum of 500us for most writes, 60s for ADC trigger
  do {
    fifo_empty = Xil_In32(SC_IN_ADDR+4) & 1;  // The LSB is the FIFO Empty flag
    i++;
 	u16 sleeptime = (cmd == 0xa033) ? 6000 : 50;
	usleep(sleeptime);
	if (i > 10) return 1;             // Timeout after trying long enough
  } while (fifo_empty);
// Chec that it is a write command
  read = Xil_In32(SC_IN_ADDR) & 1;        // read or write response
  i=0;
//Wait a maximum of 100us for the rest of the data
  do {
    fifo_empty = Xil_In32(SC_IN_ADDR+4) & 1;  // The LSB is the FIFO Empty flag
    i++;
	usleep(10);
    if (i > 10) return 1;             // Timeout after trying long enough
  }while (fifo_empty);
  //Read out the address word for comparison to commaded valu
  cmd_resp = Xil_In32(SC_IN_ADDR) >> 8;   // command being responded to
  if (read) {
    return 1;
  }
//  xil_printf("Received register readback for %x\n", cmd_resp);
  if (cmd_resp != cmd)
  {
	xil_printf("Write Resp Fail, cmd = %x resp = %x\n\r", cmd, cmd_resp);
    return 1;
  }
  else
    return 0;
}
static void send_ok(u16 ser_no)
{
  //u8 send_buf[24];
  //xil_printf("%d ",ser_no);
  //if (ser_no != last_write_resp_serno+1)xil_printf("***\n ");
  //last_write_resp_serno = ser_no;
  send_buf[0]=0x55;
  send_buf[1]=0;
  send_buf[2] = ser_no & 0xff;
  send_buf[3] = ser_no >>8;
  ok_pbuf = pbuf_alloc(PBUF_TRANSPORT, 24, PBUF_RAM);
  if (ok_pbuf == NULL) xil_printf("Failed to allocate pbuf");
  memcpy(ok_pbuf->payload,send_buf,24);
  err_t err = udp_send(cmd_pcb, ok_pbuf);
  if (err != ERR_OK) xil_printf("Error %d", err);
  pbuf_free(ok_pbuf);
}
static void udp_hk_packet_send(int len)
{
	//debug_eth_fifo();
	xil_printf("Sending HK packet\n\r");
	cmd_pbuf = pbuf_alloc(PBUF_TRANSPORT, len, PBUF_RAM);
	memcpy(cmd_pbuf->payload,hk_send_buf,len);
	err_t err = udp_send(hk_pcb, cmd_pbuf);
	if (err != ERR_OK) xil_printf("Error %d", err);
	pbuf_free(cmd_pbuf);
}
void SendHK(void)
{
	volatile int delay;
	u8 which_temp;
	for (which_temp = 0; which_temp < 4; which_temp++)
	{
		XIic_Send(IIC_BASE_ADDRESS, TEMPSENSOR1 + which_temp, iic_temp_cmd, 1, XIIC_STOP);
		//xil_printf("Reading temperature 1\n");
		if (XIic_WaitBusFree(IIC_BASE_ADDRESS) != XST_SUCCESS) {
			xil_printf("Error waiting for bus!\n");
			break;
			}
		XIic_Recv(IIC_BASE_ADDRESS, TEMPSENSOR1 + which_temp, hk_send_buf + 2*which_temp, 2, XIIC_STOP);
		//xil_printf("%d %d \n\r", hk_send_buf[2*which_temp],hk_send_buf[2*which_temp+1]);
		//xil_printf("Temp%d %d \n\r", which_temp, ((hk_send_buf[2*which_temp])<<4) + ((hk_send_buf[2*which_temp+1])>>4));
		if (XIic_WaitBusFree(IIC_BASE_ADDRESS) != XST_SUCCESS) {
			xil_printf("Error waiting for bus 2!\n");
			break;
		}
	}
#ifdef INCLUDE_OTHER_HK
	//Also read some ADC values from the ASIC.
	//A series of values to write to reg A01A to get the desired analogs converted by the ASIC ADC
#define SEL_DACOUT_BUFF 0x2	//0x02 selects center periphery signals
#define SEL_VBG100mv 0x5	//Assortment of signals from the center periphery
#define SEL_TEMP 0x2
#define SEL_PSAN_0 0x1c		//Analog VDD
#define SEL_PSAN_1 0x1d
#define SEL_PSAN_2 0x1e
#define SEL_PSAN_3 0x1f
#define SEL_PSDG_0 0x24		//Digital VDD
#define SEL_PSDG_1 0x25
#define SEL_PSDG_2 0x26
#define SEL_PSDG_3 0x27

#define TSETTLE 1000

	//An array of 32b values to be written to reg 0xA01A, analog DAC out sel
	u32 reg_a01a_vals [10] = {
			(SEL_DACOUT_BUFF<<28) | (SEL_VBG100mv<<22),
			(SEL_DACOUT_BUFF<<28) | (SEL_TEMP<<22),
			(SEL_DACOUT_BUFF<<28) | (SEL_PSAN_0<<22),
			(SEL_DACOUT_BUFF<<28) | (SEL_PSDG_0<<22),
			(SEL_DACOUT_BUFF<<28) | (SEL_PSAN_1<<22),
			(SEL_DACOUT_BUFF<<28) | (SEL_PSDG_1<<22),
			(SEL_DACOUT_BUFF<<28) | (SEL_PSAN_2<<22),
			(SEL_DACOUT_BUFF<<28) | (SEL_PSDG_2<<22),
			(SEL_DACOUT_BUFF<<28) | (SEL_PSAN_3<<22),
			(SEL_DACOUT_BUFF<<28) | (SEL_PSDG_3<<22)
	};
	for (which_temp = 0; which_temp < 4; which_temp++)
	{
		empty_fifo();
		//Write the MUX to select the analog input to the ADC
		WriteASICReg32(0xa01a, reg_a01a_vals[which_temp]);
		//Settling time
		for (delay = 0; delay < TSETTLE; delay++);
		//The ASIC sends back a response to the command, need to wait for this
		u32 vals[2];
		u32 stat = check_resp_FIFO(2, vals);
		u32 adc_val = Read_TP4_ADC();
		//xil_printf("HK val %d = %d\n", which_temp, adc_val);
		//ADC values are 32b but just keep the top 16 and pack them Big-Endian
		*(hk_send_buf + 8 + 2*which_temp) = adc_val>>24;
		*(hk_send_buf + 9 + 2*which_temp) = adc_val>>16;
	}
#endif
	udp_hk_packet_send(20);
}

void SetIICMux(u16 val)
{
    i2c_mux[0] = val;
    if (XIic_WaitBusFree(IIC_BASE_ADDRESS) != XST_SUCCESS) {
      xil_printf("Error waiting for bus!\n");
    }
    XIic_Send(IIC_BASE_ADDRESS, 0x76, i2c_mux, 1, XIIC_STOP);
    if (XIic_WaitBusFree(IIC_BASE_ADDRESS) != XST_SUCCESS) {
      xil_printf("Error waiting for bus 2!\n");
    }
    xil_printf("MUX write: %x\n",*i2c_mux);
}
//Set or clear one or more bits in one of the GPIO registers:
// whichone =
//   0 for the CMAC,
//   1 for the general control output reg
//   2 for the centroider control port 1
//   3 for the centroider control port 2
// (port 2 of the GP reg will get the 32b header word, no need to set bits there)
//mask has a contiguous set of 1s; value is right-aligned (bit 0 is lsb)
//Set up for two regs but only using one

void Write_GPIO(u8 whichone, u32 mask, u32 value)
{
	//clear the bits
	if (whichone == 0)	GPIO_CMAC_reg = GPIO_CMAC_reg & ~mask;
	else if (whichone == 1) GPIO1_reg = GPIO1_reg & ~mask;
	else if (whichone == 2) GPIO_CENT_port1_reg = GPIO_CENT_port1_reg & ~mask;
	else if (whichone == 3) GPIO_CENT_port2_reg = GPIO_CENT_port2_reg & ~mask;
	//shift the value to line up with the cleared bits
	u8 i;
	for (i = 0; i < 32; i++)
	{
		if ((mask & 0x01) != 0x01)
		{
			mask=mask>>1;
			value=value<<1;
		}
		else break;
	}
	if (whichone == 0)
	{
		GPIO_CMAC_reg = GPIO_CMAC_reg | value;
		Xil_Out32(XPAR_AXI_GPIO_CMAC_BASEADDR, GPIO_CMAC_reg);
	}
	else if (whichone == 1)
	{
		GPIO1_reg = GPIO1_reg | value;
		Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR, GPIO1_reg);
	}
#ifdef CRUNCHED
	else if (whichone == 2)
	{
		GPIO_CENT_port1_reg = GPIO_CENT_port1_reg | value;
		Xil_Out32(CENTROID_PORT1_ADDR, GPIO_CENT_port1_reg);
	}
	else if (whichone == 3)
	{
		GPIO_CENT_port2_reg = GPIO_CENT_port2_reg | value;
		Xil_Out32(CENTROID_PORT2_ADDR, GPIO_CENT_port2_reg);
	}
#endif

}

void Write_Headers(u16 csum)
{
	u8 ii;
	//Write the header words to the RX State Machine
	//There are 42B in the header.  Since the interface to the CMAC is 64B wide,
	// one 64B word will be used.  The last 4B are written in hardware (packet serno and elapsed time)
	// leaving 15 32b words to be written here.
	//In terms of the 32b words written here, the data are presented to the CMAC like this
	// pcet|w0|w1|....|w13|w14 (pcet = 32b packet_count & elapsed time)
	// where w0 is the first word written here.
	// The first byte sent out on the wire is the LSbyte of w14.
	// So we need to byte-reverse the 32b words

	//There are 60 - 42 = 18B unused.  Shift out w0 through w3, all 0s, makes 16B
	for (ii = 0; ii < 4; ii++)
	{
		Xil_Out32(HEADER_WORD_ADDR, 0);
		Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
		Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);
	}
	//w4, 2 more unused bytes and UDP_CSUM
	u32 word = UDP_CSUM<<16;
	Xil_Out32(HEADER_WORD_ADDR, rev_bytes(word));
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);
	//w5
	word = (UDP_DEST<<16) | UDP_LENGTH;
	Xil_Out32(HEADER_WORD_ADDR, rev_bytes(word));
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);
	//w6
	word = (DEST_IP<<16) | UDP_SOURCE;
	Xil_Out32(HEADER_WORD_ADDR, rev_bytes(word));
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);
	//w7
	word = (SOURCE_IP<<16) | (DEST_IP>>16);
	Xil_Out32(HEADER_WORD_ADDR, rev_bytes(word));
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);
	//w8
	word =  (csum<<16) | (SOURCE_IP>>16);
	Xil_Out32(HEADER_WORD_ADDR, rev_bytes(word));
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);
	//w9
	word = FLAGS_TTL_UDP;
	Xil_Out32(HEADER_WORD_ADDR, rev_bytes(word));
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);
	//w10
	word = (TOT_LENGTH<<16) | ID_FIELD;
	Xil_Out32(HEADER_WORD_ADDR, rev_bytes(word));
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);
	//w11
	word = (ETH_TYPE<<16) | IP_VER;
	Xil_Out32(HEADER_WORD_ADDR, rev_bytes(word));
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);
	//w12
	word = ETH_SOURCE & 0xffffffff;
	Xil_Out32(HEADER_WORD_ADDR, rev_bytes(word));
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);
	//w13
	word = ((ETH_DEST & 0xffff)<<16) | ETH_SOURCE>>32;
	Xil_Out32(HEADER_WORD_ADDR, rev_bytes(word));
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);
	//w14
	word = (ETH_DEST >> 16);
	Xil_Out32(HEADER_WORD_ADDR, rev_bytes(word));
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 1);
	Write_GPIO(1, RX_WRITE_HEADER_WORD, 0);

}

u16 ComputeIPChecksum(u16 * hptr)
{

	//hptr points to the beginning of the IP header data.
	int csum = 0;
	//Sum over 10 words
	for (int ii = 0; ii < 10; ii++)
	{
		//Need to byte-reverse, since uB is little-Endian, but IP standard is big
		csum += (((*hptr)<<8)&0xff00)|(((*hptr)>>8)&0xff);
		hptr++;
	}
		u16 val = (u16)~((csum & 0xffff) + (csum>>16));
		//return (u16)~((csum & 0xffff) + (csum>>16));
		return ((val & 0xff)<<8) + (val >> 8);
}
u32 rev_bytes (u32 inword)
{
	return (inword<<24) | ((inword & 0xff00)<<8) | ((inword & 0xff0000)>>8) | ((inword>>24));
}

//Write a 16b or 32b reg
void WriteASICReg32(u16 addr, u32 val)
{
	volatile int delay;
	//Load up the 3 32b words necessary to send out a single 32b write
	//If writing a 16b reg, need to shift the u32 val left by 16 before calling this routine.
	u32 word = 0xaa000000 | (addr>>8);
    Xil_Out32(CMD_OUT_ADDR, word);
    word = ((addr & 0xff)<<24) | (val >>8);
    Xil_Out32(CMD_OUT_ADDR, word);
    word = (val<<24);
    Xil_Out32(CMD_OUT_ADDR, word);

    Xil_Out32(SEND_CMD_ADDR,0);     // a write here sends the command
    //Make this blocking, by waiting a time proportional to the
    //  command length.  Commands are 5 bytes + the payload length.
    //  At 40MHz, a byte takes 200ns.  So we'd like to wait something like
    //  .2*(5+4*len)us.  Maybe 2 clocks per count, = 20ns.
    //  So count to (1*.8len)*50 = 50 +40*1 = 90
    for (delay = 0; delay < 90; delay++);
}

u32 ReadASICReg32(u16 addr)
{
	volatile int delay;
    //Put in some delay before clearing FIFO, bc a previous write response may still be
    //  coming in.
    for (delay = 0; delay < DELAY_B4_FF_CLEAR; delay++);
    //Get rid of old stuff in FIFO
	empty_fifo();
	//Load up the 2 32b words necessary to send out a single 32b read
	u32 word = 0xaa000100 | (addr>>8);
    Xil_Out32(CMD_OUT_ADDR, word);
    word = (addr & 0xff)<<24;
    Xil_Out32(CMD_OUT_ADDR, word);

	Xil_Out32(SEND_CMD_ADDR,0);     // a write here sends the command
	//Make this blocking, by waiting a time proportional to the
	//  command length.  Commands are 5 bytes + the payload length.
	//  At 40MHz, a byte takes 200ns.  So we'd like to wait something like
	//  .2*(5+4*len)us.  Maybe 2 clocks per count, = 20ns.
	//  So count to (1*.8len)*50 = 50 +40*1 = 90
	for (delay = 0; delay < 90; delay++);

	//Now we read back the response from the ASIC

	 u32 vals[3];
	 u32 stat = check_resp_FIFO(3, vals);


return vals[2];
}

u32 Read_TP4_ADC(void)
{
	//Enter this routine with the analog MUX selecting the desired signal
	u16 fifo_count;
	u32 i;
    //Get rid of old stuff in response FIFO
	empty_fifo();
	//Trigger the ADC
	WriteASICReg32(0xa033, 1);
	//Wait for conversion to complete- this takes about 28ms with nominal settings,
		// TclkADC = 0x10, OSR = 0x8000
	u32 vals[2];
	u32 stat = check_resp_FIFO(2, vals);
	//Read the response
	u32 resp = ReadASICReg32(0xa034);

	return resp;
}
//Wait till there's data in FIFO and read it out- pass a pointer to a u32 array
u32 check_resp_FIFO(u8 num, u32 *buf)
{
	u16 fifo_count;
	u32 i=0;
	u32 j=0;
	//Wait for conversion to complete- this takes about 28ms with nominal settings,
		// TclkADC = 0x10, OSR = 0x8000
	  do {
	    fifo_count = Xil_In32(SC_IN_ADDR+8) & 0x7FF;  // The bottom 11 bits are the count of words
	    i++;
	    if (i > 0x40000) {
		    // Timeout after trying long enough
	    	xil_printf("no Slow IO fifo resp\n\r");
	    	return 0xffffffff;
	    }
	  } while (fifo_count < num);                   // If fifo has > 2 words on it, fifo_count=words-2
	  for (j=0; j<num; j++) *(buf+j) =  Xil_In32(SC_IN_ADDR);
	  return i;
}

//In order to test the gain and offset LUT functions, we'll write one of two values
//  to each, in a rectangular region
#ifdef CRUNCHED
u32 Set_Offset_LUT(void)
{
#define OS_REGION_MIN_ROW 100
#define OS_REGION_MAX_ROW 200
#define OS_REGION_MIN_COL 150
#define OS_REGION_MAX_COL 300
//Gain and offset are 16b signed values
//#define OFFSET_LOW_VALUE 0x6400  //This should be decimal 100
//#define OFFSET_HIGH_VALUE 0xc800  // and -201
#define OFFSET_LOW_VALUE 0x0
#define OFFSET_HIGH_VALUE 0x0
//#define OFFSET_LOW_VAL_BR ((OFFSET_LOW_VALUE>>8)| (OFFSET_LOW_VALUE<<8)) & 0xFFFF
//#define OFFSET_HIGH_VAL_BR ((OFFSET_HIGH_VALUE>>8)| (OFFSET_HIGH_VALUE<<8)) & 0xFFFF
//Each BRAM address corresponds to a pixel address, of format addr[17:0] = {col[8:0], row[8:0]}
u16 row;
u16 col;
for (col = 0; col < 448; col++)
	for (row = 0; row < 512; row++)

	if ((col >= OS_REGION_MIN_COL) && (col <= OS_REGION_MAX_COL) &&
		(row >= OS_REGION_MIN_ROW) && (row <= OS_REGION_MAX_ROW))
			*(u16*)(OFFSET_BRAM_ADDR + (col<<10) + (row<<1)) = (s16)OFFSET_LOW_VALUE;
	else *(u16*)(OFFSET_BRAM_ADDR + (col<<10) + (row<<1)) = (s16)OFFSET_HIGH_VALUE;
return 0;
}

u32 Set_Gain_LUT(void)
{
#define GAIN_REGION_MIN_ROW 125
#define GAIN_REGION_MAX_ROW 150
#define GAIN_REGION_MIN_COL 50
#define GAIN_REGION_MAX_COL 400
//Gain and offset are 16b signed values
//#define GAIN_LOW_VALUE 0x100  //This is decimal 1
//#define GAIN_HIGH_VALUE 0x80  //This is decimal 1/2
#define GAIN_LOW_VALUE 0x100
#define GAIN_HIGH_VALUE 0x100
//#define GAIN_LOW_VAL_BR ((GAIN_LOW_VALUE>>8)| (GAIN_LOW_VALUE<<8)) & 0xFFFF
//#define GAIN_HIGH_VAL_BR ((GAIN_HIGH_VALUE>>8)| (GAIN_HIGH_VALUE<<8)) & 0xFFFF
//Each BRAM address corresponds to a pixel address, of format addr[17:0] = {col[8:0], row[8:0]}
u16 row;
u16 col;
for (col = 0; col < 448; col++)
	for (row = 0; row < 512; row++)

	if ((col >= GAIN_REGION_MIN_COL) && (col <= GAIN_REGION_MAX_COL) &&
		(row >= GAIN_REGION_MIN_ROW) && (row <= GAIN_REGION_MAX_ROW))
			*(u16*)(GAIN_BRAM_ADDR + (col<<10) + (row<<1)) = (s16)GAIN_LOW_VALUE;
	else *(u16*)(GAIN_BRAM_ADDR + (col<<10) + (row<<1)) = (s16)GAIN_HIGH_VALUE;
return 0;
}
/*
u32 Read_Gain_LUT(void)
{
	u16 row = 127;
	u16 col;
	for (col = 0; col < 448; col++)
		xil_printf("%d\t%x\n", col, *(u16*)(GAIN_BRAM_ADDR + (col<<10) + (row<<1)));
	return 0;
}
*/
int Prog_Gain_LUT(u16 col, u16* val)
{
	if (col > 447) return -1;
	u16 row;
	for (row = 0; row < 512; row++)
	{
		*(u16*)(GAIN_BRAM_ADDR + (col<<10) + (row<<1)) = *val++;
	}
return 0;
}
int Prog_Offset_LUT(u16 col, u16* val)
{
	if (col > 447) return -1;
	u16 row;
	for (row = 0; row < 512; row++)
	{
		*(u16*)(OFFSET_BRAM_ADDR + (col<<10) + (row<<1)) = *val++;
	}
return 0;
}
#endif
void timer_callback()
{
	/* we need to call tcp_fasttmr & tcp_slowtmr at intervals specified
	 * by lwIP.
	 * It is not important that the timing is absoluetly accurate.
	 */
        static int Tcp_Fasttimer = 0;
        static int Tcp_Slowtimer = 0;

        tickcntr++;

        Tcp_Fasttimer++;
        Tcp_Slowtimer++;

	if(Tcp_Fasttimer % 5 == 0)
	{
		TcpFastTmrFlag = 1;
	}
	//Clear the interrupt
	Xil_Out32(XPAR_AXI_TIMER_0_BASEADDR, 0x1d2);

}
void debug_eth_fifo(void)
{
	u8 regs[12] = {0, 4, 0xc, 0x1c, 0x20, 0x24, 0x30, 0x3c, 0x40, 0x48, 0x4c, 0x50};
	u8 ii;
	u32 val;
	for (ii = 0; ii < 12; ii++)
	{
		val = Xil_In32(XPAR_XLLFIFO_0_BASEADDR + regs[ii]);
	xil_printf("FIFOreg %x = %x \n\r", regs[ii], val);
	}
}
static void software_reset(void)
{
    Xil_DCacheFlush();
    Xil_ICacheInvalidate();
    riscv_disable_interrupts();
    ((void (*)(void))0x00000000)();
}
void print_eth_stats(void) {
    u32 base = XPAR_AXI_ETHERNET_0_BASEADDR;
    xil_printf("ETH RX good=%u FCS_err=%u\r\n",
        Xil_In32(base + XAE_RXFL_OFFSET),       // 0x290
        Xil_In32(base + XAE_RXFCSERL_OFFSET));  // 0x298
}

/* ---------- DP83867IS PHY register debug access ----------
 * Five functions callable directly from the JTAG/GDB debugger while paused
 * anywhere after xemac_add() has run (i.e. inside the main loop).
 *
 * Debugger quick-start (Vitis "Expressions" pane or GDB console):
 *   PHY_DumpRegs()               -- full register dump to UART
 *   PHY_Read(0x11)               -- PHYSTS: speed/duplex/link decoded
 *   PHY_Read(0x01)               -- BMSR: check link-up and autoneg-complete
 *   PHY_Write(0x00, 0x9140)      -- SW reset + restart autoneg
 *   PHY_ReadExt(0x0032)          -- SGMII/RGMII control extended register
 *   PHY_WriteExt(0x00D3, 0x0080) -- force SGMII autoneg enable in ext reg
 *
 * The XAxiEthernet instance is heap-allocated by the lwIP adapter and reached
 * via my_netif_ptr->state (struct xemac_s) -> state (xaxiemacif_s).
 * phyaddrforemac: set by lwIP detect_phy() during xemac_add().
 * Extended helpers: in xaxiemacif_physpeed.c, no public header.
 */
extern u32_t phyaddrforemac;

extern void XAxiEthernet_PhyReadExtended(XAxiEthernet *InstancePtr,
        u32 PhyAddress, u32 RegisterNum, u16 *PhyDataPtr);
extern void XAxiEthernet_PhyWriteExtended(XAxiEthernet *InstancePtr,
        u32 PhyAddress, u32 RegisterNum, u16 PhyData);

static XAxiEthernet *phy_get_mac(void)
{
    struct xemac_s *xemac = (struct xemac_s *)my_netif_ptr->state;
    xaxiemacif_s   *axif  = (xaxiemacif_s *)xemac->state;
    return &axif->axi_ethernet;
}

u16 PHY_Read(u32 reg)
{
    u16 val;
    XAxiEthernet_PhyRead(phy_get_mac(), phyaddrforemac, reg, &val);
    xil_printf("PHY[%02x] = 0x%04x\r\n", (unsigned)reg, (unsigned)val);
    return val;
}

void PHY_Write(u32 reg, u16 data)
{
    XAxiEthernet_PhyWrite(phy_get_mac(), phyaddrforemac, reg, data);
    xil_printf("PHY[%02x] <= 0x%04x\r\n", (unsigned)reg, (unsigned)data);
}

/* Extended registers use MMD DEVAD=0x1F (TI vendor space) via REGCR/ADDAR. */
u16 PHY_ReadExt(u32 reg)
{
    u16 val;
    XAxiEthernet_PhyReadExtended(phy_get_mac(), phyaddrforemac, reg, &val);
    xil_printf("PHY_EXT[%04x] = 0x%04x\r\n", (unsigned)reg, (unsigned)val);
    return val;
}

void PHY_WriteExt(u32 reg, u16 data)
{
    XAxiEthernet_PhyWriteExtended(phy_get_mac(), phyaddrforemac, reg, data);
    xil_printf("PHY_EXT[%04x] <= 0x%04x\r\n", (unsigned)reg, (unsigned)data);
}

void PHY_DumpRegs(void)
{
    xil_printf("\r\n=== DP83867IS PHY Dump (MDIO addr=%u) ===\r\n",
               (unsigned)phyaddrforemac);
    xil_printf("-- Standard IEEE 802.3 Clause-22 --\r\n");
    PHY_Read(0x00);  /* BMCR:   autoneg en, speed sel, duplex, sw-reset */
    PHY_Read(0x01);  /* BMSR:   link status, autoneg complete, caps     */
    PHY_Read(0x02);  /* PHYID1: expect 0x2000 (TI OUI)                 */
    PHY_Read(0x03);  /* PHYID2: expect 0xA231 (DP83867)                */
    PHY_Read(0x04);  /* ANAR:   speeds/duplex we advertise              */
    PHY_Read(0x05);  /* ANLPAR: link partner's advertisement            */
    PHY_Read(0x06);  /* ANER:   autoneg expansion / page received       */
    PHY_Read(0x09);  /* 1KTCR:  1G ctrl (master/slave cfg, 1G advert)  */
    PHY_Read(0x0A);  /* 1KSTSR: 1G status (master/slave resolved)      */
    PHY_Read(0x0F);  /* ESTSR:  extended status (1000BASE-X caps)      */
    xil_printf("-- DP83867 Vendor-Specific Regs --\r\n");
    PHY_Read(0x10);  /* PHYCR:  SGMII_EN[11], auto-MDIX[5:0]          */
    PHY_Read(0x11);  /* PHYSTS: speed/duplex/link decoded (read-only)  */
    PHY_Read(0x12);  /* MICR:   interrupt mask control                 */
    PHY_Read(0x13);  /* ISR:    interrupt status (clears on read!)     */
    PHY_Read(0x14);  /* FC:     false carrier sense counter            */
    PHY_Read(0x15);  /* RECR:   receive error counter                  */
    PHY_Read(0x16);  /* BISCR:  BIST and loopback control              */
    PHY_Read(0x17);  /* MII interrupt status 2                         */
    PHY_Read(0x1C);  /* CDCR:   cable diagnostic control/result        */
    PHY_Read(0x1F);  /* PHY Control 2                                  */
    xil_printf("-- Extended Regs (MMD DEVAD=0x1F) --\r\n");
    PHY_ReadExt(0x0032); /* SGMII/RGMII ctrl: SGMII_EN at bit 11      */
    PHY_ReadExt(0x0086); /* RGMII delay control                        */
    PHY_ReadExt(0x00D3); /* SGMII autoneg type (bit 7 = autoneg en)   */
    PHY_ReadExt(0x0170); /* SGMII Clock MUX   */
    PHY_ReadExt(0x01D5); /* Prog Gain   */
    PHY_ReadExt(0x225); /* MSE regs   */
    PHY_ReadExt(0x265); /* MSE regs   */
    PHY_ReadExt(0x2A5); /* MSE regs   */
    PHY_ReadExt(0x2E5); /* MSE regs   */
    xil_printf("=== End PHY Dump ===\r\n\r\n");
}
//After we've sent 32 commands to read the CRW reg (0x4203 or 0xC203)
// we call this to read out the SC FIFO and put it in sendbuf
int read_bulk_resp(u8* send_buf)
{
  u32 fifo_count;
  u32 i;
  u32* p32 = (u32*)send_buf;
  i=0;      
  //After the 32 commands are sent, there should be 1280B in the fifo, or 320 words
  do {
    fifo_count = Xil_In32(SC_IN_ADDR+8) & 0x7FF;  // The bottom 11 bits are the count of words
	xil_printf("SC FIFO count = %d\n\r", fifo_count);
	usleep(100);
    i++;
    if (i > 10) return 1;                   // Timeout after trying long enough
  } while (fifo_count < 320);                  
//We'll just pass the whole thing along, with the headers, etc
i = 0;
do {
  	*(p32+i++) =  Xil_In32(SC_IN_ADDR);
} while (i < 320);
return 0;
}

/*
int check_wresponse(int cmd)
{
  int i,j,k;
  int fifo_empty;
  int read;
  int cmd_resp;

  i=0;      // index into 32 bit values
  k=0;      // index into nibble counter

  do {
    fifo_empty = Xil_In32(SC_IN_ADDR+4) & 1;  // The LSB is the FIFO Empty flag
    i++;
    //From Claude:
	if ((i & 0xFFF) == 0) xemacif_input(my_netif_ptr);  // keep draining Eth FIFO while waiting    
	if (i > 0xFFFFFF) return 1;             // Timeout after trying long enough
  } while (fifo_empty);
  for (delay=0; delay<800; delay++) {}                  // wait for more data to come in
  i=0;
  read = Xil_In32(SC_IN_ADDR) & 1;        // read or write response
  do {
    fifo_empty = Xil_In32(SC_IN_ADDR+4) & 1;  // The LSB is the FIFO Empty flag
    i++;
    //From Claude:
    if ((i & 0xFFF) == 0) xemacif_input(my_netif_ptr);  // keep draining Eth FIFO while waiting
    if (i > 0xFFFFFF) return 1;             // Timeout after trying long enough
  }while (fifo_empty);
  cmd_resp = Xil_In32(SC_IN_ADDR) >> 8;   // command being responded to
  if (read) {
    return 1;
  }
//  xil_printf("Received register readback for %x\n", cmd_resp);
  if (cmd_resp != cmd)
  {
	xil_printf("Write Resp Fail, cmd = %x resp = %x\n\r", cmd, cmd_resp);
    return 1;
  }
  else
    return 0;
}
*/