#include <arch/cc.h>
#include <xil_types.h>
#define INCLUDE_OTHER_HK
//#define PRINT_PKT_MSG
//Comment out for the  RAW hardware
#define CRUNCHED
//Timer/Counter Stuff from Vitis 2025.2
#define TIMER_CNTR_0	 0
#define INTC		XScuGic
#define INTC_HANDLER	XScuGic_InterruptHandler



//The Ethernet, IP, and UDP headers, 42B in all: 14 for Eth, 20 for IP, 8 for UDP
#define ETH_DEST 0xffffffffffff	//Broadcast MAC
#define ETH_SOURCE 0x000a35010203
#define ETH_TYPE 0x0800
#define IP_VER 0x4500
#define ENABLE_RESEND
#define UDP_CMD_PORT 5001
#define UDP_HK_PORT 5002

//Total Length is the length of the IP packet, exclusive of the ethernet header (14B).
//So for a 8960 Byte total transmitted packet, total length is 8946
//#define TOT_LENGTH 0x22f2
#define TOT_LENGTH 8946
#define ID_FIELD 0x0000
#define FLAGS_TTL_UDP 0x00008011
#define IP_CSUM 0x0000
#define SOURCE_IP 0xc0a8040a  //192.168.4.10
#define DEST_IP 0xc0a80464	  //192.168.4.100
#define UDP_SOURCE 0x138b		//5003
#define UDP_DEST 0x138b
#define UDP_LENGTH TOT_LENGTH-20	//20 bytes for the IP header
#define UDP_CSUM 0x0000

#define MAX_SCI_BUF_BYTES 8*120
#define MIN_UDP_PAYLOAD 24

#define UDP_SEND_BUFSIZE 1440

#define DELAY_B4_FF_CLEAR 10000

// Peripheral addresses
//The slow control command port, write the 32b command data to this port
#define CMD_OUT_ADDR     XPAR_TIMEPIX4_COMMAND_OUT_0_BASEADDR
//The slow control control port, a write to this port sends the data
#define SEND_CMD_ADDR    XPAR_TIMEPIX4_COMMAND_OUT_0_BASEADDR+0xC
//The slow control input port- read the ASIC response from this one
#define SC_IN_ADDR       XPAR_TIMEPIX4_SC_IN_AXI_0_BASEADDR
//The gpio port with the slow control reset (bit 0) and ASIC reset (bit 1), both -true
#define RESET_SYNC_ADDR  XPAR_TIMEPIX_GPIO_AXI_0_BASEADDR
//The T0Sync address
#define T0_SYNC_ADDR  XPAR_TIMEPIX_GPIO_AXI_0_BASEADDR + 4
//The discrete shutter address
#define SHUTTER_ADDR     XPAR_TIMEPIX_GPIO_AXI_0_BASEADDR+0xc
//The IIC device, temp sensors are on this
#define IIC_DEVICE_ID	   XPAR_IIC_0_DEVICE_ID

//#define IIC_BASE_ADDRESS XPAR_IIC_0_BASEADDR
#define IIC_BASE_ADDRESS XPAR_XIIC_0_BASEADDR
#define TEMPSENSOR1 0x48
#ifdef CRUNCHED
//The Gain and Offset LUT RAMs for the TOT gain/offset cores
#define GAIN_BRAM_ADDR XPAR_AXI_BRAM_CTRL_GAIN_BASEADDR
#define OFFSET_BRAM_ADDR XPAR_AXI_BRAM_CTRL_OFFSET_BASEADDR
//The Centroider addresses- see centroider doc
#define CENTROID_PORT1_ADDR XPAR_AXI_GPIO_CENTROID_BASEADDR
#define CENTROID_PORT2_ADDR XPAR_AXI_GPIO_CENTROID_BASEADDR+8
#endif


//Bits in XPAR_AXI_GPIO_1_BASEADDR output port
#define RX_RESET 1				//reset_all of TP4_2pair_HS_readout
#define RX_FIFO_RESET 2  		//fifo_reset of "
#define RX_WRITE_HEADER_WORD 4  //write_header_word of "
#define RX_PAUSE 8				//pause of "
#define RESET_BLOCKSYNC 0x80	//reset_block_sync of "
#define RESET_TX_DP 0x100		//reset_tx_dp of "
#define RESET_RX_PLL_DP 0x200	//reset_rx_pll_dp
#define RESET_RX_DP 0x400		//reset rx_dp of "
#define DECODE_ON_MASK 0x800	//decode_addr of "
#define FAKE_RATE_MASK 0xff000	//fake rate of ""
#define DECODE_TOTTOA_MASK 0x100000	//decode_TOTTOA of "
#define GRAY_DECODE_MASK 0x200000	//decode_grey of "
#define DIGPIX_PW_MASK 0x3FC00000	//digpix_pw of digpix_gen
#define ROLLOVER_ON_MASK 0x40000000 //sel of axis_bypas_0 (high includes the rollover module)
#define GAIN_OFFSET_ON_MASK 0x80000000 //sel of axis_bypass_1 (high includes centroider)
//Write the 100GbE header words to this address
#define HEADER_WORD_ADDR XPAR_AXI_GPIO_1_BASEADDR + 8

//Some bits on the XPAR_AXI_GPIO_1_BASEADDR input port
#define TP4_RX_IDLE 0x1			//High when the TP4_2pair_HS_readout state machine is idling
#define CMAC_RX_ALIGNED 0x2		//Indicates CMAC (100G ethernet) receiver is aligned


//Some bits in the two Centroider ports
//Port1 CENTROID_PORT1_ADDR
#define CENTROID_LOW_PIX_MASK 0xffff
#define CENTROID_HIGH_PIX_MASK 0xffff0000
//Port2 CENTROID_PORT2_ADDR
#define CENTROID_TIME_WIN_MASK 0xffff
#define CENTROID_EPS_MASK 0x3ff0000
//This is the enable bit to the centroider module
#define CENTROID_ENABLE_MASK 0x4000000
//This is the bit which puts the centroider in the flow (so 0 to bypass)
#define CENTROID_IN_FLOW_MASK 0x8000000

//Bits in the CMAC control output port
#define TX_ENABLE_MASK 0x1
#define TX_TP_MASK 0x2
#define TX_SEND_IDLE_MASK 0x4
#define TX_SEND_LFI_MASK 0x8
#define TX_SEND_RFI_MASK 0x10
#define RX_ENABLE_MASK 0x20
#define RX_FORCE_RESYNC_MASK 0x40
#define RX_TEST_PATTERN_MASK 0x80
#define RESET_TX_DP_MASK 0x100
#define RESET_RX_DP_MASK 0x200
#define SYS_RESET_MASK 0x400
#define CORE_RX_RESET_MASK 0x800
#define CORE_TX_RESET_MASK 0x1000
#define FSFEC_IEIM_MASK 0x2000
#define RX_RSFEC_ENABLE_MASK 0x4000
#define RX_RSFEC_ENABLE_COR_MASK 0x8000
#define RX_RSFEC_ENABLE_IND_MASK 0x10000
#define TX_RSFEC_ENABLE_MASK 0x20000
#define XCEIVER_RESETL_MASK 0x40000
#define XCEIVER_LPMODE_MASK 0x80000
#define GT_LOOPBACK_MASK 0xfff00000

///////////  FUNCTION PROTOTYPES /////////////////////
/* defined by each RAW mode application */
void tcp_fasttmr(void);
void tcp_slowtmr(void);

//Set or clear one or more bits in one of the GPIO registers:
void Write_GPIO(u8 whichone, u32 mask, u32 value);

//Empty the slow control input FIFO
void empty_fifo(void);
//After a slow control command has been sent, check the response from the ASIC.  Return 0 if all good, 1 if not
int check_wresponse(int cmd);
//Send an "OK" packet back to the host
static void send_ok(u16 ser_no);
//Send a housekeeping packet back to the host
static void udp_hk_packet_send(int len);
//Read the housekeeping data and send bac a packet
void SendHK(void);
//Set the IIC MUX to the desired channel
void SetIICMux(u16 val);
//Compute and return IPv4 checksum, hptr points to header data
u16 ComputeIPChecksum(u16 * hptr);
//Print some info about ip settings
void print_ip(char *msg, struct ip4_addr *ip);
void print_ip_settings(struct ip4_addr *ip, struct ip4_addr *mask, struct ip4_addr *gw);
//Write the header words to the RX State Machine
void Write_Headers(u16 csum);
//Need to reverse the bytes in a u32 when writing header words
u32 rev_bytes (u32 inword);
//Write a 16b or 32b data word to a TP4 register
void WriteASICReg32(u16 addr, u32 val);
//Wait till there's data in FIFO and read it out- pass a pointer to a u32 array
u32 check_resp_FIFO(u8 num, u32 *buf);
//Read a 32b value from a TP4 register
u32 ReadASICReg32(u16 addr);
//Read a response of any length from the TP4
int read_response(int cmd, int words);
//Read a value from the internal ADC of the TP4
u32 Read_TP4_ADC(void);
//u8 ascii_to_val(char hex_digit);
//Set the Offset LUT to some initial value
u32 Set_Offset_LUT(void);
//Set the Gain LUT to some initial value
u32 Set_Gain_LUT(void);
//u32 Read_Gain_LUT(void);
//Set one column of the GAIN LUT to a series of values
int Prog_Gain_LUT(u16 col, u16* val);
//Set one column of the Offset LUT to a series of values
int Prog_Offset_LUT(u16 col, u16* val);

//Called when a packet received by GbEMAC
void recv_callback(void *arg, struct udp_pcb *tpcb, struct pbuf *p, struct ip4_addr *addr, u16_t port);

void timer_callback();

void debug_eth_fifo(void);
static void software_reset(void);
void PHY_DumpRegs(void);
void PHY_Write(u32 reg, u16 data);
void PHY_WriteExt(u32 reg, u16 data);
int read_bulk_resp(u8* send_buf);


