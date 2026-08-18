//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Mon Jun 15 11:36:22 2026
//Host        : richardraffanti running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=43,numReposBlks=42,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_aeth_cnt=1,da_axi4_cnt=14,da_board_cnt=11,da_cmac_usplus_cnt=1,da_microblaze_riscv_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK_IN1_D_0_clk_n,
    CLK_IN1_D_0_clk_p,
    GT_REFCLK_N,
    GT_REFCLK_P,
    IIC_0_scl_i,
    IIC_0_scl_o,
    IIC_0_scl_t,
    IIC_0_sda_i,
    IIC_0_sda_o,
    IIC_0_sda_t,
    SC_CLK_OUT_N,
    SC_CLK_OUT_P,
    SC_DATA_OUT_N,
    SC_DATA_OUT_P,
    SC_clk_in_N,
    SC_clk_in_P,
    SC_data_in_N,
    SC_data_in_P,
    T0_sync_N,
    T0_sync_P,
    TP4_testpoint_buf,
    TP4_testpoint_n,
    TP4_testpoint_p,
    digitalpixel_b,
    digitalpixel_t,
    digpix_drive_in,
    dummy_port_in,
    gt_ref_clk_0_clk_n,
    gt_ref_clk_0_clk_p,
    gt_serial_port_0_grx_n,
    gt_serial_port_0_grx_p,
    gt_serial_port_0_gtx_n,
    gt_serial_port_0_gtx_p,
    led_8bits_tri_o,
    mdio_mdc_mdc,
    mdio_mdc_mdio_i,
    mdio_mdc_mdio_o,
    mdio_mdc_mdio_t,
    pwr_en,
    pwr_good,
    qsfp3_lpmode,
    qsfp3_resetl,
    refclk_40_N,
    refclk_40_P,
    reset_0,
    reset_N,
    reset_P,
    rs232_uart_0_rxd,
    rs232_uart_0_txd,
    rx_n_0,
    rx_n_1,
    rx_p_0,
    rx_p_1,
    sgmii_lvds_rxn,
    sgmii_lvds_rxp,
    sgmii_lvds_txn,
    sgmii_lvds_txp,
    sgmii_phyclk_clk_n,
    sgmii_phyclk_clk_p,
    shutter_N,
    shutter_P);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D_0 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_IN1_D_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input CLK_IN1_D_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D_0 CLK_P" *) input CLK_IN1_D_0_clk_p;
  input GT_REFCLK_N;
  input GT_REFCLK_P;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_I" *) (* X_INTERFACE_MODE = "Master" *) input IIC_0_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_O" *) output IIC_0_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SCL_T" *) output IIC_0_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_I" *) input IIC_0_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_O" *) output IIC_0_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_0 SDA_T" *) output IIC_0_sda_t;
  input SC_CLK_OUT_N;
  input SC_CLK_OUT_P;
  input SC_DATA_OUT_N;
  input SC_DATA_OUT_P;
  output SC_clk_in_N;
  output SC_clk_in_P;
  output SC_data_in_N;
  output SC_data_in_P;
  output T0_sync_N;
  output T0_sync_P;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TP4_TESTPOINT_BUF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TP4_TESTPOINT_BUF, CLK_DOMAIN design_1_util_ds_buf_0_0_IBUF_OUT, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output [0:0]TP4_testpoint_buf;
  input TP4_testpoint_n;
  input TP4_testpoint_p;
  output [1:0]digitalpixel_b;
  output [1:0]digitalpixel_t;
  input digpix_drive_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DUMMY_PORT_IN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DUMMY_PORT_IN, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input dummy_port_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_ref_clk_0 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_ref_clk_0, CAN_DEBUG false, FREQ_HZ 156250000" *) input gt_ref_clk_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_ref_clk_0 CLK_P" *) input gt_ref_clk_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_0 GRX_N" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_serial_port_0, CAN_DEBUG false" *) input [3:0]gt_serial_port_0_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_0 GRX_P" *) input [3:0]gt_serial_port_0_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_0 GTX_N" *) output [3:0]gt_serial_port_0_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 gt_serial_port_0 GTX_P" *) output [3:0]gt_serial_port_0_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_8bits TRI_O" *) (* X_INTERFACE_MODE = "Master" *) output [7:0]led_8bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_mdc MDC" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio_mdc, CAN_DEBUG false" *) output mdio_mdc_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_mdc MDIO_I" *) input mdio_mdc_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_mdc MDIO_O" *) output mdio_mdc_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_mdc MDIO_T" *) output mdio_mdc_mdio_t;
  output pwr_en;
  input pwr_good;
  output qsfp3_lpmode;
  output qsfp3_resetl;
  output refclk_40_N;
  output refclk_40_P;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output reset_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_P RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_P, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output reset_P;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 rs232_uart_0 RxD" *) (* X_INTERFACE_MODE = "Master" *) input rs232_uart_0_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 rs232_uart_0 TxD" *) output rs232_uart_0_txd;
  input rx_n_0;
  input rx_n_1;
  input rx_p_0;
  input rx_p_1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii_lvds RXN" *) (* X_INTERFACE_MODE = "Master" *) input sgmii_lvds_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii_lvds RXP" *) input sgmii_lvds_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii_lvds TXN" *) output sgmii_lvds_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii_lvds TXP" *) output sgmii_lvds_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sgmii_phyclk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sgmii_phyclk, CAN_DEBUG false, FREQ_HZ 625000000" *) input sgmii_phyclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sgmii_phyclk CLK_P" *) input sgmii_phyclk_clk_p;
  output shutter_N;
  output shutter_P;

  wire CLK_IN1_D_0_clk_n;
  wire CLK_IN1_D_0_clk_p;
  wire GT_REFCLK_N;
  wire GT_REFCLK_P;
  wire IIC_0_scl_i;
  wire IIC_0_scl_o;
  wire IIC_0_scl_t;
  wire IIC_0_sda_i;
  wire IIC_0_sda_o;
  wire IIC_0_sda_t;
  wire [31:0]Net;
  wire SC_CLK_OUT_N;
  wire SC_CLK_OUT_P;
  wire SC_DATA_OUT_N;
  wire SC_DATA_OUT_P;
  wire SC_clk_in_N;
  wire SC_clk_in_P;
  wire SC_data_in_N;
  wire SC_data_in_P;
  wire T0_sync_N;
  wire T0_sync_P;
  wire [0:0]TP4_testpoint_buf;
  wire TP4_testpoint_n;
  wire TP4_testpoint_p;
  wire [31:0]axi_ethernet_0_fifo_AXI_STR_TXC_TDATA;
  wire [3:0]axi_ethernet_0_fifo_AXI_STR_TXC_TKEEP;
  wire axi_ethernet_0_fifo_AXI_STR_TXC_TLAST;
  wire axi_ethernet_0_fifo_AXI_STR_TXC_TREADY;
  wire axi_ethernet_0_fifo_AXI_STR_TXC_TVALID;
  wire [31:0]axi_ethernet_0_fifo_AXI_STR_TXD_TDATA;
  wire [3:0]axi_ethernet_0_fifo_AXI_STR_TXD_TKEEP;
  wire axi_ethernet_0_fifo_AXI_STR_TXD_TLAST;
  wire axi_ethernet_0_fifo_AXI_STR_TXD_TREADY;
  wire axi_ethernet_0_fifo_AXI_STR_TXD_TVALID;
  wire axi_ethernet_0_fifo_interrupt;
  wire axi_ethernet_0_fifo_mm2s_cntrl_reset_out_n;
  wire axi_ethernet_0_fifo_mm2s_prmry_reset_out_n;
  wire axi_ethernet_0_fifo_s2mm_prmry_reset_out_n;
  wire axi_ethernet_0_interrupt;
  wire [31:0]axi_ethernet_0_m_axis_rxd_TDATA;
  wire [3:0]axi_ethernet_0_m_axis_rxd_TKEEP;
  wire axi_ethernet_0_m_axis_rxd_TLAST;
  wire axi_ethernet_0_m_axis_rxd_TREADY;
  wire axi_ethernet_0_m_axis_rxd_TVALID;
  wire [3:0]axi_gpio_0_gpio2_io_o;
  wire [31:0]axi_gpio_1_gpio2_io_o;
  wire [31:0]axi_gpio_cmac_gpio_io_o;
  wire axi_timer_0_interrupt;
  wire breakout1_0_do_0;
  wire breakout1_0_do_1;
  wire breakout1_0_do_10;
  wire breakout1_0_do_11;
  wire breakout1_0_do_12;
  wire breakout1_0_do_13;
  wire breakout1_0_do_14;
  wire breakout1_0_do_15;
  wire breakout1_0_do_16;
  wire breakout1_0_do_17;
  wire breakout1_0_do_2;
  wire breakout1_0_do_3;
  wire [11:0]breakout1_0_do_31_20;
  wire breakout1_0_do_4;
  wire breakout1_0_do_5;
  wire breakout1_0_do_7;
  wire breakout1_0_do_8;
  wire breakout1_0_do_9;
  wire clk_wiz_1_clk_20;
  wire clk_wiz_1_clk_200;
  wire clk_wiz_1_clk_40;
  wire clk_wiz_1_locked;
  wire cmac_usplus_0_gt_txusrclk2;
  wire cmac_usplus_0_stat_rx_aligned;
  wire cmac_usplus_0_tx_axis_tready;
  wire [1:0]digitalpixel_b;
  wire [1:0]digitalpixel_t;
  wire digpix_drive_in;
  wire dummy_port_in;
  wire gt_ref_clk_0_clk_n;
  wire gt_ref_clk_0_clk_p;
  wire [3:0]gt_serial_port_0_grx_n;
  wire [3:0]gt_serial_port_0_grx_p;
  wire [3:0]gt_serial_port_0_gtx_n;
  wire [3:0]gt_serial_port_0_gtx_p;
  wire [31:0]ilconcat_0_dout;
  wire [0:0]ilconstant_0_dout;
  wire [29:0]ilconstant_1_dout;
  wire [0:0]ilslice_0_Dout;
  wire [0:0]ilslice_10a_Dout;
  wire [0:0]ilslice_11a_Dout;
  wire [7:0]ilslice_19_12_Dout;
  wire [0:0]ilslice_1_Dout;
  wire [0:0]ilslice_1_Dout1;
  wire [0:0]ilslice_20_Dout;
  wire [0:0]ilslice_2_Dout;
  wire [0:0]ilslice_3_Dout;
  wire [0:0]ilslice_8a_Dout;
  wire [0:0]ilslice_9a_Dout;
  wire [7:0]led_8bits_tri_o;
  wire mdio_mdc_mdc;
  wire mdio_mdc_mdio_i;
  wire mdio_mdc_mdio_o;
  wire mdio_mdc_mdio_t;
  wire mdm_1_debug_sys_rst;
  wire microblaze_riscv_0_Clk;
  wire [31:0]microblaze_riscv_0_axi_dp_ARADDR;
  wire [2:0]microblaze_riscv_0_axi_dp_ARPROT;
  wire microblaze_riscv_0_axi_dp_ARREADY;
  wire microblaze_riscv_0_axi_dp_ARVALID;
  wire [31:0]microblaze_riscv_0_axi_dp_AWADDR;
  wire [2:0]microblaze_riscv_0_axi_dp_AWPROT;
  wire microblaze_riscv_0_axi_dp_AWREADY;
  wire microblaze_riscv_0_axi_dp_AWVALID;
  wire microblaze_riscv_0_axi_dp_BREADY;
  wire [1:0]microblaze_riscv_0_axi_dp_BRESP;
  wire microblaze_riscv_0_axi_dp_BVALID;
  wire [31:0]microblaze_riscv_0_axi_dp_RDATA;
  wire microblaze_riscv_0_axi_dp_RREADY;
  wire [1:0]microblaze_riscv_0_axi_dp_RRESP;
  wire microblaze_riscv_0_axi_dp_RVALID;
  wire [31:0]microblaze_riscv_0_axi_dp_WDATA;
  wire microblaze_riscv_0_axi_dp_WREADY;
  wire [3:0]microblaze_riscv_0_axi_dp_WSTRB;
  wire microblaze_riscv_0_axi_dp_WVALID;
  wire [4:0]microblaze_riscv_0_axi_periph_M01_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M01_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M01_AXI_ARVALID;
  wire [4:0]microblaze_riscv_0_axi_periph_M01_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M01_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M01_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M01_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M01_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M01_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M01_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M01_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M01_AXI_WVALID;
  wire [17:0]microblaze_riscv_0_axi_periph_M02_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M02_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M02_AXI_ARVALID;
  wire [17:0]microblaze_riscv_0_axi_periph_M02_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M02_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M02_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M02_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M02_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M02_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M02_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M02_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M02_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M02_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M02_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M02_AXI_WVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M03_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M03_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M03_AXI_ARVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M03_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M03_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M03_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M03_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M03_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M03_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M03_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M03_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M03_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M03_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M03_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M03_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M03_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M03_AXI_WVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M04_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M04_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M04_AXI_ARVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M04_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M04_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M04_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M04_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M04_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M04_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M04_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M04_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M04_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M04_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M04_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M04_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M04_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M04_AXI_WVALID;
  wire [3:0]microblaze_riscv_0_axi_periph_M05_AXI_ARADDR;
  wire [2:0]microblaze_riscv_0_axi_periph_M05_AXI_ARPROT;
  wire microblaze_riscv_0_axi_periph_M05_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M05_AXI_ARVALID;
  wire [3:0]microblaze_riscv_0_axi_periph_M05_AXI_AWADDR;
  wire [2:0]microblaze_riscv_0_axi_periph_M05_AXI_AWPROT;
  wire microblaze_riscv_0_axi_periph_M05_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M05_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M05_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M05_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M05_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M05_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M05_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M05_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M05_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M05_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M05_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M05_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M05_AXI_WVALID;
  wire [3:0]microblaze_riscv_0_axi_periph_M06_AXI_ARADDR;
  wire [2:0]microblaze_riscv_0_axi_periph_M06_AXI_ARPROT;
  wire microblaze_riscv_0_axi_periph_M06_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M06_AXI_ARVALID;
  wire [3:0]microblaze_riscv_0_axi_periph_M06_AXI_AWADDR;
  wire [2:0]microblaze_riscv_0_axi_periph_M06_AXI_AWPROT;
  wire microblaze_riscv_0_axi_periph_M06_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M06_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M06_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M06_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M06_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M06_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M06_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M06_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M06_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M06_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M06_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M06_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M06_AXI_WVALID;
  wire [3:0]microblaze_riscv_0_axi_periph_M07_AXI_ARADDR;
  wire [2:0]microblaze_riscv_0_axi_periph_M07_AXI_ARPROT;
  wire microblaze_riscv_0_axi_periph_M07_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M07_AXI_ARVALID;
  wire [3:0]microblaze_riscv_0_axi_periph_M07_AXI_AWADDR;
  wire [2:0]microblaze_riscv_0_axi_periph_M07_AXI_AWPROT;
  wire microblaze_riscv_0_axi_periph_M07_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M07_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M07_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M07_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M07_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M07_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M07_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M07_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M07_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M07_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M07_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M07_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M07_AXI_WVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M08_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M08_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M08_AXI_ARVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M08_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M08_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M08_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M08_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M08_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M08_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M08_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M08_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M08_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M08_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M08_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M08_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M08_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M08_AXI_WVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M09_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M09_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M09_AXI_ARVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M09_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M09_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M09_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M09_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M09_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M09_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M09_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M09_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M09_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M09_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M09_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M09_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M09_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M09_AXI_WVALID;
  wire [3:0]microblaze_riscv_0_axi_periph_M10_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M10_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M10_AXI_ARVALID;
  wire [3:0]microblaze_riscv_0_axi_periph_M10_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M10_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M10_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M10_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M10_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M10_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M10_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M10_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M10_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M10_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M10_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M10_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M10_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M10_AXI_WVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M11_AXI_ARADDR;
  wire microblaze_riscv_0_axi_periph_M11_AXI_ARREADY;
  wire microblaze_riscv_0_axi_periph_M11_AXI_ARVALID;
  wire [8:0]microblaze_riscv_0_axi_periph_M11_AXI_AWADDR;
  wire microblaze_riscv_0_axi_periph_M11_AXI_AWREADY;
  wire microblaze_riscv_0_axi_periph_M11_AXI_AWVALID;
  wire microblaze_riscv_0_axi_periph_M11_AXI_BREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M11_AXI_BRESP;
  wire microblaze_riscv_0_axi_periph_M11_AXI_BVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M11_AXI_RDATA;
  wire microblaze_riscv_0_axi_periph_M11_AXI_RREADY;
  wire [1:0]microblaze_riscv_0_axi_periph_M11_AXI_RRESP;
  wire microblaze_riscv_0_axi_periph_M11_AXI_RVALID;
  wire [31:0]microblaze_riscv_0_axi_periph_M11_AXI_WDATA;
  wire microblaze_riscv_0_axi_periph_M11_AXI_WREADY;
  wire [3:0]microblaze_riscv_0_axi_periph_M11_AXI_WSTRB;
  wire microblaze_riscv_0_axi_periph_M11_AXI_WVALID;
  wire microblaze_riscv_0_debug_CAPTURE;
  wire microblaze_riscv_0_debug_CLK;
  wire microblaze_riscv_0_debug_DISABLE;
  wire [0:7]microblaze_riscv_0_debug_REG_EN;
  wire microblaze_riscv_0_debug_RST;
  wire microblaze_riscv_0_debug_SHIFT;
  wire microblaze_riscv_0_debug_TDI;
  wire microblaze_riscv_0_debug_TDO;
  wire microblaze_riscv_0_debug_UPDATE;
  wire [0:31]microblaze_riscv_0_dlmb_1_ABUS;
  wire microblaze_riscv_0_dlmb_1_ADDRSTROBE;
  wire [0:3]microblaze_riscv_0_dlmb_1_BE;
  wire microblaze_riscv_0_dlmb_1_CE;
  wire [0:31]microblaze_riscv_0_dlmb_1_READDBUS;
  wire microblaze_riscv_0_dlmb_1_READSTROBE;
  wire microblaze_riscv_0_dlmb_1_READY;
  wire microblaze_riscv_0_dlmb_1_UE;
  wire microblaze_riscv_0_dlmb_1_WAIT;
  wire [0:31]microblaze_riscv_0_dlmb_1_WRITEDBUS;
  wire microblaze_riscv_0_dlmb_1_WRITESTROBE;
  wire [0:31]microblaze_riscv_0_ilmb_1_ABUS;
  wire microblaze_riscv_0_ilmb_1_ADDRSTROBE;
  wire microblaze_riscv_0_ilmb_1_CE;
  wire [0:31]microblaze_riscv_0_ilmb_1_READDBUS;
  wire microblaze_riscv_0_ilmb_1_READSTROBE;
  wire microblaze_riscv_0_ilmb_1_READY;
  wire microblaze_riscv_0_ilmb_1_UE;
  wire microblaze_riscv_0_ilmb_1_WAIT;
  wire [8:0]microblaze_riscv_0_intc_axi_ARADDR;
  wire microblaze_riscv_0_intc_axi_ARREADY;
  wire microblaze_riscv_0_intc_axi_ARVALID;
  wire [8:0]microblaze_riscv_0_intc_axi_AWADDR;
  wire microblaze_riscv_0_intc_axi_AWREADY;
  wire microblaze_riscv_0_intc_axi_AWVALID;
  wire microblaze_riscv_0_intc_axi_BREADY;
  wire [1:0]microblaze_riscv_0_intc_axi_BRESP;
  wire microblaze_riscv_0_intc_axi_BVALID;
  wire [31:0]microblaze_riscv_0_intc_axi_RDATA;
  wire microblaze_riscv_0_intc_axi_RREADY;
  wire [1:0]microblaze_riscv_0_intc_axi_RRESP;
  wire microblaze_riscv_0_intc_axi_RVALID;
  wire [31:0]microblaze_riscv_0_intc_axi_WDATA;
  wire microblaze_riscv_0_intc_axi_WREADY;
  wire [3:0]microblaze_riscv_0_intc_axi_WSTRB;
  wire microblaze_riscv_0_intc_axi_WVALID;
  wire [0:1]microblaze_riscv_0_interrupt_ACK;
  wire [31:0]microblaze_riscv_0_interrupt_ADDRESS;
  wire microblaze_riscv_0_interrupt_INTERRUPT;
  wire [3:0]microblaze_riscv_0_intr;
  wire mod0_idle;
  wire [511:0]mod0_tx_tdata;
  wire [63:0]mod0_tx_tkeep;
  wire mod0_tx_tlast;
  wire mod0_tx_tvalid;
  wire pwr_en;
  wire pwr_good;
  wire qsfp3_lpmode;
  wire qsfp3_resetl;
  wire refclk_40_N;
  wire refclk_40_P;
  wire reset_0;
  wire reset_N;
  wire reset_P;
  wire rs232_uart_0_rxd;
  wire rs232_uart_0_txd;
  wire [0:0]rst_clk_wiz_1_100M_bus_struct_reset;
  wire rst_clk_wiz_1_100M_mb_reset;
  wire [0:0]rst_clk_wiz_1_100M_peripheral_aresetn;
  wire rx_n_0;
  wire rx_n_1;
  wire rx_p_0;
  wire rx_p_1;
  wire sgmii_lvds_rxn;
  wire sgmii_lvds_rxp;
  wire sgmii_lvds_txn;
  wire sgmii_lvds_txp;
  wire sgmii_phyclk_clk_n;
  wire sgmii_phyclk_clk_p;
  wire shutter_N;
  wire shutter_P;
  wire timepix4_sc_in_AXI_0_sc_irq;
  wire timepix_gpio_AXI_0_int_reset_n;

  design_1_axi_ethernet_0_0 axi_ethernet_0
       (.axi_rxd_arstn(axi_ethernet_0_fifo_s2mm_prmry_reset_out_n),
        .axi_rxs_arstn(axi_ethernet_0_fifo_s2mm_prmry_reset_out_n),
        .axi_txc_arstn(axi_ethernet_0_fifo_mm2s_cntrl_reset_out_n),
        .axi_txd_arstn(axi_ethernet_0_fifo_mm2s_prmry_reset_out_n),
        .axis_clk(microblaze_riscv_0_Clk),
        .dummy_port_in(dummy_port_in),
        .interrupt(axi_ethernet_0_interrupt),
        .lvds_clk_clk_n(sgmii_phyclk_clk_n),
        .lvds_clk_clk_p(sgmii_phyclk_clk_p),
        .m_axis_rxd_tdata(axi_ethernet_0_m_axis_rxd_TDATA),
        .m_axis_rxd_tkeep(axi_ethernet_0_m_axis_rxd_TKEEP),
        .m_axis_rxd_tlast(axi_ethernet_0_m_axis_rxd_TLAST),
        .m_axis_rxd_tready(axi_ethernet_0_m_axis_rxd_TREADY),
        .m_axis_rxd_tvalid(axi_ethernet_0_m_axis_rxd_TVALID),
        .m_axis_rxs_tready(1'b1),
        .mdio_mdc(mdio_mdc_mdc),
        .mdio_mdio_i(mdio_mdc_mdio_i),
        .mdio_mdio_o(mdio_mdc_mdio_o),
        .mdio_mdio_t(mdio_mdc_mdio_t),
        .riu_prsnt_1(1'b0),
        .riu_prsnt_2(1'b0),
        .riu_prsnt_3(1'b0),
        .riu_rddata_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_rddata_2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_rddata_3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_valid_1(1'b0),
        .riu_valid_2(1'b0),
        .riu_valid_3(1'b0),
        .rx_dly_rdy_1(1'b1),
        .rx_dly_rdy_2(1'b1),
        .rx_dly_rdy_3(1'b1),
        .rx_vtc_rdy_1(1'b1),
        .rx_vtc_rdy_2(1'b1),
        .rx_vtc_rdy_3(1'b1),
        .s_axi_araddr(microblaze_riscv_0_axi_periph_M02_AXI_ARADDR),
        .s_axi_arready(microblaze_riscv_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_axi_periph_M02_AXI_AWADDR),
        .s_axi_awready(microblaze_riscv_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(microblaze_riscv_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(microblaze_riscv_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_axi_periph_M02_AXI_BVALID),
        .s_axi_lite_clk(microblaze_riscv_0_Clk),
        .s_axi_lite_resetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_rdata(microblaze_riscv_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rready(microblaze_riscv_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(microblaze_riscv_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(microblaze_riscv_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wready(microblaze_riscv_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_axi_periph_M02_AXI_WVALID),
        .s_axis_txc_tdata(axi_ethernet_0_fifo_AXI_STR_TXC_TDATA),
        .s_axis_txc_tkeep(axi_ethernet_0_fifo_AXI_STR_TXC_TKEEP),
        .s_axis_txc_tlast(axi_ethernet_0_fifo_AXI_STR_TXC_TLAST),
        .s_axis_txc_tready(axi_ethernet_0_fifo_AXI_STR_TXC_TREADY),
        .s_axis_txc_tvalid(axi_ethernet_0_fifo_AXI_STR_TXC_TVALID),
        .s_axis_txd_tdata(axi_ethernet_0_fifo_AXI_STR_TXD_TDATA),
        .s_axis_txd_tkeep(axi_ethernet_0_fifo_AXI_STR_TXD_TKEEP),
        .s_axis_txd_tlast(axi_ethernet_0_fifo_AXI_STR_TXD_TLAST),
        .s_axis_txd_tready(axi_ethernet_0_fifo_AXI_STR_TXD_TREADY),
        .s_axis_txd_tvalid(axi_ethernet_0_fifo_AXI_STR_TXD_TVALID),
        .sgmii_rxn(sgmii_lvds_rxn),
        .sgmii_rxp(sgmii_lvds_rxp),
        .sgmii_txn(sgmii_lvds_txn),
        .sgmii_txp(sgmii_lvds_txp),
        .signal_detect(1'b1),
        .tx_dly_rdy_1(1'b1),
        .tx_dly_rdy_2(1'b1),
        .tx_dly_rdy_3(1'b1),
        .tx_vtc_rdy_1(1'b1),
        .tx_vtc_rdy_2(1'b1),
        .tx_vtc_rdy_3(1'b1));
  design_1_axi_ethernet_0_fifo_0 axi_ethernet_0_fifo
       (.axi_str_rxd_tdata(axi_ethernet_0_m_axis_rxd_TDATA),
        .axi_str_rxd_tkeep(axi_ethernet_0_m_axis_rxd_TKEEP),
        .axi_str_rxd_tlast(axi_ethernet_0_m_axis_rxd_TLAST),
        .axi_str_rxd_tready(axi_ethernet_0_m_axis_rxd_TREADY),
        .axi_str_rxd_tvalid(axi_ethernet_0_m_axis_rxd_TVALID),
        .axi_str_txc_tdata(axi_ethernet_0_fifo_AXI_STR_TXC_TDATA),
        .axi_str_txc_tkeep(axi_ethernet_0_fifo_AXI_STR_TXC_TKEEP),
        .axi_str_txc_tlast(axi_ethernet_0_fifo_AXI_STR_TXC_TLAST),
        .axi_str_txc_tready(axi_ethernet_0_fifo_AXI_STR_TXC_TREADY),
        .axi_str_txc_tvalid(axi_ethernet_0_fifo_AXI_STR_TXC_TVALID),
        .axi_str_txd_tdata(axi_ethernet_0_fifo_AXI_STR_TXD_TDATA),
        .axi_str_txd_tkeep(axi_ethernet_0_fifo_AXI_STR_TXD_TKEEP),
        .axi_str_txd_tlast(axi_ethernet_0_fifo_AXI_STR_TXD_TLAST),
        .axi_str_txd_tready(axi_ethernet_0_fifo_AXI_STR_TXD_TREADY),
        .axi_str_txd_tvalid(axi_ethernet_0_fifo_AXI_STR_TXD_TVALID),
        .interrupt(axi_ethernet_0_fifo_interrupt),
        .mm2s_cntrl_reset_out_n(axi_ethernet_0_fifo_mm2s_cntrl_reset_out_n),
        .mm2s_prmry_reset_out_n(axi_ethernet_0_fifo_mm2s_prmry_reset_out_n),
        .s2mm_prmry_reset_out_n(axi_ethernet_0_fifo_s2mm_prmry_reset_out_n),
        .s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_araddr(microblaze_riscv_0_axi_periph_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(microblaze_riscv_0_axi_periph_M03_AXI_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_axi_periph_M03_AXI_AWADDR),
        .s_axi_awready(microblaze_riscv_0_axi_periph_M03_AXI_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(microblaze_riscv_0_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(microblaze_riscv_0_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(microblaze_riscv_0_axi_periph_M03_AXI_RDATA),
        .s_axi_rready(microblaze_riscv_0_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(microblaze_riscv_0_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(microblaze_riscv_0_axi_periph_M03_AXI_WDATA),
        .s_axi_wready(microblaze_riscv_0_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_axi_periph_M03_AXI_WVALID));
  design_1_axi_gpio_0_4 axi_gpio_0
       (.gpio2_io_o(axi_gpio_0_gpio2_io_o),
        .gpio_io_o(led_8bits_tri_o),
        .s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_araddr(microblaze_riscv_0_axi_periph_M11_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(microblaze_riscv_0_axi_periph_M11_AXI_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_axi_periph_M11_AXI_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_axi_periph_M11_AXI_AWADDR),
        .s_axi_awready(microblaze_riscv_0_axi_periph_M11_AXI_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_axi_periph_M11_AXI_AWVALID),
        .s_axi_bready(microblaze_riscv_0_axi_periph_M11_AXI_BREADY),
        .s_axi_bresp(microblaze_riscv_0_axi_periph_M11_AXI_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_axi_periph_M11_AXI_BVALID),
        .s_axi_rdata(microblaze_riscv_0_axi_periph_M11_AXI_RDATA),
        .s_axi_rready(microblaze_riscv_0_axi_periph_M11_AXI_RREADY),
        .s_axi_rresp(microblaze_riscv_0_axi_periph_M11_AXI_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_axi_periph_M11_AXI_RVALID),
        .s_axi_wdata(microblaze_riscv_0_axi_periph_M11_AXI_WDATA),
        .s_axi_wready(microblaze_riscv_0_axi_periph_M11_AXI_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_axi_periph_M11_AXI_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_axi_periph_M11_AXI_WVALID));
  design_1_axi_gpio_0_1 axi_gpio_1
       (.gpio2_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio2_io_o(axi_gpio_1_gpio2_io_o),
        .gpio_io_i(ilconcat_0_dout),
        .gpio_io_o(Net),
        .s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_araddr(microblaze_riscv_0_axi_periph_M09_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(microblaze_riscv_0_axi_periph_M09_AXI_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_axi_periph_M09_AXI_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_axi_periph_M09_AXI_AWADDR),
        .s_axi_awready(microblaze_riscv_0_axi_periph_M09_AXI_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_axi_periph_M09_AXI_AWVALID),
        .s_axi_bready(microblaze_riscv_0_axi_periph_M09_AXI_BREADY),
        .s_axi_bresp(microblaze_riscv_0_axi_periph_M09_AXI_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_axi_periph_M09_AXI_BVALID),
        .s_axi_rdata(microblaze_riscv_0_axi_periph_M09_AXI_RDATA),
        .s_axi_rready(microblaze_riscv_0_axi_periph_M09_AXI_RREADY),
        .s_axi_rresp(microblaze_riscv_0_axi_periph_M09_AXI_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_axi_periph_M09_AXI_RVALID),
        .s_axi_wdata(microblaze_riscv_0_axi_periph_M09_AXI_WDATA),
        .s_axi_wready(microblaze_riscv_0_axi_periph_M09_AXI_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_axi_periph_M09_AXI_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_axi_periph_M09_AXI_WVALID));
  design_1_axi_gpio_0_0 axi_gpio_cmac
       (.gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio_io_o(axi_gpio_cmac_gpio_io_o),
        .s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_araddr(microblaze_riscv_0_axi_periph_M04_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(microblaze_riscv_0_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_axi_periph_M04_AXI_AWADDR),
        .s_axi_awready(microblaze_riscv_0_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(microblaze_riscv_0_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(microblaze_riscv_0_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(microblaze_riscv_0_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(microblaze_riscv_0_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(microblaze_riscv_0_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(microblaze_riscv_0_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(microblaze_riscv_0_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_axi_periph_M04_AXI_WVALID));
  design_1_axi_iic_0_0 axi_iic_0
       (.s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_araddr(microblaze_riscv_0_axi_periph_M08_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(microblaze_riscv_0_axi_periph_M08_AXI_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_axi_periph_M08_AXI_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_axi_periph_M08_AXI_AWADDR),
        .s_axi_awready(microblaze_riscv_0_axi_periph_M08_AXI_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_axi_periph_M08_AXI_AWVALID),
        .s_axi_bready(microblaze_riscv_0_axi_periph_M08_AXI_BREADY),
        .s_axi_bresp(microblaze_riscv_0_axi_periph_M08_AXI_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_axi_periph_M08_AXI_BVALID),
        .s_axi_rdata(microblaze_riscv_0_axi_periph_M08_AXI_RDATA),
        .s_axi_rready(microblaze_riscv_0_axi_periph_M08_AXI_RREADY),
        .s_axi_rresp(microblaze_riscv_0_axi_periph_M08_AXI_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_axi_periph_M08_AXI_RVALID),
        .s_axi_wdata(microblaze_riscv_0_axi_periph_M08_AXI_WDATA),
        .s_axi_wready(microblaze_riscv_0_axi_periph_M08_AXI_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_axi_periph_M08_AXI_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_axi_periph_M08_AXI_WVALID),
        .scl_i(IIC_0_scl_i),
        .scl_o(IIC_0_scl_o),
        .scl_t(IIC_0_scl_t),
        .sda_i(IIC_0_sda_i),
        .sda_o(IIC_0_sda_o),
        .sda_t(IIC_0_sda_t));
  design_1_axi_timer_0_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_0_interrupt),
        .s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_araddr(microblaze_riscv_0_axi_periph_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(microblaze_riscv_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_axi_periph_M01_AXI_AWADDR),
        .s_axi_awready(microblaze_riscv_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(microblaze_riscv_0_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(microblaze_riscv_0_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(microblaze_riscv_0_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(microblaze_riscv_0_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(microblaze_riscv_0_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(microblaze_riscv_0_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(microblaze_riscv_0_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_axi_periph_M01_AXI_WVALID));
  design_1_axi_uartlite_0_0 axi_uartlite_0
       (.rx(rs232_uart_0_rxd),
        .s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_araddr(microblaze_riscv_0_axi_periph_M10_AXI_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(microblaze_riscv_0_axi_periph_M10_AXI_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_axi_periph_M10_AXI_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_axi_periph_M10_AXI_AWADDR),
        .s_axi_awready(microblaze_riscv_0_axi_periph_M10_AXI_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_axi_periph_M10_AXI_AWVALID),
        .s_axi_bready(microblaze_riscv_0_axi_periph_M10_AXI_BREADY),
        .s_axi_bresp(microblaze_riscv_0_axi_periph_M10_AXI_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_axi_periph_M10_AXI_BVALID),
        .s_axi_rdata(microblaze_riscv_0_axi_periph_M10_AXI_RDATA),
        .s_axi_rready(microblaze_riscv_0_axi_periph_M10_AXI_RREADY),
        .s_axi_rresp(microblaze_riscv_0_axi_periph_M10_AXI_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_axi_periph_M10_AXI_RVALID),
        .s_axi_wdata(microblaze_riscv_0_axi_periph_M10_AXI_WDATA),
        .s_axi_wready(microblaze_riscv_0_axi_periph_M10_AXI_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_axi_periph_M10_AXI_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_axi_periph_M10_AXI_WVALID),
        .tx(rs232_uart_0_txd));
  design_1_breakout1_0_0 breakout1_0
       (.din(axi_gpio_cmac_gpio_io_o),
        .do_0(breakout1_0_do_0),
        .do_1(breakout1_0_do_1),
        .do_10(breakout1_0_do_10),
        .do_11(breakout1_0_do_11),
        .do_12(breakout1_0_do_12),
        .do_13(breakout1_0_do_13),
        .do_14(breakout1_0_do_14),
        .do_15(breakout1_0_do_15),
        .do_16(breakout1_0_do_16),
        .do_17(breakout1_0_do_17),
        .do_18(qsfp3_resetl),
        .do_19(qsfp3_lpmode),
        .do_2(breakout1_0_do_2),
        .do_3(breakout1_0_do_3),
        .do_31_20(breakout1_0_do_31_20),
        .do_4(breakout1_0_do_4),
        .do_5(breakout1_0_do_5),
        .do_7(breakout1_0_do_7),
        .do_8(breakout1_0_do_8),
        .do_9(breakout1_0_do_9));
  design_1_clk_wiz_1_0 clk_wiz_1
       (.clk_100(microblaze_riscv_0_Clk),
        .clk_20(clk_wiz_1_clk_20),
        .clk_200(clk_wiz_1_clk_200),
        .clk_40(clk_wiz_1_clk_40),
        .clk_in1_n(CLK_IN1_D_0_clk_n),
        .clk_in1_p(CLK_IN1_D_0_clk_p),
        .locked(clk_wiz_1_locked),
        .reset(reset_0));
  design_1_cmac_usplus_0_0 cmac_usplus_0
       (.core_drp_reset(ilconstant_0_dout),
        .core_rx_reset(breakout1_0_do_11),
        .core_tx_reset(breakout1_0_do_12),
        .ctl_rsfec_ieee_error_indication_mode(breakout1_0_do_13),
        .ctl_rx_enable(breakout1_0_do_5),
        .ctl_rx_force_resync(ilconstant_0_dout),
        .ctl_rx_rsfec_enable(breakout1_0_do_14),
        .ctl_rx_rsfec_enable_correction(breakout1_0_do_15),
        .ctl_rx_rsfec_enable_indication(breakout1_0_do_16),
        .ctl_rx_test_pattern(breakout1_0_do_7),
        .ctl_tx_enable(breakout1_0_do_0),
        .ctl_tx_rsfec_enable(breakout1_0_do_17),
        .ctl_tx_send_idle(breakout1_0_do_2),
        .ctl_tx_send_lfi(breakout1_0_do_3),
        .ctl_tx_send_rfi(breakout1_0_do_4),
        .ctl_tx_test_pattern(breakout1_0_do_1),
        .drp_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_clk(ilconstant_0_dout),
        .drp_di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_en(1'b0),
        .drp_we(1'b0),
        .gt_loopback_in(breakout1_0_do_31_20),
        .gt_ref_clk_n(gt_ref_clk_0_clk_n),
        .gt_ref_clk_p(gt_ref_clk_0_clk_p),
        .gt_rxn_in(gt_serial_port_0_grx_n),
        .gt_rxp_in(gt_serial_port_0_grx_p),
        .gt_txn_out(gt_serial_port_0_gtx_n),
        .gt_txp_out(gt_serial_port_0_gtx_p),
        .gt_txusrclk2(cmac_usplus_0_gt_txusrclk2),
        .gtwiz_reset_rx_datapath(breakout1_0_do_9),
        .gtwiz_reset_tx_datapath(breakout1_0_do_8),
        .init_clk(microblaze_riscv_0_Clk),
        .rx_clk(cmac_usplus_0_gt_txusrclk2),
        .stat_rx_aligned(cmac_usplus_0_stat_rx_aligned),
        .sys_reset(breakout1_0_do_10),
        .tx_axis_tdata(mod0_tx_tdata),
        .tx_axis_tkeep(mod0_tx_tkeep),
        .tx_axis_tlast(mod0_tx_tlast),
        .tx_axis_tready(cmac_usplus_0_tx_axis_tready),
        .tx_axis_tuser(1'b0),
        .tx_axis_tvalid(mod0_tx_tvalid),
        .tx_preamblein({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  design_1_digpix_select_0_0 digpix_select_0
       (.dp_b_out(digitalpixel_b),
        .dp_t_out(digitalpixel_t),
        .drive_in(digpix_drive_in),
        .sel_dp({1'b0,1'b0,1'b0,1'b0}));
  assign ilconcat_0_dout = {ilconstant_1_dout, cmac_usplus_0_stat_rx_aligned, mod0_idle};
  assign ilconstant_0_dout = 1'h0;
  assign ilconstant_1_dout = 30'h00000000;
  assign ilslice_0_Dout = Net[0:0];
  assign ilslice_1_Dout1 = Net[1:1];
  assign ilslice_10a_Dout = Net[10:10];
  assign ilslice_11a_Dout = Net[11:11];
  assign ilslice_19_12_Dout = Net[19:12];
  assign ilslice_2_Dout = Net[2:2];
  assign ilslice_20_Dout = Net[20:20];
  assign ilslice_3_Dout = Net[3:3];
  assign ilslice_1_Dout = Net[7:7];
  assign ilslice_8a_Dout = Net[8:8];
  assign ilslice_9a_Dout = Net[9:9];
  design_1_mdm_1_0 mdm_1
       (.Dbg_Capture_0(microblaze_riscv_0_debug_CAPTURE),
        .Dbg_Clk_0(microblaze_riscv_0_debug_CLK),
        .Dbg_Disable_0(microblaze_riscv_0_debug_DISABLE),
        .Dbg_Reg_En_0(microblaze_riscv_0_debug_REG_EN),
        .Dbg_Rst_0(microblaze_riscv_0_debug_RST),
        .Dbg_Shift_0(microblaze_riscv_0_debug_SHIFT),
        .Dbg_TDI_0(microblaze_riscv_0_debug_TDI),
        .Dbg_TDO_0(microblaze_riscv_0_debug_TDO),
        .Dbg_Update_0(microblaze_riscv_0_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
  (* BMM_INFO_PROCESSOR = "riscv > design_1 microblaze_riscv_0_local_memory/dlmb_bram_if_cntlr" *) 
  (* KEEP_HIERARCHY = "YES" *) 
  design_1_microblaze_riscv_0_0 microblaze_riscv_0
       (.Byte_Enable(microblaze_riscv_0_dlmb_1_BE),
        .Clk(microblaze_riscv_0_Clk),
        .DCE(microblaze_riscv_0_dlmb_1_CE),
        .DReady(microblaze_riscv_0_dlmb_1_READY),
        .DUE(microblaze_riscv_0_dlmb_1_UE),
        .DWait(microblaze_riscv_0_dlmb_1_WAIT),
        .D_AS(microblaze_riscv_0_dlmb_1_ADDRSTROBE),
        .Data_Addr(microblaze_riscv_0_dlmb_1_ABUS),
        .Data_Read(microblaze_riscv_0_dlmb_1_READDBUS),
        .Data_Write(microblaze_riscv_0_dlmb_1_WRITEDBUS),
        .Dbg_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dbg_ARVALID(1'b0),
        .Dbg_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dbg_AWVALID(1'b0),
        .Dbg_BREADY(1'b0),
        .Dbg_Capture(microblaze_riscv_0_debug_CAPTURE),
        .Dbg_Clk(microblaze_riscv_0_debug_CLK),
        .Dbg_Disable(microblaze_riscv_0_debug_DISABLE),
        .Dbg_RREADY(1'b0),
        .Dbg_Reg_En(microblaze_riscv_0_debug_REG_EN),
        .Dbg_Shift(microblaze_riscv_0_debug_SHIFT),
        .Dbg_TDI(microblaze_riscv_0_debug_TDI),
        .Dbg_TDO(microblaze_riscv_0_debug_TDO),
        .Dbg_Trig_Ack_In({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dbg_Trig_Out({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dbg_Update(microblaze_riscv_0_debug_UPDATE),
        .Dbg_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dbg_WVALID(1'b0),
        .Debug_Rst(microblaze_riscv_0_debug_RST),
        .ICE(microblaze_riscv_0_ilmb_1_CE),
        .IFetch(microblaze_riscv_0_ilmb_1_READSTROBE),
        .IReady(microblaze_riscv_0_ilmb_1_READY),
        .IUE(microblaze_riscv_0_ilmb_1_UE),
        .IWAIT(microblaze_riscv_0_ilmb_1_WAIT),
        .I_AS(microblaze_riscv_0_ilmb_1_ADDRSTROBE),
        .Instr(microblaze_riscv_0_ilmb_1_READDBUS),
        .Instr_Addr(microblaze_riscv_0_ilmb_1_ABUS),
        .Interrupt(microblaze_riscv_0_interrupt_INTERRUPT),
        .Interrupt_Ack(microblaze_riscv_0_interrupt_ACK),
        .Interrupt_Address({microblaze_riscv_0_interrupt_ADDRESS[31],microblaze_riscv_0_interrupt_ADDRESS[30],microblaze_riscv_0_interrupt_ADDRESS[29],microblaze_riscv_0_interrupt_ADDRESS[28],microblaze_riscv_0_interrupt_ADDRESS[27],microblaze_riscv_0_interrupt_ADDRESS[26],microblaze_riscv_0_interrupt_ADDRESS[25],microblaze_riscv_0_interrupt_ADDRESS[24],microblaze_riscv_0_interrupt_ADDRESS[23],microblaze_riscv_0_interrupt_ADDRESS[22],microblaze_riscv_0_interrupt_ADDRESS[21],microblaze_riscv_0_interrupt_ADDRESS[20],microblaze_riscv_0_interrupt_ADDRESS[19],microblaze_riscv_0_interrupt_ADDRESS[18],microblaze_riscv_0_interrupt_ADDRESS[17],microblaze_riscv_0_interrupt_ADDRESS[16],microblaze_riscv_0_interrupt_ADDRESS[15],microblaze_riscv_0_interrupt_ADDRESS[14],microblaze_riscv_0_interrupt_ADDRESS[13],microblaze_riscv_0_interrupt_ADDRESS[12],microblaze_riscv_0_interrupt_ADDRESS[11],microblaze_riscv_0_interrupt_ADDRESS[10],microblaze_riscv_0_interrupt_ADDRESS[9],microblaze_riscv_0_interrupt_ADDRESS[8],microblaze_riscv_0_interrupt_ADDRESS[7],microblaze_riscv_0_interrupt_ADDRESS[6],microblaze_riscv_0_interrupt_ADDRESS[5],microblaze_riscv_0_interrupt_ADDRESS[4],microblaze_riscv_0_interrupt_ADDRESS[3],microblaze_riscv_0_interrupt_ADDRESS[2],microblaze_riscv_0_interrupt_ADDRESS[1],microblaze_riscv_0_interrupt_ADDRESS[0]}),
        .M_AXI_DP_ARADDR(microblaze_riscv_0_axi_dp_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_riscv_0_axi_dp_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_riscv_0_axi_dp_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_riscv_0_axi_dp_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_riscv_0_axi_dp_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_riscv_0_axi_dp_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_riscv_0_axi_dp_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_riscv_0_axi_dp_AWVALID),
        .M_AXI_DP_BREADY(microblaze_riscv_0_axi_dp_BREADY),
        .M_AXI_DP_BRESP(microblaze_riscv_0_axi_dp_BRESP),
        .M_AXI_DP_BVALID(microblaze_riscv_0_axi_dp_BVALID),
        .M_AXI_DP_RDATA(microblaze_riscv_0_axi_dp_RDATA),
        .M_AXI_DP_RREADY(microblaze_riscv_0_axi_dp_RREADY),
        .M_AXI_DP_RRESP(microblaze_riscv_0_axi_dp_RRESP),
        .M_AXI_DP_RVALID(microblaze_riscv_0_axi_dp_RVALID),
        .M_AXI_DP_WDATA(microblaze_riscv_0_axi_dp_WDATA),
        .M_AXI_DP_WREADY(microblaze_riscv_0_axi_dp_WREADY),
        .M_AXI_DP_WSTRB(microblaze_riscv_0_axi_dp_WSTRB),
        .M_AXI_DP_WVALID(microblaze_riscv_0_axi_dp_WVALID),
        .Read_Strobe(microblaze_riscv_0_dlmb_1_READSTROBE),
        .Reset(rst_clk_wiz_1_100M_mb_reset),
        .Write_Strobe(microblaze_riscv_0_dlmb_1_WRITESTROBE));
  design_1_microblaze_riscv_0_axi_intc_0 microblaze_riscv_0_axi_intc
       (.interrupt_address(microblaze_riscv_0_interrupt_ADDRESS),
        .intr(microblaze_riscv_0_intr),
        .irq(microblaze_riscv_0_interrupt_INTERRUPT),
        .processor_ack({microblaze_riscv_0_interrupt_ACK[0],microblaze_riscv_0_interrupt_ACK[1]}),
        .processor_clk(microblaze_riscv_0_Clk),
        .processor_rst(rst_clk_wiz_1_100M_mb_reset),
        .s_axi_aclk(microblaze_riscv_0_Clk),
        .s_axi_araddr(microblaze_riscv_0_intc_axi_ARADDR),
        .s_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .s_axi_arready(microblaze_riscv_0_intc_axi_ARREADY),
        .s_axi_arvalid(microblaze_riscv_0_intc_axi_ARVALID),
        .s_axi_awaddr(microblaze_riscv_0_intc_axi_AWADDR),
        .s_axi_awready(microblaze_riscv_0_intc_axi_AWREADY),
        .s_axi_awvalid(microblaze_riscv_0_intc_axi_AWVALID),
        .s_axi_bready(microblaze_riscv_0_intc_axi_BREADY),
        .s_axi_bresp(microblaze_riscv_0_intc_axi_BRESP),
        .s_axi_bvalid(microblaze_riscv_0_intc_axi_BVALID),
        .s_axi_rdata(microblaze_riscv_0_intc_axi_RDATA),
        .s_axi_rready(microblaze_riscv_0_intc_axi_RREADY),
        .s_axi_rresp(microblaze_riscv_0_intc_axi_RRESP),
        .s_axi_rvalid(microblaze_riscv_0_intc_axi_RVALID),
        .s_axi_wdata(microblaze_riscv_0_intc_axi_WDATA),
        .s_axi_wready(microblaze_riscv_0_intc_axi_WREADY),
        .s_axi_wstrb(microblaze_riscv_0_intc_axi_WSTRB),
        .s_axi_wvalid(microblaze_riscv_0_intc_axi_WVALID));
  design_1_microblaze_riscv_0_axi_periph_0 microblaze_riscv_0_axi_periph
       (.M00_AXI_araddr(microblaze_riscv_0_intc_axi_ARADDR),
        .M00_AXI_arready(microblaze_riscv_0_intc_axi_ARREADY),
        .M00_AXI_arvalid(microblaze_riscv_0_intc_axi_ARVALID),
        .M00_AXI_awaddr(microblaze_riscv_0_intc_axi_AWADDR),
        .M00_AXI_awready(microblaze_riscv_0_intc_axi_AWREADY),
        .M00_AXI_awvalid(microblaze_riscv_0_intc_axi_AWVALID),
        .M00_AXI_bready(microblaze_riscv_0_intc_axi_BREADY),
        .M00_AXI_bresp(microblaze_riscv_0_intc_axi_BRESP),
        .M00_AXI_bvalid(microblaze_riscv_0_intc_axi_BVALID),
        .M00_AXI_rdata(microblaze_riscv_0_intc_axi_RDATA),
        .M00_AXI_rready(microblaze_riscv_0_intc_axi_RREADY),
        .M00_AXI_rresp(microblaze_riscv_0_intc_axi_RRESP),
        .M00_AXI_rvalid(microblaze_riscv_0_intc_axi_RVALID),
        .M00_AXI_wdata(microblaze_riscv_0_intc_axi_WDATA),
        .M00_AXI_wready(microblaze_riscv_0_intc_axi_WREADY),
        .M00_AXI_wstrb(microblaze_riscv_0_intc_axi_WSTRB),
        .M00_AXI_wvalid(microblaze_riscv_0_intc_axi_WVALID),
        .M01_AXI_araddr(microblaze_riscv_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(microblaze_riscv_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(microblaze_riscv_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(microblaze_riscv_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(microblaze_riscv_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(microblaze_riscv_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(microblaze_riscv_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(microblaze_riscv_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(microblaze_riscv_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(microblaze_riscv_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(microblaze_riscv_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(microblaze_riscv_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(microblaze_riscv_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(microblaze_riscv_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(microblaze_riscv_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(microblaze_riscv_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(microblaze_riscv_0_axi_periph_M01_AXI_WVALID),
        .M02_AXI_araddr(microblaze_riscv_0_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(microblaze_riscv_0_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(microblaze_riscv_0_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(microblaze_riscv_0_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(microblaze_riscv_0_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(microblaze_riscv_0_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(microblaze_riscv_0_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(microblaze_riscv_0_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(microblaze_riscv_0_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(microblaze_riscv_0_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(microblaze_riscv_0_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(microblaze_riscv_0_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(microblaze_riscv_0_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(microblaze_riscv_0_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(microblaze_riscv_0_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(microblaze_riscv_0_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(microblaze_riscv_0_axi_periph_M02_AXI_WVALID),
        .M03_AXI_araddr(microblaze_riscv_0_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(microblaze_riscv_0_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(microblaze_riscv_0_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(microblaze_riscv_0_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(microblaze_riscv_0_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(microblaze_riscv_0_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(microblaze_riscv_0_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(microblaze_riscv_0_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(microblaze_riscv_0_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(microblaze_riscv_0_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(microblaze_riscv_0_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(microblaze_riscv_0_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(microblaze_riscv_0_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(microblaze_riscv_0_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(microblaze_riscv_0_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(microblaze_riscv_0_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(microblaze_riscv_0_axi_periph_M03_AXI_WVALID),
        .M04_AXI_araddr(microblaze_riscv_0_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(microblaze_riscv_0_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(microblaze_riscv_0_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(microblaze_riscv_0_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(microblaze_riscv_0_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(microblaze_riscv_0_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(microblaze_riscv_0_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(microblaze_riscv_0_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(microblaze_riscv_0_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(microblaze_riscv_0_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(microblaze_riscv_0_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(microblaze_riscv_0_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(microblaze_riscv_0_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(microblaze_riscv_0_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(microblaze_riscv_0_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(microblaze_riscv_0_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(microblaze_riscv_0_axi_periph_M04_AXI_WVALID),
        .M05_AXI_araddr(microblaze_riscv_0_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arprot(microblaze_riscv_0_axi_periph_M05_AXI_ARPROT),
        .M05_AXI_arready(microblaze_riscv_0_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(microblaze_riscv_0_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(microblaze_riscv_0_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awprot(microblaze_riscv_0_axi_periph_M05_AXI_AWPROT),
        .M05_AXI_awready(microblaze_riscv_0_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(microblaze_riscv_0_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(microblaze_riscv_0_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(microblaze_riscv_0_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(microblaze_riscv_0_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(microblaze_riscv_0_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(microblaze_riscv_0_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(microblaze_riscv_0_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(microblaze_riscv_0_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(microblaze_riscv_0_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(microblaze_riscv_0_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(microblaze_riscv_0_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(microblaze_riscv_0_axi_periph_M05_AXI_WVALID),
        .M06_AXI_araddr(microblaze_riscv_0_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arprot(microblaze_riscv_0_axi_periph_M06_AXI_ARPROT),
        .M06_AXI_arready(microblaze_riscv_0_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(microblaze_riscv_0_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(microblaze_riscv_0_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awprot(microblaze_riscv_0_axi_periph_M06_AXI_AWPROT),
        .M06_AXI_awready(microblaze_riscv_0_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(microblaze_riscv_0_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(microblaze_riscv_0_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(microblaze_riscv_0_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(microblaze_riscv_0_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(microblaze_riscv_0_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(microblaze_riscv_0_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(microblaze_riscv_0_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(microblaze_riscv_0_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(microblaze_riscv_0_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(microblaze_riscv_0_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(microblaze_riscv_0_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(microblaze_riscv_0_axi_periph_M06_AXI_WVALID),
        .M07_AXI_araddr(microblaze_riscv_0_axi_periph_M07_AXI_ARADDR),
        .M07_AXI_arprot(microblaze_riscv_0_axi_periph_M07_AXI_ARPROT),
        .M07_AXI_arready(microblaze_riscv_0_axi_periph_M07_AXI_ARREADY),
        .M07_AXI_arvalid(microblaze_riscv_0_axi_periph_M07_AXI_ARVALID),
        .M07_AXI_awaddr(microblaze_riscv_0_axi_periph_M07_AXI_AWADDR),
        .M07_AXI_awprot(microblaze_riscv_0_axi_periph_M07_AXI_AWPROT),
        .M07_AXI_awready(microblaze_riscv_0_axi_periph_M07_AXI_AWREADY),
        .M07_AXI_awvalid(microblaze_riscv_0_axi_periph_M07_AXI_AWVALID),
        .M07_AXI_bready(microblaze_riscv_0_axi_periph_M07_AXI_BREADY),
        .M07_AXI_bresp(microblaze_riscv_0_axi_periph_M07_AXI_BRESP),
        .M07_AXI_bvalid(microblaze_riscv_0_axi_periph_M07_AXI_BVALID),
        .M07_AXI_rdata(microblaze_riscv_0_axi_periph_M07_AXI_RDATA),
        .M07_AXI_rready(microblaze_riscv_0_axi_periph_M07_AXI_RREADY),
        .M07_AXI_rresp(microblaze_riscv_0_axi_periph_M07_AXI_RRESP),
        .M07_AXI_rvalid(microblaze_riscv_0_axi_periph_M07_AXI_RVALID),
        .M07_AXI_wdata(microblaze_riscv_0_axi_periph_M07_AXI_WDATA),
        .M07_AXI_wready(microblaze_riscv_0_axi_periph_M07_AXI_WREADY),
        .M07_AXI_wstrb(microblaze_riscv_0_axi_periph_M07_AXI_WSTRB),
        .M07_AXI_wvalid(microblaze_riscv_0_axi_periph_M07_AXI_WVALID),
        .M08_AXI_araddr(microblaze_riscv_0_axi_periph_M08_AXI_ARADDR),
        .M08_AXI_arready(microblaze_riscv_0_axi_periph_M08_AXI_ARREADY),
        .M08_AXI_arvalid(microblaze_riscv_0_axi_periph_M08_AXI_ARVALID),
        .M08_AXI_awaddr(microblaze_riscv_0_axi_periph_M08_AXI_AWADDR),
        .M08_AXI_awready(microblaze_riscv_0_axi_periph_M08_AXI_AWREADY),
        .M08_AXI_awvalid(microblaze_riscv_0_axi_periph_M08_AXI_AWVALID),
        .M08_AXI_bready(microblaze_riscv_0_axi_periph_M08_AXI_BREADY),
        .M08_AXI_bresp(microblaze_riscv_0_axi_periph_M08_AXI_BRESP),
        .M08_AXI_bvalid(microblaze_riscv_0_axi_periph_M08_AXI_BVALID),
        .M08_AXI_rdata(microblaze_riscv_0_axi_periph_M08_AXI_RDATA),
        .M08_AXI_rready(microblaze_riscv_0_axi_periph_M08_AXI_RREADY),
        .M08_AXI_rresp(microblaze_riscv_0_axi_periph_M08_AXI_RRESP),
        .M08_AXI_rvalid(microblaze_riscv_0_axi_periph_M08_AXI_RVALID),
        .M08_AXI_wdata(microblaze_riscv_0_axi_periph_M08_AXI_WDATA),
        .M08_AXI_wready(microblaze_riscv_0_axi_periph_M08_AXI_WREADY),
        .M08_AXI_wstrb(microblaze_riscv_0_axi_periph_M08_AXI_WSTRB),
        .M08_AXI_wvalid(microblaze_riscv_0_axi_periph_M08_AXI_WVALID),
        .M09_AXI_araddr(microblaze_riscv_0_axi_periph_M09_AXI_ARADDR),
        .M09_AXI_arready(microblaze_riscv_0_axi_periph_M09_AXI_ARREADY),
        .M09_AXI_arvalid(microblaze_riscv_0_axi_periph_M09_AXI_ARVALID),
        .M09_AXI_awaddr(microblaze_riscv_0_axi_periph_M09_AXI_AWADDR),
        .M09_AXI_awready(microblaze_riscv_0_axi_periph_M09_AXI_AWREADY),
        .M09_AXI_awvalid(microblaze_riscv_0_axi_periph_M09_AXI_AWVALID),
        .M09_AXI_bready(microblaze_riscv_0_axi_periph_M09_AXI_BREADY),
        .M09_AXI_bresp(microblaze_riscv_0_axi_periph_M09_AXI_BRESP),
        .M09_AXI_bvalid(microblaze_riscv_0_axi_periph_M09_AXI_BVALID),
        .M09_AXI_rdata(microblaze_riscv_0_axi_periph_M09_AXI_RDATA),
        .M09_AXI_rready(microblaze_riscv_0_axi_periph_M09_AXI_RREADY),
        .M09_AXI_rresp(microblaze_riscv_0_axi_periph_M09_AXI_RRESP),
        .M09_AXI_rvalid(microblaze_riscv_0_axi_periph_M09_AXI_RVALID),
        .M09_AXI_wdata(microblaze_riscv_0_axi_periph_M09_AXI_WDATA),
        .M09_AXI_wready(microblaze_riscv_0_axi_periph_M09_AXI_WREADY),
        .M09_AXI_wstrb(microblaze_riscv_0_axi_periph_M09_AXI_WSTRB),
        .M09_AXI_wvalid(microblaze_riscv_0_axi_periph_M09_AXI_WVALID),
        .M10_AXI_araddr(microblaze_riscv_0_axi_periph_M10_AXI_ARADDR),
        .M10_AXI_arready(microblaze_riscv_0_axi_periph_M10_AXI_ARREADY),
        .M10_AXI_arvalid(microblaze_riscv_0_axi_periph_M10_AXI_ARVALID),
        .M10_AXI_awaddr(microblaze_riscv_0_axi_periph_M10_AXI_AWADDR),
        .M10_AXI_awready(microblaze_riscv_0_axi_periph_M10_AXI_AWREADY),
        .M10_AXI_awvalid(microblaze_riscv_0_axi_periph_M10_AXI_AWVALID),
        .M10_AXI_bready(microblaze_riscv_0_axi_periph_M10_AXI_BREADY),
        .M10_AXI_bresp(microblaze_riscv_0_axi_periph_M10_AXI_BRESP),
        .M10_AXI_bvalid(microblaze_riscv_0_axi_periph_M10_AXI_BVALID),
        .M10_AXI_rdata(microblaze_riscv_0_axi_periph_M10_AXI_RDATA),
        .M10_AXI_rready(microblaze_riscv_0_axi_periph_M10_AXI_RREADY),
        .M10_AXI_rresp(microblaze_riscv_0_axi_periph_M10_AXI_RRESP),
        .M10_AXI_rvalid(microblaze_riscv_0_axi_periph_M10_AXI_RVALID),
        .M10_AXI_wdata(microblaze_riscv_0_axi_periph_M10_AXI_WDATA),
        .M10_AXI_wready(microblaze_riscv_0_axi_periph_M10_AXI_WREADY),
        .M10_AXI_wstrb(microblaze_riscv_0_axi_periph_M10_AXI_WSTRB),
        .M10_AXI_wvalid(microblaze_riscv_0_axi_periph_M10_AXI_WVALID),
        .M11_AXI_araddr(microblaze_riscv_0_axi_periph_M11_AXI_ARADDR),
        .M11_AXI_arready(microblaze_riscv_0_axi_periph_M11_AXI_ARREADY),
        .M11_AXI_arvalid(microblaze_riscv_0_axi_periph_M11_AXI_ARVALID),
        .M11_AXI_awaddr(microblaze_riscv_0_axi_periph_M11_AXI_AWADDR),
        .M11_AXI_awready(microblaze_riscv_0_axi_periph_M11_AXI_AWREADY),
        .M11_AXI_awvalid(microblaze_riscv_0_axi_periph_M11_AXI_AWVALID),
        .M11_AXI_bready(microblaze_riscv_0_axi_periph_M11_AXI_BREADY),
        .M11_AXI_bresp(microblaze_riscv_0_axi_periph_M11_AXI_BRESP),
        .M11_AXI_bvalid(microblaze_riscv_0_axi_periph_M11_AXI_BVALID),
        .M11_AXI_rdata(microblaze_riscv_0_axi_periph_M11_AXI_RDATA),
        .M11_AXI_rready(microblaze_riscv_0_axi_periph_M11_AXI_RREADY),
        .M11_AXI_rresp(microblaze_riscv_0_axi_periph_M11_AXI_RRESP),
        .M11_AXI_rvalid(microblaze_riscv_0_axi_periph_M11_AXI_RVALID),
        .M11_AXI_wdata(microblaze_riscv_0_axi_periph_M11_AXI_WDATA),
        .M11_AXI_wready(microblaze_riscv_0_axi_periph_M11_AXI_WREADY),
        .M11_AXI_wstrb(microblaze_riscv_0_axi_periph_M11_AXI_WSTRB),
        .M11_AXI_wvalid(microblaze_riscv_0_axi_periph_M11_AXI_WVALID),
        .S00_AXI_araddr(microblaze_riscv_0_axi_dp_ARADDR),
        .S00_AXI_arprot(microblaze_riscv_0_axi_dp_ARPROT),
        .S00_AXI_arready(microblaze_riscv_0_axi_dp_ARREADY),
        .S00_AXI_arvalid(microblaze_riscv_0_axi_dp_ARVALID),
        .S00_AXI_awaddr(microblaze_riscv_0_axi_dp_AWADDR),
        .S00_AXI_awprot(microblaze_riscv_0_axi_dp_AWPROT),
        .S00_AXI_awready(microblaze_riscv_0_axi_dp_AWREADY),
        .S00_AXI_awvalid(microblaze_riscv_0_axi_dp_AWVALID),
        .S00_AXI_bready(microblaze_riscv_0_axi_dp_BREADY),
        .S00_AXI_bresp(microblaze_riscv_0_axi_dp_BRESP),
        .S00_AXI_bvalid(microblaze_riscv_0_axi_dp_BVALID),
        .S00_AXI_rdata(microblaze_riscv_0_axi_dp_RDATA),
        .S00_AXI_rready(microblaze_riscv_0_axi_dp_RREADY),
        .S00_AXI_rresp(microblaze_riscv_0_axi_dp_RRESP),
        .S00_AXI_rvalid(microblaze_riscv_0_axi_dp_RVALID),
        .S00_AXI_wdata(microblaze_riscv_0_axi_dp_WDATA),
        .S00_AXI_wready(microblaze_riscv_0_axi_dp_WREADY),
        .S00_AXI_wstrb(microblaze_riscv_0_axi_dp_WSTRB),
        .S00_AXI_wvalid(microblaze_riscv_0_axi_dp_WVALID),
        .aclk(microblaze_riscv_0_Clk),
        .aresetn(rst_clk_wiz_1_100M_peripheral_aresetn));
  microblaze_riscv_0_local_memory_imp_1TUIWYR microblaze_riscv_0_local_memory
       (.DLMB_abus(microblaze_riscv_0_dlmb_1_ABUS),
        .DLMB_addrstrobe(microblaze_riscv_0_dlmb_1_ADDRSTROBE),
        .DLMB_be(microblaze_riscv_0_dlmb_1_BE),
        .DLMB_ce(microblaze_riscv_0_dlmb_1_CE),
        .DLMB_readdbus(microblaze_riscv_0_dlmb_1_READDBUS),
        .DLMB_readstrobe(microblaze_riscv_0_dlmb_1_READSTROBE),
        .DLMB_ready(microblaze_riscv_0_dlmb_1_READY),
        .DLMB_ue(microblaze_riscv_0_dlmb_1_UE),
        .DLMB_wait(microblaze_riscv_0_dlmb_1_WAIT),
        .DLMB_writedbus(microblaze_riscv_0_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(microblaze_riscv_0_dlmb_1_WRITESTROBE),
        .ILMB_abus(microblaze_riscv_0_ilmb_1_ABUS),
        .ILMB_addrstrobe(microblaze_riscv_0_ilmb_1_ADDRSTROBE),
        .ILMB_ce(microblaze_riscv_0_ilmb_1_CE),
        .ILMB_readdbus(microblaze_riscv_0_ilmb_1_READDBUS),
        .ILMB_readstrobe(microblaze_riscv_0_ilmb_1_READSTROBE),
        .ILMB_ready(microblaze_riscv_0_ilmb_1_READY),
        .ILMB_ue(microblaze_riscv_0_ilmb_1_UE),
        .ILMB_wait(microblaze_riscv_0_ilmb_1_WAIT),
        .LMB_Clk(microblaze_riscv_0_Clk),
        .SYS_Rst(rst_clk_wiz_1_100M_bus_struct_reset));
  assign microblaze_riscv_0_intr = {timepix4_sc_in_AXI_0_sc_irq, axi_ethernet_0_interrupt, axi_ethernet_0_fifo_interrupt, axi_timer_0_interrupt};
  design_1_mod0_0 mod0
       (.bot_n(rx_n_1),
        .bot_p(rx_p_1),
        .bot_refclk_n(ilconstant_0_dout),
        .bot_refclk_p(ilconstant_0_dout),
        .clk100(microblaze_riscv_0_Clk),
        .clk200(clk_wiz_1_clk_200),
        .clk322(cmac_usplus_0_gt_txusrclk2),
        .decode_TOTTOA(ilslice_20_Dout),
        .decode_addr(ilslice_11a_Dout),
        .fake_rate(ilslice_19_12_Dout),
        .fifo_reset(ilslice_1_Dout1),
        .header_data(axi_gpio_1_gpio2_io_o),
        .idle(mod0_idle),
        .init_clk(clk_wiz_1_clk_20),
        .pause(ilslice_3_Dout),
        .reset_all(ilslice_0_Dout),
        .reset_rx_dp(ilslice_10a_Dout),
        .reset_rx_pll_dp(ilslice_9a_Dout),
        .reset_tx_dp(ilslice_8a_Dout),
        .reset_tx_pll_dp(ilslice_1_Dout),
        .top_n(rx_n_0),
        .top_p(rx_p_0),
        .top_refclk_n(GT_REFCLK_N),
        .top_refclk_p(GT_REFCLK_P),
        .tx_tdata(mod0_tx_tdata),
        .tx_tkeep(mod0_tx_tkeep),
        .tx_tlast(mod0_tx_tlast),
        .tx_tready(cmac_usplus_0_tx_axis_tready),
        .tx_tvalid(mod0_tx_tvalid),
        .write_header_word(ilslice_2_Dout));
  design_1_rst_clk_wiz_1_100M_0 rst_clk_wiz_1_100M
       (.aux_reset_in(1'b1),
        .bus_struct_reset(rst_clk_wiz_1_100M_bus_struct_reset),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(reset_0),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(rst_clk_wiz_1_100M_mb_reset),
        .peripheral_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .slowest_sync_clk(microblaze_riscv_0_Clk));
  design_1_timepix4_command_out_0_0 timepix4_command_out_0
       (.SC_clk_in_N(SC_clk_in_N),
        .SC_clk_in_P(SC_clk_in_P),
        .SC_data_in_N(SC_data_in_N),
        .SC_data_in_P(SC_data_in_P),
        .S_AXI_ACLK(microblaze_riscv_0_Clk),
        .S_AXI_ARADDR(microblaze_riscv_0_axi_periph_M05_AXI_ARADDR),
        .S_AXI_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .S_AXI_ARPROT(microblaze_riscv_0_axi_periph_M05_AXI_ARPROT),
        .S_AXI_ARREADY(microblaze_riscv_0_axi_periph_M05_AXI_ARREADY),
        .S_AXI_ARVALID(microblaze_riscv_0_axi_periph_M05_AXI_ARVALID),
        .S_AXI_AWADDR(microblaze_riscv_0_axi_periph_M05_AXI_AWADDR),
        .S_AXI_AWPROT(microblaze_riscv_0_axi_periph_M05_AXI_AWPROT),
        .S_AXI_AWREADY(microblaze_riscv_0_axi_periph_M05_AXI_AWREADY),
        .S_AXI_AWVALID(microblaze_riscv_0_axi_periph_M05_AXI_AWVALID),
        .S_AXI_BREADY(microblaze_riscv_0_axi_periph_M05_AXI_BREADY),
        .S_AXI_BRESP(microblaze_riscv_0_axi_periph_M05_AXI_BRESP),
        .S_AXI_BVALID(microblaze_riscv_0_axi_periph_M05_AXI_BVALID),
        .S_AXI_RDATA(microblaze_riscv_0_axi_periph_M05_AXI_RDATA),
        .S_AXI_RREADY(microblaze_riscv_0_axi_periph_M05_AXI_RREADY),
        .S_AXI_RRESP(microblaze_riscv_0_axi_periph_M05_AXI_RRESP),
        .S_AXI_RVALID(microblaze_riscv_0_axi_periph_M05_AXI_RVALID),
        .S_AXI_WDATA(microblaze_riscv_0_axi_periph_M05_AXI_WDATA),
        .S_AXI_WREADY(microblaze_riscv_0_axi_periph_M05_AXI_WREADY),
        .S_AXI_WSTRB(microblaze_riscv_0_axi_periph_M05_AXI_WSTRB),
        .S_AXI_WVALID(microblaze_riscv_0_axi_periph_M05_AXI_WVALID),
        .refclk_40_N(refclk_40_N),
        .refclk_40_P(refclk_40_P),
        .serial_clk(clk_wiz_1_clk_40),
        .tpx_reset_n(timepix_gpio_AXI_0_int_reset_n));
  design_1_timepix4_sc_in_AXI_0_0 timepix4_sc_in_AXI_0
       (.SC_CLK_OUT_N(SC_CLK_OUT_N),
        .SC_CLK_OUT_P(SC_CLK_OUT_P),
        .SC_DATA_OUT_N(SC_DATA_OUT_N),
        .SC_DATA_OUT_P(SC_DATA_OUT_P),
        .S_AXI_ACLK(microblaze_riscv_0_Clk),
        .S_AXI_ARADDR(microblaze_riscv_0_axi_periph_M07_AXI_ARADDR),
        .S_AXI_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .S_AXI_ARPROT(microblaze_riscv_0_axi_periph_M07_AXI_ARPROT),
        .S_AXI_ARREADY(microblaze_riscv_0_axi_periph_M07_AXI_ARREADY),
        .S_AXI_ARVALID(microblaze_riscv_0_axi_periph_M07_AXI_ARVALID),
        .S_AXI_AWADDR(microblaze_riscv_0_axi_periph_M07_AXI_AWADDR),
        .S_AXI_AWPROT(microblaze_riscv_0_axi_periph_M07_AXI_AWPROT),
        .S_AXI_AWREADY(microblaze_riscv_0_axi_periph_M07_AXI_AWREADY),
        .S_AXI_AWVALID(microblaze_riscv_0_axi_periph_M07_AXI_AWVALID),
        .S_AXI_BREADY(microblaze_riscv_0_axi_periph_M07_AXI_BREADY),
        .S_AXI_BRESP(microblaze_riscv_0_axi_periph_M07_AXI_BRESP),
        .S_AXI_BVALID(microblaze_riscv_0_axi_periph_M07_AXI_BVALID),
        .S_AXI_RDATA(microblaze_riscv_0_axi_periph_M07_AXI_RDATA),
        .S_AXI_RREADY(microblaze_riscv_0_axi_periph_M07_AXI_RREADY),
        .S_AXI_RRESP(microblaze_riscv_0_axi_periph_M07_AXI_RRESP),
        .S_AXI_RVALID(microblaze_riscv_0_axi_periph_M07_AXI_RVALID),
        .S_AXI_WDATA(microblaze_riscv_0_axi_periph_M07_AXI_WDATA),
        .S_AXI_WREADY(microblaze_riscv_0_axi_periph_M07_AXI_WREADY),
        .S_AXI_WSTRB(microblaze_riscv_0_axi_periph_M07_AXI_WSTRB),
        .S_AXI_WVALID(microblaze_riscv_0_axi_periph_M07_AXI_WVALID),
        .sc_irq(timepix4_sc_in_AXI_0_sc_irq),
        .tpx_reset_n(timepix_gpio_AXI_0_int_reset_n));
  design_1_timepix_gpio_AXI_0_0 timepix_gpio_AXI_0
       (.S_AXI_ACLK(microblaze_riscv_0_Clk),
        .S_AXI_ARADDR(microblaze_riscv_0_axi_periph_M06_AXI_ARADDR),
        .S_AXI_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .S_AXI_ARPROT(microblaze_riscv_0_axi_periph_M06_AXI_ARPROT),
        .S_AXI_ARREADY(microblaze_riscv_0_axi_periph_M06_AXI_ARREADY),
        .S_AXI_ARVALID(microblaze_riscv_0_axi_periph_M06_AXI_ARVALID),
        .S_AXI_AWADDR(microblaze_riscv_0_axi_periph_M06_AXI_AWADDR),
        .S_AXI_AWPROT(microblaze_riscv_0_axi_periph_M06_AXI_AWPROT),
        .S_AXI_AWREADY(microblaze_riscv_0_axi_periph_M06_AXI_AWREADY),
        .S_AXI_AWVALID(microblaze_riscv_0_axi_periph_M06_AXI_AWVALID),
        .S_AXI_BREADY(microblaze_riscv_0_axi_periph_M06_AXI_BREADY),
        .S_AXI_BRESP(microblaze_riscv_0_axi_periph_M06_AXI_BRESP),
        .S_AXI_BVALID(microblaze_riscv_0_axi_periph_M06_AXI_BVALID),
        .S_AXI_RDATA(microblaze_riscv_0_axi_periph_M06_AXI_RDATA),
        .S_AXI_RREADY(microblaze_riscv_0_axi_periph_M06_AXI_RREADY),
        .S_AXI_RRESP(microblaze_riscv_0_axi_periph_M06_AXI_RRESP),
        .S_AXI_RVALID(microblaze_riscv_0_axi_periph_M06_AXI_RVALID),
        .S_AXI_WDATA(microblaze_riscv_0_axi_periph_M06_AXI_WDATA),
        .S_AXI_WREADY(microblaze_riscv_0_axi_periph_M06_AXI_WREADY),
        .S_AXI_WSTRB(microblaze_riscv_0_axi_periph_M06_AXI_WSTRB),
        .S_AXI_WVALID(microblaze_riscv_0_axi_periph_M06_AXI_WVALID),
        .T0_sync_N(T0_sync_N),
        .T0_sync_P(T0_sync_P),
        .int_reset_n(timepix_gpio_AXI_0_int_reset_n),
        .pwr_en(pwr_en),
        .pwr_good(pwr_good),
        .reset_N(reset_N),
        .reset_P(reset_P),
        .shutter_N(shutter_N),
        .shutter_P(shutter_P));
  design_1_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(TP4_testpoint_n),
        .IBUF_DS_P(TP4_testpoint_p),
        .IBUF_OUT(TP4_testpoint_buf));
endmodule

module microblaze_riscv_0_local_memory_imp_1TUIWYR
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire [0:31]DLMB_abus;
  wire DLMB_addrstrobe;
  wire [0:3]DLMB_be;
  wire DLMB_ce;
  wire [0:31]DLMB_readdbus;
  wire DLMB_readstrobe;
  wire DLMB_ready;
  wire DLMB_ue;
  wire DLMB_wait;
  wire [0:31]DLMB_writedbus;
  wire DLMB_writestrobe;
  wire [0:31]ILMB_abus;
  wire ILMB_addrstrobe;
  wire ILMB_ce;
  wire [0:31]ILMB_readdbus;
  wire ILMB_readstrobe;
  wire ILMB_ready;
  wire ILMB_ue;
  wire ILMB_wait;
  wire LMB_Clk;
  wire SYS_Rst;
  wire [0:31]microblaze_riscv_0_dlmb_bus_ABUS;
  wire microblaze_riscv_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_riscv_0_dlmb_bus_BE;
  wire microblaze_riscv_0_dlmb_bus_CE;
  wire [0:31]microblaze_riscv_0_dlmb_bus_READDBUS;
  wire microblaze_riscv_0_dlmb_bus_READSTROBE;
  wire microblaze_riscv_0_dlmb_bus_READY;
  wire microblaze_riscv_0_dlmb_bus_UE;
  wire microblaze_riscv_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_riscv_0_dlmb_bus_WRITEDBUS;
  wire microblaze_riscv_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_riscv_0_dlmb_cntlr_ADDR;
  wire microblaze_riscv_0_dlmb_cntlr_CLK;
  wire [0:31]microblaze_riscv_0_dlmb_cntlr_DIN;
  wire [31:0]microblaze_riscv_0_dlmb_cntlr_DOUT;
  wire microblaze_riscv_0_dlmb_cntlr_EN;
  wire microblaze_riscv_0_dlmb_cntlr_RST;
  wire [0:3]microblaze_riscv_0_dlmb_cntlr_WE;
  wire [0:31]microblaze_riscv_0_ilmb_bus_ABUS;
  wire microblaze_riscv_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_riscv_0_ilmb_bus_BE;
  wire microblaze_riscv_0_ilmb_bus_CE;
  wire [0:31]microblaze_riscv_0_ilmb_bus_READDBUS;
  wire microblaze_riscv_0_ilmb_bus_READSTROBE;
  wire microblaze_riscv_0_ilmb_bus_READY;
  wire microblaze_riscv_0_ilmb_bus_UE;
  wire microblaze_riscv_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_riscv_0_ilmb_bus_WRITEDBUS;
  wire microblaze_riscv_0_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_riscv_0_ilmb_cntlr_ADDR;
  wire microblaze_riscv_0_ilmb_cntlr_CLK;
  wire [0:31]microblaze_riscv_0_ilmb_cntlr_DIN;
  wire [31:0]microblaze_riscv_0_ilmb_cntlr_DOUT;
  wire microblaze_riscv_0_ilmb_cntlr_EN;
  wire microblaze_riscv_0_ilmb_cntlr_RST;
  wire [0:3]microblaze_riscv_0_ilmb_cntlr_WE;

  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > design_1 microblaze_riscv_0_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "YES" *) 
  design_1_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_riscv_0_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_riscv_0_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_riscv_0_dlmb_cntlr_DOUT[31],microblaze_riscv_0_dlmb_cntlr_DOUT[30],microblaze_riscv_0_dlmb_cntlr_DOUT[29],microblaze_riscv_0_dlmb_cntlr_DOUT[28],microblaze_riscv_0_dlmb_cntlr_DOUT[27],microblaze_riscv_0_dlmb_cntlr_DOUT[26],microblaze_riscv_0_dlmb_cntlr_DOUT[25],microblaze_riscv_0_dlmb_cntlr_DOUT[24],microblaze_riscv_0_dlmb_cntlr_DOUT[23],microblaze_riscv_0_dlmb_cntlr_DOUT[22],microblaze_riscv_0_dlmb_cntlr_DOUT[21],microblaze_riscv_0_dlmb_cntlr_DOUT[20],microblaze_riscv_0_dlmb_cntlr_DOUT[19],microblaze_riscv_0_dlmb_cntlr_DOUT[18],microblaze_riscv_0_dlmb_cntlr_DOUT[17],microblaze_riscv_0_dlmb_cntlr_DOUT[16],microblaze_riscv_0_dlmb_cntlr_DOUT[15],microblaze_riscv_0_dlmb_cntlr_DOUT[14],microblaze_riscv_0_dlmb_cntlr_DOUT[13],microblaze_riscv_0_dlmb_cntlr_DOUT[12],microblaze_riscv_0_dlmb_cntlr_DOUT[11],microblaze_riscv_0_dlmb_cntlr_DOUT[10],microblaze_riscv_0_dlmb_cntlr_DOUT[9],microblaze_riscv_0_dlmb_cntlr_DOUT[8],microblaze_riscv_0_dlmb_cntlr_DOUT[7],microblaze_riscv_0_dlmb_cntlr_DOUT[6],microblaze_riscv_0_dlmb_cntlr_DOUT[5],microblaze_riscv_0_dlmb_cntlr_DOUT[4],microblaze_riscv_0_dlmb_cntlr_DOUT[3],microblaze_riscv_0_dlmb_cntlr_DOUT[2],microblaze_riscv_0_dlmb_cntlr_DOUT[1],microblaze_riscv_0_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_riscv_0_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_riscv_0_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_riscv_0_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_riscv_0_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_riscv_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_riscv_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_riscv_0_dlmb_bus_BE),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadStrobe(microblaze_riscv_0_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst),
        .LMB_WriteDBus(microblaze_riscv_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_riscv_0_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_riscv_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_riscv_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_riscv_0_dlmb_bus_READY),
        .Sl_UE(microblaze_riscv_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_riscv_0_dlmb_bus_WAIT));
  design_1_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_riscv_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_riscv_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_riscv_0_dlmb_bus_BE),
        .LMB_CE(DLMB_ce),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadDBus(DLMB_readdbus),
        .LMB_ReadStrobe(microblaze_riscv_0_dlmb_bus_READSTROBE),
        .LMB_Ready(DLMB_ready),
        .LMB_UE(DLMB_ue),
        .LMB_Wait(DLMB_wait),
        .LMB_WriteDBus(microblaze_riscv_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_riscv_0_dlmb_bus_WRITESTROBE),
        .M_ABus(DLMB_abus),
        .M_AddrStrobe(DLMB_addrstrobe),
        .M_BE(DLMB_be),
        .M_DBus(DLMB_writedbus),
        .M_ReadStrobe(DLMB_readstrobe),
        .M_WriteStrobe(DLMB_writestrobe),
        .SYS_Rst(SYS_Rst),
        .Sl_CE(microblaze_riscv_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_riscv_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_riscv_0_dlmb_bus_READY),
        .Sl_UE(microblaze_riscv_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_riscv_0_dlmb_bus_WAIT));
  design_1_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_riscv_0_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_riscv_0_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_riscv_0_ilmb_cntlr_DOUT[31],microblaze_riscv_0_ilmb_cntlr_DOUT[30],microblaze_riscv_0_ilmb_cntlr_DOUT[29],microblaze_riscv_0_ilmb_cntlr_DOUT[28],microblaze_riscv_0_ilmb_cntlr_DOUT[27],microblaze_riscv_0_ilmb_cntlr_DOUT[26],microblaze_riscv_0_ilmb_cntlr_DOUT[25],microblaze_riscv_0_ilmb_cntlr_DOUT[24],microblaze_riscv_0_ilmb_cntlr_DOUT[23],microblaze_riscv_0_ilmb_cntlr_DOUT[22],microblaze_riscv_0_ilmb_cntlr_DOUT[21],microblaze_riscv_0_ilmb_cntlr_DOUT[20],microblaze_riscv_0_ilmb_cntlr_DOUT[19],microblaze_riscv_0_ilmb_cntlr_DOUT[18],microblaze_riscv_0_ilmb_cntlr_DOUT[17],microblaze_riscv_0_ilmb_cntlr_DOUT[16],microblaze_riscv_0_ilmb_cntlr_DOUT[15],microblaze_riscv_0_ilmb_cntlr_DOUT[14],microblaze_riscv_0_ilmb_cntlr_DOUT[13],microblaze_riscv_0_ilmb_cntlr_DOUT[12],microblaze_riscv_0_ilmb_cntlr_DOUT[11],microblaze_riscv_0_ilmb_cntlr_DOUT[10],microblaze_riscv_0_ilmb_cntlr_DOUT[9],microblaze_riscv_0_ilmb_cntlr_DOUT[8],microblaze_riscv_0_ilmb_cntlr_DOUT[7],microblaze_riscv_0_ilmb_cntlr_DOUT[6],microblaze_riscv_0_ilmb_cntlr_DOUT[5],microblaze_riscv_0_ilmb_cntlr_DOUT[4],microblaze_riscv_0_ilmb_cntlr_DOUT[3],microblaze_riscv_0_ilmb_cntlr_DOUT[2],microblaze_riscv_0_ilmb_cntlr_DOUT[1],microblaze_riscv_0_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_riscv_0_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_riscv_0_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_riscv_0_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_riscv_0_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_riscv_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_riscv_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_riscv_0_ilmb_bus_BE),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadStrobe(microblaze_riscv_0_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst),
        .LMB_WriteDBus(microblaze_riscv_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_riscv_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_riscv_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_riscv_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_riscv_0_ilmb_bus_READY),
        .Sl_UE(microblaze_riscv_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_riscv_0_ilmb_bus_WAIT));
  design_1_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(microblaze_riscv_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_riscv_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_riscv_0_ilmb_bus_BE),
        .LMB_CE(ILMB_ce),
        .LMB_Clk(LMB_Clk),
        .LMB_ReadDBus(ILMB_readdbus),
        .LMB_ReadStrobe(microblaze_riscv_0_ilmb_bus_READSTROBE),
        .LMB_Ready(ILMB_ready),
        .LMB_UE(ILMB_ue),
        .LMB_Wait(ILMB_wait),
        .LMB_WriteDBus(microblaze_riscv_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_riscv_0_ilmb_bus_WRITESTROBE),
        .M_ABus(ILMB_abus),
        .M_AddrStrobe(ILMB_addrstrobe),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(ILMB_readstrobe),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst),
        .Sl_CE(microblaze_riscv_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_riscv_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_riscv_0_ilmb_bus_READY),
        .Sl_UE(microblaze_riscv_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_riscv_0_ilmb_bus_WAIT));
  design_1_lmb_bram_0 lmb_bram
       (.addra({microblaze_riscv_0_dlmb_cntlr_ADDR[0],microblaze_riscv_0_dlmb_cntlr_ADDR[1],microblaze_riscv_0_dlmb_cntlr_ADDR[2],microblaze_riscv_0_dlmb_cntlr_ADDR[3],microblaze_riscv_0_dlmb_cntlr_ADDR[4],microblaze_riscv_0_dlmb_cntlr_ADDR[5],microblaze_riscv_0_dlmb_cntlr_ADDR[6],microblaze_riscv_0_dlmb_cntlr_ADDR[7],microblaze_riscv_0_dlmb_cntlr_ADDR[8],microblaze_riscv_0_dlmb_cntlr_ADDR[9],microblaze_riscv_0_dlmb_cntlr_ADDR[10],microblaze_riscv_0_dlmb_cntlr_ADDR[11],microblaze_riscv_0_dlmb_cntlr_ADDR[12],microblaze_riscv_0_dlmb_cntlr_ADDR[13],microblaze_riscv_0_dlmb_cntlr_ADDR[14],microblaze_riscv_0_dlmb_cntlr_ADDR[15],microblaze_riscv_0_dlmb_cntlr_ADDR[16],microblaze_riscv_0_dlmb_cntlr_ADDR[17],microblaze_riscv_0_dlmb_cntlr_ADDR[18],microblaze_riscv_0_dlmb_cntlr_ADDR[19],microblaze_riscv_0_dlmb_cntlr_ADDR[20],microblaze_riscv_0_dlmb_cntlr_ADDR[21],microblaze_riscv_0_dlmb_cntlr_ADDR[22],microblaze_riscv_0_dlmb_cntlr_ADDR[23],microblaze_riscv_0_dlmb_cntlr_ADDR[24],microblaze_riscv_0_dlmb_cntlr_ADDR[25],microblaze_riscv_0_dlmb_cntlr_ADDR[26],microblaze_riscv_0_dlmb_cntlr_ADDR[27],microblaze_riscv_0_dlmb_cntlr_ADDR[28],microblaze_riscv_0_dlmb_cntlr_ADDR[29],microblaze_riscv_0_dlmb_cntlr_ADDR[30],microblaze_riscv_0_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_riscv_0_ilmb_cntlr_ADDR[0],microblaze_riscv_0_ilmb_cntlr_ADDR[1],microblaze_riscv_0_ilmb_cntlr_ADDR[2],microblaze_riscv_0_ilmb_cntlr_ADDR[3],microblaze_riscv_0_ilmb_cntlr_ADDR[4],microblaze_riscv_0_ilmb_cntlr_ADDR[5],microblaze_riscv_0_ilmb_cntlr_ADDR[6],microblaze_riscv_0_ilmb_cntlr_ADDR[7],microblaze_riscv_0_ilmb_cntlr_ADDR[8],microblaze_riscv_0_ilmb_cntlr_ADDR[9],microblaze_riscv_0_ilmb_cntlr_ADDR[10],microblaze_riscv_0_ilmb_cntlr_ADDR[11],microblaze_riscv_0_ilmb_cntlr_ADDR[12],microblaze_riscv_0_ilmb_cntlr_ADDR[13],microblaze_riscv_0_ilmb_cntlr_ADDR[14],microblaze_riscv_0_ilmb_cntlr_ADDR[15],microblaze_riscv_0_ilmb_cntlr_ADDR[16],microblaze_riscv_0_ilmb_cntlr_ADDR[17],microblaze_riscv_0_ilmb_cntlr_ADDR[18],microblaze_riscv_0_ilmb_cntlr_ADDR[19],microblaze_riscv_0_ilmb_cntlr_ADDR[20],microblaze_riscv_0_ilmb_cntlr_ADDR[21],microblaze_riscv_0_ilmb_cntlr_ADDR[22],microblaze_riscv_0_ilmb_cntlr_ADDR[23],microblaze_riscv_0_ilmb_cntlr_ADDR[24],microblaze_riscv_0_ilmb_cntlr_ADDR[25],microblaze_riscv_0_ilmb_cntlr_ADDR[26],microblaze_riscv_0_ilmb_cntlr_ADDR[27],microblaze_riscv_0_ilmb_cntlr_ADDR[28],microblaze_riscv_0_ilmb_cntlr_ADDR[29],microblaze_riscv_0_ilmb_cntlr_ADDR[30],microblaze_riscv_0_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_riscv_0_dlmb_cntlr_CLK),
        .clkb(microblaze_riscv_0_ilmb_cntlr_CLK),
        .dina({microblaze_riscv_0_dlmb_cntlr_DIN[0],microblaze_riscv_0_dlmb_cntlr_DIN[1],microblaze_riscv_0_dlmb_cntlr_DIN[2],microblaze_riscv_0_dlmb_cntlr_DIN[3],microblaze_riscv_0_dlmb_cntlr_DIN[4],microblaze_riscv_0_dlmb_cntlr_DIN[5],microblaze_riscv_0_dlmb_cntlr_DIN[6],microblaze_riscv_0_dlmb_cntlr_DIN[7],microblaze_riscv_0_dlmb_cntlr_DIN[8],microblaze_riscv_0_dlmb_cntlr_DIN[9],microblaze_riscv_0_dlmb_cntlr_DIN[10],microblaze_riscv_0_dlmb_cntlr_DIN[11],microblaze_riscv_0_dlmb_cntlr_DIN[12],microblaze_riscv_0_dlmb_cntlr_DIN[13],microblaze_riscv_0_dlmb_cntlr_DIN[14],microblaze_riscv_0_dlmb_cntlr_DIN[15],microblaze_riscv_0_dlmb_cntlr_DIN[16],microblaze_riscv_0_dlmb_cntlr_DIN[17],microblaze_riscv_0_dlmb_cntlr_DIN[18],microblaze_riscv_0_dlmb_cntlr_DIN[19],microblaze_riscv_0_dlmb_cntlr_DIN[20],microblaze_riscv_0_dlmb_cntlr_DIN[21],microblaze_riscv_0_dlmb_cntlr_DIN[22],microblaze_riscv_0_dlmb_cntlr_DIN[23],microblaze_riscv_0_dlmb_cntlr_DIN[24],microblaze_riscv_0_dlmb_cntlr_DIN[25],microblaze_riscv_0_dlmb_cntlr_DIN[26],microblaze_riscv_0_dlmb_cntlr_DIN[27],microblaze_riscv_0_dlmb_cntlr_DIN[28],microblaze_riscv_0_dlmb_cntlr_DIN[29],microblaze_riscv_0_dlmb_cntlr_DIN[30],microblaze_riscv_0_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_riscv_0_ilmb_cntlr_DIN[0],microblaze_riscv_0_ilmb_cntlr_DIN[1],microblaze_riscv_0_ilmb_cntlr_DIN[2],microblaze_riscv_0_ilmb_cntlr_DIN[3],microblaze_riscv_0_ilmb_cntlr_DIN[4],microblaze_riscv_0_ilmb_cntlr_DIN[5],microblaze_riscv_0_ilmb_cntlr_DIN[6],microblaze_riscv_0_ilmb_cntlr_DIN[7],microblaze_riscv_0_ilmb_cntlr_DIN[8],microblaze_riscv_0_ilmb_cntlr_DIN[9],microblaze_riscv_0_ilmb_cntlr_DIN[10],microblaze_riscv_0_ilmb_cntlr_DIN[11],microblaze_riscv_0_ilmb_cntlr_DIN[12],microblaze_riscv_0_ilmb_cntlr_DIN[13],microblaze_riscv_0_ilmb_cntlr_DIN[14],microblaze_riscv_0_ilmb_cntlr_DIN[15],microblaze_riscv_0_ilmb_cntlr_DIN[16],microblaze_riscv_0_ilmb_cntlr_DIN[17],microblaze_riscv_0_ilmb_cntlr_DIN[18],microblaze_riscv_0_ilmb_cntlr_DIN[19],microblaze_riscv_0_ilmb_cntlr_DIN[20],microblaze_riscv_0_ilmb_cntlr_DIN[21],microblaze_riscv_0_ilmb_cntlr_DIN[22],microblaze_riscv_0_ilmb_cntlr_DIN[23],microblaze_riscv_0_ilmb_cntlr_DIN[24],microblaze_riscv_0_ilmb_cntlr_DIN[25],microblaze_riscv_0_ilmb_cntlr_DIN[26],microblaze_riscv_0_ilmb_cntlr_DIN[27],microblaze_riscv_0_ilmb_cntlr_DIN[28],microblaze_riscv_0_ilmb_cntlr_DIN[29],microblaze_riscv_0_ilmb_cntlr_DIN[30],microblaze_riscv_0_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_riscv_0_dlmb_cntlr_DOUT),
        .doutb(microblaze_riscv_0_ilmb_cntlr_DOUT),
        .ena(microblaze_riscv_0_dlmb_cntlr_EN),
        .enb(microblaze_riscv_0_ilmb_cntlr_EN),
        .rsta(microblaze_riscv_0_dlmb_cntlr_RST),
        .rstb(microblaze_riscv_0_ilmb_cntlr_RST),
        .wea({microblaze_riscv_0_dlmb_cntlr_WE[0],microblaze_riscv_0_dlmb_cntlr_WE[1],microblaze_riscv_0_dlmb_cntlr_WE[2],microblaze_riscv_0_dlmb_cntlr_WE[3]}),
        .web({microblaze_riscv_0_ilmb_cntlr_WE[0],microblaze_riscv_0_ilmb_cntlr_WE[1],microblaze_riscv_0_ilmb_cntlr_WE[2],microblaze_riscv_0_ilmb_cntlr_WE[3]}));
endmodule
