// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Mar  2 13:52:17 2026
// Host        : richardraffanti running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/richardraffanti/xilproj/TP4_1CHIP_RAW_V20252/TP4_1CHIP_RAW_V20252.gen/sources_1/bd/design_1/ip/design_1_timepix4_command_out_0_0/design_1_timepix4_command_out_0_0_sim_netlist.v
// Design      : design_1_timepix4_command_out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu37p-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_timepix4_command_out_0_0,timepix4_command_out_AXI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "timepix4_command_out_AXI,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_timepix4_command_out_0_0
   (serial_clk,
    tpx_reset_n,
    SC_data_in_P,
    SC_data_in_N,
    SC_clk_in_P,
    SC_clk_in_N,
    refclk_40_P,
    refclk_40_N,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 serial_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME serial_clk, FREQ_HZ 40000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_100, INSERT_VIP 0" *) input serial_clk;
  input tpx_reset_n;
  output SC_data_in_P;
  output SC_data_in_N;
  output SC_clk_in_P;
  output SC_clk_in_N;
  output refclk_40_P;
  output refclk_40_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_100, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_100, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  (* SLEW = "SLOW" *) wire SC_clk_in_N;
  (* SLEW = "SLOW" *) wire SC_clk_in_P;
  (* SLEW = "SLOW" *) wire SC_data_in_N;
  (* SLEW = "SLOW" *) wire SC_data_in_P;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  (* SLEW = "SLOW" *) wire refclk_40_N;
  (* SLEW = "SLOW" *) wire refclk_40_P;
  (* SLEW = "SLOW" *) wire serial_clk;
  wire tpx_reset_n;
  wire [1:0]NLW_inst_S_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_S_AXI_RRESP_UNCONNECTED;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_LSB = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* OPT_MEM_ADDR_BITS = "1" *) 
  design_1_timepix4_command_out_0_0_timepix4_command_out_AXI inst
       (.SC_clk_in_N(SC_clk_in_N),
        .SC_clk_in_P(SC_clk_in_P),
        .SC_data_in_N(SC_data_in_N),
        .SC_data_in_P(SC_data_in_P),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR({S_AXI_ARADDR[3:2],1'b0,1'b0}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[3:2],1'b0,1'b0}),
        .S_AXI_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(NLW_inst_S_AXI_BRESP_UNCONNECTED[1:0]),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(NLW_inst_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .refclk_40_N(refclk_40_N),
        .refclk_40_P(refclk_40_P),
        .serial_clk(serial_clk),
        .tpx_reset_n(tpx_reset_n));
endmodule

(* CHECK_LICENSE_TYPE = "cmdfifo_1024x32,fifo_generator_v13_2_14,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cmdfifo_1024x32" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
module design_1_timepix4_command_out_0_0_cmdfifo_1024x32
   (srst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input srst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [31:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire \<const0> ;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire rd_clk;
  wire rd_en;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtexuplusHBM" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_timepix4_command_out_0_0_fifo_generator_v13_2_14 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_LSB = "2" *) (* C_S_AXI_ADDR_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* OPT_MEM_ADDR_BITS = "1" *) (* ORIG_REF_NAME = "timepix4_command_out_AXI" *) 
module design_1_timepix4_command_out_0_0_timepix4_command_out_AXI
   (serial_clk,
    tpx_reset_n,
    SC_data_in_P,
    SC_data_in_N,
    SC_clk_in_P,
    SC_clk_in_N,
    refclk_40_P,
    refclk_40_N,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  input serial_clk;
  input tpx_reset_n;
  output SC_data_in_P;
  output SC_data_in_N;
  output SC_clk_in_P;
  output SC_clk_in_N;
  output refclk_40_P;
  output refclk_40_N;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [3:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;

  wire \<const0> ;
  wire SC_clk_in_N;
  wire SC_clk_in_P;
  wire SC_data_in_N;
  wire SC_data_in_P;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [3:2]axi_araddr;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire refclk_40_N;
  wire refclk_40_P;
  wire [31:0]reg_data_out;
  wire ser_data_d1;
  wire serial_clk;
  wire serial_data_out;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [0:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:1]slv_reg1__0;
  wire [0:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:1]slv_reg2__0;
  wire [31:0]slv_reg3;
  wire slv_reg_rden;
  wire slv_reg_wren;
  wire tpx_reset_n;
  wire trigger;
  wire trigger_i_1_n_0;
  wire trigger_i_2_n_0;
  wire wr_fifo_i_1_n_0;
  wire wr_fifo_reg_n_0;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  design_1_timepix4_command_out_0_0_tpx4_command_out CMD_OUT
       (.\FSM_sequential_cmd_st_reg[0]_0 (slv_reg1),
        .Q(slv_reg0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .\cmd_sr_reg[31]_0 (serial_data_out),
        .gtOp_carry__0_0({slv_reg2__0,slv_reg2}),
        .serial_clk(serial_clk),
        .tpx_reset_n(tpx_reset_n),
        .trigger(trigger),
        .trigger_sync_reg_0(serial_clk),
        .wr_en(wr_fifo_reg_n_0));
  GND GND
       (.G(\<const0> ));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_clk
       (.I(serial_clk),
        .O(refclk_40_P),
        .OB(refclk_40_N));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_serclk
       (.I(serial_clk),
        .O(SC_clk_in_P),
        .OB(SC_clk_in_N));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_serdat
       (.I(ser_data_d1),
        .O(SC_data_in_P),
        .OB(SC_data_in_N));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[2]),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[3]),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[2]),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[3]),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1),
        .I1(slv_reg2),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1__0[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1__0[11]),
        .I1(slv_reg2__0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(slv_reg1__0[12]),
        .I2(slv_reg0[12]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(slv_reg1__0[13]),
        .I2(slv_reg0[13]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1__0[14]),
        .I1(slv_reg2__0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1__0[15]),
        .I1(slv_reg2__0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1__0[16]),
        .I1(slv_reg2__0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg3[17]),
        .I1(slv_reg1__0[17]),
        .I2(slv_reg2__0[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg0[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1__0[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg3[19]),
        .I1(slv_reg1__0[19]),
        .I2(slv_reg0[19]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(slv_reg1__0[1]),
        .I2(slv_reg2__0[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg0[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1__0[20]),
        .I1(slv_reg2__0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1__0[21]),
        .I1(slv_reg2__0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1__0[22]),
        .I1(slv_reg2__0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg3[23]),
        .I1(slv_reg1__0[23]),
        .I2(slv_reg0[23]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg3[24]),
        .I1(slv_reg1__0[24]),
        .I2(slv_reg0[24]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(slv_reg1__0[25]),
        .I2(slv_reg0[25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1__0[26]),
        .I1(slv_reg2__0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(slv_reg1__0[27]),
        .I2(slv_reg0[27]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(slv_reg1__0[28]),
        .I2(slv_reg0[28]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(slv_reg1__0[29]),
        .I2(slv_reg2__0[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg0[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1__0[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1__0[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg3[31]),
        .I1(slv_reg1__0[31]),
        .I2(slv_reg2__0[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg0[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0CCAAFFF0CCAA00)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1__0[3]),
        .I1(slv_reg2__0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(slv_reg1__0[4]),
        .I2(slv_reg0[4]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAACCF0FFAACCF000)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(slv_reg1__0[5]),
        .I2(slv_reg2__0[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg0[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1__0[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(slv_reg1__0[7]),
        .I2(slv_reg0[7]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(slv_reg1__0[8]),
        .I2(slv_reg0[8]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAAFFCCF0AA00CCF0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(slv_reg1__0[9]),
        .I2(slv_reg0[9]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2__0[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    ser_data_d1_reg
       (.C(serial_clk),
        .CE(1'b1),
        .D(serial_data_out),
        .Q(ser_data_d1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(S_AXI_WSTRB[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(S_AXI_WSTRB[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(S_AXI_WSTRB[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(S_AXI_WSTRB[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg1),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg1__0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg1__0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg1__0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg1__0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg1__0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg1__0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg1__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg1__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg1__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg1__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg1__0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg1__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg1__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg1__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg1__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg1__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg1__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg1__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg1__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg1__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg1__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg1__0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg1__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg1__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg1__0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg1__0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg1__0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg1__0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg1__0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg1__0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg1__0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(slv_reg_wren));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg2),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg2__0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg2__0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg2__0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg2__0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg2__0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg2__0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg2__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg2__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg2__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg2__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg2__0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg2__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg2__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg2__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg2__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg2__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg2__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg2__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg2__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg2__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg2__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg2__0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg2__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg2__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg2__0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg2__0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg2__0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg2__0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg2__0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg2__0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg2__0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    trigger_i_1
       (.I0(S_AXI_ARESETN),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_WREADY),
        .O(trigger_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    trigger_i_2
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(trigger_i_2_n_0));
  FDRE trigger_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(trigger_i_2_n_0),
        .Q(trigger),
        .R(trigger_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    wr_fifo_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(wr_fifo_i_1_n_0));
  FDRE wr_fifo_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(wr_fifo_i_1_n_0),
        .Q(wr_fifo_reg_n_0),
        .R(trigger_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "tpx4_command_out" *) 
module design_1_timepix4_command_out_0_0_tpx4_command_out
   (\cmd_sr_reg[31]_0 ,
    S_AXI_ACLK,
    serial_clk,
    Q,
    wr_en,
    trigger,
    trigger_sync_reg_0,
    gtOp_carry__0_0,
    \FSM_sequential_cmd_st_reg[0]_0 ,
    S_AXI_ARESETN,
    tpx_reset_n);
  output [0:0]\cmd_sr_reg[31]_0 ;
  input S_AXI_ACLK;
  input serial_clk;
  input [31:0]Q;
  input wr_en;
  input trigger;
  input trigger_sync_reg_0;
  input [31:0]gtOp_carry__0_0;
  input [0:0]\FSM_sequential_cmd_st_reg[0]_0 ;
  input S_AXI_ARESETN;
  input tpx_reset_n;

  wire \FSM_sequential_cmd_st[1]_inv_i_1_n_0 ;
  wire \FSM_sequential_cmd_st[2]_i_1_n_0 ;
  wire \FSM_sequential_cmd_st[2]_i_3_n_0 ;
  wire \FSM_sequential_cmd_st[2]_i_4_n_0 ;
  wire [0:0]\FSM_sequential_cmd_st_reg[0]_0 ;
  wire [31:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [4:0]clk_cnt;
  wire \clk_cnt_reg_n_0_[0] ;
  wire \clk_cnt_reg_n_0_[1] ;
  wire \clk_cnt_reg_n_0_[2] ;
  wire \clk_cnt_reg_n_0_[3] ;
  wire \clk_cnt_reg_n_0_[4] ;
  wire \cmd_sr[0]_i_1_n_0 ;
  wire \cmd_sr[10]_i_1_n_0 ;
  wire \cmd_sr[11]_i_1_n_0 ;
  wire \cmd_sr[12]_i_1_n_0 ;
  wire \cmd_sr[13]_i_1_n_0 ;
  wire \cmd_sr[14]_i_1_n_0 ;
  wire \cmd_sr[15]_i_1_n_0 ;
  wire \cmd_sr[16]_i_1_n_0 ;
  wire \cmd_sr[17]_i_1_n_0 ;
  wire \cmd_sr[18]_i_1_n_0 ;
  wire \cmd_sr[19]_i_1_n_0 ;
  wire \cmd_sr[1]_i_1_n_0 ;
  wire \cmd_sr[1]_i_2_n_0 ;
  wire \cmd_sr[20]_i_1_n_0 ;
  wire \cmd_sr[21]_i_1_n_0 ;
  wire \cmd_sr[22]_i_1_n_0 ;
  wire \cmd_sr[23]_i_1_n_0 ;
  wire \cmd_sr[24]_i_1_n_0 ;
  wire \cmd_sr[25]_i_1_n_0 ;
  wire \cmd_sr[25]_i_2_n_0 ;
  wire \cmd_sr[25]_i_3_n_0 ;
  wire \cmd_sr[25]_i_4_n_0 ;
  wire \cmd_sr[25]_i_5_n_0 ;
  wire \cmd_sr[25]_i_6_n_0 ;
  wire \cmd_sr[26]_i_1_n_0 ;
  wire \cmd_sr[27]_i_1_n_0 ;
  wire \cmd_sr[27]_i_2_n_0 ;
  wire \cmd_sr[28]_i_1_n_0 ;
  wire \cmd_sr[29]_i_1_n_0 ;
  wire \cmd_sr[29]_i_2_n_0 ;
  wire \cmd_sr[2]_i_1_n_0 ;
  wire \cmd_sr[30]_i_1_n_0 ;
  wire \cmd_sr[30]_i_2_n_0 ;
  wire \cmd_sr[31]_i_1_n_0 ;
  wire \cmd_sr[31]_i_2_n_0 ;
  wire \cmd_sr[31]_i_3_n_0 ;
  wire \cmd_sr[31]_i_4_n_0 ;
  wire \cmd_sr[31]_i_5_n_0 ;
  wire \cmd_sr[31]_i_6_n_0 ;
  wire \cmd_sr[31]_i_7_n_0 ;
  wire \cmd_sr[3]_i_1_n_0 ;
  wire \cmd_sr[4]_i_1_n_0 ;
  wire \cmd_sr[5]_i_1_n_0 ;
  wire \cmd_sr[6]_i_1_n_0 ;
  wire \cmd_sr[6]_i_2_n_0 ;
  wire \cmd_sr[7]_i_1_n_0 ;
  wire \cmd_sr[8]_i_1_n_0 ;
  wire \cmd_sr[8]_i_2_n_0 ;
  wire \cmd_sr[9]_i_1_n_0 ;
  wire [0:0]\cmd_sr_reg[31]_0 ;
  wire [1:0]cmd_st;
  wire [2:0]cmd_st__0;
  wire [31:0]fifo_dout;
  wire fifo_empty;
  wire gtOp;
  wire [31:0]gtOp_carry__0_0;
  wire gtOp_carry__0_i_10_n_0;
  wire gtOp_carry__0_i_11_n_0;
  wire gtOp_carry__0_i_12_n_0;
  wire gtOp_carry__0_i_13_n_0;
  wire gtOp_carry__0_i_14_n_0;
  wire gtOp_carry__0_i_15_n_0;
  wire gtOp_carry__0_i_16_n_0;
  wire gtOp_carry__0_i_1_n_0;
  wire gtOp_carry__0_i_2_n_0;
  wire gtOp_carry__0_i_3_n_0;
  wire gtOp_carry__0_i_4_n_0;
  wire gtOp_carry__0_i_5_n_0;
  wire gtOp_carry__0_i_6_n_0;
  wire gtOp_carry__0_i_7_n_0;
  wire gtOp_carry__0_i_8_n_0;
  wire gtOp_carry__0_i_9_n_0;
  wire gtOp_carry__0_n_1;
  wire gtOp_carry__0_n_2;
  wire gtOp_carry__0_n_3;
  wire gtOp_carry__0_n_4;
  wire gtOp_carry__0_n_5;
  wire gtOp_carry__0_n_6;
  wire gtOp_carry__0_n_7;
  wire gtOp_carry_i_10_n_0;
  wire gtOp_carry_i_11_n_0;
  wire gtOp_carry_i_12_n_0;
  wire gtOp_carry_i_13_n_0;
  wire gtOp_carry_i_14_n_0;
  wire gtOp_carry_i_15_n_0;
  wire gtOp_carry_i_16_n_0;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_i_9_n_0;
  wire gtOp_carry_n_0;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire gtOp_carry_n_4;
  wire gtOp_carry_n_5;
  wire gtOp_carry_n_6;
  wire gtOp_carry_n_7;
  wire [31:1]in10;
  wire [31:1]in11;
  wire [25:25]next_cmd;
  wire \next_cmd[25]_i_1_n_0 ;
  wire \pause[0]_i_1_n_0 ;
  wire \pause[31]_i_1_n_0 ;
  wire \pause[31]_i_2_n_0 ;
  wire \pause[31]_i_3_n_0 ;
  wire \pause_reg_n_0_[0] ;
  wire \pause_reg_n_0_[10] ;
  wire \pause_reg_n_0_[11] ;
  wire \pause_reg_n_0_[12] ;
  wire \pause_reg_n_0_[13] ;
  wire \pause_reg_n_0_[14] ;
  wire \pause_reg_n_0_[15] ;
  wire \pause_reg_n_0_[16] ;
  wire \pause_reg_n_0_[17] ;
  wire \pause_reg_n_0_[18] ;
  wire \pause_reg_n_0_[19] ;
  wire \pause_reg_n_0_[1] ;
  wire \pause_reg_n_0_[20] ;
  wire \pause_reg_n_0_[21] ;
  wire \pause_reg_n_0_[22] ;
  wire \pause_reg_n_0_[23] ;
  wire \pause_reg_n_0_[24] ;
  wire \pause_reg_n_0_[25] ;
  wire \pause_reg_n_0_[26] ;
  wire \pause_reg_n_0_[27] ;
  wire \pause_reg_n_0_[28] ;
  wire \pause_reg_n_0_[29] ;
  wire \pause_reg_n_0_[2] ;
  wire \pause_reg_n_0_[30] ;
  wire \pause_reg_n_0_[31] ;
  wire \pause_reg_n_0_[3] ;
  wire \pause_reg_n_0_[4] ;
  wire \pause_reg_n_0_[5] ;
  wire \pause_reg_n_0_[6] ;
  wire \pause_reg_n_0_[7] ;
  wire \pause_reg_n_0_[8] ;
  wire \pause_reg_n_0_[9] ;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__0_n_4 ;
  wire \plusOp_inferred__0/i__carry__0_n_5 ;
  wire \plusOp_inferred__0/i__carry__0_n_6 ;
  wire \plusOp_inferred__0/i__carry__0_n_7 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_4 ;
  wire \plusOp_inferred__0/i__carry__1_n_5 ;
  wire \plusOp_inferred__0/i__carry__1_n_6 ;
  wire \plusOp_inferred__0/i__carry__1_n_7 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_4 ;
  wire \plusOp_inferred__0/i__carry__2_n_5 ;
  wire \plusOp_inferred__0/i__carry__2_n_6 ;
  wire \plusOp_inferred__0/i__carry__2_n_7 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_4 ;
  wire \plusOp_inferred__0/i__carry_n_5 ;
  wire \plusOp_inferred__0/i__carry_n_6 ;
  wire \plusOp_inferred__0/i__carry_n_7 ;
  wire rd_fifo_i_1_n_0;
  wire rd_fifo_i_2_n_0;
  wire rd_fifo_reg_n_0;
  wire serial_clk;
  wire srst;
  wire \sync_trig.trigger_stage1 ;
  wire \sync_trig.trigger_stage3_reg_srl2_n_0 ;
  wire tpx_reset_n;
  wire trigger;
  wire trigger_clr;
  wire trigger_clr_i_1_n_0;
  wire trigger_sync;
  wire trigger_sync_reg_0;
  wire word_cnt;
  wire word_cnt_0;
  wire word_cnt_i_1_n_0;
  wire word_cnt_i_2_n_0;
  wire wr_en;
  wire NLW_fifo_full_UNCONNECTED;
  wire NLW_fifo_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_wr_rst_busy_UNCONNECTED;
  wire [7:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [7:0]NLW_gtOp_carry__0_O_UNCONNECTED;
  wire [7:6]\NLW_plusOp_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [7:7]\NLW_plusOp_inferred__0/i__carry__2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h04CF04C304C304C3)) 
    \FSM_sequential_cmd_st[0]_i_1 
       (.I0(\FSM_sequential_cmd_st_reg[0]_0 ),
        .I1(cmd_st[1]),
        .I2(cmd_st[0]),
        .I3(word_cnt_0),
        .I4(gtOp),
        .I5(gtOp_carry__0_0[0]),
        .O(cmd_st__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \FSM_sequential_cmd_st[1]_inv_i_1 
       (.I0(word_cnt_0),
        .I1(cmd_st[0]),
        .I2(gtOp_carry__0_0[0]),
        .I3(gtOp),
        .I4(cmd_st[1]),
        .O(\FSM_sequential_cmd_st[1]_inv_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFFFBAAAFFFF)) 
    \FSM_sequential_cmd_st[2]_i_1 
       (.I0(\FSM_sequential_cmd_st[2]_i_3_n_0 ),
        .I1(\FSM_sequential_cmd_st[2]_i_4_n_0 ),
        .I2(gtOp),
        .I3(gtOp_carry__0_0[0]),
        .I4(cmd_st[1]),
        .I5(trigger_sync),
        .O(\FSM_sequential_cmd_st[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h3340)) 
    \FSM_sequential_cmd_st[2]_i_2 
       (.I0(\FSM_sequential_cmd_st_reg[0]_0 ),
        .I1(word_cnt_0),
        .I2(cmd_st[1]),
        .I3(cmd_st[0]),
        .O(cmd_st__0[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2000000)) 
    \FSM_sequential_cmd_st[2]_i_3 
       (.I0(\pause[31]_i_3_n_0 ),
        .I1(\FSM_sequential_cmd_st_reg[0]_0 ),
        .I2(word_cnt),
        .I3(word_cnt_0),
        .I4(fifo_empty),
        .I5(cmd_st[0]),
        .O(\FSM_sequential_cmd_st[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_cmd_st[2]_i_4 
       (.I0(cmd_st[0]),
        .I1(word_cnt_0),
        .O(\FSM_sequential_cmd_st[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "st_store_fifo:011,st_send:100,st_rd_fifo:010,st_send_poll:001,st_idle:000,st_last:101" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_cmd_st_reg[0] 
       (.C(serial_clk),
        .CE(\FSM_sequential_cmd_st[2]_i_1_n_0 ),
        .D(cmd_st__0[0]),
        .Q(cmd_st[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "st_store_fifo:011,st_send:100,st_rd_fifo:010,st_send_poll:001,st_idle:000,st_last:101" *) 
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_cmd_st_reg[1]_inv 
       (.C(serial_clk),
        .CE(\FSM_sequential_cmd_st[2]_i_1_n_0 ),
        .D(\FSM_sequential_cmd_st[1]_inv_i_1_n_0 ),
        .Q(cmd_st[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "st_store_fifo:011,st_send:100,st_rd_fifo:010,st_send_poll:001,st_idle:000,st_last:101" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_cmd_st_reg[2] 
       (.C(serial_clk),
        .CE(\FSM_sequential_cmd_st[2]_i_1_n_0 ),
        .D(cmd_st__0[2]),
        .Q(word_cnt_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \clk_cnt[0]_i_1 
       (.I0(word_cnt_0),
        .I1(cmd_st[0]),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .O(clk_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    \clk_cnt[1]_i_1 
       (.I0(\clk_cnt_reg_n_0_[1] ),
        .I1(\clk_cnt_reg_n_0_[0] ),
        .I2(cmd_st[0]),
        .I3(word_cnt_0),
        .O(clk_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0EEEE000)) 
    \clk_cnt[2]_i_1 
       (.I0(cmd_st[0]),
        .I1(word_cnt_0),
        .I2(\clk_cnt_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_n_0_[0] ),
        .I4(\clk_cnt_reg_n_0_[2] ),
        .O(clk_cnt[2]));
  LUT6 #(
    .INIT(64'h7F807F807F800000)) 
    \clk_cnt[3]_i_1 
       (.I0(\clk_cnt_reg_n_0_[0] ),
        .I1(\clk_cnt_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_n_0_[3] ),
        .I4(cmd_st[0]),
        .I5(word_cnt_0),
        .O(clk_cnt[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \clk_cnt[4]_i_1 
       (.I0(\FSM_sequential_cmd_st[2]_i_4_n_0 ),
        .I1(\clk_cnt_reg_n_0_[3] ),
        .I2(\clk_cnt_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_n_0_[2] ),
        .I4(\clk_cnt_reg_n_0_[0] ),
        .I5(\clk_cnt_reg_n_0_[4] ),
        .O(clk_cnt[4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_cnt_reg[0] 
       (.C(serial_clk),
        .CE(cmd_st[1]),
        .D(clk_cnt[0]),
        .Q(\clk_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_cnt_reg[1] 
       (.C(serial_clk),
        .CE(cmd_st[1]),
        .D(clk_cnt[1]),
        .Q(\clk_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_cnt_reg[2] 
       (.C(serial_clk),
        .CE(cmd_st[1]),
        .D(clk_cnt[2]),
        .Q(\clk_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_cnt_reg[3] 
       (.C(serial_clk),
        .CE(cmd_st[1]),
        .D(clk_cnt[3]),
        .Q(\clk_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \clk_cnt_reg[4] 
       (.C(serial_clk),
        .CE(cmd_st[1]),
        .D(clk_cnt[4]),
        .Q(\clk_cnt_reg_n_0_[4] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cmd_sr[0]_i_1 
       (.I0(fifo_dout[0]),
        .I1(\cmd_sr[31]_i_4_n_0 ),
        .O(\cmd_sr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[10]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[10]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[10]),
        .O(\cmd_sr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[11]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[11]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[11]),
        .O(\cmd_sr[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[12]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[12]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[12]),
        .O(\cmd_sr[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[13]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[13]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[13]),
        .O(\cmd_sr[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[14]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[14]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[14]),
        .O(\cmd_sr[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[15]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[15]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[15]),
        .O(\cmd_sr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[16]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[16]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[16]),
        .O(\cmd_sr[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[17]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[17]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[17]),
        .O(\cmd_sr[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[18]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[18]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[18]),
        .O(\cmd_sr[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[19]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[19]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[19]),
        .O(\cmd_sr[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \cmd_sr[1]_i_1 
       (.I0(\cmd_sr[1]_i_2_n_0 ),
        .I1(fifo_dout[1]),
        .I2(\cmd_sr[31]_i_4_n_0 ),
        .I3(\cmd_sr[31]_i_5_n_0 ),
        .I4(gtOp),
        .I5(gtOp_carry__0_0[0]),
        .O(\cmd_sr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8A888888)) 
    \cmd_sr[1]_i_2 
       (.I0(in10[1]),
        .I1(\cmd_sr[31]_i_6_n_0 ),
        .I2(\pause[31]_i_3_n_0 ),
        .I3(cmd_st[0]),
        .I4(cmd_st[1]),
        .I5(word_cnt_0),
        .O(\cmd_sr[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[20]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[20]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[20]),
        .O(\cmd_sr[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[21]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[21]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[21]),
        .O(\cmd_sr[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[22]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[22]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[22]),
        .O(\cmd_sr[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[23]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[23]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[23]),
        .O(\cmd_sr[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \cmd_sr[24]_i_1 
       (.I0(\cmd_sr[30]_i_2_n_0 ),
        .I1(in10[24]),
        .I2(fifo_dout[24]),
        .I3(\cmd_sr[31]_i_4_n_0 ),
        .I4(\cmd_sr[25]_i_3_n_0 ),
        .O(\cmd_sr[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \cmd_sr[25]_i_1 
       (.I0(\cmd_sr[25]_i_2_n_0 ),
        .I1(gtOp_carry__0_0[0]),
        .I2(gtOp),
        .I3(\cmd_sr[31]_i_5_n_0 ),
        .I4(\cmd_sr[25]_i_3_n_0 ),
        .I5(\cmd_sr[25]_i_4_n_0 ),
        .O(\cmd_sr[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8A888888)) 
    \cmd_sr[25]_i_2 
       (.I0(in10[25]),
        .I1(\cmd_sr[31]_i_6_n_0 ),
        .I2(\pause[31]_i_3_n_0 ),
        .I3(cmd_st[0]),
        .I4(cmd_st[1]),
        .I5(word_cnt_0),
        .O(\cmd_sr[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C0500000000000)) 
    \cmd_sr[25]_i_3 
       (.I0(\cmd_sr[25]_i_5_n_0 ),
        .I1(cmd_st[1]),
        .I2(next_cmd),
        .I3(word_cnt_0),
        .I4(cmd_st[0]),
        .I5(\pause[31]_i_3_n_0 ),
        .O(\cmd_sr[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h020202A2)) 
    \cmd_sr[25]_i_4 
       (.I0(fifo_dout[25]),
        .I1(cmd_st[1]),
        .I2(word_cnt_0),
        .I3(\cmd_sr[25]_i_6_n_0 ),
        .I4(\cmd_sr[31]_i_7_n_0 ),
        .O(\cmd_sr[25]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \cmd_sr[25]_i_5 
       (.I0(word_cnt),
        .I1(\FSM_sequential_cmd_st_reg[0]_0 ),
        .I2(fifo_empty),
        .O(\cmd_sr[25]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    \cmd_sr[25]_i_6 
       (.I0(\FSM_sequential_cmd_st_reg[0]_0 ),
        .I1(fifo_empty),
        .I2(\clk_cnt_reg_n_0_[4] ),
        .I3(cmd_st[0]),
        .O(\cmd_sr[25]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[26]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[26]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[26]),
        .O(\cmd_sr[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \cmd_sr[27]_i_1 
       (.I0(\cmd_sr[27]_i_2_n_0 ),
        .I1(fifo_dout[27]),
        .I2(\cmd_sr[31]_i_4_n_0 ),
        .I3(\cmd_sr[31]_i_5_n_0 ),
        .I4(gtOp),
        .I5(gtOp_carry__0_0[0]),
        .O(\cmd_sr[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8A888888)) 
    \cmd_sr[27]_i_2 
       (.I0(in10[27]),
        .I1(\cmd_sr[31]_i_6_n_0 ),
        .I2(\pause[31]_i_3_n_0 ),
        .I3(cmd_st[0]),
        .I4(cmd_st[1]),
        .I5(word_cnt_0),
        .O(\cmd_sr[27]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[28]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[28]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[28]),
        .O(\cmd_sr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \cmd_sr[29]_i_1 
       (.I0(\cmd_sr[29]_i_2_n_0 ),
        .I1(fifo_dout[29]),
        .I2(\cmd_sr[31]_i_4_n_0 ),
        .I3(\cmd_sr[31]_i_5_n_0 ),
        .I4(gtOp),
        .I5(gtOp_carry__0_0[0]),
        .O(\cmd_sr[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8A888888)) 
    \cmd_sr[29]_i_2 
       (.I0(in10[29]),
        .I1(\cmd_sr[31]_i_6_n_0 ),
        .I2(\pause[31]_i_3_n_0 ),
        .I3(cmd_st[0]),
        .I4(cmd_st[1]),
        .I5(word_cnt_0),
        .O(\cmd_sr[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[2]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[2]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[2]),
        .O(\cmd_sr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[30]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[30]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[30]),
        .O(\cmd_sr[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000C0C0CDFDFDFDF)) 
    \cmd_sr[30]_i_2 
       (.I0(cmd_st[1]),
        .I1(\pause[31]_i_3_n_0 ),
        .I2(cmd_st[0]),
        .I3(word_cnt_i_2_n_0),
        .I4(word_cnt),
        .I5(word_cnt_0),
        .O(\cmd_sr[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \cmd_sr[31]_i_1 
       (.I0(word_cnt_0),
        .I1(cmd_st[0]),
        .I2(cmd_st[1]),
        .O(\cmd_sr[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \cmd_sr[31]_i_2 
       (.I0(\cmd_sr[31]_i_3_n_0 ),
        .I1(fifo_dout[31]),
        .I2(\cmd_sr[31]_i_4_n_0 ),
        .I3(\cmd_sr[31]_i_5_n_0 ),
        .I4(gtOp),
        .I5(gtOp_carry__0_0[0]),
        .O(\cmd_sr[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8A888888)) 
    \cmd_sr[31]_i_3 
       (.I0(in10[31]),
        .I1(\cmd_sr[31]_i_6_n_0 ),
        .I2(\pause[31]_i_3_n_0 ),
        .I3(cmd_st[0]),
        .I4(cmd_st[1]),
        .I5(word_cnt_0),
        .O(\cmd_sr[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    \cmd_sr[31]_i_4 
       (.I0(\cmd_sr[31]_i_7_n_0 ),
        .I1(cmd_st[0]),
        .I2(\clk_cnt_reg_n_0_[4] ),
        .I3(word_cnt_i_2_n_0),
        .I4(word_cnt_0),
        .I5(cmd_st[1]),
        .O(\cmd_sr[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \cmd_sr[31]_i_5 
       (.I0(cmd_st[1]),
        .I1(word_cnt_0),
        .I2(cmd_st[0]),
        .O(\cmd_sr[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    \cmd_sr[31]_i_6 
       (.I0(word_cnt_0),
        .I1(word_cnt),
        .I2(\FSM_sequential_cmd_st_reg[0]_0 ),
        .I3(fifo_empty),
        .I4(cmd_st[0]),
        .O(\cmd_sr[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cmd_sr[31]_i_7 
       (.I0(\clk_cnt_reg_n_0_[0] ),
        .I1(\clk_cnt_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_n_0_[3] ),
        .O(\cmd_sr[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[3]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[3]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[3]),
        .O(\cmd_sr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[4]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[4]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[4]),
        .O(\cmd_sr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[5]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[5]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[5]),
        .O(\cmd_sr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \cmd_sr[6]_i_1 
       (.I0(\cmd_sr[6]_i_2_n_0 ),
        .I1(fifo_dout[6]),
        .I2(\cmd_sr[31]_i_4_n_0 ),
        .I3(\cmd_sr[31]_i_5_n_0 ),
        .I4(gtOp),
        .I5(gtOp_carry__0_0[0]),
        .O(\cmd_sr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8A888888)) 
    \cmd_sr[6]_i_2 
       (.I0(in10[6]),
        .I1(\cmd_sr[31]_i_6_n_0 ),
        .I2(\pause[31]_i_3_n_0 ),
        .I3(cmd_st[0]),
        .I4(cmd_st[1]),
        .I5(word_cnt_0),
        .O(\cmd_sr[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[7]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[7]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[7]),
        .O(\cmd_sr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEAEAEAEAEAEAE)) 
    \cmd_sr[8]_i_1 
       (.I0(\cmd_sr[8]_i_2_n_0 ),
        .I1(fifo_dout[8]),
        .I2(\cmd_sr[31]_i_4_n_0 ),
        .I3(\cmd_sr[31]_i_5_n_0 ),
        .I4(gtOp),
        .I5(gtOp_carry__0_0[0]),
        .O(\cmd_sr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8A888888)) 
    \cmd_sr[8]_i_2 
       (.I0(in10[8]),
        .I1(\cmd_sr[31]_i_6_n_0 ),
        .I2(\pause[31]_i_3_n_0 ),
        .I3(cmd_st[0]),
        .I4(cmd_st[1]),
        .I5(word_cnt_0),
        .O(\cmd_sr[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cmd_sr[9]_i_1 
       (.I0(\cmd_sr[31]_i_4_n_0 ),
        .I1(fifo_dout[9]),
        .I2(\cmd_sr[30]_i_2_n_0 ),
        .I3(in10[9]),
        .O(\cmd_sr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[0] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[0]_i_1_n_0 ),
        .Q(in10[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[10] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[10]_i_1_n_0 ),
        .Q(in10[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[11] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[11]_i_1_n_0 ),
        .Q(in10[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[12] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[12]_i_1_n_0 ),
        .Q(in10[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[13] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[13]_i_1_n_0 ),
        .Q(in10[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[14] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[14]_i_1_n_0 ),
        .Q(in10[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[15] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[15]_i_1_n_0 ),
        .Q(in10[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[16] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[16]_i_1_n_0 ),
        .Q(in10[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[17] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[17]_i_1_n_0 ),
        .Q(in10[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[18] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[18]_i_1_n_0 ),
        .Q(in10[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[19] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[19]_i_1_n_0 ),
        .Q(in10[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[1] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[1]_i_1_n_0 ),
        .Q(in10[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[20] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[20]_i_1_n_0 ),
        .Q(in10[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[21] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[21]_i_1_n_0 ),
        .Q(in10[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[22] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[22]_i_1_n_0 ),
        .Q(in10[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[23] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[23]_i_1_n_0 ),
        .Q(in10[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[24] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[24]_i_1_n_0 ),
        .Q(in10[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[25] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[25]_i_1_n_0 ),
        .Q(in10[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[26] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[26]_i_1_n_0 ),
        .Q(in10[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[27] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[27]_i_1_n_0 ),
        .Q(in10[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[28] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[28]_i_1_n_0 ),
        .Q(in10[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[29] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[29]_i_1_n_0 ),
        .Q(in10[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[2] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[2]_i_1_n_0 ),
        .Q(in10[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[30] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[30]_i_1_n_0 ),
        .Q(in10[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[31] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[31]_i_2_n_0 ),
        .Q(\cmd_sr_reg[31]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[3] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[3]_i_1_n_0 ),
        .Q(in10[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[4] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[4]_i_1_n_0 ),
        .Q(in10[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[5] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[5]_i_1_n_0 ),
        .Q(in10[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[6] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[6]_i_1_n_0 ),
        .Q(in10[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[7] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[7]_i_1_n_0 ),
        .Q(in10[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[8] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[8]_i_1_n_0 ),
        .Q(in10[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cmd_sr_reg[9] 
       (.C(serial_clk),
        .CE(\cmd_sr[31]_i_1_n_0 ),
        .D(\cmd_sr[9]_i_1_n_0 ),
        .Q(in10[10]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "cmdfifo_1024x32,fifo_generator_v13_2_14,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
  design_1_timepix4_command_out_0_0_cmdfifo_1024x32 fifo
       (.din(Q),
        .dout(fifo_dout),
        .empty(fifo_empty),
        .full(NLW_fifo_full_UNCONNECTED),
        .rd_clk(serial_clk),
        .rd_en(rd_fifo_reg_n_0),
        .rd_rst_busy(NLW_fifo_rd_rst_busy_UNCONNECTED),
        .srst(srst),
        .wr_clk(S_AXI_ACLK),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_fifo_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h7)) 
    fifo_i_1
       (.I0(S_AXI_ARESETN),
        .I1(tpx_reset_n),
        .O(srst));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 gtOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({gtOp_carry_n_0,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3,gtOp_carry_n_4,gtOp_carry_n_5,gtOp_carry_n_6,gtOp_carry_n_7}),
        .DI({gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0,gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0,gtOp_carry_i_8_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[7:0]),
        .S({gtOp_carry_i_9_n_0,gtOp_carry_i_10_n_0,gtOp_carry_i_11_n_0,gtOp_carry_i_12_n_0,gtOp_carry_i_13_n_0,gtOp_carry_i_14_n_0,gtOp_carry_i_15_n_0,gtOp_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 gtOp_carry__0
       (.CI(gtOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({gtOp,gtOp_carry__0_n_1,gtOp_carry__0_n_2,gtOp_carry__0_n_3,gtOp_carry__0_n_4,gtOp_carry__0_n_5,gtOp_carry__0_n_6,gtOp_carry__0_n_7}),
        .DI({gtOp_carry__0_i_1_n_0,gtOp_carry__0_i_2_n_0,gtOp_carry__0_i_3_n_0,gtOp_carry__0_i_4_n_0,gtOp_carry__0_i_5_n_0,gtOp_carry__0_i_6_n_0,gtOp_carry__0_i_7_n_0,gtOp_carry__0_i_8_n_0}),
        .O(NLW_gtOp_carry__0_O_UNCONNECTED[7:0]),
        .S({gtOp_carry__0_i_9_n_0,gtOp_carry__0_i_10_n_0,gtOp_carry__0_i_11_n_0,gtOp_carry__0_i_12_n_0,gtOp_carry__0_i_13_n_0,gtOp_carry__0_i_14_n_0,gtOp_carry__0_i_15_n_0,gtOp_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_1
       (.I0(\pause_reg_n_0_[30] ),
        .I1(gtOp_carry__0_0[30]),
        .I2(gtOp_carry__0_0[31]),
        .I3(\pause_reg_n_0_[31] ),
        .O(gtOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_10
       (.I0(gtOp_carry__0_0[28]),
        .I1(\pause_reg_n_0_[28] ),
        .I2(gtOp_carry__0_0[29]),
        .I3(\pause_reg_n_0_[29] ),
        .O(gtOp_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_11
       (.I0(gtOp_carry__0_0[26]),
        .I1(\pause_reg_n_0_[26] ),
        .I2(gtOp_carry__0_0[27]),
        .I3(\pause_reg_n_0_[27] ),
        .O(gtOp_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_12
       (.I0(gtOp_carry__0_0[24]),
        .I1(\pause_reg_n_0_[24] ),
        .I2(gtOp_carry__0_0[25]),
        .I3(\pause_reg_n_0_[25] ),
        .O(gtOp_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_13
       (.I0(gtOp_carry__0_0[22]),
        .I1(\pause_reg_n_0_[22] ),
        .I2(gtOp_carry__0_0[23]),
        .I3(\pause_reg_n_0_[23] ),
        .O(gtOp_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_14
       (.I0(gtOp_carry__0_0[20]),
        .I1(\pause_reg_n_0_[20] ),
        .I2(gtOp_carry__0_0[21]),
        .I3(\pause_reg_n_0_[21] ),
        .O(gtOp_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_15
       (.I0(gtOp_carry__0_0[18]),
        .I1(\pause_reg_n_0_[18] ),
        .I2(gtOp_carry__0_0[19]),
        .I3(\pause_reg_n_0_[19] ),
        .O(gtOp_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_16
       (.I0(gtOp_carry__0_0[16]),
        .I1(\pause_reg_n_0_[16] ),
        .I2(gtOp_carry__0_0[17]),
        .I3(\pause_reg_n_0_[17] ),
        .O(gtOp_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_2
       (.I0(\pause_reg_n_0_[28] ),
        .I1(gtOp_carry__0_0[28]),
        .I2(gtOp_carry__0_0[29]),
        .I3(\pause_reg_n_0_[29] ),
        .O(gtOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_3
       (.I0(\pause_reg_n_0_[26] ),
        .I1(gtOp_carry__0_0[26]),
        .I2(gtOp_carry__0_0[27]),
        .I3(\pause_reg_n_0_[27] ),
        .O(gtOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_4
       (.I0(\pause_reg_n_0_[24] ),
        .I1(gtOp_carry__0_0[24]),
        .I2(gtOp_carry__0_0[25]),
        .I3(\pause_reg_n_0_[25] ),
        .O(gtOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_5
       (.I0(\pause_reg_n_0_[22] ),
        .I1(gtOp_carry__0_0[22]),
        .I2(gtOp_carry__0_0[23]),
        .I3(\pause_reg_n_0_[23] ),
        .O(gtOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_6
       (.I0(\pause_reg_n_0_[20] ),
        .I1(gtOp_carry__0_0[20]),
        .I2(gtOp_carry__0_0[21]),
        .I3(\pause_reg_n_0_[21] ),
        .O(gtOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_7
       (.I0(\pause_reg_n_0_[18] ),
        .I1(gtOp_carry__0_0[18]),
        .I2(gtOp_carry__0_0[19]),
        .I3(\pause_reg_n_0_[19] ),
        .O(gtOp_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry__0_i_8
       (.I0(\pause_reg_n_0_[16] ),
        .I1(gtOp_carry__0_0[16]),
        .I2(gtOp_carry__0_0[17]),
        .I3(\pause_reg_n_0_[17] ),
        .O(gtOp_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry__0_i_9
       (.I0(gtOp_carry__0_0[30]),
        .I1(\pause_reg_n_0_[30] ),
        .I2(gtOp_carry__0_0[31]),
        .I3(\pause_reg_n_0_[31] ),
        .O(gtOp_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_1
       (.I0(\pause_reg_n_0_[14] ),
        .I1(gtOp_carry__0_0[14]),
        .I2(gtOp_carry__0_0[15]),
        .I3(\pause_reg_n_0_[15] ),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_10
       (.I0(gtOp_carry__0_0[12]),
        .I1(\pause_reg_n_0_[12] ),
        .I2(gtOp_carry__0_0[13]),
        .I3(\pause_reg_n_0_[13] ),
        .O(gtOp_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_11
       (.I0(gtOp_carry__0_0[10]),
        .I1(\pause_reg_n_0_[10] ),
        .I2(gtOp_carry__0_0[11]),
        .I3(\pause_reg_n_0_[11] ),
        .O(gtOp_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_12
       (.I0(gtOp_carry__0_0[8]),
        .I1(\pause_reg_n_0_[8] ),
        .I2(gtOp_carry__0_0[9]),
        .I3(\pause_reg_n_0_[9] ),
        .O(gtOp_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_13
       (.I0(gtOp_carry__0_0[6]),
        .I1(\pause_reg_n_0_[6] ),
        .I2(gtOp_carry__0_0[7]),
        .I3(\pause_reg_n_0_[7] ),
        .O(gtOp_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_14
       (.I0(gtOp_carry__0_0[4]),
        .I1(\pause_reg_n_0_[4] ),
        .I2(gtOp_carry__0_0[5]),
        .I3(\pause_reg_n_0_[5] ),
        .O(gtOp_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_15
       (.I0(gtOp_carry__0_0[2]),
        .I1(\pause_reg_n_0_[2] ),
        .I2(gtOp_carry__0_0[3]),
        .I3(\pause_reg_n_0_[3] ),
        .O(gtOp_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_16
       (.I0(gtOp_carry__0_0[0]),
        .I1(\pause_reg_n_0_[0] ),
        .I2(gtOp_carry__0_0[1]),
        .I3(\pause_reg_n_0_[1] ),
        .O(gtOp_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2
       (.I0(\pause_reg_n_0_[12] ),
        .I1(gtOp_carry__0_0[12]),
        .I2(gtOp_carry__0_0[13]),
        .I3(\pause_reg_n_0_[13] ),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3
       (.I0(\pause_reg_n_0_[10] ),
        .I1(gtOp_carry__0_0[10]),
        .I2(gtOp_carry__0_0[11]),
        .I3(\pause_reg_n_0_[11] ),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4
       (.I0(\pause_reg_n_0_[8] ),
        .I1(gtOp_carry__0_0[8]),
        .I2(gtOp_carry__0_0[9]),
        .I3(\pause_reg_n_0_[9] ),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_5
       (.I0(\pause_reg_n_0_[6] ),
        .I1(gtOp_carry__0_0[6]),
        .I2(gtOp_carry__0_0[7]),
        .I3(\pause_reg_n_0_[7] ),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_6
       (.I0(\pause_reg_n_0_[4] ),
        .I1(gtOp_carry__0_0[4]),
        .I2(gtOp_carry__0_0[5]),
        .I3(\pause_reg_n_0_[5] ),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_7
       (.I0(\pause_reg_n_0_[2] ),
        .I1(gtOp_carry__0_0[2]),
        .I2(gtOp_carry__0_0[3]),
        .I3(\pause_reg_n_0_[3] ),
        .O(gtOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_8
       (.I0(\pause_reg_n_0_[0] ),
        .I1(gtOp_carry__0_0[0]),
        .I2(gtOp_carry__0_0[1]),
        .I3(\pause_reg_n_0_[1] ),
        .O(gtOp_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_9
       (.I0(gtOp_carry__0_0[14]),
        .I1(\pause_reg_n_0_[14] ),
        .I2(gtOp_carry__0_0[15]),
        .I3(\pause_reg_n_0_[15] ),
        .O(gtOp_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000080)) 
    \next_cmd[25]_i_1 
       (.I0(gtOp_carry__0_0[0]),
        .I1(gtOp),
        .I2(cmd_st[1]),
        .I3(word_cnt_0),
        .I4(cmd_st[0]),
        .I5(next_cmd),
        .O(\next_cmd[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \next_cmd_reg[25] 
       (.C(serial_clk),
        .CE(1'b1),
        .D(\next_cmd[25]_i_1_n_0 ),
        .Q(next_cmd),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pause[0]_i_1 
       (.I0(\pause_reg_n_0_[0] ),
        .O(\pause[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \pause[31]_i_1 
       (.I0(word_cnt_0),
        .I1(cmd_st[1]),
        .I2(cmd_st[0]),
        .I3(\pause[31]_i_3_n_0 ),
        .O(\pause[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8404)) 
    \pause[31]_i_2 
       (.I0(word_cnt_0),
        .I1(cmd_st[1]),
        .I2(cmd_st[0]),
        .I3(\pause[31]_i_3_n_0 ),
        .O(\pause[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \pause[31]_i_3 
       (.I0(\clk_cnt_reg_n_0_[4] ),
        .I1(\clk_cnt_reg_n_0_[3] ),
        .I2(\clk_cnt_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_n_0_[2] ),
        .I4(\clk_cnt_reg_n_0_[0] ),
        .O(\pause[31]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[0] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(\pause[0]_i_1_n_0 ),
        .Q(\pause_reg_n_0_[0] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[10] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[10]),
        .Q(\pause_reg_n_0_[10] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[11] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[11]),
        .Q(\pause_reg_n_0_[11] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[12] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[12]),
        .Q(\pause_reg_n_0_[12] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[13] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[13]),
        .Q(\pause_reg_n_0_[13] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[14] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[14]),
        .Q(\pause_reg_n_0_[14] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[15] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[15]),
        .Q(\pause_reg_n_0_[15] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[16] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[16]),
        .Q(\pause_reg_n_0_[16] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[17] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[17]),
        .Q(\pause_reg_n_0_[17] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[18] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[18]),
        .Q(\pause_reg_n_0_[18] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[19] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[19]),
        .Q(\pause_reg_n_0_[19] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[1] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[1]),
        .Q(\pause_reg_n_0_[1] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[20] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[20]),
        .Q(\pause_reg_n_0_[20] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[21] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[21]),
        .Q(\pause_reg_n_0_[21] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[22] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[22]),
        .Q(\pause_reg_n_0_[22] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[23] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[23]),
        .Q(\pause_reg_n_0_[23] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[24] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[24]),
        .Q(\pause_reg_n_0_[24] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[25] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[25]),
        .Q(\pause_reg_n_0_[25] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[26] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[26]),
        .Q(\pause_reg_n_0_[26] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[27] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[27]),
        .Q(\pause_reg_n_0_[27] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[28] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[28]),
        .Q(\pause_reg_n_0_[28] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[29] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[29]),
        .Q(\pause_reg_n_0_[29] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[2] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[2]),
        .Q(\pause_reg_n_0_[2] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[30] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[30]),
        .Q(\pause_reg_n_0_[30] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[31] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[31]),
        .Q(\pause_reg_n_0_[31] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[3] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[3]),
        .Q(\pause_reg_n_0_[3] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[4] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[4]),
        .Q(\pause_reg_n_0_[4] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[5] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[5]),
        .Q(\pause_reg_n_0_[5] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[6] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[6]),
        .Q(\pause_reg_n_0_[6] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[7] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[7]),
        .Q(\pause_reg_n_0_[7] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[8] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[8]),
        .Q(\pause_reg_n_0_[8] ),
        .R(\pause[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \pause_reg[9] 
       (.C(serial_clk),
        .CE(\pause[31]_i_2_n_0 ),
        .D(in11[9]),
        .Q(\pause_reg_n_0_[9] ),
        .R(\pause[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry 
       (.CI(\pause_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 ,\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,\plusOp_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in11[8:1]),
        .S({\pause_reg_n_0_[8] ,\pause_reg_n_0_[7] ,\pause_reg_n_0_[6] ,\pause_reg_n_0_[5] ,\pause_reg_n_0_[4] ,\pause_reg_n_0_[3] ,\pause_reg_n_0_[2] ,\pause_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 ,\plusOp_inferred__0/i__carry__0_n_4 ,\plusOp_inferred__0/i__carry__0_n_5 ,\plusOp_inferred__0/i__carry__0_n_6 ,\plusOp_inferred__0/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in11[16:9]),
        .S({\pause_reg_n_0_[16] ,\pause_reg_n_0_[15] ,\pause_reg_n_0_[14] ,\pause_reg_n_0_[13] ,\pause_reg_n_0_[12] ,\pause_reg_n_0_[11] ,\pause_reg_n_0_[10] ,\pause_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 ,\plusOp_inferred__0/i__carry__1_n_4 ,\plusOp_inferred__0/i__carry__1_n_5 ,\plusOp_inferred__0/i__carry__1_n_6 ,\plusOp_inferred__0/i__carry__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in11[24:17]),
        .S({\pause_reg_n_0_[24] ,\pause_reg_n_0_[23] ,\pause_reg_n_0_[22] ,\pause_reg_n_0_[21] ,\pause_reg_n_0_[20] ,\pause_reg_n_0_[19] ,\pause_reg_n_0_[18] ,\pause_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_plusOp_inferred__0/i__carry__2_CO_UNCONNECTED [7:6],\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 ,\plusOp_inferred__0/i__carry__2_n_4 ,\plusOp_inferred__0/i__carry__2_n_5 ,\plusOp_inferred__0/i__carry__2_n_6 ,\plusOp_inferred__0/i__carry__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__2_O_UNCONNECTED [7],in11[31:25]}),
        .S({1'b0,\pause_reg_n_0_[31] ,\pause_reg_n_0_[30] ,\pause_reg_n_0_[29] ,\pause_reg_n_0_[28] ,\pause_reg_n_0_[27] ,\pause_reg_n_0_[26] ,\pause_reg_n_0_[25] }));
  LUT6 #(
    .INIT(64'hAAF0AACCAAAAAA00)) 
    rd_fifo_i_1
       (.I0(rd_fifo_reg_n_0),
        .I1(trigger_sync),
        .I2(rd_fifo_i_2_n_0),
        .I3(cmd_st[0]),
        .I4(word_cnt_0),
        .I5(cmd_st[1]),
        .O(rd_fifo_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    rd_fifo_i_2
       (.I0(\clk_cnt_reg_n_0_[2] ),
        .I1(\clk_cnt_reg_n_0_[0] ),
        .I2(\clk_cnt_reg_n_0_[3] ),
        .I3(\clk_cnt_reg_n_0_[1] ),
        .I4(\clk_cnt_reg_n_0_[4] ),
        .I5(fifo_empty),
        .O(rd_fifo_i_2_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    rd_fifo_reg
       (.C(serial_clk),
        .CE(1'b1),
        .D(rd_fifo_i_1_n_0),
        .Q(rd_fifo_reg_n_0),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sync_trig.trigger_stage1_reg 
       (.C(trigger),
        .CE(1'b1),
        .CLR(trigger_clr),
        .D(1'b1),
        .Q(\sync_trig.trigger_stage1 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* srl_name = "inst/\\CMD_OUT/sync_trig.trigger_stage3_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b1)) 
    \sync_trig.trigger_stage3_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(trigger_sync_reg_0),
        .D(\sync_trig.trigger_stage1 ),
        .Q(\sync_trig.trigger_stage3_reg_srl2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    trigger_clr_i_1
       (.I0(word_cnt_0),
        .I1(cmd_st[1]),
        .I2(cmd_st[0]),
        .I3(trigger_clr),
        .O(trigger_clr_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    trigger_clr_reg
       (.C(serial_clk),
        .CE(1'b1),
        .D(trigger_clr_i_1_n_0),
        .Q(trigger_clr),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    trigger_sync_reg
       (.C(serial_clk),
        .CE(1'b1),
        .D(\sync_trig.trigger_stage3_reg_srl2_n_0 ),
        .Q(trigger_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0A8F0F0F0A0F0F0)) 
    word_cnt_i_1
       (.I0(word_cnt_0),
        .I1(word_cnt_i_2_n_0),
        .I2(word_cnt),
        .I3(cmd_st[0]),
        .I4(cmd_st[1]),
        .I5(\pause[31]_i_3_n_0 ),
        .O(word_cnt_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    word_cnt_i_2
       (.I0(fifo_empty),
        .I1(\FSM_sequential_cmd_st_reg[0]_0 ),
        .O(word_cnt_i_2_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    word_cnt_reg
       (.C(serial_clk),
        .CE(1'b1),
        .D(word_cnt_i_1_n_0),
        .Q(word_cnt),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
UU0HctCtrDGjqiFgNj8KUV1CNrtLH1fzvWozH/S7aVj0RSc24esnSs0ybsApJYbLPSCW6MJRxlk8
TZTBIGKXHEs9iSJrHyeb7Q9LsfbX2O77j94jiFzmN8lM/LIVA6RCDBtX2LtKWWw0Ex0IvwdPy+Mg
2z4iCfTMzyceiAZWkhE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GF0Vw/gqBrc9IHG5aASlKQHzVjMUtBIwjnrAUquexOCvx+SSWyZN88WoE2YOio8l2Mng8jmA3ELb
iVwbk5kPsSQid3iLelRIejTGTCNP7ErmhAyw9N/gInxZrkBgF+99fwCp/qSFsRz+GkpjXlmNPLal
1m+CmI2mtQjH/zDmulZq9kFS9URMU7E3TrKSiNtdLMYc1ulwC3kFJ99geu/tuMfIrNOmA9KkJtnb
Zoy9fNs53bR+fUGBL5n7AwoO6cdU62PpktsyWXh1Gp6Ylf2HTT0CPMyzWbJQve0G4+iszllRawxG
r+FcAh4BuFpKqaFogcTloexA8MTZ9ICsGZkzkg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Hzytw/FfXpsPrE5ZowzcEV+nwakl1BirWDR+Iseu9nWPYk6Otw/UyzdfMGdUJQcXxjn8eODJUMPS
SLvHyIbu8M+iaMMz4+lNG/o0csNo8MO67HX9fxa4xkVOaSOTCzBVfRk3cjnK+OAXlJEZO2/F0Im7
evCVwWE8mv0p9yv9NZA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aYTxAf85PVmpAktzX89uf9AJXAUs8FLk2gaAmaPtMQhfYN72ydFe5GcOlR9/W705GnhW+LSDUX2b
XQnSvIzmqRMwIqE2sgix0W4aZDvptNpP2y+gttAzQaOhAd12INExGFaZxKro7f/cey7YiwGKPPah
zcBWMoHI2bIhFDe04i/Jt1MdciCe1haFyhwBCett8eV6Laia/DlHOXxqH2bLukgGZp5p2EYoM0T8
WwuwxJ3X0IIphS/uP6nXSuuuMQcAplYzcG4PLCMpn2Lo3HwmwSo5w+0N1NFI5LYfb6ZrdTXjRH+j
oHZlteBZzQ+4jNx7/nPPCnuUB8IFMROek8y3aQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e6jDiYnzLTYk/3jC49X3YNnxEmaFBYGO/cl88hMTKYq1FltlAtsDFs47xPVxcrXJmXB6FiDcQKgy
Zcri+H61avSebr0yHZ1uigtfwqLvcivJwyCmMK1zZ+tk95pu+v8wQUekejQwCfm8d4EwcPtFRBCP
VuiAB7kH68VA/rKSNW/L3Ck+PVdkE6HHJnrneJm4Aial7Xm5QOsroJRJU/ObInH0MO+tgwAysCdd
6eCmjEBFQGTjmThY8W79EF9AQGGRTMTJSajCB65vB7j4uMsw7y2m2q5T1cf5FapbNOa5qVGM3ltu
WzPHL8ffpwsn/Um4FxL0m2OELCU3vijgWPxyYg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W4uYHM01gGeA2MU+ib2L/ExIRZJnY4G/4/BNSFnBkDMClm5bxdPZWGZhCUejE4JXBUBzvBBii0hv
o/qn9snazl844XvvPfn0rjgdMjBDDTUc14EhQ+t9LtnZFAV+z3wAIKGQaUOt5C451j/28rPyPkS0
kBiQMKRYL8V8HYzz8PJCw/2pMZh5nAGYlHVN7x7BRfHg/eGLL9Vxje7mRSIq9oPfHNxp9KvTPnEz
BAbFFeUiH6gtQHgv3loUdp74IXW+8+uJHlh0BbE4crWkB23UetPNvBTz30q+iGUe+Uy9cDako55V
AVXIMgciLrWVPF+qY5b7zySQkB4Xsfj+udkVyA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R0MJeGCQpSjYsGBWKKr56ZJi8ovYpLtniBxpCnrQicvQybY+fnPA8Daj6MXdCf3qwLF8yF5WCJ8s
qgsZvXSLz7hwsKVEId08i3cpwMDSnKdPTNXjuKS2h7UKOlcr6QZ5j31qcO2XbyCffpn/pAXTmv3a
wywj0bLNK61+JY8v+VTzUKzR370hK34Ryuts+hg1InhuHxLuVnu52lVOpk/PYUaA+w7ORS7AIzBm
Ic2Gs+gCO56TT/kHzEdPXDOhyRk/LG0ir7xXNq7VYILxVh4t9QTZ+TIjutFAhElz9ceEjJ95QYy+
i58LiAOmyF9ID0yxSSYM4KQAF2bqt9kvgdWRhg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
piBTg4FhL4gV7WxO2j/dIDXpMS0DVV+BCPbz6qHH74TfGEKWiiBMU6gK+ZbplwJNS8NHNyEzAlya
r4wgVpBFLdWysNz1JTSjKKJCO9JEQN5/H5jfiaYLOSRwE+N3Opc54BvT85yu1V+zTS+2aJj4AQ/f
gjyVCtr2A8YVv2zEjqFuQcYlcSxHTEk5eig4u36hHgzGJsmifFlP0OtE2NeoOMzFbBJe4LR9f1Ac
XQfLq8HilNwnOz4EYZGL9iJymjQ63NwSYfWcRjHVPPJXQFZSrWlI6V5kkz1/IDnPuelueoAKOk5K
OAAeaRjYDKgXhfse4B1Cy+u9f08zryJez9v+yfA14jVDkQQJp6a0qHJYuemefEFrmwJxSLUqG+Xq
QDK6/emEA9ZXoln0PNQyFzaEVDeFDZBn8LZi5SGL6f+TpO0acfI2jxa5+vCQHX/boxpyVjtxPh0W
Xjk7+E7CKFDmE6T/ZNnn7MRpaG1g4A2TEvSqCSRRnPprcg/+bRR6T6Sy

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GlYhuN+XgK/dKipYGy0F51EWCsMzdTtEw7DUl9GCeVeyU6B0qQxd4o+WGLqPzleHUcbSjTY0Zsbn
PYVk3cx1yet4akcLytYAGFXC4n/Xi+1UqMz5TGn6+YQTvRIQ3rDpVCwwETOtxY9exyURa9vrZwN6
wg8aS7eaMRDPPrD9XOy8sQT0WrdKizBToFy2xoVRXceycyYYY7TdZikow1sCVE5Dsq8WQ5SRprGB
6XOvNlQnaIlUCVafx8nFv91VsM31btEViBrUpTqFHJAuoebt0ZL+JlrQ5nOk7XQnw6AQ+0ZlOKba
q3Ttg2CqLMLHVI+1yNiz+OEKhmPV1D5J7vlPQQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2gbN0jz/o58BxZjM7+eT+qN7Q3qHE0g1JsI7dvdgaVydBYqQVWbzuiZYLMAHv8yrsn9b32oHcBSE
0o5Cui6GiD7neKU4AljBAlKAaN9vmM7TfUunNvBpRwv61T0jxsnbQPWfLrtpbTXbXa9k+COT+cqb
xPXfz1KFKZR+jUVQfqg3k9yE8k42Qekbv3kD1KU/qey8yzrOiZWk3YSqYVf+xtUpOvJY52CMhroS
XNjVVkBPUu8Qp/8HAzxqzWi+9FMbOuRKapPdzyPMn/9u5V3oDa03Jlbl/wNvQRAMkkI4MR0Z6Fef
acPXE4lO4yrbdCI+/JWNiFnMhbPxxOqB2cgi5g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ijvB9ebv8UTsfEBOdwLX29OhkfU+M38mGG3GBCgYR1J/bZmxD6jFCxoFCEm1aKFgD1oURupMHfs1
c3MOeOmJ+miekD3bzrkO2GpRCnMbhKovUm5w9Qm7OnK1B25OU6+Xq1Ykk4tIi1xMOMYX8YKOrSrC
twPgnJ2VHr4FFKQ+p5YO7BYb6KtJrf3+2JKYjVPpp3gkR5SZklV/ugbHgXnKTC8NtjSnys5yM8fs
hXOpMWgzLJxxPm595q7fFP3rHvMyw7H7unYraHK+0uc9zTFZ4LHWuOQvc3TRUEmRmJmaag8nwld1
2cnhyhbuZqsuwb5+2W6amIYGSDb8gPS45qwzBg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54272)
`pragma protect data_block
UohLiGcbebtx6FFxUVIlq8fIFqI4Py/AKFf2mimY4GzlX+AhcOmnpJV1Uhq8uLC9uSpPpg0xy8Lt
zYdKcH1wSwMw0ku6MfmTxMoBe+cCU2OZmYr6mU2e4LjSTqlk7obwIQ48vvy0j5M0n2an0RHAhaNh
mo/pQj6kvT+i8yAJNPQQq/6eyu7XH6cMTI8SAcFEyI6mWVejd0TvSIPo5cYokJ55cqtuZkkIdxBg
44aBcdKPasduh9LLm9i8BPH00QVhtNXbVMwUBDwxI9qY8TzNtjpWHFwYrslAoWcKjLd0zhtS4+hL
QK+XETxVp4mO8H3BcipV8csFn2xhXtOIfEmUgBJr5ozKUB351ralYMngsq4qrRxIzder3hvf29pI
SpLZii8yQub3rql1SOnEpU1Y0g4xpYAZl79M4xZV0qgA+/iklrgmimN5hozzN7yS0KqsyGXI0eS0
o19GU7eqiOyJqr2cq6tr8NFAdfQ9pyhBkykkzm9tVYmq7T230oXzoTELexgtRXFKVpNB7+R4GdA3
4QdrtK+3/9i/vhj10BJg9K3zTeMoKfUkZfeqIFdZv6GJUYTn1ov80OCTeB+15dEN67pEFm5Q7px9
oZ+jEG1AafGx3/HgpxF+UOATD4h9fxtVveCEXEZcBcy0B8G1b6FJcVECl6UbopZIBtgmDC7hOlYe
Y73wmfoqPHyB8hBFfWqRkv+uFgebKSr6oVblMFn7EOi3J8BOuPpRdMCbiwh8/KrWXGhNA0qLXQKt
IB9gXPSN3pOAMsKsV2ZTv9BQ2AtNV+xsnLClsqN3CgpAPCJ62VTpuPMC3cViIlTXCyN7pyjlkMU+
HcSLJd47CuulFQNFl1JzA2zJx5JURT4AL3eqlxTWOLpTD+WLzroMUPA+2+NGqnZ3UYTfwH0HUY91
2ByHfnXj46hp7QSbohSUwzVr6eMrsyKy+guJhiOwDo3EIp3xB/J+ZjBoPuvYayh6IHhQUbEhYBuA
FBBhIQC4b527QZA55q8L0wgTwO0SlwYShZiE8RMZ0MBWeqpGF7w5e22k1G12nMsn5baxaUcZ7gug
vyyrmpi22tEvAhvrBF2z+mwOt9OHjLHFwQxO933Q5njAXE8V6luOX7xDfUqSBCIZNa+GjywznKkb
jag0GNf0gndj8OJlcPVjKdZN7Y/EpvdhQN+hiPkj90dSS/EkmW6lGFGaqRDTfPOQJ/uUnNDNvBn6
Jls2P7WK4czgC2QPaZRH8Pm7IvTGuqA41lCmUvHwU1fF6K60ijjKjr0GFxnyn//deXr6gzxMRO6y
I37SFwYyGTwsCn2sD0FZuHHyMoGY0s8QWpGkqoHWxmXikwphPyOH3pFnqBUnI4p3xyD5EuYcETAD
FiBVmcr69qyob3zI2quuE3JYmf/1a0eTDg8IW5ka0VPR9Pf7Y2I4eC6tjkEreBQYQeyZ8/dOwCr/
LefbOgvex239sfuyXMhgSYG/KR3R2HulL4AAZzfQRdfPyLLZN/COxKR72X+lvHmCu4eGSIg193Xu
L+PDrpcVWZKpOw75dNYGZx3YXGgYmtna/ZpMzVx3J5rbQosF77f+J80FU1QI93PeKjtNw9wqrXmh
28U4jWG5kMsjl+cMMjVC2JRBDK7tXJNHM1sTqLMrK2DKhGzruKr+yR7/Ppx5VM2JHqyI+MyoPVkR
XUCee/CBh0MO0y8w7j/siFk/o7cRyQd+2vYTJDtrBS9zPIdI9Ld+pJFvfL4/r9VMVfYDHHYMPUmm
ewgYbfK8KGYo4acVzOLJlQUvHPzT8wLEMY0NVkNEJ9AwdXqSC0Z0bJNSLIbEwDoawNSTMXRAaMC6
05QYeGl8jkpQqUyfQSc14FS8cG/YGJGFhPiq/LMna1qdCuYatYpeACz67UP1peTMbuqnGyScO/+d
3IfCAXlitQB+hd3hltHMUhopECppja7ChVhy2YoKytJM4/l5v4tchp6mhkknKKPRFP3RY43/qEW7
YWaGb4youikLhPTeppOiyWFNgHQgxLrkLEuHDy0mjD3KvBV7ZPKmh3mvRqV4BcVV4nZiOs1/cQG4
UKukp+hhn5RcwaWIYjUpew0Vrbtp1P7N2waWF32gs607wUtBdzRSbO6jYQ40tlQ99/7wW45/f7sC
dP9zTA2fIBdDoXw+GJ2M4Y/5TbOmoX4iaD4qVpwNvqwZaEZ3G+fxc4+aZwMyVvcZToDXNoIVDiMI
kRu9BjRlZIjiN9HLkNZ1GDVLFzw0ZYwF8BinzSph/efynDnwEYbe6Vdfrzl+oRX6DmpGeN0NjRwS
cPKWqpDXD+LZyHbYyDqfdDi2GXzLmhHyR4nR6fDGTQnjG1sfIddhavfYy89bzGkKBjDcosg7+fOJ
bem4OGkQSrtyeHc1RABq+gu01TlRoRsO80HRMmjNUQwy4wufM2YgGjre6DT4sa5JEA5K5znKLxTe
q33QM7pozCV7ukBI+el3Jbz/IAClXM0rl9XqdQuUT8lcEcfbG/+1EVsng5uXIiP6ZNBaKbw2FkwT
wWv06SIboP1DX1fV709uluC/x8br951PLvFeov6DpcIZzn+Qc8BrY0SP8LdWBC+ARhK6KpviVij4
vDmdxVybUDOTTDiPJPc5BE+Xbgm9+Kyg/0ExXP2J3bDfqh6QH+vbqrIVVIzoLnnoE6UAoNZkugRi
KMIyw7IOSN8XT0bvTyZRtELt72gP7LA6/Ng/E5XbtahXZj5FUOKCHwWDzrjN0C8Hwk0qZaqDLd0m
ZXB5owlJrZBvw918cW7Kpz3Qtfq1SSxGdIjz91fNPUZ8UwWNAVVdit2ZgB8ywzZbxiOdlqTJeXs8
QV6zZveCd5NUjq8Tqk8Ee8y0UBECrpEY0jEzm5f6wWlVkV3fci8xzGdpOKqllgLwmup4sXCOTDR/
bfuib9sF5x9G1iP+B8VZ8Ps12DMXKMc6xrQXzrWCkadZVz9js9SKj+yT8ibF7UFpXULn1loMzEgc
pfRci+fhR5vHJbe021DRHDQadY6r3eAXTNQuhkLCuaiHftkpmn2XUUz05bKna1NQOCYbUg1ghGcl
C5yXbyF75n/gA9Ya05V+x+DiEdRUyfxPJRJh66PPatD7tp8LX9aWfG4T7G/vGsKeycX954/bhpex
g4oeI9Ee+jIQdpiVGj2Ph/JCnED8dJrNn9h1XhG+hf0IQqqQbgI2lVFiUVJAq8cU4ZOCrwJxkQQW
m2C/WUeED7FhvJvXnAy3N8a/bOx69BKps7y7+VZC688zB37lxhBV6yqo7ozQdcOx9zvvQgNQjzhz
LcwDnptCt5YeA24SeH//Ildw1A9lUUE+SkWtTSpviJsS866cAFLTM5a7UrLlojNH76THtqfunNdj
Uu5+oyH40/+lsjIhV9wrgGTi1XfKyqUDU+FAPLotXTXMz5GeiBVGr/84o2wAaK+AUAT52JkNRL4H
iJLMtMfCLHXdtgwx0lwdBmxVhDrRpRFZMk6orLdYk+Elteop25gj1nehLWgbKVHYPjrkJlOSqdoL
4GzJ+dwNgq3tE7ZdOlnSF8sC8POkkV+x6hX4UGVgXvBKiQztRIdUULmaok/RFdEnPwK0P5UcV9Wr
e2wCzCGu4//Vi0uHMCNvW+qvKqf10VThQH69WxgPx6fjgxyepRcbHcikEPUCYJZUlGx76a/mneME
gOUCLGLmC+/ujZh9XL2NiOqqeiDXNaSw4OAVkV5i8R9EAOyehpLvwpLNl8Jqvbe3LhYf9YYhzrBb
OLXvy6LE/5GEiCAOTX/QFacKuekG/uv9Ah0ZQEUq/+B77SpJUJCkTP70Et+LtgUzYmXwxXzFPEfm
03g671Zc30hoIWIlfmBYhmJu6zR0AtXYPJpRDn/NEVriy/JC/yILiAp9N5N7BxVx4yoisFW9gaJ4
QE0JG0BwK7KDbvQcrKSGJsJGFbN8Qw7Z2vyGziQBqTYCCUQqsLLjzFW2dSipzQr//+b7sNP/R5Oa
0IZgasgg3Oy1zzVc81uHsjXiWj45VgUh8qEvjrtrnI5MdfJEr3ovb+1Jp0rFJXZxbzaSiZvxhpn7
AtGdYRK6vdMtU9L7iDx9DfYfwu3xc/JdPUs2YPIfi5lgWqgz/aNHRk2nLWvDi6C3RflUoyHkj0u3
K1HC0/gdY/GOGOyhY4jTtkBkAZhZ7a6tSMQXsPAfc8G6YUSrkXPukRiFn+8elpLG21N3k4u6BKlu
c15lzQUE36JH2CnuSV925DhQXVxbI6OLp3zzhQacCXFuookNb6EjeP6KbnGrRMYP8OFmtJK0qS7b
RTpux92E/dRhMSLRAhUIvgPoD9RncVkBPyNBZ8zyyCJUuhyepnZHIgnTf/WJMAkmcUvaWrxvUgAd
i5q5SCq5qPUFhkM0la5zx2G5X6sVhKvx+vSu1a/Ut0QwpDBWnk3NtBgikqU//r4X4+Ux1WxSatAY
U42XLME3cSQIiw4Htjdld3g1eL3fch926o2T4mVRQirdZ+/LUphCnEQJZRg716nFWOWeGIjLQz1h
8PW/l3GL39Ndmz42RpR6VDDavConE8OFfWlo6Iq2/vm8Al9gfHw8GPPFRrT3uaAVf19291JUzUfm
/gpWzopBL2NShuqT51s5REv+Q5zt3GL9l2z/xS1hAgDZNBi6gzeQeKBxhJJ6d/wlgVl/Pe2RgwmM
A+ThzoqbTU5XJtfsajnDpaIWwS75pUsi1oxLWF7jvz/BanUgkVuweCoZ8/EwUu0HSJ5A2tEggt9s
5Ihg71sf3PUgdkdmpyg1ShIqyqwf780ZYg+ElDzkMVFmjxqbtxBFvlmYubdrgq3khAmGrOTj4fjZ
SC69pF4hNtwDzX+YUmQ17poIe6qIaJdR/9ZiFkfJMk2ruFEidic/S1vyRokd0Dl5twmrQnGeX7pJ
SApLktrnqWPP0PBBR8keMYfnkeInNZY+4Er+4p9RIX5CW9L0qjfFbwtwUYsRmts2rpewfGabhniY
qPMzu6uvxW9SqUWm0eMYdZoL3fgdJ6ow2pAPr+LAPwfjkxRN8raIBrHfbnqIGKkVvBOwpL7hYFeI
DmoVHlUrIt2Cw5M4H5StuazWCY7Skkrb/Z6Fv4wMs/nARvYTTKYC8sD3PdrTjW9hk9oH28ylRy9o
d7O4Pd5dyJDuRl7GZjN8SWeL5NvsRsPg9vW77aBVeP+xRYs+eO6DVZRao+3YsFs+BrM9Kcxev+Tf
8BZ01XGIVk4oZzAo9eW+JfChLrbDHMuYZeV+0nkQvXCCxMHjDi6Na3YVVWQ/Q1g9NYyiYrSYjkEj
cg22MYI3bCI8pT+5b0gj1hHVlbrotGi9mRLBY3ekKQrB1zYAYHqievbrI2PD935LhYqGgJYbbkG1
g0uTvkPf061Y2b2OWNxnpgqp9uz6L7dV224Xqvl18boiTcV82fJhovt/Y0lzZ15JETOiieVHnYwp
jYcR1qRKlmHU6hBLyrhWy09PhGrtvWmls1GnVShpZqmMR97clEOq8FTucPoPI9Hsdhx7v5ysvbQt
WXn60IKqeBww6dm40mxrhJRHOm2RXSF1t6s4X4yUmWURMNHM1uYuC9aTDh5pUrYg4UEODuY9u0KH
D4m/sHB+JyciJ0nZ8SEQzQG+Ql747OOUOoK+gyTod79XMpYhwpTsA1jDJV8rDcXInLTjqsUi5r7b
3L6M8wvUtVu3/Xx8G106iPV6k272V1WSRvM3uMXVkKWZyVkZmBxF1gYWZlctP2wbuoAc/sJtQ57P
xTB/6ejs0qxnkPQJ/DKCm6JoERMVg/7H/oXZAp4te6dg0dlhbuhUr299K+jpX8ABhT+AMIJx1mHR
l1J9y0iNS9dF9lCL7HZouuhtsIqknHTSU/k2BbGqdTDIUUpwW3m1kM1y3HIStcXx5HBcCr9vSMJM
tGUVet/UpQddbOyt+rON2XrxNtqMW65DXFpOLwqJ+P9PQ8oUd33lodveHzaInjpXqCjsc8nRFwPA
rss17FdYOic6eb0fl44ECFEjPGt/yKX0I4tZWO7Ldj+ogAyOHZFegoJq0e96HB7ZkK8llqpEIJa+
UHI8gbJsCgmLuRAlR+1sC1rqXBdrdhzs1HRRziwup4RgWysIkNHsn7PqV1ZGs0FgO7oLnYHqTrs+
oRLHrZLp5hR+VJkTFoEWqZ3UKLlwrEA3ORHUXOThOhQ+Ce9/306BOkYyIO0JWO8me3E3PLmSyhgB
JkPdreqT3pjlIKrRBu/U4ZsZ/oBj8/4heJ0Sura0dHqx7VgQ1SM+/ATEsMt5GaPbn4jrNgIug1rD
3ZJXHZ7rR5H9Zr63ZJpaCep/JMUC7jqOmqkDyN7Wj4Ak8j0LgGQYjsllIo0b/heWD23NpEzUiq6O
y06ZH1mg/iS9bBt7dKnhNUnMDm7qEAXOLyyAsWIkk9MrUUfckCeX4jPQ0nu+W5vTeKtggxc16MXp
6MGhhmqx4IiDYHlTn2f4pMgZFSb3GrcI/ImsfiShA+wfuRJ2Os0RVZYHSqiJQXI0AbzPP9gCGTTk
QIUK7OajBtMDJ9WnuT36k6qKnvWQ6J2RQmQVsfFJsMqE0aUyA/vT/CpvMMz1jC6svqxvoPZgAGtE
sM4/idyQG7npZJ5UymE46E7CbxMi7oPSQSGLExOkuAPV360XtoX4MPrQRSUhIErwcoDrnIVgEJ7D
dL30uAI7OGnOHSMDZJ/OhUltGdREf//EcUwpmJ43biUhmCEFUCT7/rPBDdyeDH4mDU7hr87HrbfW
ldENDhrhV0ftIKyrI5EDDkRB5oX3zUPvP+Hh4gX4Q/60+6XRUU4Tm7zPPCZ0zk8tCDG4prvhukpD
sqob92FZi1L5K7AydnA632OgGDsQwjiK7F3lK+SOuCJI1dXcyXbFpfZCQE+nDLs3UOd5CXNcQRdd
phHkyGA0eJe4QauBqRO6/ktwjfviHZ0tDoeSMugkY6Gb7U43w+XA7sJx0YSgjaWJ4vcmkd34MY5e
ZFkPYP9hsZPQkls/kAocZnrOltfSb9xa5ESZIE9NjskMlHXD9+k7gh8M0Jy0W9pzZ6dJ08gp04C2
B+5sg6jU/4qeBxvA0omkE04Bs9XZY/e83cAIGzT6TmNzxjKlLJ/NSVKYgpkbrrje7qwoIvOcHcc1
/HMAQSRRfgwIdSpYsH7E2Ufa3JDqvIVMRPxFhnVzOue2IxH95/EWDDboqW92623hNwxKaUGY+jew
SOFB7yjLxXMONpgi65GKrzgUXu/dj7zPMq/pdVjqQp/id31drl+FkWEzp3Y+Axz670BnVwoFMfI6
+AvaOA91UnlMCeu2ZxTis6gWwHQnqcuaadyY2rTNYuKYIWSCui010MmAkbo154f4QIClMqOkam/C
A7by/SVtmoiajMdaRT2TgfxyzidJTWKj+ZngU8h+v0obnu9eiav3MV1GAFSi0Qt0ew8ddsrIr7n5
B1Kufa8HLptOIYe0RGAQao73XSqyLtQBnjG95h0bbbagIH67mZFK2qkKxkVRM3LtxVi0P8SUY8yR
bR346YkQUcGJXKhG9cLs9l6REvVrW7dy2W5xzQZuQ7FsS3krWVAao79lQ68gEI9VRo+wa/VfRbmF
JSVvNRwKp3fjKASJ5C8aL75KLzzl55tmjeM/H9oMLsm/VOrofCnvakbJbHSlH1vNoEfha5Ov4vQH
AQxVECL84swku8tIp8SJKbUCZSfZZzFlVIhYsH9BPNP8ak1p5LhnNEAyOpjL0ywzBFK7HarBVeuS
7G+gmKpScxGoBGvq4SwWhHVCtS6FH/BZL1wupMBVE/7Jd1qQF0QOZY1ysQaPsE3DL4hNqrTqBGG7
EtCwUVryMp+y3O8N0439ihkSkAdRH/kX96op9Q8Diw02OnKD8xrlaNjjiQJsMxPd9IY/IjAxdCPo
BEGYxnqAiTdvo/hy0MAFx82rn03Vtsfhtw/3jtnjyF81bVRJsKKtEvBPcYdq3ULMk5IPu67M7L4r
EqSV/Z5zDKjc3zSpbs/veIbK/39NCMEHy9UOMqF7yROrYCeHqYen7BqkFUDsP1ZUBUdLHVJQtqYj
fWZkKvtVzH3XK1G3yaBGqe1un7z2IU9AF3O1Wa6WX5X+C4m1/OwDLOuvllHpSHYpydPxdlCyIbrU
dreZ4d64yZVa1ee14R/BrS/ZxIRucRqWKHiAPXfpYjnSOzSqsYY46MWaR9HjrPCodq4hDAHtVzjt
YCwWgf5qYc0nykCFQfqKU3shUbJv6Wg/7+4PtXE3qqvi2B/dXJxqbMWPcCp8zeDgOD/s35NHKl8u
09ngkoR/rfchVmTqlLvCMydeIaw3voXamzUwvUGtpBDbfmgGKfAYio1/xPiSrGbbVjg0W8XNA6qn
fWyXj7x01grdM/SxyB6YRmjz+ThjENrresGhIDpNX6iSwLuw5BJXwrrwqC0Mo9QcZBtwqiffHp4G
5suk/EbRQMyucyXPPeup8u134UKhP+4UjTllm1ntodRlRjBGGEZRNPLgMmRwLP8fPjaKFagI2D/w
OMDj2Pg3K2f2l9jLMPpZzFydv01uny6RGywHSI++ssh5pXnzOutnd/RuTt+c8SfqbtKLn661nNdu
s9uG7v/KjOeY/VJ4jMZpVA6YtyrWn8fybgz9mITcpDd/0t/3pki2v0uVJmkrQwzbd/hVTmkr7rvK
KzrDzuFs1Cx92MB+dv0w5YjM/+IoyY49GgOo64Xi6/Tzy/2KIHJAPwQU7mTH4N4PPp6z6FlBczLw
rU9DSP4a3Fg+o3TppBFHVdr8RgU7ZAyo9qrgYBJgtyr3F9P3+Ux4dI+DI934+f8woHMfDWRNsxky
MLnt8PuO74IbpdWhYCaQQ5Gcb9S66O4N91Z5yHTFrvig9g49y9Fy616QkUJ+muWGr+NhDwFd3h2h
/+WFh+5npjb9ytJEegICeKQb9oR0mVvwjZ0F4egOQ+j6k9hz4EgHh+iJmmiaBbiqb3NXr67Bc1xi
tOypazTMYi9Je0s6bKAYi9WqpjVb7WN2uFtahjnf8D/fZy6n0yCiK3f0NXm88ExjlK19h1wtr69R
R/qlY3Bxzy3HyW6ndXfrtvWddLGSgVISRATLxuFAS/Bg3/gtim9Tjdn5zYIlYtxF/No1e1vfTxJG
VZngm1wTXE9tAHiaAa5+8E73niMjYM3gV0oh4c3SQW9xn9E21gMR3hTg44TyrJ5ZmlG118R+0muw
Ay84cAd7IBp9AdRWmUpEG6SCd5h9ONWJ1MFBCjhacx1QdoFA65mAxMT7Fii83DKnce+deXUfq1JK
N87SMznNyZmerUMmNwIzQNOWBI6BR1KslGnllNGwBSspvnmcmRPeVffERakDQvxtA8wSCkkyfjO/
jZiZYdORQbOrOdhf+qQGHWWOiyjENSGHdFRLRG5ueyk2zE6tmOB2CdUZKqcoV5yvooZKhJViqPFB
Gp59FRMszbayaIjlqVtvr5pQl0p6AG+UA84Kc7j9XXk6nHqmcmtDa9HBP+ndgpxGsROB6QEkKYYy
8wP6mZwcSUOS+Gc6FLrHLBITzVz1Da+btSdHvOsDqLLMqYom4mp5PanL2nujRs4xkZ3q4zQ5SDWj
TEwf0cPIKmNqNjYFir7No4fkrYx+nVlx2jgZmOKI18HHB9JlIKhIWaO8Tr8Lk0BvOKpXlyef2O80
dO8/CGuTCWwHfcFy5AukvoGGB3a9KlPbKCZ7z3ov/j8EA8qGWr5wwY3P5VR3Z8PdWxpyOuNRSiDG
Vh5LUbQcsK7qcFKN3kQ3dVb+fRt1Cq3AvLtT3iDPPDo1qCzQ+j1xnta42Z+N1IrkvcRrBSCXZP49
L3g/qmNzSUfELR8xvhrlaIjjXrVfKgLfD/BCcPLvU1XZhk5hliU5ZSFx4opIXwUcraGzNbi2kDZi
l77OlO2tOK4aRQznVVjLvEBEYXmkFPB4JuCVlshPQJK9vg8Ui5VQmcIpq/3jZ3t+Sp+R9Ja5BPET
Kzy/DXc/phKcM52IazS/ipmmcLgRiEulleF7AO4OBly1RPKInMVtjzl7mhj5rvKZSpV/h9Ckzn5i
uwk+JnkhF5z8RWgiVB3HvI2csmkiNEU0QCesY8WVhCIykTUwQUFt6PL82TSt9Y+xY/CfXxSSb1pA
533bCc5TvrkDSuL72VE9+spdIf7uHnr2K1aIfnQWuqn4lzdbR4/SPosMY774AOHSCBiEsZBs+Bwg
PWn7EVeBTJKSh1B3q7Xx8zXr00oNa9Gi8g0cnTfVR/RNHemINpZ1oC8eVZHITvoTV/fvbIDR1R+X
Uwp6eUnJcfPrEpiLN526+WNaAMbMD6Eul9gziGkyDeeLAg/XRa34ccZg5+moc6SWwtKpctHiIIBT
E8JfeWitAfb/hym+lMGmzN5jBOaF8zsrhjtVMpI6LfXiEvVvW2y+EhT39/ly/uIz8IIT4EYUwU0W
zFeUYnyQo0AyG6HoRMEA59LNUqkqhTi0/qLp9ep2cF2jEIG4Lv2lP4Zs56k3/L1FP5aUPB6Mg3L3
wrkP7ey8PuNC4hsW2fiCtpTX1OAf3rWG2Y26QBEsrCkIX1Rv+1NFyfMrYpywgJXelDJZbDIM+14T
0pxnvurdV21do0BFY0ShrLzEYx7b3JRqy8lvycxUmzc5mf4q9fVOgDvAto2F8kTG8LEaRIZd2M/c
i2kKDBhHbEQXTtNJ1z6wDZlwtpwHKAqSbKBoO9rJ3QbNFaHshd9vplO3ZBMwLNzsGJVaqLfPXDaf
Q40UCQinHAHG4ZZMKHH+0D0OXge9cLZ8TrVQ+mkdgAhynPa5hUXibrHL6nFJGuprVdM9LP6Zl3pz
bywbC+4jl7U/lWS7oTL1kSuWValCD1kw3x4F0YUqGMGEnLHmcFbYyPuWdyecBYKFIcuC0sfuvZ+e
WR+3F/6lmq9pZdI5aUsqLRSbA8BOiq7tLV9wa/u6SwnB001zeozsaiQ4n2EmI0886kL231iEQ0Dn
tJFBNvzonunPBumqkEwF2JmaossoHXDoDclrVmAixTLfSDsiuX+suAeAc8TJnso5zxxhPXsrjcV9
R9B05tRqjYUVK7fDuAXEu+m0cHMtGUEW6ZdBLX6OwDjrT0neOedPmfu4wzdKTjz3gVmRCHfJLtmr
TzGzvFLcXXzYamOxa43fSwY0CRaB4AqiUepG/eJa53vFLOxPoOMNjciU68AT+lmk/rNm13MH41Kk
iRLTgVPWlwIeZZsl1l8NaByD4p6h021tgBjb3Z9bBg+3S01eXhgpMWP2yq1+mzRS0kgh+QzsONF5
qtBL5rl7VHoPW78XlUWa/T2HgjGAENNDxe+UZsi9TnZnoZYwuRwTuQb3Coqa3a/PZHUl2bE5EO6M
5ltHoRgDmNBNbEslMlf+PKlCoiQFYs6+QiRkRKNwVFMEHv9lD0Ql8ym7mB+yQOEOnQFpcC+3grMO
krl7xcAYF1IM6hy3FMe2OQxYHRYVwOk4jwu9GGZCSZpQj7Y/HMcgLwS7Iy1hxg3ChyovrIKJc5eS
V9truecALCn81MzkTc7JTzt+POLDMxNePKctj8e2Rq5ZOjj5pRB1Kq5ilCVumM/oWvPrMoMBc4tc
4DAoEE64hyHrXmZ1fTpb+k2nDo8c1eSLDU5k5kpb2YII/uCSf0I1N/R5HJql3H5lD4BpMrNhinDq
cWBx2/iB3w9tgbJdVlfWbvPCAHZdcwSGbai3szXtSVP8T9TTSBFZ6v9RG7XFEOBQZgBeqZHd0qH5
4l8FVSYOKW0Y/Mj/v81NSXfWlhtZs2PCFHjdI1rJsH5X7EFzf/8fE+5Kx+lM5D5wnRqLcSR7FzuW
ePbgt0occRSaG1Al0ZxGQgPUyFZc0FVRhXzWLgUIAqawQTQOG+KGST7M1msiI35I+5J9pCu4tBiE
1BqtVM5xE/nrlX4qglRdJXO772NX0tvvA+FYtjANNQ6fnb8I2cmbtIP0B378MJf2hN0XyJSEALwj
L4wKqph7V01CjKB2PaMuv7MX5Wr/yJyfmky4d38HtiMIRJlAByxHwJuIiIdfi61CPH0ueGzC/Nv/
ViBlno910XyiEn7DIz0cGpiJ9XwhFonVvH0s/QizZxBpVPhUGYKBNbQXRKK/yu6ki02+NiCn0IUb
KNdTkCkEMcuPmBTtOPtz9Xi6cM4EWvDI1UNfbjCIAbYMzfLsB5TW+lwgFQTmlqlJSPE8DoOCCc/A
tY3l4L7jeNvtsZghQcZC0P7NzeffUXWhnQA68gmSGvPv4pLpFO24QqwLW4yzqtmCq3Fysybp8Sz6
hU+be7Z1kXdGtfRWBvIokmkUnUEvnhPz2ICYhvVJlYWxPfTmC/OBRMZBxOM4fcy3+XshRrvVRkZ6
6SmbZUcZJRpz2CAVznK1URTSpjqws/gw9Kc//xd5gTo+s+tVYUR0RXq1na+mBQ7fD+8ZAbMxXGqO
TtVBROxebkFwx+uk2EprkPfhT/m1uQtKf1EKMzhFpEB9lOY5PltSQZGls8BhG/hSZc5wdE4GYIbS
kkoTSqewsGT/oTrOEaUYdf4Qqj0yAsu3xliz8GpjrGlMBo3eGXvMmnGWFHvsk0AVBfDll7peh05K
KCdgNHSA645FG7o8Cth2vtZqVSpKi6LJdtVL7+A7XmQBMGQWaKLolBHjyVdw1CnbxAlTGST6OgV4
zJfNqky2ZYJw1BqA+eSejpCg27h7lDC3/68T96HzAFlPbl+hNDhLxDxIlghU2mmFojivh/V/w3jd
pq5GNRqOTwSCpTq+X8FBnGePAg7Z69swp7jUwc0nHf6Vd1FDGFh+xo+OQCwdZcFid2yY9L18RY5I
gN2nvZFGZKE635jPeG8AMiqThVabYs+r/+O5G7xe7B4uVToWQOTIN0hJlfp+8qosMsU2eVWWRWBz
D89Ycccovai4bXFZDqhkxiuRmR++ZJdCR2edWF4wJ9xTMCiakk1i7qD245O7ILaUQuisLKFKCLf4
GAGVLsduEIzXWr+obirM2LupbGbypQdtUReUlTVtvKOEduTWm5ekBJXjY97mAitoMBIb5fIXmhY1
jxl+Kcn80r4ejy0fYwUmMq8vVm7nJihneuz4d8X55QZeqykXCpJt7wuNfmJ+LqgjqxIiI35GomN1
fsioBN2VOeuXPQIAbxOgNWolLfsQqjvl8bhiXVqlTM08SVwddEL1qk2u4lzO4i0PtxaA5HVCKZgu
KwU79vbXYDdWTYkH+kpnRVWzkkZL3iYDuZw0J5GU4mtbi04B9gAv/NkGXvZplBJWPt0FHjChA+js
pKnkjK4XpyGZDbdUeGTLG2y8kGjR14uwq9oVNz+7mvKa+zpJGAfOQ3o698L/a12FghmBaLhLMewL
1TZ7d4QYaeNsBrhnSMEA/kLCjJ3IQ1ixzd3EWK2NVeSOhHo/L6dN27EN0u3iacODys5oQ2QbDM9X
eUJTCQLlfa0E3kfHPI8zO68GpcYjJS5q3JfwMN5cv4AovNIDreKCcYgQlCOtdXBR92cNCqXkbDpA
qCbwZu9GeD7xwDf/SbtKsGL19BL83/dklXbDTH+Blwlqied5VAN4ejyFYXYytPnRxgFIwVAcnomb
Dh9JbfLJdKkHS6sSFNO7ClaXuWZIkGNEH6P0D1/xNXDcFPCHoblvKFlYOS3wKVu2/0i9VpgqsigU
LItNlydoDrBwTwGESke4d/AmF6W/u0TjYNnSDpXjxhhEPyS4oBIrYoXH4QHckHHp6xjsx+VL9Pek
U2yv6YcosALB58jl1ORj8afbzw/T+EW3akO4N6dOSXQPQDgstAkGQuElbO2f/CN/StN+ELnoDR3M
7+RCRmUrjbQ6YkSPu7E/8gzDa2fIfr5F9v4LQwFjSnT3KzH1DieIK6VDB0KvNhoVz1GBJpFMlEH2
CLw/IafUAlbp2KtETL9j6rvIc90GN7ta5TxLIGEQ6aa4+R1MFUlctQEJ6FyZhvZU32Fg8YGShWAO
DICPi0LS2AR4I+c4lDsIUgh1+yaL/wIsK/rXf2ENGDoDI9N9YU5oiFmt4BpSCt/4jFzYTwhy346C
liJdGc28rC03rh7yGRI/KXLVcEf1ejon3FjOkp6ckMqWT2TIxnvWpQMhTMSAGV8SF8GDxmsPYj5D
9XRIP+N9QjlYR8c3EHCMGh1NGu7IgNpPpv1F9KigBT9p/eQOKp1koM61eK7VnlMVSxD1xQXEgaqr
eXx96aaOdgflREIRCTgY3QdW3AJG4raF7NNLKjF04j1vfaDOt/AyJFlTn7rWiBTeFUdtGqJ1M2pE
Ym7aHJneIyabMpLUzGV0pA+CRWeTjfbqb6krFOy0jiQfkTwnmNJY2qQDQCnTw7RFR5zMAiwEwk6j
BSuz68zqs5wwmibFBpqQFSX9m7y7+j/ZNQAazlz9MWI1lWBMTEieXhvAVcqSjqUC20FIkl3xgZ41
P3XeK4c1S6id1nN8myyL3e7jOXeGO3VETNG5fWjrIjmcG4Jh8fzdNW+A2ztInxe20IAYCCpQomYM
N7H8SHs9VOXSo5Fge6p/okVXxmpU0bEUlT1MUCOUKXXhq4mjZA6Cay5fBBGcBYhTLQ4N1puc4j9/
+4UoLEZwA+sE35MfeXT0HpnXB5eVqkA6dWLawrsizjm8Uw6U+LJYrSj8uDEi3posto9iua0foz8p
jm4ChoWaLMpnenp1T6ml5V4TOP+FYw0kHwS0bZElBnlQPI4G1cER4fXuq+e7Wo/y/LU4TPFkOAav
fQYs0qX2I9UH4o0dAJXtebSsRdjJKwKflM1Ay/DNaa7YZVs/gfRTH6Wq7B2hLpc0EKiVlEBxEB5a
dCT1/FRoI7VUE3O+rS4FKvI0Br9Yr3VirIx7AjrmAY9e6qNOS/7B+4FZg+COgc5wacXEU5YHKTdm
oGIcRZ9K2KHwl0llOWysVZyXi6ryKnSbC2Yocq8/9aWtM4ahjikEBWAdows6hfoS44SIo5tZykNO
E5tQsCek7572rXfDMaJCWRI+UEZcH8hBnmHEBTDavDeWOIV0w5+HdJbMSbrjvEBimOpy6GT39GPE
WgkrxcAW/nbZWWnxYWCYwwec4O+z4wkt5TLWQhOGhlZp7IzabHVmwj48yCEcTCz5S8Bz05Q5cKa2
8Elk2227X12i23e4tM/fgFWLz/OeZDFVmtUltxTD6U5Iv7S1/V01BlHYPCMXixcjSiKWxjexgXdt
2GAyDK/tBVl6Fn/ytyToZMrqXiGf9Osl3ugwPjEsMmJbhFVTN0ItfG0pCFIHa0TsglUjO1kNX2uf
dqHmr4wzIoPUA1kBm7uEoBvI7aXzX0uWvzpIbqM7is/YDJaNjs75KsiJGvaN+wectueqlyLXViGe
ODEDcmyb6+XDMczcnmjbCZZtgsex3ipHSUjn9lLbK9Zg80ollBDnnjBduHf9H6j1acn6KgZESM07
cSt/codd1LAy1O6js5XKht2Xq6oB9ykUpw+NJRtKmUc9SStFPere6Rb4qUAmWVA09DejMatR/eF3
lj3DfP1Rw2i0ZN/4utQuhg0EAOWRmxoP8vEqtzxOZHyzhdG8+KVL3e6VT5Acf0L9C/CUlbjUJmfe
OepuBP3Fz57Hx3q6TbTpukVyINODhuOW3LNPU6wFAZf6zChAyW6LYxRf+wZoMvQD5DDvQ/wv7WXT
K/Q0BaYKeQhXxSnaZ0Vs3gxmyysmAhA6LlPHx1lu0teKBgP28HlNbNoEdMw+BQ+JTrKTIZIwBJfY
lJvruZTl/kj7LxWHeDveYoKOvH7NeMwI/TzNimf8WXOZ4kEIppllYR4loEibZEnAreuG/seGJLlq
RR+O0q1FphGQVA9xMmtsvQ05wH42fa8nw3Jf8UPgEZWNadIWXcSN6lTiyqV1lN0e00OXY/hjoFvp
17juJkcfOnNEyc4Fa5stKArAZ3cWuNY124k56K1oDoZU4EAPq0/2yZ3F3ujECjAi9/zNSr1IZGCm
Hx3QfieWjo1AkqME3PQNayoiGLCZzDCPT1XuZk7n5IDIwR4FccZWMfkTl0CfIsJo7Q+b8iepFQf9
9O3lue4eN6mTmJx6KD650aVBIegISnt5CFF4GaAQYGt5d97iqwdSJRYVyyxDVog9h6RPKkhN5Hf/
ORhtuf+LKC/5iiijilAwB35fzINBsQtW6uUxVSQbC6eGx4SWJ70OZK6YmQp4wZZY3SSX+39kDZ8y
w8LJndEvXk1bm4LGl3K9Ro5n8BTpb7bEd/kjnLNS3ZPldEjS8GS0vHATzOQfjbbEFMBE5SsqkHLP
QsKmZKbCTxbl7Opmst0YpoqdVC2DdMsE6iuihau/8PuC5gGvIndXHfZ1X8URmoWf0A5MuwgfDZh7
MUWV9DDt7FPd7HFzSuyMmbhkSOx5zPekfJMKBoAAViS+thiz1B+c+ynUyBcYznUKXhInMZzA0Tig
h3GmBZXUPlsjHTG6OFHwbLNa3VM4D7faljTkfz63TXVUJ4LbP4sQsFWVGjD/z9LwJ6AkdSSIYQhb
ohGKrklbgOH0zhmnX/ggAt2GBQJnJwFjr2KsHFr/F8KJYSb1L0MxBQh01DK577FJtHWYv1oHDCTR
5grEo2dXeV9hXWzrFG3rZct2TN3pKBpHu7RRlZZf1bYPbWHKGcTxXxVDaivRiSqwuk6o61sEZS/2
aKWWRFr3sM+L3W785E/wmpIBbzFQEg5ZekCveaP5Na2y2wgOVxpCW/D0Uh/NKGXKpcV3rPZil5iB
BPUYaTu9w9KIhOi5T6WBoTxU36Pnur2Qb/7YtPMqteejalpaEopICq/e7TPmm6p+H32ndPG88owX
Vhntu84acnSr89eUL63935Daqdn7CqnTWJZO7j4gXREDgNomTVfF0S7mOMp0npVZHtYTWWKjS9IY
TqLrLqW5iBV0jKDovk/Pvd7RQ4cTuDP+HwFN8wKlzHkeVuE4XdgIeGVwXebvPERdsc0CD9jJtTWK
oizGn8jkVqqMhTEhEz3CI+u/uy0rHHMEFnmGKv/96RMRMsF6ookuZdRW40Ox49biNMvLoKc0ehsv
T4gLzv2KB8wCXbMFqHPlH1aZgzLB7sTHtlw4TDWVLyT34gFslMi/SsI71CsmtrEn0KuSC/R0JO7d
BGha5ApUDj/L5Djqq89eeh8Cjr4k6YUjjuQZo137vFtyZK1qZviXjPt0f35AkaQGcmblF+XJEakM
KhR8H9jFH0zlsom88huu3xOuwq/+FtRYfiwO7mDJr0CY/L6NqqGZiKdX7IqkxFNKWDSJt/2DHHZC
lmAoq+9mu5Y/Y80nSFGmbUWy4jhwC8boGx0gdZjkEAmnuMET+rdmyNwNEKbQZ0vQN2fdheAzsYFs
T/Yhpu4JCIPG+0YCjFmhke6PsQGH+mTNubo1uJSdT0iX/IjB7GbrEWjAZhZZ+wBdXGopJw/kVTxN
21t0WCE6g3nQKbI0U6cv6MYJgthUUGTXgoghe/4a4SnMqKeq/5bCKIZ1C0xrOafQnm26vWnrF2X6
C++OiCVNBvTTHtoBUZTaH2RpcK5UiFmWb8oX0Xlu+hJ2z0lSs5KJgu21tkK91JLyHXHWKpyXsrFl
Bh7OXPyc2RHStmzRnfyvcwLiwpAB0X3qTp0KDI6rUlFnqoa9660jLDwqWMlf/gzqckrBPfXJ97kT
/CyLmr0U/VffsTCDhJLRtSq7R17sWMmeg/hVxBcVeGOc5i3SnHrQNfBAeAiRnmHsOObc7A5XrHEq
8NWOmc4nT8b3zldKJ+RS5UqBOhhEh+gHlYelXeRS4fVpG90LIlaZBfmRADh6V/ITY8oNO/ZslufM
fxy30FaJtNwGo/pMJH2itWfa6UCjboZ3q8A+eqx4Wsaevr5WvGDMRIdXLRQn90glCZEnt35q72jG
fu8GYRmzpdH9QTjNDzqexat4ry0J5aKXV264w3GUSM0v3px/r3o6JoWZgaiNft2o35sZ9Le6INv8
txG7mb47JbIg0j+RrWVfMs9umVlhDXXLtVeNoKXQLKG0cqihbBnBWhninPhch8uOgdWgb6EUMTg3
3iCTn1OXVX9J2zcbzJwcEmiTwP9ggdYxhcdJsiDQm2NWHL56/LbT2fHzFQzCP9xKKIPH/DZDHZYZ
aFyjgKasYmWqpNtbgTZkxXpEZjGKOPp5Znj1MaFclpEMbMq7HLkx31GrWCsyzmsGeJodebZ48r44
njiLf6ZvyrioTRZSn1I58mJAFYMbExda6nvzBpnNjb0xEAbeFrQcuZoWGQZfgI1x/ikeVwUDj4cl
DPXqTziaPyTRCOGkeI0SAXb6AWwayGZArVIwt4GzJHb8aTmZZRTZTtD2dLUrHmwChpI5nROLdfKc
8m+WzxVhMxsQ0CQaR654SftqhyjM/s3PZp7wYXR7kOFAXYjlX88yuZXQtMhRQwi0ec6JJwqX6xWw
PSHIfi19bZYSeVYRhtcSHMb16kUOd0Uh4PVR+NYv0IXrMCMlChOZjBhBNTLU4HgbNpRTMth4knCQ
wNb4iPjnVdURPIvd+/g4O2lX6zyR3ZcRDp79aCdjyOhsTCMbhwgXjzLq1+VcVH2rpVLIihu/FbCM
gfTUliBfv2lRwrRIuF+ekNSyyGsq5AYUxCOX64PnSedh6WDRls8CbBVSX0YPeMOR7c6sja87ar/o
/cta/BMAKc/3465TULA/wEnzFtvEQMf5luKtMukjXuaI3moWLCxuibS1ss7c4qakc1NXHhWcpkko
ekNpd0v3venre5lv9yeLRFUYWe6Q7uGwHiNWQMlBlIZYRwu1tJkcHsUJ2RbVok78kfUs5I4DwpCV
lqpNLGhBsy6oWIZbuHB3YJt1LyDKC6u//pClOo7AlLMRreaCob9Cl5rJRVXnAWiT+Lmj3nL5iWo6
rLEFF7XFG6MEBNfmE8Ds2XXmb80BGzVAyQsGOMbD/20QFFSM2IJXrwUxVMJ4Vamf4s8iuCYxClSI
DyNdcQ24LCOlA26MlQSrPoJxqaH2SbLntbs7tJQAu2K8CbIZxA9ixkLl/zwT5okj+XyPgk7CBpJc
EU7nqNUf6PTU3ArdmWPyRQep2AqsaAm7uIG2Q6Q77mmyKtGltDomoQSEncwzNVRZPY1h3VF2Jcaz
AZrRxvHSxuJHsJ4LyqTWIR8XxKBDZu2RBEuvL6A4kmy6s+gS7BFime60UwM6cEvcalsC7jaazcTD
01UuXGwLq/bbfOxQ8UpwcCIXrWn1+PTJCHDefXKqSpbaPpKbvw7w9InjSP77EFYPU0ROHQFXxCIZ
1SlGR7MuvG2vMc1b52MC+/FyWr4c9O09RmbgiBo0G6a8kZBxmB1Tj3H5j7yI8c/lXAFdYc2EgkOl
0Kg84PfceoItBagO7bLptAhL943pMdB2WW0DKSOsN9iRx23493LkB9WwG8EGfcqmCEMAROTiO+WX
MzblMj7FrK+pG6uN1iH6ZSkv/jHCvSqgpQjE0AXn2jlkWKDuGAOse1mtL+dlGm4FHTDrbXwQOBmu
pgmmah3IIl7S6QkQN3w8ix/B6WCaffVLL8MQbUXNkVBs3GQ0yh6NJFSKY6xqbxa58CJKgxejc8hB
FMycfKS4u31zc1o9MbuaSIaADt/3KGfHhOZlHbTHOJqgclWwgQEtHVj1MoJmqi+6W/Fn9sJSyTjc
SS4x+hjoo0SLGaArgpzDXoqMbI7Tjwc4E6LqnQ8u9NazhDhbl1LA7Aoidb8yjA/XlLztp9O6DACM
0aIgOOsV27w0MtqdREVy3bo+82Y0R6b6/M8HjPAOn8iJ+gcl8EWOivKrio+Mo1BJ7Ixr7/vV7thO
RzfI2KZKTTEqFJQbnCtu+A1YMwcw+HiTXculg9Qo5/c8hsQlhM7MGMcz4Y7wVEiO1HaDtRrVolQo
ltn3ynXnBvTbfaAyzLRIjxzvp8cLwLgCZMNocj3zm64o6a4QnmrFRny7c+sBXcGIIiWpl2OMSfWe
uS0RSkmJXn3ugZGawb+C9jIAS/kAZNRlVSZiid0g+0AalrKAKNk1qYxgmztSsgcPN3vq60np5mlt
2m1kYIMVdYjICja4B4HWMtrbGsM87HN597g/6si1YDZQDK6vFU+TnT4FNXgvgJfM6iaTbLlLXn0b
4tPC0b4rTwqar2KUb5cIyvyj6AXYMO2rh9dBfsanqwSiUCNkS6NXGsrB+F3jQzye2WoijqMgM9if
jRgxRxZgX/8rwCN320TnZxomnAodRNIEtMo1uRIXyVy56KBc9LRG3vS3fYOY7hMWe4syAWr3GKGr
9Pk9aAMqnNqaLCB2L+wEKeAul5emdBAZxC7S1I8PmZAEbuIlbJewCMHnDK3Y3GBjB4GOISuWd/g7
CmpF4PWLIMg50XScVspv+Ps3OsG6zj89MFK4ECPKk+WTXPnrNwpSggAbHB7ATSHmInP3L6uVOxmz
xWE57MxyGzkH91V5ipZew73xDZfsXSB/qooyXJOxAt9p4U8BnzNh3XbGaUN0P+KQ0aCI3xaBh7mv
pxPPNbwL5pP4KzUM/Jf+b3QJ1G6q8kYpflV1RA/8rw3oSJ4piwfb/vXCjXPWUIxldhK9FIG+G1ZK
rafpn/pTzUqF5Qj/vJ7lN6j3HazO6PkLB8JaiWfurNOdemqvagixdhQc8RdBrkKmX2MCSbI15YDG
nGa4EybTeC/tXAwvLX4zv1E0Jv8rSF3pXMn1y/Ri+kvwIi02lsLvOFmUXx4vGX926VQPyMf4FwNS
MAjzGqjtyPYqbfumQQKvWLkYvtDGbwQhR1l1gRvijJHTiQ9ra64z1gXnU+GW3IQZuq3OC92Gt4Ps
+kHgxx48ueZy8ATzF3q1V9ykIARh9MHejlAdZMHfZxMtKDZLZ0VdyxY72jbjgUZniCNP4exkjnQY
EhmxbVVJaSPgNViNc6o+Y7oNEezNCLRY8rn+IUywi81aDo9Jl16J3KMwg6Oh7PafOzO5N0OxQ9Oh
wAoVJ6K5sypWHt04slHH/QJIQpJeOY4doZa9evnepYq1erfZLNNoSNWDVlzozJkDWwChQGV1bz5T
pq77q0XAnQAn8E5IF86DCNfEd98nlkx961q79og7PJLCgswxj4wp9P8UNa2qSgWYWcRdGfMizi13
SEtlEwlqkhlTfMqK8dVRkQHU/HrfkXZGPqtlKvf5wPHvMVhVdzcfuxp8OQr8gL35YtnlePdOfs5u
LeJycXLzMDKFa/ncAWWHK4aNDGo/GnDpj8Nw+BMBtvge+ZKyM0WDXcdSBG+JgFUBfn5gkb/F1qwR
6qoXgWhc3O9ACp5qAuNoHIRSv53NMZrSI1i69d3pX8lTDMEaYASntcS0uhJnvIsMTvXDnwEHx1G/
WvbTsV8jQ6nK0zo+mWYa4XwHalVlvE6Z0ltnlJPebZ+wrM+aOT35qVU7oiAMSGT686E1N4YHlmgV
M4r14WCewboGfrXeyPZjk8b9k7rn/Y6IF75gBbBq8n3u6Ie/d2mmrN6WXURVG2dl/5eV4DATSB92
TXCIbOdqdWlr/85gwLJcKEV4SGnzrXj8usVJKbppO0Tbut2rNTELVOQJuEPe6N1LK2k0gzE4drMg
0YkSD0zrZx3qGBY3tva+YLXmQkv+2nfCVRNso2estXExBocDPdyPE6Cw4coQcYikWs0P+mH0mQd1
KMjjNSg5dKyfzFoCeJ4x5ux3Qd/1lJv/FdxdjlnDrnLjksGfO2llruQgFhTDluVu26Q+EY7AzfSH
8oKd65At9HPqq0amRjjIYjylFenS48WIAwczzT2+0yNMRbZLbsMO4G22KM8sjnKvr/iw7fVlfRmW
EZjA0MFDAu6cJd9BSY5UlWdXMA6zX4b9FwzQ7eBPKxzidCTKvNoStBDT4NiQSXelZZ6a5hwTfYW1
2RA5cC+Nv4+IgkJT9Tcv8VvA19+DRDu9NYH7Fa4Eq0i/2YP4DVkx8A3PBj+gw+v1LL10E85THPWh
V0dCF7G+nPtXOX+j1VGrivSHYR7PvbLJoeRoxGhIhItcdMkB15p7gGK6Lg+8hqzHXRwwsLoE7Qyo
qOSZ45hYOSZEVy2eGu0VnYp6K+wV0gaITjtptg7CawGeZDGtYkQiW/hvrYxRMvrQrY6zXPfE27ke
CaYWZSFMTrrUOXBc/z6oaUTHkVtXx4BXXIrJdjaAI0upkh37+xvwFuqFAd7VJw6+1rV8mxmP9L+c
f2Vr8WlKobmkAvlfCLDEu7Gb0HhfMXtXqtI2FMAbNNd+nOzxm1kmAwEwWCjC+2XN6labAMTybIn9
GS8GXZ17H2N7aZdMoO+/+jVYjoGWhC+RvFG261mQrzcuJpxVMVp4nTG/FxYXh2BTK2wjH8MGay2i
0uiRpNB5yeGZwzChV7zKgj0knPflwW/Ncom5VAUWjLGQL64LYco/2QvFGHKmgnFug+AqAQG9WG2G
mz8d+Xhb0U4Sy/lf+vzQnCNDUy3vlvKsRXX/CGhcoHjBVrffd2JnnrO0aQ+kbIF3N6FVmkalhsKY
m8CTc7L6oYfju8JwZVzPtapMfKBd4Jmu/uhh54efIBhy0DtTm7g1r2F53Yh6nhNk0j3qsVT+RT7U
Z1ZudFMHm6IVtf4DSv2FWNkOmwDsaBz5CGTwdB2bYszfqGJgeTMdQl08ptGaWUtA8jwybmd3EClu
vDV4H0W326iG0J1uydjE5c9PaS7+2NuFuX9P3p1MLAmN2d3fDItNU80XrtR1NyD706XX5sF8QKvq
7mKVVYJBY5Yquty3wshLTVNNPfeXXDdTsZ+NrYwrrOvuMifRl4zekMehZuLUO9bWS300QX0Kw6+q
en3aSZB4K/6norXvVRLpOYt6Dn2fG1lihOslRljr1nWhcA/sAq8hOGqlqHZiWtdqXUxXmlNuAEDg
zE4HqTCAKV4y/A1nxKH5tfFr86N0Dw4T5UH4qbdQqxh648w3r2c1/CDipkXnLHl5FFzratY0mCt9
Zk8KXkVqNxSJGD/aWnPU8nD+Lfl79G6TseFZQ4CKAtrih4m0OvLZ/PDhjHdwE9fUvQbcu9YE2Kb/
ors2GU5qPsXG5uj9J2oJPjA08LMkdlQiBOtIBjQOdAY5z6JTTYuQ8TBPb10puoQoxJnUvrjZc2L7
gRkZkjHcBBEOSOKiWTVgeI50B5aUQ1ld0diH8OYdF04r4djMxpZgg92R9VONFt51kvQyVRA2BXEm
Wvy9KZ8+TAuJqulbCEspian3GvBqpeyCTk5RLm6MUm68L0fChQm5JK+GidbW/alpGai/hgRpyP5e
mcr6GKT83bT5WRRRKmzSo5VO4P2CuBnVR6lWZP2I6zM85Sq3TDqSEisX0wmPbwJCJQkCk7nYDKHP
C3WJ3W2TjvY/yeySTSoniL2h811OLQv0yfzzgL31B3pGmFu+NqEIcbFr2PNIQovL3J9hBWHnIest
TlX6rOE65YF7E4/KAHVxQxwFEHf6/3xd2W7FPPUiXgMXefbhLA6blHRSgblzZRYp1KhxD+D7XwNs
zHnJHIDamcwyZGqwj28FO0JEqnXCtXhNeX8J81EzLP40Cv0KuEfQp8kqKQ3GXv+vMDfXBgse0gN1
HHRvSOLyquN52kg1ZFTwaE0FiJQKPhPG9AbD5im2MR+FpAP6YNeX4rz+3mbLL5MHW6j7HHQQuMlv
nz8DmhgFLfkhMUo1xexPrzTfIYJZ4dYHhjrJHei9+Fo3Iv7JFDYznvwYt+5Ca9Q+Xx4HcuDba3f6
afGCLy8SFY3vWV97ONQM6cKbhji5DXknGcs7QfHDYsicb1uYnqUoOEFz4eiOl3IeatY3BMTuOY0Z
skwCsa2idSVwjobGkyGLHcEdnpE57pw+JKYTG+EELO49k1mOLPju4+NtNHW6X5B+WBgd+rOcITNg
y6vil2JQsWSHNo7kpve3ajPu1nAHYdjruvsM+eP25yibA03BPT/5yHr/U1gWuyJbdnmCK864pSRc
Vq5EddKUQz8pNFW85Rxs73Kn0lzkoJTcMsKWEs0nmC24P2BXV/xDtZRL9As081Q2UrDi9WtzO2nZ
5wsNmHJ2AfpujmlFHE2jhSUYIFjRhE0tmFZRv/7PJzTyQMVtbKpalYG1JoWvNccq0JWfi04a/EsE
iNdwCTuy+Jtk2MCs0ruh3AErViLYrGeO3wpqjYzZSCMdULad78gqtMYmgFTnWGM3KVbZ4ta/G5uz
cSk7zFAUXcPUKgYcmjqlb2jUVS8lgISgzDeX4nwzFZ5A18cpBaa/QCYw6tv/bZLOBNxnVil95e0P
CG6jPzSFX7GNKW1ALsdI3+nGUzA8iCPolNntELlz6TiFlC3R19TSZEh3ScdVoWBKVNE4JtDCBP3Y
etbsgYk1dj+9RMf/nPUiGv7VjdLAmpSYrdxgyQauS5MreeB6PvK49J2OXxcBWKVmDRVtaR/42yGt
KGPZIeTLMtw8XpG8YHv8gw6Bcy5u4icSZYws+ksP7vVotIdTgBuLBBVWjXv+fD9BUYIn9q41zQwE
CEUK4llbFV14Xe5QmFR1aNXfn9u2S0tW/m6cgIAzv8+yTflkAlfvMrlPcUbofz6oFrGRILI1R987
Wj3tuYAc6KnOy4o8x2uF7wSfjU1nJxYfs9PGtqumrZl/vRNCZ/h0wIKGTt0624vcLtjWC91z5l4N
WnxN++aI7dqBgQEOYttvmUfaTgVNnB2fpNKS2A3gX3rf7pOVOHIm0CtL9fI9fOgU53ICVcyLJnfJ
bHSTXhehRkxVsvTkm/Yr4q1r0enskXk6AGnzlYBecGxeNz0l8pMYanin8wI9DKryYfBJAofnBKeF
6bUISA4XQpPJFf77MYpnH6wdZjHpYM4aXKfqbwXF8/dgRu0rLcVAWpTdL7aT6i1U11d95fRsTTZB
kJSAI1IPqtLnZZQE5eKwHPZNcwyEpEz/Z6115Lh5eoRDqIDeyOTOfjWJkLPNwlI0+T0CWewRH6st
5yv3RI/bwMp4KNHV1K3lhIYMXwlMFw09G2STg0b65ygZPPa/imO5lKA51PGpgTFRLHHij36gFScC
n47RokoobNXyn/TnduRq+1R8UQAewGOk0MOmZMG8DJRbDhIbGE4pKl1ltDCqlf3lRYQ9cIwcyi9G
gtpNm+yUnIeQlYQzUEpgaRqJEfxqdmobEhCQUFg4Q0rMCmp+cx6pxDIKIH9Z9cKFUy50eHiEueqg
pb1yQmFEvCZv9ASQLk8TrEvtsPoLoes5MA1Vjg0bPv5mmMDucnjqRmwY1PaiNqfuHSL7wakcNRkv
/h5RCn7LUThwFJPCEB4atQ3oZY2rfU7k4/yzKu9SG7moUSvQB0v11Up7wVBhxo+N7ZByCDnfIc/d
g9qNhPft5MGdxU5cDsmTvgbvtu3JRJv+DFtrNRmu3L6maWhCNbQvS/z8hKjHwNtBu/SPKLaZLBan
535x3G9wEz142V1l75x+mWDisvIjfyCHPlcv8O6xo1q55IVdCB2nGNdblhogUzLnXL04SZj5He3X
nbg7DyEm1z/0eIyUr/DEOahLOSC5/Sb467RyrfYo4sb0GI4A/FAKnfrswaU8DyjPguZ1JefOhdHF
sOqRYx+atTCBkSVAg662unNqL+f+le8EqqcjowewvajcixXM1bRKZujAkEQEYvgofLw9hbgxUdgM
S1cBKveg6dFSKZcB5SQMiCS3dcFeSG+vMOpwp+8KiOHlNZTjnx2wX1vi6l4HoRS+/cyR+Q72RNcK
BvC6fZA0gmBFtUvSXngj67VNL2HHKXuHMZiTl/COkdOtDz+m/3J6YxcqygIVzGMGnc3VFWMHUEUG
9MArvTZKbAeVuAL7hAjteN5i8911COCDMQWjrk/bbCuUeFBWmtQ+ZjjrsoT2i5kOFtEu0AAFsGo/
9jWv7fku4PALuZBVAtwZ8EnsHh1DbphTD935q36Ask7fazHfp4D95eM1u89NPIxjCiFlIewUBNlD
NkX5vHosxF1cNFP9RU9ao4aKhGnSbNDr0WJtHV9gOJ8ZJvo4mYF0zOnzMFriDQplMsGzZOhYsaCm
IBzscbO9bdVMN+vVk9wXgU98HXlvv5iAnIqBRto1j/gN53wQv5Bv2ii0N/1M/3oWZWT/NhhvplV3
LhJbi+NassAHNEU/xKgf1806kxsBMkIbDZ78D/lfYc8C53/UXCf6qEfeRdiCsAshm1nE/ZEoSuIT
Og+bS8JBzmjLnNwo9ZhlIO4Ccr3sBL8U8+ebGmNJMYLAvs/gJ8PfbaiIZI//dERnIDA19O1ip6Q3
ogFEamvJ660X5TkQLxfFhI1st0c2Q33/fTQ/1PvDNYk9ozEX9T6iX5RN78JYAeYn0JyArVkOhQzK
pC+GZ8Hql9N69Zpw0eoCosPXweX+GvwLYeZIo9sl5WGCu6J0q2tCbEd87Veku+3c9LqhW1L9Rt/V
mSyoQw1NUv11Hwsnc2fhuw7nLDz4zBiyuZqeqSx2NZ5btZenXmS4CneFQBb6YJMKPYz/pQmnJjNx
oSa8oXToUq78G30k6SljnBic2z999IqUQgsXlscScL38kzGVClHjuwNVF6ZYMjYXCdfzeaN+05tm
l29ToHIhZl0M1mzRQROmNWrRTVlk8oS/tnjQQZGavyECl5xLb2QfLrKs+0NarBWoj6g8ko4qsEnb
zyjqHuIMizIYxnzfGymQzflGd5uGBLQXL+e2PnJ7qf0k68ohVSyYBcJtCvbeegrMCh+V4jiXALJk
MehwA1xsjzZUa6sl2WJpHmylH4TAuRb2NUXBf1uSoRjf0OXVuGAsOCnIWrNMQzgFk7wge5N2X/rX
NeyYXsIwFhrKOR/0WI9dPRdJqJxt0FOUspJ/alxzwidYNj0hn64cMMPE7S8HbachVkiRhZyAC4Os
RC7pESVvDGLc3+rMliWkyazTxCS3Bjp9wkChlgh2gIunLhTE7vfaelb1z0owAoxCOv4m1RbpGIhO
Jigj0qa4fbZXX3Pct6HK3uE5J8bhtgrTIiGv5PzGIAfzw6HvRQ5kZCUhsSckkwdtgj949/W0wtTV
3SHh4iSdlFO2aLYzhScq+3BjK3WQi4UWptQNzfFRzRtOJSbjX7i7UJlfPCf7IdxZNp1ytEJFC5MY
6nk13WgdDJA/SkMaXaRh1QcaYGb+9T17KQOv8cnqLhAJqJonpGKoRFPsDhQjBqorR/Ly6ROH2JKV
ev9oHvSlvF2f9CHIGio/K7YMdmzImuOk/nee6Xn0Yd5mfkAexLCraOogV2kab+dH0OZFKhkD4pJl
7StDzUHurcEu8gNp8Y2LMSTBmFcK+Ts/rHvFUx2nZumybAlBp3iXBYjAqAOTtUzkzXI1JvlhD8pC
aHNs3dETLl5mVoIRq2hBw0jZKi6vW+xvDXvjFmK6lelZszLpElIsOXWC6jMSqgw982k8lPatFqJy
6P3I4d3hCYP8DXlNyDbjcXvoD4F/PCNOb0vbv1CvmgWceNjeceL4WngGo5S+VVhqV4l0/5R52aey
vEwIvXhOpk/qjWntUP5WlBIsxB7CQLMoYkAmqDFacKi4Uau6J8YzPKuQYcHvZfA5pqRpXeChyhHs
H46Hrxpn08vxxBA2zL9ECuiWPVWqj5y3X72MMh4dkHPgA/F10v1kaG+CcHc8eCHPFQKZ05nxSHlk
yQAvi7BOJvyYJvJH5r6pQuf/Nf/VPfMXR30Jjo4DHlK5Vd+m5Pb3OKK5cVTEegKnSyLGKkA2wVb6
M/SO/n/4tfaX6cS0KzgDRNGx3BurYo9d9SYWELaUQrjjKCatoaUOvLNTCChNv3kxx7c/b6VXVk41
U6fxPL9P7BrNg4D70vqZCQjHEzV7MkrhgA7788891v9oECDLihkAcq5b80PrHfPbB6nVQ+e8brB/
mdVro0pPcPWn5f4evVla8pCmSAH+iuO8cW+TNBcFtzUQrPLmQqlavuxPL2lETvifvIg+TaForDoH
pDCUHqIh25PXY+8n0GhkxBhm+szOmRkXJWQqOeLaU49XMbAezzrr/Hfbz69N7qmI/Xd1PyUKxZZx
Osw98mTz3ZYX0XpCQw4yA14p7lpeI/Q/WT5mKtyB2ztt6b8IwJ6meGj+dGDKXOuz/aKCPKDJuCtz
+xP5+l+UeU2sR6inIsv8gKLIPjfKz+Hk1h+VK8bkE6w6bxAJAG/CE+kZ/nso1cXrjhllxGD55ZAB
rhz5yNUcFKJwcuJ/MV+v3vLGpAvucMOyD8JgU8dRJNtqv2+eGJsQUiUsQnUSPVK2woHSGd/art2J
GYCkpNWVdv5mcRtbVtApMV2lMDDcs7vUWrVaLj50TYeBhDBuKTU0ppMukcko0WftkzkVfwj43Cll
1AECuCuJf34EPg5TlMPsJgyMSu1fW02KibEsq8uaR2p9fWq6elIimWLj7QrTmPY5GcNF1oMRFc30
2pvtncgQm9DRTYfzv5wKPtND5LLGjmsy8Xz5+GLlG1zcHo3dEOeYorLrBTRC/YoRJp6t3uiKOlDq
SAZpEkTJjZyzCK89ucICxZcYZNv0V8++dY6xVp23yP5od83Es39UjSQGuJSNeYYRDz5yweXHKg34
IN4r+gzkX25h+3JV95wbHge1p8ZTi7t++rsFqftSjFWsqAlrVJtK/oHPcfPCkedyWEpVNMo21Q6c
RyfInAFwulLzn5iU9AhrMBLVjsPcdIB9xoO6wY24Cwx2JzuiLBB5zwy5M/aEFm1n7qUL9A9ybQgq
Yo+ZMRZu7dqxXnoHGSkdgD7LvUhS85vwIDHS7uvFOhwDYaQIe8bT/FVvNpwyjKsNXCFFiOrHLce7
OBZ3RkasbWacyzHWxAHFaPaTHkTbSJh2a5fNGh7ZHo4eTaf5vjJyrK14z0s+uUyy71fGIoeWraWS
rVEzdxLF0ldS71IH4f6SfuqgDS3yuJLlxzK542jjlVmAgMqgXwfPNFf1AIwwOFDfO+Owe2OCKjwn
B1peYMBngzkg8/9qT3OMd1T0kJVtIQV/aRrLpju0ud/qzetPN+MzXNG2QqTWVl1rpY4i4WyzEgGS
9a3ocYc3OFb2hO1iQVPidBVycSZ8YJOd65WEqc4+T2T6TnwIOVc/4HzO52zdKFDhRobaVghBDKSR
/ZXJbO+xESa8/TYkQl1Fj1qgWA/EqMyqudlnj+mL3TZjjVtkOVGUePmWZPdUTZoo0qaQbBFXyZ6k
rGvi1Cq1jXrW3P2hdUfqbQaJEyO+xyZgOwPESVYi4Tyk2msmsnET6fehuyoTx9486HBwFPvRj5Ij
LY6w1SC7tldNQlH7YXHxswRJuFIFrUm/MoB/N8R5uzq6wmDBPK1bjVgpvXPjcRY7Gcoq1ENQs6lA
+keztDMKd7lqLP/SJc7irQ+8q8sJGhSGXxnagQTkFm+LMCGSAiLbO3vT/jtBHKrc1tGTzZk2Ck1J
Kxa6uX1uu0Q/recoC7zOUXFlZXBZ6V6DYHWg6JuZhu3jysS4TQf8ob12MZTkVrcP7JRuNWFQZbMK
fMBozyLn6D8TMP+E1QUXPp+5k+mJtFsTS9wQurs9ZCK8+BEGzuZGQaX8VwOHHabN4w9OSlhZmxE3
txFgb0mZEkmeVUf1Vu3mrm+Bu+nH109cVYlXdhYZyHivYF3SZO7meU3LxoPoqLz44cpcBdPSX3Kx
Z4kIQXewwbiKBlX7qSZIObMbL2BiPX0wXD+ShnNXTQbfPi2pH6gSTW2FbiLpwSPimuDSmpKKNNIg
67U6Dua5p7AqALQgCaEn1PGYF30o9i+slrGtZot1LHXNa77KaCxPTi7GJQBXKwng/3zpow+yDvwA
J5XAWKhAVGg9EfWZwtiWxCLC7ZnyU/YfXKuVOpVFa9aqqHNEx+XPo26zbVBYerYFzR8a62ci6KRz
KgajEOIsH83+IMchI+KSJKbxXokB0NcseIdQBByemngb0M5LnublfrMq0jv2KPxeKAkFBQrHDF+z
fBrGqzeJy7Tf952Jx7SLwa14Y40NhZ6D71EYWBkWqtKhCHDbleZypKKkqjN+b7AhcB6fdxk4W3KH
O2npOEHkmz54UZAtL9ZhtvbquCL+Rr1bHJXmbTOb2IsV/XxxTIOkqt/rR20bjRMOUzwzsNHp9VOz
FJakjUq1EoXgutlKv+BJFA5FZa4NA21pgraJZMIMUL/oHINDbSrP6lmPPy/dvkiDKCaCKlaBmTp3
HC1UZ/IyKWnEhdpmJi8cPQkgHcErHhx9GPLs8Ne+BJvRW0YE2BTXjb2OZmLsYtbCx8qOVXtQrXrw
ExzGKBHF6wxXBTBIUuhQMUOayRyADI2KR5yWYmX8pzqs477B8+CQjDocKu4+JQlc82h/vNOFkh+/
ZHM2mPP6zyrffr+hgBZ7mcNihOx9iECRy9xjDvOl2p/UYyG7IlcQP0WnW79hfc/6yX2p2qlyP9b4
YalzLw4vCGBLRv1Lv4DVleaQfRkDVu+DSS8SRghTDZpZ9Vude2CkGPXs6PnUyaDJqiQGPHL/PS6a
OhG55VBweJNVQSC4jBW0XO6E0yGt6RMu3rIwDaCqwNA8LAkzdppvbXDaEZ/JS5vXgWeY1L8+0nje
9BldReFUy1UFbdk/cnWdBRKpSSxdo6QYl30xqbvEhVRZzdKWN02RGiyLZmWznhRdRJsGvo1sAG7r
imREN2uDo/WchVtCbSjtcits1EcpUSFPXqpiItOrvINGTC9IHcEOPudgmZ46a4aDlCXnPMLW36FI
O6qzB5CgrvsFvoXxzvQyywot56+ClWwqtfDdBMfNukfdxKh6ByJvWD1TK29cXzs3FrbJ6NXdXyFv
PBeA3hwUcx3ZnU86TF309CNFTM2c4sODn5CufTx2j5eMKcSr3NeEENephY20DwT/n570/TODANGq
6ZR6vRLNeknFcpnroSUNEvODMj3TsjKIqo7rfAdM63Z36gpnl/yo4Rq/sgbsgkaxKKRRr8QZCATb
cX6t8BkbDIt1veqt0O7VrVdxOTE6yAPu9/N37PNr8L12guqtz7cvAnnOQBsBKRQ+IFZv9cDa0AlE
BjS0NuwOhryBqt3d5qDvKsVsb67sOB2z11N0HbXSAuY14nRfF/fBt74wWT3zkivmJA9uHUUP125k
RP0EM3vJSgApv9FgjouhoIBxEwsy552EFfUxif/q3MF01CO9A9gPRgTslsm1bJefs7PNkA4u8ReE
It9oFUA6SyTH+dEoX9NWGdzTXeOvy9GQDxQfn+XWbY/RWE6zQmMP2pyr1irkISuTVZw12JHw1ZTD
b/Qbo0YshH3pq7eG2vvYw9B+j0gc9Hr3yyfNfNP4f3CqDJfoXAoMfwAP+UViGbNV6e0PTFIUaaVf
CZ4272Y+HwCGNDO2Jeh9vd/Zx7GjX6zDg63wGvYFcd7+PvH5jfoticGQx4N/+MrvSuE3mktl7ekn
KtFMudsXmSQ/lI0MKEJIzEbBHAlLZ9ULG4m4aFWxYwzEAgS+WNegllsOzQL2BtJ/bxAB1EACPDeJ
BSs/guiFjvir7lMyw6pe/mf0QJOuBIU8Kv7I/aHlBu4FaCdq1buaPB3dT76MEvHYDV6HhAbwKwaB
Oqy21UzZt4eO7V0omSMpqEUrmUu0MhnRHXrwxTZrysvEr8ykKhseTCIpvhjDBY8B+XzXz9lQQ21t
cgpDujlnMV1dIcDp0ZzFEDmCG/UFo0ZedwRxMStByoQbURleZHL9jinWqxvLMR4rizrLn9CHjwF/
MrFuHNxHZvg0ZD9rDtAxoPYJxezhrW9Mis2Nk6j+yTOflaocaZOOSbpPqqX+9fIeDSbFSZu4eWKA
+LlmCtP1dfZqAdbaPRxra0PYYyepmJnsA0A1IoSN/K5QIMGUUz08eXxGjaekOUO2DDcKajkdalkt
BCrbj0fg4lW5lqlReXyPhedeex5SCCEDPkdZYhx2wBAhXBx/VcAMpFzYKWbgU8z3OR+SwX4l+lmD
AX5EJox03qYsquLncnrY3FEEHpqfu0d5LQq3eIbxCpV+1LwIu87bWdFA984/CDCB/tztqBM7i4DE
4H1KmnAgICcduBqT0KuLkeWtmkpIe0gWV19uP4fof25eKUptYcLNmW1RGGb1D91QohpQifeKyM4i
27fsg8gPNzDnh+wn0eJxYtYAJCXJg1BZ1J7TU6MnspzQhhLsXhh76BTUbf6kXOwJ6RysuFh3p3Ub
7ryzUY0YMw/VwJBAuzPCqb6Xg/I9qYjBBQRxbEnFRwl8SbuoHeUkPEhpdg3ARkP3Rjv/10xTMevH
r17OkudjfSE9djbY+NXjwiRTpJYAosGiwD+4NVo1WFSV4iBTyjy4UZxhMLESjW+RffSOBVYlbDJH
wU/ipY5Ea3cDq66hhAv5AE4Ur4dcf4Ww2m6XlpAIIUeSmF3Us+9f3wXHDlOLwYmw45mvsMCqVQfG
/ghVziSkqMfQZomzBjrYBpNsq+NHSEtMRDkZ6gCI0jxxE/0l9Y+FOdNHNF99i8n2DW0gQNwm+ygE
dThh9+6LkhT/LHzZwDiC4MBnOwWTaleFO28rVW6/+ut509ugIhvbKzm+QT8BTP4Zhprg2lx2BZ4a
0jnZ0kUtgfOft0E/IT+oUhl8XPnqy4Nsm3TMzJoYM6DNm/tcC9lu1Cfa/8OPqOhKICILpGTWfFLe
m6UDVywwZ8p3jwJOYUeCyu5q8v6BSn8tMdmY91pHhmU+azPLnqtLkgJqHDsJIUVE3x8RljA7/25+
6UM3uWtBEFor8MiVxZVY4ESn/OV2jGBi07OWuZ9wZc/qSVDfBnLNJbuheW5HRhuYPrLAkHhe2e7K
aP8y2dNMs1El5HEQtDCb+ddGNyLHVXBjyZeT3ZB5prZCWFJAu80KvCWvQYGykLbaGzMixKpLaexk
7noNNe+lVCuiI1RvTSzI6lqHd1HgGkhq0YHlmDokp1yr2DODQ/BS7GZWvYeD46pNv86iLOmZtodE
5zEDkHiAvQThDC3rq7dxO5qBE8qiPxa23+SXZhlmyLf7J6NTYTqIRPMssdUi0whunrrD9+FRGPle
BMZhB06yHEgGUdnIESLBlxjIfnuJOeDwuFAYCN0ftkDWsOMi4cwxy0bfj3VhtP6BAE5L/vcydvEZ
KLdit397PtEUbU0uL8vVnVgGkWAV6MNWs41/ZLfNuHq8wIQY3WwA4WYkW7XdEj9jkYw1inAQy9VG
bABK27GsAO1f9dwfw2F5bI0R26nZ/qoRbzxGn/cqCbiXMLwjK3yQK/pGcqDz/0JXGz2BG+MaY7a5
1etlehCCVyzAqcems/nk+ZQUtTeoZw4ZbNpw3YOlTZyI1eXtJ2bvWSZb5sAhSbnNEPB8rUoje/bQ
XMcf/ZECFd5v278busTP/G7a7pv7jw5vwmPxwt7CMIwhZ6GXgTg0H6tGwURCInWHLeE+F3z6Dnyk
SHBcfkhRz9ieyHnIJobb5aaeM5eSYd9TiJezsHgWix+JYLYBpdm+Gt7Cr7usa6IZEHQSzxKGoSfF
6dhkR9QmFV+xuCwZxkcSDwBm9LwF0R8gvEPDY1cbg6qGDA7Z2j78NLvcWExsSKZHsgGjHaVJHGM9
Q4nuiEil4cEpc26U4mYBTJt5TIjxNfd041phBkY2TL9+7m3vZ8or/uBvmPvg4gfuRXLPV1617hi6
QwjAWVvn9eTnxUlozsvXvgd4KXrL+xyDEb6l5heW6nD3Mb+0SfjrVG4ZWa3h7rQyBUtdWwLcJxcG
qMUykyk/9Vro1pR6+zHqKf9pDu9zWF7akA85pHEn6PPoWKrKAVs917663ItAzYGy7ujs1M81muJH
JbJa3g5fnK8ZS2kKVX4Dam/CtnR8+KOoarU6Wnr2MgUHoRML6rtkPqE2iN+RaOKwUdlRA4pQkk/f
9Nz84IoMSpxsshP/CnJXh1GAx8t5rQuGABmciErzP0LdQJi5st9GhdCOxCcQqUQaRXsNOW9OcmjZ
qkwMdYmYfSby4p+PbjV2QYS5ogHyhPksJhwfDlgASvkL1ej0G8s6+yNjZXTeym2KT01ZpdJS6rYg
SfIRjm8DOm0nf5fz7dI1nTiDkbNlyLrdi+VZagv8KKlqxJdlu4gQreA92JqzKS+/aBqHMze6iu0z
6HGVJDS4UceTfLuxp1DbKWDnzlwFEGJqnWaHkxUCHztvGfk+TgQfabhG+IY38un7zf5wka0u9SaZ
NO8jyaW/W+a7jsCIkUQxCTarMjlZikNAk1tTXtjjyxWxiw40Pf/LeXaPbYukcCFhKvCSsI7RrEcD
dxB7ixg0DrljcuBJzMWtbOZit3bfgTFVVmtkpc0jz+AYp4B6PzvhUbUAOmeYKvcd18Z9uYT8cqap
322NDvdI2rd9+4dUnRRh1TlUbssa4kGEOXvqffEZlqKgaOR5GxWS8Yi+3t+xSgkRw9gBX7cv8kFP
nh9x/VKFtt8dt3I4Xm+r2PegOIU9NFWvRNyEff72qBXFqRSvvK1cG4RTUWAbSytpiyaV9YQwTGEw
dsnEBfcCE25BdCdA0fuE956zF43Erp+PwBi3C8OvWRyCdCY1lIsPEtg0Mj1N1pAY4cdODs+jT7wg
byR5akygZeVy3a2NR6Tv/56+xrI45zxzT3IPQWXqMvqKGL9NfqbI8p8XBQFq0cYXyzkWwTdrVUpw
kCF8MTCHjQplEsBpYRj9K3qwM6W32QbQwV7uEuIYTlAnJIIDRKcXcNIPYyKq7vqJfaKk11uO9UMg
oQK6YoH2u0J/28YjpjODCHSLgnHraLz73RupGXLdm2Xrq1sj5icTdFisHWItAEiSzVxi7z/5AmiC
XMbp3LUDLVai/2ZPgIfOjzSG60uywC7vSD0JtgOjlOHdpRSR4WypwEsGZ7Nf3g2m1OACIAkz4C7j
cnSMRc84R4lTbM92QxbSQgkavER2Sr53pjqvCrxuTcs86tIXl6FXBIQuReBw7Gb3yfJ4z6yirpZo
hgWpC+Wpb/E4Xkds4cnYdD3WUwnr6d5XGIRU4JvMxLXyx+Z648vviI7p/cUukWl8mZc/fJaARrqg
FZbLVyQDXDLvuR57WenajgWFUBEzo+r3Kgjd6kAgphGjDRSyjs9jbZyazaSe8CpHaiwWHxD74JTg
jRN+UxWP7Psja5Golk0onIRS3faVHMDJxnnUxluqBwO8tma3FolI02Jq/7/w3CzjzvwOIf8N22Qa
N7xx0PszLLdtm4dHfvYsCZ8BLV/dhmcnzg8TgL/XPRnuy1SB8ClcHIx/x4qYU4pxNvR+FYkRWUso
AM7lNpCWtdEPlOcCoHKbY0E7apG3Elx5wtB/T9fJADh6rr/Pg33Hcu716vEOhveLco1wKU6T5GpW
KvwlLk2sAUbxGnDoTFsFvVBGDjr3QjZW8Q97V/14EFVvJhiGhkkXpP8TesR6JdcDFjogYOFRhoh8
UgD6COOH5ydj8ZoWPhlqe+9QspSwNkxwEsPun/EG3VKJpAe64MKG87yCwK0bfpPrmQNfF6Jhk5jF
Sv3AK7fW/6VmLTxrOQJdN5RA+dAF4BqvWWk9kziYOp5E4/8k5xhObnjnw9OZJFa46rS9u7MReNr3
40QHwUS8TTEWEUXcW5VFi7C+EfMxaNxr4UNNA5QXo4Rh+vx6byHFbSTrydfBe5iZAxXpwgeEhZFW
08oYOMCNMv4zNGxKUOjBS8VUCSQE5luyYyCUI/JaTtrYz0v2BPjjIAuW3xjq+cn+XnBvDFYDIoHM
YUN8bJ7YVG8CiVV/rZikdXg598M/ul3T4+23JFfdufSfXVEDEFTkiuP1ikpMbtqZ7+DuDJ4JoZ/w
VpvCVC8gmXY20rCPFYw57vEQqwpjsCZmgCTHiwVBUMh5mZItOWM4wnH0gfzivVeciHxdcMarVf3k
IN4Ch9V/3Scye2cdQyX4yFJXY5L4/Qe3THFRZ4+L0edyE5o/kiMduzHtHt/UJvwan4MAgTCGrPYE
4J4fOOdN1UIdqAQnl0Q006USFCe34zqcJWuRSm7Ups2v2WCJOySLC7zsdVjfhC3jruW847BHSpSB
g6p3ezQ70N5hZMUzVPlvXbTxg0Fazf2wAu0dS8UOWK4kRL2HFw78YAzgAwrpAL0NqdfkXW3xdt7M
Ms60EYRaZ1fg/26OLRqNfUf5RjInlqZnpY+gF4WsxgzyozP7rnjIZdJEJZNNmgoWKOrduGFdK8yc
LrgkVFYlHYFCbKKAspsx79ROMy5tW6dnyY3N7wNYnLJgqnbgE0XdeqP2SzoSqFBhyW0f7BQcvWn6
XD+SqOoQ1ZrGnp5W6EURosyHqW4JN4QKU0wVEpZ7x3wV6YYcK74HYJgm7v+/5JqS8jHs4+/2WaO1
+W+XJ7/tzYmzMImE+IuwS5d2Pzk2ElcIcnAGQjVM/pb9F2LRxgx/hUfLf+zJGI2cB2RwPItNOwme
qkhoNL5085KW0cw0N4MDcVbsJRcfvRCh2UtZAa0MnUkP7oZVyFMKJI/IoTQN7lvaiQpep+t59v7b
TVhlqo0TE0M3kVCcqK/v1J54GQk9iZA+FAfvJSSl5BsAWqLPEHJyBErsECsIXqldXkT8sERc20jC
xor3K9lQXAk9Kh9/clTh2tnHWkU2ykZYJ3MwnDqsLMGamwExzbNpTUR5jJIaR1j+DzNHrgOe1Ckl
eJGkvBhedIfNLrO6TM/6gvEvRvIq+DaSeVx/xEQwHU+qIjTQ1p1w0LQQQYyMoa5HzXeNn/gfx1SI
XentC26QGhLGjHAx2LbCNBFde50ht+RNOFK4OWyPEPWdg9b5P5lZXa+hcnJRJLJ4iwxjrxZlI4HT
j1V0RSqzkNEigITNdoMwUDxxhaGk1XG00UsDuIesYjV8yNIwF2le7VrjS1kRRIFjK6RmL/8pE3n0
m7WUgMaS384s2GjfQrLZG//mDE7Krp/ghk9QmbiKKiIfq2i/LsQs8oJquluduJTJqYQWQ70ZWxio
bb0a41TF5/5AaXnFZIxpx75NvOLrrBH9MjCa8j7aam6UZUNlOT3a/DESMjRq4EEFBdRZ0uuQPXXr
Q+Z8oKv4euGS5yV6/xUaIxX61vYgYBJ2093iKMK+5cFLRLojNA0N72D+bWvkd3Y8li3Bcf7KLDTV
Gk+GmszsNuGWt2l9qHNqQwAgn12UkIMHdvLAkVbLf2j6sNvrqRM51IRQZEtv0TBHC9xsmjmyKJgY
uxj4R8qW2NbxevfPRcyh8upk9Ot8VepXdIJtC4ZOvN5LkW/gPYLT3K1AHSFEs9v35vmfnahQfFCQ
k1Z+GrMu/Qj00Gc/q5dwOi+WoQ8TXML7kUjqGoogdj7y3iuE07ewYXLoJp4Q6cVGFCRtxRpcsjIc
ObSPemV6EY3+NIy836Y39edifVGCsr/NqLTc8KDpXHMdxbO65Sdu/XyazY6x9aLPT4seCPTGorBh
1PL1MYDFj9sOHq+W6Zu22e6IV2zs5ZNTfrIzFoUUQt8bquoyBD8CsVxdkLbyjouvLKX5TYGKSBCp
gmGrdyfl9K7KgHx52za146wBNGXWKooI62g/X7nPlqOwLJwtrBqJ4oYTwNDkQ4tNAHi+roVdzc8e
R3hcdTgYRAriJf+uvZIrufRNokIX0HptaETE7XRnOOwIdvgYPj50V8PbHQNfazyeDDoayfPFvetn
od5C18KuaEPAm2Nx2VtJRKU2uYpgs9EmczRlQRN4Fn5p99H0VsCHH0XpS4iY5IYa5ihuy+1dlr5s
I/VJdI7wopOGzCuK+4cy7VtW5Ei1KWdWaAWeJ+AgBXoUfnOnfyGxenU2QSmEJV38iO2Jm9OK2TKz
CEXoBdadff8qbNJba2LaZM7HwjYNxdpztSgCVm8k5jTp5aSu0uCtGxilnSB1FJJp6G2z0mlcbKvr
qy0BeJyfA0R/vBXExcnB+zkFLs2LLC0fiO/BVevqJCA6v+U/QRJ9KTY9sx5DEXR2AZCtgAFa82AU
8WGfWZSB8w5jYWW/XMvw7Nyl+vUj8Jm8cEz5ZPy80MlCquY4jl1/nzCAnhh5qGtEXdUZsdM8OJ9r
H0X4Bcxuo5Im/PfGZaOgLthwWyugliExF8EWQ2zjEQKitduiPz6fCZI6V7dQerzDBW7AkEfKz+yS
4QjdkARHaj5mAYybXBL+rp36ZNLgE4aOcRr6L/eqdv+D+p2PGAYX0Ao6zL09SnF5eEkSHJrLuDOq
qmMllGhe0bXtpUy4yfNzbPKIvVNbwqUzn5oDhnXpmVGRAWdwka6hfn0WO0PDTgJUS206oK3WKRvQ
wSNJnLFFUGgqZzNmY2AHB3Cwq0GNkeKS6ivgd2d8Ic4gZwYePFYDep4qEdGj+NUJ2mdCf/Q4J9Ac
x0rbYMOCWo5SpEpKvfhCdPa6iL2hH5z/rK/VdJ3DYJRw5PiQYugOPKKGNaaXKfMoARJQ+zUS6XvH
uJEu8FQcR+hQ1PSl8piase380tKn/siAVWdxNc9hgCbFMTB6R4nInmQAwk9pMiFpHiZejHK1zd7n
OhrKSzD6CgAaOCpcJ0F6aoliOzogubbdnnqxDN2aX1Mb+6NdD48/wBX9U+OHWOMIZuND8oQzXp4k
EVvFu3Lj2yYJyQWXK1yLCgjQRXbQrrQ6dUXPQ99ho8IdhRUcSBqTg5VhveLSdRvET39lb/JSbv1z
1CrH0uPpILBhgXDPcm3BwsfDW06l2vVRksOhs6kTDOV8JLqMYSzQBVlxFnFLQj9FSlkfll5qvI/r
aWlrehpx1Hwmlb8s/1X+yBMBDWPA2U6BXOmV4OB/LEdLIhC5o9Y5vV0IC5yGUYCxm0qV/jlVxtHe
WP9ThwWzI342c7x2UECjd0yPCxu1499v2qfg4yn8nKNZ0tLRrGOfsEqQK/A7Ldgt0QRmbZXx/vz2
oL14DOVEGl0VB/tJmwWwVwSqg3JUwtSTAHSVp/ht3KhyinuUJehTKeq7Z15V7WFgCcZb3eyWxg6H
AhfIOQXXIawhJCPsmR+LSk+nGSWb5O9wR0fKNDDsBWTmvqSXp/Hnbarl163kJ50vB3YWM1na0aTG
dLucM2P90Vr0YjJQ5XuLqWLel8Ydgah5+q9H/dlrVCZVP37BflHpKM2hCshWtadpuiphPK+EqRS6
2sXb9OHov5OgiCx0WTamUnflLPmljMXrkfc2LwIB6wgtMjUnMJ8D/kqd5Lned4znChl5GVQplPrL
KpOWT548Nu+6P0gXbqA0UdI9w96xbrTYUE2BscvhzTdbe0Hi14VRTsZ/uiZh1GGuyxOUzXrj3Yq5
RBEuimiJ3nQXsJ+X8UUFdkUKAgaVdTkRHQS0dx0Hm6xbAFzGXDkoac3sM/hj7k95ZiuPp/h0qnNj
eDlk+rDfsYrGzsuCbsAWeUVWDGQHUCL+wij+d0CgHUPchvMWXxW6FVNRGOUMQjFzk5C/Xu/h/abc
JHViwBOxgRUHxJIx/wZdvpdRO9TkhkTAoJB+PI/qnzk0NRbdKq7JZInvV3AkmwrD8WBWZgeLmMPg
WHUkY1tjnIkpEEQTtXq6RpU9sUQExt2AKXyNCUmEG8HGbgSsk+HTv6FkURLiBDZwwaeBEmc1e2wu
8vJhIWD4dK3Wq745Wt/sjgua+tYzg8pmhm55wAEJeCYS8x52DZwHcBm6b4YJq1pMvfpnAfjhrx0e
RqWTUDXOwg7JYJNFZWr8E7DoQGysgXwBO1QaKg8JBBsPNwrAjEDFTQmvceoy5QgEkyUtZ92AvNt5
8Iwwj/NpB8GZhS1ZRRTwMixD3m0hd6WpcHyUDwH5HutZI42evOkpQtNPzT37n8ZVuGZN3DJMGg2B
rK+TZhFcxfIjyX8GyT14yy9sYIc0lBUoET3yiNc6dNIRhdSxrCFiTb1LCBCTQaKdUSKu7yCpsV77
xDu3czEemOFVNsT5w0G5dsODr2mRiOiDfhZgbI+kVQFgqT9Y4r8aLzZ6ra5VIGwQIziXBHEASaK+
Ek9FiLQCfto3Kh2wMFcucMGLMhWTb+TKWMq+QQFXKUh9rrR27ML07qgBUORd1+xX2jaO+qmsZDF1
WBxxy50uJuSxCU0Y+JJ+4AGmW9ChWFF6sn6t7zXlilfAyrhn32KaqBPbf2O9oA/ClZcj1z/zvrRb
li28VJw4CXxhc79ItJEbFDordJRy/i5q3HNctuAtBoc/yviTv+VVXiwAu1fgh6L6kCkTIGehJB3R
c06yUXAnSiWQA5wkzOXOVGHqAPa9lUtAcWofVdPGHXA3snByW9TVIAgpKZs13t80FX6tLVaEX9am
3kfln6jS5wXuAaxoEmpV72KxGTNqD4fUJ1U4S9oMhaabsmchzBYi6bteU0KuyEHYFrIFFJ2kXned
3iMHhNRyeA8XYWUQglY5xEcHbTMv7Ls3+YJUo0+C3f/2A+3vcK4THI/WzFgpTbjkpifdnwzDVt1K
/oFqV6xhX1QAGBlsP2BsSwwUa1DoShJLw+HUn3NjOWlMj/8e87kjlsHoezbDMn0ny4xmvkOLAD7k
buOc1pC4MeXBLJZ8QVeoWU89MDQHhEnEgUbwtrrcEkhQb4iSp1yt7m6/8VKjYqbg0mD5rF3Cp+f4
ZlA5PdpLRcpQHDxmui4tM2uM9vJzwSMofywLbJJqCx+x4KT83Bhsv6lYv9FY18PkYKxADpGym8Vj
krhGOzq1mazlP0sg42UVnFEknci+eoTYoQV6mr+PJRjXJSIhkNcbp60N/0F+7/3+BpSfOixo29fI
dE7IZV75HMLftCUs4wEq6UjuoH4S16jDxeawjuWrP7ZYDIQIr1DVLA+cDSRjb06bS7SML4BIF53W
CzoH9aErVkXlGlNF7ty29Z0xbz8sKjCL0g3idlXiGwnmkjspZT0nlEs19G+hKkTK9j/gmUFbdgSW
yHELp7oGoTjq9XNn31e3OBwPtiy7U7ecG9qfIM8p5rLgsofcKGv9PxXbBfkf+hEKW5xSx3jPYv+w
AbLiFJFsnbmC94aHYEG0msTdH0kIAEkKByFz70wqp9aB4jKxqk95MIfmD1XpzfldRc1GR5YC0mKB
XMrSNtj9ZyWPuXxiEWQL2Ykqp9aOmNfNVPmIu5aHkJ6L+ZLzXsWK2EZ0fPqa3Wu8ingmXOAscMqN
x2lxffBptpLlPeFeH8t05xHo0k2qmtfkSAxuf1pQD6yAFlifCqHVSelx7mT03IYtaEah5gMw0RY4
dFdtj91CbSIuCliw51SRegX6dUQViZOFyfPewPZ5tsMrhR6A+VT+znfPseW3Rr7dtNtf21YjpEyL
gq+WesrmKcylUVy3iMFO9gSVmA8DfclHgZ57fMXWR2s5jvOrYSA9WRWfQCprVm18iY/bi2bnv44H
6X4aGhaiUyumizPD+5ozNKhVzXUO5pk/f7bK1rigEbJnvk2Bmlt/rAf0rhM4Yji+sLx2SiyUx8+h
65+IcfB8TSMHGPB4q3JIJhGoVlseZAOTOt9haen4BhlkPC2KrRAT4hiAkgdVYhcbv7J/Ij7ZU/Hp
GEW/ri1jLoYlNKIxfNxRZunLl1ZgLrCqikYDL1BSpl58LvnUEeMc8/9uDFtTY/TcvHM1hAzOYmBF
yWVEwzVDpBlidNSTrgwzFN4TrGTBQuEBtlST0GQZndaWki6exZaeus/YRORTNuMjNQaiYkC6Cawo
FADSLnmNaGiYRWdpgNV4+tvKerFG9o6ZbeDdSftSZqrgAEX2Hu/WLNFhLiCmRr+26We6Jo8MDdDY
3Xj8NEHwiOZJVLub96MsWrQeQ6gHohzOR3xCmaUSXZ2Uo/VGkxaObzWzjQwszCYJ5DdVJR6dc/wD
UA3GfkaqNDo5hstov86bcWXh61RJTyvmWyIBx37Z0D55WLQbMrUlXwaim/XN7+2fv1tIYEPuaJIe
OTzlYE9EuYIcDFgByVp+0wDaSnsf3HYWUqcHOoc6wycMZCTScwjhIu/EhLUccWo9ruyxG/bemvrN
k1yBWIQzmArmXFxXuHd/Kvjza3rr8R/1Yd21MBNPaIhvyTz3elU78PBD9qkdSnhvIlUIaqM9NwTN
ShVRqDYXgiFrLtiKZLKCipZyxnY8Tazu/sOly2FTSBmGdRVa64F7IDFlXpmPdFQykXR9z2zs5fI8
87dRFJWhC0VeGBrE4ZE0QSuhvVYjeVYUk4ZeF9HIrrYJFeSBYpBiy+7JOOod0+nc8eboYHBEWhHP
EBMiBdM/qt4/1rf7tvzt/UmoNTc1KuG5PVXQoECzqt3vlALduA/2qVs9J9mL3rfgyUnDLmh+yBPp
ROqelzvLUJQkuV6DjtjjvmkaGVwS71QaHutO/0wxkbYVQWbQbuexwNKf6+Z0flu6+LuunwJPhmyK
wRID/mywVKRCCy4G2QwLkW385mbkZQw3BlvGQT/kn0mWUFWBSWAG36rt2gJ3B4k5nYP85OpOWK3X
UHvi4x8WJ8ZWAx5UI9m5rtZC6bMmX6vomcZT1GdNNWPfXtD7HrqWS2IYaay7NJRhShgNa7O+OMxn
tm0k5Evwnhqy7Lavfqqy+yN/H4nbh+zs0rwLGtfHKCNLrVG6Ti7XZf7PTPRbotmfM0/tmSy0MSCo
QQH+MkOF7inpJcSQd6CbuSACUfus1HWMMJsLdFc+MD5QUEF6NVnOc+4oAVycu67L+jb2BtgdBDjH
s//2FG0AakMUEnUKTRU7ytDLgEanOeVT+D1loy2QLZZbj6IX2ojM7y7btQ4MSFN7Ejf0V1Nmq5tb
hpTwKM5zAi+twSVpfgZYqX7/rNZfgc8ThoBAXQK8wrlLX5ckqoRTEG8aR+5kqVDjsvSqKs5QHjvv
FoPK61Xx1djxrkwtZS76+974yGl8iRq8qlkw0W6AOqGijO9WP3WedVLPQZGaxjOt0AVGHF8kRZvt
3kq42C25YTSEAbzyb3LieWDnpSwQSo1OY568Ht3wyIoe+Jw7jCs3dDUZ/vx6uGUZvSbddAZpPVI7
qosbBrIwYVhZc5m9nqGCeahS8Y95kXqm4J5l4Dk/p80RtfrdEiuRVhxpyBXQPxV10F8V5nkotRT7
HUHMpsMbqEUtkZIosBHUEZJvAJCzYxt3OrAC36oDox+U8dJGRgaP6Ha6wA9EXl5BnVNDlH5yPwR/
L6WbmLx374UZ97aP2irNa/AqI1Lp0Kz3EcJnWf0UaUur9mLUMvSktF2lzkjCFeAwrDVrQv43kZQp
ob8kbmOL+r5rdCAggZLayPqh0UdOzk2zJ4S+EVG3RGogR/B/bu7Jpch3GEMhS1HH0MAq7iOZ1Hbg
2LX6XLzuofk/wAtEe7JM6PuikJ07QkrfAfECHnl53U2xGuzkPrkOjb/Php4UBYdv/9GptCKQqMq1
Gi0aW5/b0mSSptGnQlbr/gcy20pHEI9VcKF3eqdxgbsRJQk7D0x7LHBvVoMttm8GiUBNdw6Qdipj
5cyUYIG089euJh9uPvzboFqogbS6nr7JU7JuEjphnNKBG5WimcucfNg+lO9KKs8AGAcUW1C7IMKV
/DoqUmm2z1yg9CbOB8Wf9+MBEm/k8hwhDCUaec7yoRdfFkZDal8tBY9/IXRpoXjc4RMQjj7cSTtq
pe7v6g+MgBpk3aZaQCccTst0yhUhWO2TyoZJiAXOWjntEaMxlsd4P/26kzSlzUu5fz0giUo02vEm
98GQ3Os+1sNKOaDCqehxGu/boEzumsNxFIdG7U2dW/s4zZkWlhpxYKYGsD5FWu0PytcbgHVvILSO
idBaqrlRWLdTmYWLt7Oc1SAf8s3ub15X1CGjI9zer0V+fnDtrL1azQ/0LY3PyZY5YSJSPysiPUQT
kDFsugFzZLVDRdioo1+/eor/9mb/LNL2aMbuDLcVcTa7DR2FlN7dzwPBIsnMyNEsx1FBoo9kYvfe
o7sfGsD06ccsNC5XTZiZJ45SiG3TGcyQYrGO+5/F1/C33AF/UQZFDb1rMk85LQt3IlpYWFLZS/Q3
Vu68eEBI4U7ISbFX9T0/OZtoQdA8DfWHzk69HAtt45CbV94pBeWlst0JjJbmtzurYuBFtZcqc3tk
HKYGWS0w3oMyi4uv2g4mYGo+WEyWvGq5RBX3Z9V1wEhBNesW0coSsdRV0guNX0Gdac9h68Z/km/l
weTPxmhddKm5uzBV8n5Stt/q9y6pKziyHYfVGfBJmFyjQkEUFflkbeeomt1wEuZT+0pJckh8J1Ac
3290QBi6zTC0Z+aaAxkKRPW9ghNXl+65Ms/ZBg3L18Ovm/D7chqQDjBARc7qvjODCOFnTL5eztS9
Ref6HTBb8AvBW+K3Dl+h5RD9bj533V+bdcGuRjItiZVEutVO24DRYoL48Ws5VH73gvYdrQmopWZj
36ESOst2mZWIkH23aauPH360HJhhRondT16IeQ2MLaDZp1NDYQ4h0Ayn5dgtFMsju6nNnmRwTnLY
6+ivfNaKzTJkZnQGmRYMc6x/KyqYbJXJeKqwvBeyeHNgAsyvPUtyO498pHTcTLQS4rLew0Gu+fJh
8dkMGlaDiEKrhfeZP+xGA76E5QzRovcfsvFrUsOIw86KhZgHJ8WNDA5KHlbXsYFmLSNAkri9LjKV
RIXJGwYv0dT9CZaxMqTep8YMP36Y0gIAuBPdXw03gUKq2ba8Jl8Yj2b6xvQtbBWa4C3Yjj40yX1T
GwArvWvuV/34jvHPNLzP6kvoclZt3x0N2wFxqotj3IBra7YJX9K8N67PaUSNOzUXVAbahF55Hm0h
c7im17+EHvaqbghib93X/6tq1KZfqB1bRHjVjPJ1/4KtqaPFwpuQowPEtiElAENtQzwZqCj4crR0
2o0z7OJoKK7lD/aACJ8NY/BcFTwUodI13Eit4KCukeK+x7XB2LUnrPxPo6O277aTS5WZtLwH6d3C
vF0eO45VNUj1/JYPzDBzMLPfrq+ObGkVYoiMDQH3rS+SCma9nScJw79Afz2ZHy9ZJFNVwm7oliTs
nDCyOrniUJy54KWUE0lCHxNJAOY6sJaY60E6YQkOPWFtOdE2RcWMPDprjp8H20nmCPp4omzqCq5d
fv9aAQ+Hpxx2y9bd60Jy2LHUCY0VxKjoBxAclI/I/u74Q1rstU9riUZdG0/zSShfY1yN6avM+UU0
3W0uVD+7nwLUgNddXM1tBu5+jSBvd+kyAnzYaHkGo5IfodlTSjl/LP9Er42lzdpZzCyqlFRjHWoF
wH3cgYbGJy0RneDwOU9PuBqT3LiHQsrk16NECWgSTZ6hAyZg+jWkaA7mCCDIbIKI82Dx8yP9MbOh
9LeLOFp/RGXjIM+OyO2mc6HVSfmifqw/7QcOrY0YFdwdnhGPK12mbgqpC1GGkU9tT80W6jfVBVtW
ekAMWkyHM46m+/FJmsUSJ8DvCxVru7CvFLmqVxbmRIWmFvPjR7fVUN4QDPDKvA0DJb0Vl9c++uXd
EQOSH5AdwiRbKEEdKdwK8gHTgla2nkCyt/rEtl79XxqxSnc0AxbtI0XYlRUWd/FyvH2RQUKLSYgX
nQawkslz1V7rQQnKpBMEJUkVDZ1qkESqBhgA8iDzsLWuWzEjgfbBZ+RS4/uZQ3UxY/2AMFkV6yH9
Rs8e+gSQk6sFy/Q8VFKlZ1Wj/CX2oxLmkR0p87UmM5lJTl3Jr1pSEc3d5rzvvHa8GfJ0P2WtJYI2
C+D6T7S4tldaSKJM3GfYeAJ6AnqvJxApCMR5eO9a50G9FlPvq/R/6HDcggwJKWxA4Wp/bANKO+nZ
BJZFZE02rynX8NuMqoJgcENt8uPwe7JpJayVJfKjUIDR6T0j+yxQmyNymdGIUaNkVjLXTMiN9Y30
japXKYqFXrgrH56hrJC3VzMF9gkvgzY1Yy49dAxP2m0rTCzqwOLV43AYKXFRBf2A0f6azD5IvnvF
G4cZPSWJvn8nIsmrh2ZaU80R0Ne5YCdlllcQnA5tAZefCs66IYt/pDvUhR8j68W4uWhHkG6bvSGn
wDDx3dxDAHSdnUnQgs0GelRDl43cRBDr3Lw1Fc7mTI1LQnu579tuy031PgZZI3UzRTCrUsFM/+yn
ENMpmDqNaj9jl8yFYd0mDJHVysqtMYQk02zMHPSYFIBoPZLnQ0U5MUAdAAt3xP95v1U+GMquNUoE
ACwmoO54cvdRfdm0K2F4uCJNx8g/Nvg19lLfjlucoASqlUltwzkePnUEwNeXa8zRjlsp5xuQQAvU
OmRITZ4R8nyNrE/KUOOJWgWA/U6Ftv/+LvLtXUu2qC0Rt48AXfUhHu3TGK0OW15btvfdzJACFzPC
DjXWCt3SmY/3DnXhhE1v25IkANB7fdqtFwE/aw6BbiVsQ+6xnnNdSooA/Sukqgb7kh5WIQso5/iI
WiF0JntlYzqhlyPgY6Y9WTLwks8QATytVzMTXi27DrvunGJOZJUxPJLCZh2pYJP+o4ca585cPFKK
FSm4etFJfSXqaAtsT0+qLbw3rlFdzgByLOZ+njLzxGbQtLGBRwtzZc4VW9Xmlz0kDmm08qdWIf88
74R5ol4ze7eTZ1c9uE6j1C7qFK1gXyh0Brl+duNAyoRqfUBo/A/xt+W+b/2YvneaSrNr8ChHygUe
QRwS3RJ5fA7QAaBHrhR7/VCd637UaOlL2T2dYbNuLSThgPtGVRJ3gCqMv5AgDl37T1PlZ6XDnnAR
AFVSlpKLgFfolx5PVkncFtjJVxESFkHVSb1hXHHGJe8vLMTgHloErm/wwm8L2ZCyLiUOY1f5cKBj
hdgqsrYfmnHkWBFvVWpcPeZYwoJ4UuIkk3eGusz4m1qDxDMVcNI6SIXWktVuqXemmGv/GAqEC1BF
RTzh8FE9NKFxLwShMcNKeslZX1ywQFKoXXRslhW35egZOralUiklSjQfuCVAiErMaNfEOVTeLsgD
w1pNOQrf0gblx49njKt/SYDX1jy4QnQz43Aw3wvZpdidY4TXB11lRuRGcW/F6DG4UVwp0ue1LVhs
6Ijmv+dK8OLbvV6mk+ebCVT0PjdP6dA0JSfvMl3XNxUAWLassyvaddZXBJgoY56kxPxORga0nii9
ONQOKE/9dBUNYnp3o47RJ6NHCnZOCg8eOqxLPakHnYHKOMJcGCGZqVaeUBQcuzAEw5AGC8INKw7K
sqjadfo7YGu8U6g9nmP9u/xfFpoOZs7BjXi0U0MPajLZEZC3EE3GeD9+NuqCnwgdFE+xswF5sMG7
4tIfJMxLedTLrf2jdEA9P8MTcRng6y3eZlI2bra7+DkK8wbSsVDT6sJTB4qaOqkfXu9h4Wvt0RwS
NkUcjjnhcSnFZOx/8RQHas1/CNzIPpcPYLSaHoK751/hvR8Z9KStRW9Rox3HUiBLnSG8QwR5K1sQ
1doDytjTpq2HAM56BKEsfBwS0Pv0yBG5GRTYQjCxi9TfmtMHcMcXmcDytG2jEuXxl36Bcg50vto1
xJq0OkiZvFo1xJsx+XWalxy6/ZtIfgFDYRwncT2cN4sEPDE44tsm9Nl+LMt3l/iubty7KpkLPkZd
vtZNgSrUSpFFYXD39lyh2a4km4//d17WgNXIcYGl0NpkrHXqKIdLSrM4AytHcBhlBCg2TENGMKPU
VTJ/Cj+qNeeJEaGcxyCmbHXn7u5G1CW4vwQgELthvZoyXbzskOhatrRBh1vbzpR2218k18zXg/Ml
LyeiMsW0whu3eA/WfMcQPTxqQ6lfo+WbRw7McGV6fmAhvL+Wzav4poF5x3obczqNWXhtQlpmrULu
/LIIEdtBOVwaqtxJJzxor/h6KTMRMAJ59mxt4OLPv0qZbeOetj5Rv+UE5xWSYMlKhxDF+z3KH6JT
TrR4Pcsf33er0MbeAq9Owd49aWxOS1t2ICqO2D5N3CSGfpEjfdsd9W5ttd83ni7p5S6Wsh8KqRE5
wFylW16c9NSgDZF9s2Gy7IASn0yk317YD2a0XCkUXTdJkeRUFlr6WZyqN3GYnvzyF3ffox9F4BW/
vcNo4oVLKkP0epw6xIJ8wf2m2RQNXmFh4/g62QngVwmyGclHlpkKzDNGKrIZlaQDBFN+CBZPaf+2
s20CvjJoaxurvDlV1/FLZ9A/9MKFx5W3y/JbHW7EDy/NVZ6+crPugYKNfbxFlqfJ4Pa1nDbgJ1MU
wIXYErR+SvvH95vpG/FKlTgTbMEBwkYqxWRa7xkHxAgsnJFeiPiPKGDrc0Ifup/x0ebzDMqy72dk
UVCv8f7ZIcsACeZ0veed8cIktPoA3MfZUfzNfU6WSuc8y10nyjdGAQHVPVyZdsPa/e2mKPmUdmfr
wjax+AMJNhzwzN6RraqNBpJRXQGlOkIBVxSI6n36WnFoUpGaA1AFXLirutG4oetWWpe/J9Kdl1r9
sWFSlsRigRsFJY011j/MrUlKjXz6Z/QRtJBQtKR8ySJ/ezVKLHu10AazIXd4I0EQlkYP16xglxW7
7f++NEwy4zEmRTdzqn2X4ZQXPN7wzNpE0q06IbB+iWObuTBTQ0aLR+Y3mMn33S95yrLIGt4fo+iC
E3rvbzGPnNjfKPNz1ZnZDd/cNPjDRGxAJWYuRhHImquOHtPaRd13G3wLahdr1z1F+lAF6efReEIb
qX1HyEcq9oV1T3TV5thYjtZStJSOtY5GROUmMILk6LivIEPGNk4Jgre08BJixT9sCbOb7sA/L9je
F3X2znCui98jpLJ1Po7pZdqggUwgx4qJvR/3ydAPzCoNISx5y+dnzRymdctzv1ilGEPumIowfSdr
89dISe1OipXjL/YZLqv95OWOiKGNMqBSNO2l2SZYMSt+YrjJVbIDhWqJ/falgomPJbQKk8y9Wr0s
M9fZj59zEQKGcBLw5a9qBglwp8YbwGeAy9Y/GT/8zn5T72R4qADHmEQp3EqRNjyNZBhrwgR92+3O
8NKA+VeqBQXqBxJV8vOA2kkmFXLw/AAJOTt7joHbTJlrmaUWe7NrplZUuRghrlq3/8jE+Meig8tx
DoMeKGDHRwYVbDsbpWKy20jrSkW+Gaz+eM1GctATzUKwr7cvEuWkYf2xP9H3JqoSinNnbygAZg0d
s6DTP61lC8PcwUUOXuDGfc37r3jUfxkN0QmC27JslZAOSG+HKh5YnjWr2Mv6krj+nvHWtz58Q3PZ
q4wCIE7fdwfOTr6D9+FZb5PCJdpeLrqziKy27GktzVjdpN79GRM3cUhn3MXoyYZbXVXgtfY0j0ED
Ql4TujH6NLWtf1I1bhO2kB6CkVm5UvjfMcQ5T/wbQhPbGtkL3OU+YJFNMtddaEO6AuK5rxz5/oRN
akyHnZUmcA4P+yKutDlG7tds6sCyqtgcgLjLT1rOqggkdn1V4UMc5Xky8JaU1hmxR0XdqfXWHUWU
O5/X/ocVvdMA26RJ1MHNvrXGoPhDV9D3Zg1T+LNivRTb0cUhWY+6bEhSD6HRHB4iDr5Zp0rjSj82
12qcj/6FlzlUCiRbIW/k801yzCGxLp5iqUyRz35z0J2f7C/6NSSA1p0j04OmYnZ1dHK5mMAltF9z
ZlsUVg/kwkgQtsi56YTLGkDwHCzNQOSLPBnVSPvBGFXmX+9Si8mKDwj0KtKg12sR9jmG3ex17srA
ZgzGorBzOUyZUQK/PVdRs+oe4apjPSTsL7jF7bHuzFOZ1r216geUWRHELjg0iyLIJXk6wCApr2s7
L0EHa3N/j4a/Edxym8bjQ5E/iVCh5jlf6WJOQwVnv63A4slWBXdO8a1buidkrwHE+wb3EHZnR9Io
GYnu8iKqC1B4FWGsavG5Ahxn1CeznSkdeQnT1uBpaiPmFAhzC+usFX1M3OB9RhTL5QSnYcV2zSKN
HgC4xHtbDSE6HXNiqwHJhVAFwFr4qraphySMD5YFBvwUx++m7rVaFXR/4p+LDMuI14BqUueeAtsE
4bNnD4aJ8z32SGmHG1ep+8fNTm4cHAsuGP5bG0NmscSXgAJF8pE4HGJJZEOMF4T2+FJ/SIkME2WL
FOd0jAL+znj0lHEB6qRfBgS91y26hwrtXAqPgRwmHQyafn79Y4cWa0220W7T4rh20tOmQsLl2Stu
33YA/jwklVWib1+7vFhiYWovhqmcyeFVAXCr4RuSFYj/mmI53c0XOcFjtczknc6uEa5EZBoOlqUZ
lEDmgpZ13D6qs0GBXArXQuKo19UiqcM9j/89zk+m+kcjPN2DZgspM1xQvVq5u7Y/VJUvob2I2dYi
hjnkSa9OnV9NdsCBElBGEmhFYSuFK0eM+TtkpyR5XV7Wr2FuRnVt+7DoDyimtyyLAfVJjz142Zod
FlOQr0ow9qm2ufz7cPBA8SUqqJc2bNzdd8JlYXiEqfYw2jBDsz4W5asNX9CzOZUpdS1WdQNnTDXy
0HUwW+IsKcxkRpl4g1Cij5BK+U6CNtl3jERDP1YQUCGAkL9qDSOrx4CLh1jJIG9gSlwAXmqjYVSy
pHuNKpu/AF5tLbyJcKlQt66bXU0ur678yhCHUlfCD66QF9OxEkjA8PjbDjsvXMQL3N2PnxaAL8if
1Zy4HiLQrnPSdz9xv7fLA+A9NPclkfnBGqNqXXL0/EtqSFYdGo51NJ8JFQJM27sloWwIG+2CcMM9
gh5NeKa8xX6DLuFr6kHCzRZXKKmqdBVUCVuwwiWLvOYnLQQwEi7Myl7kCePXX67HOqicHCUBf8tt
6gO1kSUfteH9thsoW0EouhBBRseY98Xa9RBdXjr2kTYs8f+5ExXwBa4l/A2XawItqT8loy39rv9L
6S0ioF2eBW1U7Y2xb64yeSiGVLzvUxFaBTmu74qgIMdMWFDJQH5sSswIHs8O2oapT/6tNOXN9GOx
OjnLtEc2HFy+KYQfOA8PYjxyYHFCToN6W2ch/D2awQFf6WNoCndWY6y8yqymL0QcMO3HL7GgKxUY
sohx95nslG4L1sb3mBBRbzA91RJGWXGFqVeAXm+VI994FIwZjhPzkihusMvx0Uq7XWrusxQwDIZ4
qweowWjKcuRh1uSRbgkXOE6z8fFYpAO98IpwZVgoB5mJxLIb9/KbWYhbvW8hDVjm+sLBzFJApxgM
qf1ckjqPrcscV4qL3L07keydKnwjFVS8eHdj2Qr6NJ0rinqkB9u3HkN0tImYhBb1NY2EtoQrEEwv
GPJLk7LAqiuhoK7hH79Ag8QKivUBXB/GCGXSpSsmAlMeW2ZOKrvRH1NRXIJH63H2PIv2lXummZUL
zsaKu9Thm6VGtXbZQ1SbDT6lBc2S7eWJVokfs9Rb6iCVBGmwdD7xTcmbXsCecikNeWTE8H1vsHf2
sSEX9j44Er8WflByhEA1dUJyQY7+B8dgtCblC7vwyO1Kcg6J/U6PewtrGKcaK+eAy2Ftjaomm9Ho
yORyCFXCJFd1ZB6hC/yUtHjTZoQnfNGbh2ZU0QA3u6X3Qfejz2Zj0odIL5sl4+nF76TecXVCPShD
3NFgectZ4JbWTG8mcigwwF8EIf8A3bcG8XiNBHUabWAMbtenMWaBSDYMDR5ibrYPiGQ+yU/4FGFJ
NQU7mpruSQ4ALunYDDqQqycNkJ5Tr/YHEW7ZCLZySYYVI7a6HdUHoLVuQ4jd4WlDoqvnMEz6zp/b
xshlha3iCfN5zgpSotJPCjkAGCeSjX8RT/nBDlRalKGr/y8B1OQ5Dr+0dfn+KfQhSPOkHnkWxfa8
QFClwZe11h60WJGPR4E0ZpvYxsQ0qn242aqd7hJfIZVIeC4KgdVfr1bu2rI1QVtYKtYMVi19GyNp
0aBv1/7LbwCgOqasw0A8XRB7rKVFlDafNkhF7QdeIpxQdMCXmULqDDRPqqqAzKHgYxBtgdZbDcKH
N2caTNT+NiJ+3gdE87q42qkUrjl86LkIkYkd1rFHKgTV/eDGfyhTUPdkQgXmJUBiso1RXzwBz4wA
s5kW0WwIRVFuH3ukfjl/SPP1MEiLRs5bF3+rTMPT9/jSSoKh/ONQKSlx8u25S17R0DsYX+Gsrz4X
Qc5EJbJC0j5EGkliS+VnERLl5NRQWc0AUS+L6oQwbIhtfLS7brqgIKM+2uuUTBE8cXpVviGQiQqa
mqOOpajtMmbvZ2ojbPistSl4kQgt+NpiySonZqPcfJjFUQpXuNCFBnPkaPdL+fERr/PMZ0etA/fn
2Az2Tupd2HbzXCTVDgiIT/zCxtMXqkIFwu99oY7nP3SFMxUEjYCCPH3tARJMUqZgxflWgt4zR6FR
vr0LTqC+rlLFSfTi/ekI0s/A5lUzquVMg74rj3HanaZCxeC0o5pXZVz5FpUT08W/0z7iQXEXHneT
UByyRRcqbwX2n5SNPoTgWHYeFybTv4ouZWDOhcj/7KoDdDMRopV0kU+b7bZCmF9tsc9YXf4oLkvI
crq08nGuDi55zNnN70+pDfudD27z5CJL4y+R91/m5oEXq/K4pP/Ltclnu190Jdu6UFZw2ad6ABVa
yVcxbgmynCxI/jRdU6zv/QCN9ILH36BHn41QViULGrt9RKbGpUyS6Psu86CI2rDzZ8NQuNr7HdAT
Mc/U5WKnYgIAAQKGOUDcZJiMGKscECTO0HXQSL5yAzjV3rRpaGqx9ErSnoJITqEolrrGAnK9Tteb
jNrYvdW9krV7BQMhjyl5uJJwFdGwLmBCO359BOitzhesjMev1/LH5/evB4aiJUBfVfABWCTEdZTZ
mwrkG1vdiCMdLF5ZoS7MJ9kh4xWw4JrFlpZMxwkjxG65CgUXgT45OvNTGWfQzSXaQTAvE22UM38k
mNhfhfxhWc6dEEL3wQwBXTBuf7tsBMqWfRvSy3A9UJ0g3998lNbGvG95SEmHQXXRY3rxacybNgQo
6xSNeTTefEa9FvrvuSR4u4YnyxkOFqTXxzkaOO1poT2TOStgbj66/SCwt/v4HSTNfpGiL22V19tg
TaCkdNPoDlAaKcaApljOq+VgDHyK1GrL4uqM1gQ8l7cBMSS/3OP5I/5SbwuOnDkUn4Wt+u5But1I
AIrmVa5nOjTCNAhkaaXu3pIhCxRoF9aJX4AHz1gpVMzvm6R/ZOAVrtr1xvfxTjuSIsl7hIB1I2bS
dTQyNNI2EXGvPGPwoIhbZ1rHo+7XknyPMxK6qDD/MZ3zP3i9s55p5+GBbUIYpubWZgFpGDReTSWc
+/Ctp57mZ6BisnS2pEa/QzHeKircm+h7GMbTzbkbOAQg0WqAraCrHrHEkCCllkV4pR6jGS7VSu1A
LjriC5l+u71BTpbPfm6Ou0aoJBe0ZY5/BuL82MrlMDbE+TEXcatR9799To8ZLewpMWtyOTZrMssT
YTuoqD1tsdk3KGhJNw7i+Rfsb8aA7AIjp2CZV+ESXPtrCczMn1cNQ8jl8RfZ7dchFfH3PEnUFeg6
IlRaF940sUeE8GEh6NJBQ/gziFxbQHXNo5aN/VZN8/4wpwJZ1zHbTGCJEmq1FcUdS+Mrr2FGLypG
u5BakwoUJE70HTvk+Om0QNpA8F1U8CpZzuyV99c4F7op+UzHlbZy/yrvTebJLWOEdcmhcjXLr4gG
feyCOJxg0WtlAERoddUFJ61Qf/K1vV9tMCIroBWwXLrLGzW05Oz+FcAlzn0dKPahf5DnP/VAIHCr
MkBfUd4/xOEFAkI4EAKGwLfQV/KMMA2CKnslAFaisehE23AHC1B1HgojOVrPEA92WH6f5WD+4MW7
+xi7hik5bYpmh3upsElAhhAmGx7IqZD6+NlQ09BgrWGEQzklRTloxAkHHCLSuTFL5OQ+C15WKczh
/2QFEDzCT7sgsdCTzfwD3hHweuGl/8tgRcK4+uO1f25G/Jus73g1JjgQ3HntLMx0rY6x6cunIdNz
8CcV904+6/F9M4oSeu2exJfOIRX3DdNAacTY32KMUD6eWUG9GMVSuO2fw1W7M6FF2W0niOj0NB+4
UKq6A2AIRmwcKP1QEPC7gFGVf/2s2mGuiavTiVeYOhszHRYuxL8L+Kj9ffCfHBx0UWL0dcxvSnMS
xBaK1WCvXXKR9/4oDUB90fN0iI5hCWnb6d2hkwpxVJ193DJuq5AyFaRKacGPWleWCUjIoHhSaohM
rk0GX4rE2Bjl06bqDDv2fG1FvuVgcn6ec0O7JuFvGk8QGUYM4ZVlObdQWuYugajrjv+vyoVbZALj
yu5gUTZbw9Pv4gI+q//iob5Z0t5WnG3bP3F8lW9PuCt7zFqHmYSOUMWZNV5WMvcytPyUc17QspLx
cqdDqco7YPLX8T0FrU1yH15Fo/sbkb5yczLEg0Tw4D4wz7TwomOvrQA7wxZh8+ebT98JWeTqISBt
oSmyb6nBnD2hdIS9BfNwKdqyKgaxOxELuOs7xBUJ6PDdCAp2cL/WhAWyJUJ1Da+a+h8F9I4SeR+S
KPXnaCd6F39AbVyFwuz45jC7eMHqWFf5rBfrLzJ+dLyrrL+sTDHQSiKK81OkJL6ecGAGzH1Qk3U0
HLCg8zoz8gylJGkgZC1aG+ZcX4cZwucuOPzoh1lzCQ8A8xlFpBFT3qwmLfpLpL8iS9ZR8LhjMCZ/
yi70Pj88Y3R6VcsMdP3PGToKI0DFOfK5bzj1XYKCA7+Tuku/Yhqxv1Enka0H+fKKoKR2MqLojDw+
gbtUdp0Iu7jH9ZBFHiLjkb8SD4psqeew5aAxq7FEFFqrjVURiZMZxnXrQ9O6CJT+5K7Ny5oGxst6
pT0Xc86Wly4pyXNTuL/uMoEV6SuG3Tu3dqA4lthiUniiH17sYgQQrUGsvsB0M7M5OVOYD0Knr08h
jrpH4A2kpPbEi3lDnRSO0MUocxaQs895D5uvrYsYZi9XAyaNxRqFbucOIos+fK6dpzn7HF2w8hpN
bhMQPpbhXPZVEZew3qmqbmgbgE9+smmfxSUgXuQGzPrVgUuwZEU2pN2eyhIpiIqZAPMH8IRwVQus
o+tYhYkzsyb6/eoiCtaWG0LfbSaG4JaKMzlV3W1CfkE6v8ePfKeWekQ0Wy/q+fU56Z4OEx7oD37J
AWHuiRoriw6B9YUTkXydu6+7Jha+A1vbyMVTcSPBtArLXRBfasyjewjgHNM5rKbQjXg9YmN/Krcl
hLkssq3LP0rJHOo1htaCo0CJFAAqSIaj2Zxd0GnSLrjuC8X0Rk30fjrxXQgogkVuwmRwj6s+lLaL
UfHt1ebtu85A+TfZHvNshdZqYGzkp78DeOzK2LqDsXA6QJWKA3A+TH67/Y+q/49EDuxoT4H7P0cR
n1j1KtQEvzQ3XO2Go2P/3O6H1U4/aJj+ljTqLcoCtNDypH0wpfytHKF2v6yY7ZnjlUiZdYLADx0L
LLPkUKA+WYL477odcrwRHuY1tb5K3VDByV73gB48+dYyQOgwBLeKdVFNyHd+qfY4vAiYclUf9JUn
I6PWMq8/8Eh4SVkiAdUTKdHM0PYqz9M5rcGOrnmqngceWsodxMc47D6dBWlKnUNHZkTnlpZBZCeH
octVcwIsRbU5j62Uvy77pV3UHcEqaJ61bBGUiYHSPWkOv4bWVqTmCRFNUpz9fY5jnXWy0oWHU1IH
drEk81+jGRFIHCiwEn3nDOWeEa0bTfnY6f6hERU5IjJsXcjcc1EsHSIXpBmcScGt9gpiFZd8jFBh
D+2XJMHFyYcqbJjK8ILReR9CEPtIuBzHNhqeDUF1Dwul9scQkxc0OdyaS3D1JD0Ac5N2B8kxRcHd
oUvgCKjcjgoVelv4h92eI28AEHEHV5SIh+4840OQe1ne3aSEpnPjORwe4sPyHdc7lrhPlItM+YJY
1IwvAKo4nkq6hkIR0X72mIiniggvHRdH0tL5GzF5AbnGe37hWmXQwgRL2Z+nV4XUW1o+xqG9D3JR
y39AbpIVnbHug/3wczNwkLuVBPoS9uuDYO1NehxodUW348eoMnVKRV5anxf1U21mVjHSWO8fb7c9
NIi0y/1GOSuW+OS+7Z4WvFTYIijVVNcWOHXCwpZbTVL55v3okPKIZMSumN9qfLq/ji2AU2dYKDJX
lebXMYhdMlWjcerGJHF597a8fB5TPAV/sZJEkv1IHlZi5paSjEyOV/sFx8Oiy7yGtAeecyurgC29
OwSDEBxE4QoAJV5sNfRh5ZTom/NBDYWSPynCZB7zDspiJNZvXfBVLCwzQ9jkqKlApq7Xwwe/8Wa4
uoj6NBq7Yzthy0+2vB5UztpLcrjJcV2EVJNQprtu6DdiPqQL9RCteGrQCH0XqkdovaM6msoER3mS
j7Uyob2lWzyNMlAx13LmdvH41wd/tK754jxfO0xStnpfFV4C+hC15C/JH5GWueuPBrPjp1TEdd7J
PPZjW7JEDz6OF33HqgB8IiXGpdxSWFYNG6+xC41GXVpfR0oY0QWFQqVl6Q/c34SsvTkXXJUwTrEx
GLi/305VbIiyDDbl39DLUcBQQD6harHIXMryLUUi+DGBGeZhl18Z9H+PzTPhq6VPdjNjAw9zQq9q
8GXBdOaZdoYPQtBNH3VKgLxmc1SGrVOqAIz906zpU409JBw8ZjtpQIYXSzc7icbbuN1rxQQ0tzTM
SjHo+SZAvXTSiyWQcMavJnhit4zvzqd/yxFyUk9dZuUcyKRZfNNYLfqwGJbJunAjabQk3DnLrZfK
0tHQI/C0cVxaj4XczsOi1IXvIeuIpWG+dUOJO7hxnDZT9cVgT3dDk/Ek3Hfd4aAUpYE67Wvg9LgI
01ffzcJByY5bzbEznk0nNkxRED5qtk0OT4H5pKoSXhN1lTxezyihoCGTZLGpuaODEWFtI+4fXoTT
4MQy1pWE+X7xn1C5PxudY0lnA3Db1f+O5fKu4M5JIKM98P3cr29EHvlCTvy0uAEvIZocmESNNvEb
t7wKHoGOtRDXSqGRZs4FaBmyr9C4hLY2PRVlFXIUTev5vLQ9g7wgv3Pqn0Zip4yWWhHP2Pc73dzr
4woZk8XBiyN5E/mwnPXZyD4mhMfp2/8bonXeDvzwVjdRS+vaoZAQcPPZYyusEXz5MfdLFgcopZfn
gf12ulrTBRGZdZ+EpNqYOSF0MtyhaZHF5JweUhCkM1akHQizv2KRnWO+LDmY6NtMAhakCeb+L4V0
Yok2GHaDQrhaPnHSd9C/cALwR2XNLRWXBN/ClUAXGDeWJ7/64aY0MxNewxXkFV54Pa2eg3xnzece
/Zvd0qm5AlP+eXTHQ0awOHbDICuj+rMJ3W1lVlV6s2B4jGYHUuudgxnVBV7PQ7YtF6GOlnW3ui0M
fxDel6PLCyTBqXqrouDqszPzURmyd8+hy0OW/AkNAARzHcQ8tVFeaOAvabs4SJ66oFYGiZaITo5H
Tjiv5Hs17sFTp2CQa0rDjVTpQdPoUma2ZFJxhRzPI4OAqyhh3d9hS94UASXniE1hzk02fIEi+uEx
6lQO2m5VHQbHnpDNG9/Pie1ObS6xPeiO9nfvf8fHsn+/MpVCf9mMjMFZOuIemUDc2oYYV+jt1Nri
UGe6uJfKfAd/dkT8IvejWYKVg1xwWrmAm9Le5BkQ9rUuY4tWw5oBwMalD0Gh8xaspMndDScMIeCf
0HQH7EvFh3w2G0/bOwRkw0HyP1tBM+HcE0fI3iBkFRnKtWXczy6e5hnXzmqL/uQ1MGALmS/+7cj7
zBmeIwmIDwtkaaZrgsiMybM/fKjGDn0j+WjK03qFTAR2yMG5VBGyAiP/n1i1ofoQslBFm1ewgIyn
eo6UEQKDA6u11CbyJpLLjqx1mPTddXG+4NSKRaxjC1A7/YRRgBBTJUZBRlMeSZNhM3CZ1Yu7fpij
DTTT+179qmTvtqYUiFKocCkcXEN0zQ61S2rAHT1BeDja1gMZwPKDPfe39L6rqhqXdFzx9Mc6Zaxf
7af6hoERnvyfd0dpfCsAsohU4nnygviYvehC5/kbntumqKO7YfaXIEqdu6GwhJdsC+0FJpQu+Rla
QbHOn9DCH1/zuVllxgBxJ/0v5ucp3c04gFsQ+c+A/EoCO7FeKiZJDrIjJsHOyz3PhaEWQ7vk7Amn
4sTjhk7TDV2AYv5rnc1MWkr8FS1whp/oCXbXTtafEuDFhjwiGUUmQzi3KAj6sogA6nmKgFzP2xAC
pSlInBrGw2lWfYZyoQ/16tCvok11kuKqGJsV4KLAvM9qKd/BqdQZTgqHWRPQKfF1DvaDwnhTjq14
j+f03OkrpA5VcS5v2govo9xDryFOINIX4tpFWsI7XGj7cTfFSO6koSkkhg7Qm9BaU1k7X5npT7i/
fq1uwQgXp2C+cp1NTh8C4iHL8ppzf1Krsu+YCMQFh+rrcg6y2Ed8twC7zRsa7L9v8ADitoSTFEHf
nbHD3SccLCIaScQt1erCKl1OvW4l2NWycJmrOOVaiqrNhz9y2080ukw2tNI3vnJQAHVs+vOXXTAg
FrMZ1u3tIz4wrZdBQJrZT2tdzsdFv16btUSk5EJBGTBSgTG8DIhK4wVClxSfC+OU27s1jfN1XjpN
JkHJNnlBvrHaC2Ll+3osTDj2A7HFlksQako+HInjzNtvJCpBOCV4vdcd1oHiAT0SLtzRov/yB2xy
lt+V4mZnRvcg/cwv9im2BVt68l3g1iwM+JmuOeIWDOkMTWOg0oSkl3Fj91vnkoDOImoCG97zRB+h
2QwzBiQ+tIx6CIIUbd9mxUywM0TMo1g6+44bkES+d/OzttEKzIk4lqgVK4vHRBf5JftLFukvuXiy
lA5kJ5fPH5PlGgn1fiOfhkzA3Lin5HQ7KgAuIIwhS+0r6xtvShAz+0+PJwz62wGmiOJkmssi9nAu
n+2iWx0mIdjUmO1jqVTH5+LbwKB1Mny2HO59Fg1NDiFM45swKSkAFFbhV8m9BRaZwlosYEswIsll
lVtmYgjQxjaGCZ9I6EWiaLdhT+lMvynGnNoxZi1RDN+RZEBX/wNBCO4j03DwN2b/twN/Tu3QLWU1
22t6UfkLLkli6K6uUkdGSAWZ0vRhjQEYnueiB7MErAoYhzoOt3XUg5vlija2JC3ZrOGJL8y6pT3O
zxJz48epL1g/BvSqZFr7Rk5+GUxU5yrdOiTz/Hi7USfj+uZD7AWKIqa4knro4SuLA3JW+IAp9vrf
moWsOfdyUOsesqSWCqCOlqIvzWMdks61O6UHjX7Dz072+QMPHU7t7owzogASPGlnpISagvzFPbRE
lMKR+77Rs6K00/ueFC4JDjkRAYABsDsFSoyVAuM24wUIS+byTv9Zd7ruBvhj6IHBAynr9v8BoWdo
snyPJ9OkJHctbMxSMfsctE7fphvy97OAn3wPzJbHGrEPOCJg313+YEDQ6Bww45Xgu1oDp4hRpMei
ljybi7H4/HldfZ0OB52lg9pPXQ9ASjsssaHCvrJ9YoEwjVgBwaQAM0hBEnJUcVR1HGVw0GQUksJ+
pay723FksdUSZYA26j9GWYxtxDAn9GWD0m542jAell/aBE+QpRYJ79wxYPZakgJGodroRzM9QUj3
wM4FapB2DQrxHMevEe4KElqLkcAUpcxMpD54bOuqulIQFrdYFfYp4kAlxvt6oeKytGs5GE0oyD2O
M8BrWPq/ezSNuEVkdvSmX328eR4xklu6vgjoIhE8TJCKBDgSMKO65wPdK9MEhSw645nxlstjpfT8
F876Go95RrDW8biaUnkF7iUlmyWGMEYUAlRJ/xYt2Yu0z+tbQDaT5LnQjqJ6ubgHAVHTl9uDQUZS
4irWzHl2skF2c5j9BUCRmNyb3v4aWKiOR7i0eSnS+2oDVb9koFiu5FNL7rIB+otldma2ZQHeOBS4
BGS1jCMdZ+lPdokh4IxRxJqgoN1hnfkf6KoYBXi+I0fs08s105p1Re5iSmTk9IBuP+ivM7zECFy3
znF2BvW2jkSBJCsWtRCLLThldeaxxla6iT4K2YWpcD9VNTLUdYiZdPosSqGZ8/RfbHvkAAhhlNFA
fwbGM9x1ZoPwQQsctPcRMEPtQ7qE7aX2bRXfTob7brKfQ0SImQ6JB6keWhp6zl4ZJMpl8ggTPBkZ
sjkz+brlKx/fWhUtT6qx7n7ReJGX9Fb1qzH6CBYYEUGOSR2rl0t2AolpsOPvMukd0wvyFWswXpeg
HS127UA/ILfSHHW6acCwP6zHYkCUWjzaJI7YoD0QeyE9SWxqHSJdmPCSqjAZfnaCvB+wulQF93YG
l0Gn6aWl9PSUokVCR/GyAmdncsshR/MWRkHkexCXs1xxpCYCDrsLtSK3dXJO2tIAAmodBpL6wqJb
dpl2LmUOFNlNzrFGboqAWJ/YgS3WGSk6gx6C2JRn0w9sdQtb23DJ6qwG2waZ4RjxGsfgeEdic+m/
MFFlIfWy8bBSK5s0Uz0goqa0yEntZoLDfmP6UEJCLvq+lTUbtyhyf0WWxrZ2z9YH4D34pLsD8/EU
36vPrqllebv4DUEjsf3q0IQf5PwD80/xo5J/l04LnWBFIBAooiJO1uTcCmc58DHqm8VDvThoub7E
C7r1+reH1QxMAzJZI1Q7BY/udnAPUt+iTwRzA6rHeAvCuifS32kqQb65o0l927A+K4fS7bojI/vV
+DfelZg11AWBhRWRCQtJr7cx7AZuYaG7Y65LZdlp7MSqgp+ehWC6pD6vwxijI/vWse9OdjC8qdIk
NmCm397tQ3pXdjA82NBtyPXihw7M4EsbPncOeE3a/U22FZhEfqX+JK1ns2J+OtgWfWkbix3ltTiC
lf3btqz0/XPHjz50mKzHt+TRz+hlmVPJxiC9CGZDovHX/PP5lb9Kv884DlhHKzJzs0KiHCswM13A
ed/AMa+40bOp3ryTLEEvw3uWsWgROWAJ9WDRSk7IXmkiYWMLXxiq3QF3rx0+ZK10b/jY2ihVLy+z
MdC+OmUI+EhB4u3gYI/8wSXOWROvWm/cbbkQ5Tc5m5U1H+vAST0txeVF17TZHyGpqsS6qEqMtgSr
LBRxPWpL3t/peeE5g64EcpeQnxArsVAOokvyCeQCVhYisEUMgGGR4NDSUxg+9bSZzFjj6Es3CTvg
j1MyzgiiKT4as7yeQdpgpBwdABCC+nGNcIQll7XCKpyfmvU19gxKmRt9sp79IDZqXqFfaQ9SAIoS
+m840wMvDfPAuj6MnPaqMxfmf6mQtotrS8XLJi9+VjiDsMHi9HbxwxCWnY726H68yw8uvwcWVqQZ
93Nrtm4ljJu6DJO9hFI21HgrdoCJpMvo8jIhmqTgswb9efz/QPeV/cjANfpZ8U2yUCJSEkeyIVHr
Wm2Hn8rbYfHg1iGk7K4LHC/SUs5U791GllNdV3XVa6RHlwrPVJ4voJyUvp+hOexucUphJv3URdbx
hOVx2AW6aE7jCqKExKU7zxX+301eWYqRzVDVPoBYlU+1uaK29adNZVeErh1ADzXxYxczSTxrEEfC
1sBPovqHdm6ExREOIEqvrlMgeemv8Zo0LCqsYwtI5zad6zeAbJE0DfTWILkDKJxJNyNiGIcuRUqh
YnB6uxwTZhDV+seqyzKDz0dLAX0H6aNIqt9N95PCHvzBclI9ht3ADavDmSVC/dITUp6MNL/JZiD8
pXOT0fNN4ehxPbn32Zi1E7q3GWkLa4e4a4THsomgPxHZQ9rhyi8K714u6/37tOdRHQFzgSwZflhE
DnK5IN60Ytx78giuhOeY+48ian7MFV3JXwWZwWzCwz8veLZ8WKBwCJfif2EhwroVUPUB5xJ4K0ZO
KBL7mj/+TEGeKsosvG0bToU/MDLeovIMMmpyr5PhJjJmtIGj+f817ssfAfLF9RtFvxSmzkVUC/Vb
nZ5wyU2+pN8DZ9zMep7Yw0cD/NVxIUPuj3+O2wM+75+FsY5UwSb+1t7pB6tE6Wb8p5GMVyFBrVZV
yws+bCuGJChW2fMNaE6lwbIxD2OiO2sBVeWh8DPLkz+EuDL0WRoGXmcdwB76VY1Ndyf3rTznp6cd
ueCHSFxl5O1ghW85rByTfWrvNZYFzALA1b9hVhU43rBHTK5eQLMk4XrVn85W2Ax2mMGViJfYNyk+
0RxIYLZZgohCPJ0Tog0DNQgdzLAcErg5qWrg7RVjN3bX7wMld3NaxjIa0nj2w5Rnci/yKnVI9mhT
ZsX2OK510rFVlBYDi0y5b+r9qC9RQdT0Brod7v9OvYz3KWZcQrq4ilT803IJTqgY3la3x5Lw7xwq
aDEpuAaU//R29hIhfmhTtjTItF9lcfquTKVjlbiq8rrsEYa+syT8e70qWKZJgbYQUpAY5qpKxddx
ncsh5QpD8kZIqterSTSv1cy4RY5UlplCZPsKmOOXubVD8wRt8Sw8dOWgHC5k+f3S7O+rcczi/5F0
WDeBqF5z1Tpj8Pf5ewD9vyP13CamtcT3qG+v4SDoBerHFznapHvlo4vhXmdm4fNN7sbX6T5eOslQ
mVr6uzAbfvQSqIFlu4ghBBKO45KSCkgSMXrCFfGYR1vlI+MkqV8pPxAF4z6kQ9z7SMumOqBJeic8
SJxMhZipZNh0q88HQneK77OpuxtyaH0fNy6yJiV/mURp3p4CCqzeAkLIETdcHgnSpQVPpSvQIhlO
FxYBQPK7hAi9n/RM3z+NyNfGp/VPTLP4W885mLYH2A8z+Y92zGxxWvVlkr7AFrmosqDxWjyfB03M
5DpvQ3QzU2S8I2pz/r9AQc4zCo9AuQMmiaKAlKUiYI6ATlo+T2L0gs6jOIf8Gx3UULpWKYMjtzag
lF5llXyu6dhpUMxhHeEMINOgegjQ3sZgOXgNMZ1QxRWbPnzfFHTjd+ADKQMnguiBCNgF5vwd8imy
eDbXz1ikp8FqXYOGFys6eg77yLCROK4m54DDQ5hbCpyTDk9K9waYgtDERxYBX4g32TyQtxY73zul
hjIiktcXAqaUmvQQjqAfxZGyOS3f47foPdSSXJAKn4mV+rje0DDjxxhn3d64JR/UtEAYWTWNF5dX
bBJn/UXQ3z3DV7K0TPwKLgavAj5lQZDKyichvaAEO0h2+/3F4oYKUrtSaOn8hoaYUiNwhyOS7VuU
6qCDO0b3dfNHmWJVyK6Oq7m78UMi8BOaUeeGWJTNz8LNdPgSm7usb3z7lSZcVjrzBOgtBlmbWV1A
bki6z7MPJ+QxRWUcWlHz/FIEN3Qzl1wISoCXoAdbh7FC7sUl1/RGxwwdsRMdswJFVfa6P/W6GDup
VHadohrwPYcgI5croiH5g+iT5pa/Qj08mucWL2FxvRO8Mr3fWnIX99DaMMI0kCKwbzaz4TmDQW74
zwexifJq7IdKZKU8ytjSkEsRC4IQJwyYL3krTSgwKN67NJO1QbfBW4914+HwXGOErUD2J2bup6nw
NswVjEItrwb/cIyEtqmAi/Owrjui/UFAKXbGNrehHRWXcukgZJUP2Cs7/KeIy5rm+lXasOyA3EKt
32+QoepiHSZdNyBNbH71z1oYWiOq3AHP+TH+Xf9B90G/czs4UHPSbpP8FytLkZrNMPNH7PxY3lGa
6ahYOj7dhobj7dMN576J7gHN4k3Hn4XpNPedvfLsXXu9pMDYoHI3GSkeR11UnzVoTzsVbyi5ceYl
kmCJWEpmwH/xLK+IXhOn0PjjE+o4gI09If8fRVeMiXpfqzFGor+zE/g2fHS3bup+6oeOzbhUCVD6
h19z5qV3smwDxe5TAKqf2WuQgMoOEcqCZH7CJQm5SlRMIvORqTCkhbVaXW7HTpoakF6mvQA1JvQN
D5oh0XJ4MydVEfWV3g1cBAdVkr2Isbs5ijEi6HiIQuU8zmFy6D7BiSjM7/y4K9OzoQicLW5C0Moz
P6XhbaQ7LyJiWnauq2h6Hp4UTjLIMrfbgA/f8ewGoyXypDqUPNFaAmWWoR4cg7e2Xl6wRsOs3V/G
jgTpAEUls/DcYJB+6ZrgUnsC1MBh/E6DHahFNxfc8rFIFxJAvGWkouxnIBbWpi9UgZndDFr06xHp
j8gQ9piWu+rhrijEZXAK1XEDPIWQBLTBr9tE1dbkuu7xFbf+HKtp8J66y8gB03zZNmF2Cws06vgI
lbVyCf0dxM90afXr4AB6G+L671o63C0p3bTOK/I33R/9zx5U2/T02UtcR49DI/bwh8aw12g7RzC3
EvCd/joNliT3UiLxF/jLwXVLgLX23LvQmw2nzLM5zFHk/+di58z1sds+ViVMbhpAogd/WRMOGbVF
KcXYWj18/PnhdHbaeC3ljYYL760gvJ6eXgw68anrFhdBbvcFV3yQH9VpYoTdGLq6QIrLk5PYwhDi
kFCpWA6O2lJH8Vr4Phh7x0dESno/Pi5QBRqUTXMhDNoucYt21XtrKGbrFsF7CB69aCEJ/vZoG9Xo
3MxWl/0ZVv+eo1NX39ZsH7u/zfJ1p5liJkdsmo/2PIdQSlGWEFP9H2OcL9s0wBOBPMD+DXbT/FKc
foC0ZMWEgSqnXBLkZWYoeudgSwv7RPMNZgXZ2KHfLmpVAuc9e0zCRwoEgRkH3O9WVuCh2CfACMz8
UVINtZZfZt2WxXCtuk4p69d0/q+8fpX1JDudG6HSmXdI3VegIl/KDrg7zQMUzWGKNAnwwX/P0vCU
YPHTmDgENnANWvPbzQz6M20KRWenrEgCnRxisaloR7C+2PyH6A8X5acxdNDPgrjOS8fYTs6ZXpI8
4odKKJ5Eiey2Kh7ItA89hFE+iaJt3gLaUYQhIdzSAWP/qtuj1/rxWT6GaWp+0j/tJH48VvWL29Gv
M8wbMxxLNfn+88PsxZKMyNz/m1vlpgxawg1CNf8p2CCKqtXadeqAfUWOwOAnHgDMEx9UGopnovQr
Ymt+b+fJD+VERU1reQieafY39wEc7sMpTSVAHRGyAuhX0bCzG2c/vaMTSGtk9H/FOikeuvbmILvc
FohkMktjJKjaEKtim5hth4ywsyyjDmbIuQIpFl5Y6ViZvoc4FO4GBpXwKQ7YHIJnWgD7unB/g8Xz
fCo/rgn/PIzLM56GrgKKAGZlSAyfVdjqA+sTjXFyq6QTsEstCFDtCulql/sMHH3MiZsR99gQIb/b
okK0z/vUqeOxNPaRd9uCTf+fVzJtnLgAfQGrudG9tNYIWNlG8Cip5gcsNS0HnO8iaNyUwWcNC0rw
wJZI7jc62A8mxawmmJ8CvYj2354btto6rzPp8qMhOLMbmQ8f2DOvM+htVRWKs+cIDuDh4Zr/eIYY
EyuUrACR0XyZ3OR+v3CIevo8PS14bLWtofDGRmfKud8bIPW/ffRp1qyYqSOMbutc4atZ2EhA+byr
GIwpyL/8Zg+RQp5qreD2t4/a0Itv357qeRqUh7lEEcXy5j+5xGJTqUNkcXjqrX1DeQ/Z5TAVhG8V
I3WxF/B8tfQKHl3ObtLdu8Znz/Bvm0ley7nWMptu/fIDGksgaU6riRf6e0a4lr+VtR/5XoWHpzTH
BlHfdTO1N8JPgWFIqMDmlCnaea1KED90Mf30SOMVaU3qwNeNoypJD1Rr5XNCy8bY1vlZIjgxrE9X
aAUQb5FZ+CG+zRpckfNL0U9QqFGXDb3kCklxexrDfP0eqoMzHr24rlppnZ+wcPPRs6SnqQ+4Gi+f
ra2DNf9XAJOQZjgfmZBHL/eu3OtlLKDQt2eIMQedqjrnmTPEOuvIrXIy9FkRLA3nrdUVfjInBeUs
0FRzymj5nW6svz9JPu4Q5mzGagTCxRTHI9AMsfN+JbdhOrgOojlWB8SKqGdO49F5zmFD/AdwHZ4Y
uHIEhyZOc64riSA4TxlmHq5R3fa41evfoCJZyasXcBhjRM6LipILAJLU0a6kILA5lzoAIt/cQ14z
KMkp40k3idJH1aamZ2axauXVfFdY0AYUnCyaqfsFll7HoHROPQaj+ss1QI52Ca0Rxvvh08avaeUk
/oFBoqzMih5KY3e2LzUKJ86/X41PN552AefZm5r0cnhy+MKq9G7Q22S/amIEb1oeokvu8zkIbFFc
UJ2UKKe+En+I2W9YQgxECd+fPTPXiuR5WJnRLgsvMVHQcOXlrxpOoKYxQlGUNgCMQ8BK4qiFIuYf
FFHHNCKyqgYCjKScerMcWnc1zupvfNB2s0AnsOBxQG+b+Yl1nLHVYYkYDZ+fAuNDcAyKbbf9bs82
Yn3DW5PsYiCNL0Y6we+2Nj/HHivVs03rYkdHJj347shRflpmyo06E2X3415POvHIyHAh1XDCVG3Y
SKjkw8mqrhPeMw1BKceQqFp7giHgd5AU+qwVWlOaNgkR6suhPiAUiSFIK4XDPIFPLGXElw4GFAb7
kYmY9+1a4GG3DJ4J1Kn9cKaoLrQ3LmS0DeA3z1vo88bmC0s2L4sNqJDXUEc0T4HZQ8WLB0/ev/pj
JQ7e+ZM4zzzxVDTNkVTrYVKYSscsR9RczmZZtjrYGz760X7qUVH5w6dy3lbfdPRFDKgX8EKmhavH
x13DCnM/6X+35FHpfdo3bewHhGFD3z54iBw/qvv0mIUlwobBA0QDiek+GRtrQC5LCsO6VAprkWkA
KzzcWJmN17eazy1QO5fKU1jA8MUO7jjtSfj+a21D1Yqhs2rYglny2DQqM+bGC3cFHvshkU6qFopf
YA0uJ5xC+bg+rJwabTOyBAH95U3JHraippQfxU7mZ3FjsfcsTXCzMUZ/4URDvrSgjeKHFV1Z/8yK
hSpGmertyCO/FJgSNbBmVBguSvo/NyMWgX6IZVstP7TsGTxojkJ2Bcl3h/5j06P5zxZWuzdXH1KP
ekVxGbbVbHrKvVVbk1lv0MFpurBH+HmIgd2SFRWrpe6jxgkn0MHhpVHQU3AHjSmJpA7bck7XlHKj
40KSE9zi5giqDDELim8A5+It1mW8PeVtrZouAEAqdvqjZWTB/ctNE0wVXq7YWeyi+FEfPfH7MsAI
fLUlNijI5ctMIQMjJgxFMHOZFUYv9itZXcaCJesMuIcyeUTjcroH0PdfX1bcai+yL7+mcV6BLeWP
xKRMzrpqSRC3rZNB5apbl/okb6EN3TPcAwmaoq2QVS8I7faDXm/7/jBjP4lAOt+OPNQYgPz1t2dX
EPJ1Rxt8ASe3mTUM4N687u2STqRbmg973LC3qN/vOs28vt8c0K+JY0Hc7wACQLbk7aMr7J4CSM5m
hvbsI+dEvg7QPgXnlHDNTdmUKt84IBz8dZ+v/Lv/1+2Al6jTxo4deUdvd4p39CsPvOhfIyoHUY4b
2EwforGYu3jZw38O0WCirNe6xX4jUIIUTSRmqz48hta0hEn8A6YPrMzZ3gtOe5I4nHRh2KjWaNui
KNuWj/fGV1kmO/IlYqYwsa3HZAcaRH6yWTpOiDeJzLFTnSY2syvL2gFK/tsvsQkkIusgL0GjShgG
tTrQZOjs/C5bD+wRZD5T2//kXkXrnuXSWrA5CfEXG6h6rtgs2D5AzNso3Fpc6PMoVNrHiGVS8opj
OrXjR4ajyX4bt8uznm/hk2g7wSkg6r3kjl8ERd5GAvIC/PHXvjnf3WdE6N99cIWpU5OSvKg2Au82
mijQD0bWd91PFqWBq/z1wEhoKNOkbDNppw5xL1BpGXrWnD6/Hv71AGV23Z93/EiHAuueihkQqQ+q
SUy5AzEb17uV690fktmYK5cKl4p24bnTSjSpllLM+sW7httQuknQandgbvvB8m9ZAQQwA50l9PJd
HfNGoi5EkYiplGXyIUFvuzn+hNNWcd2p5s/GYPSn94DwkuDwwJuDUMhJ9Zw6YbXm/tpYMVLsCBhP
6SykdwDa19bAunjrlQ27MMEVn/OY+DT5C5e0R9oBJUjwjwyphPHAgjn1rG9cJZfuPFTOgI+d0SXi
++UbWu5RVv5tymuqu93YFYqc+MjQGKl/h0cpRjHUztSkrxyd9nKHuR+dyw49p9KtAxN2dBpgpFMX
2cYRMkZazp9O9VCkvTqTXzkSmiIlIpM8hfL8zpiZSWWmRvuYC70N6lFmPew49Qi9/qyYiAYN1TnW
loWYd1rw4YXXC0jKXzzfALoLrkgyDcgSbQcJUjecSP8RTo6kmSTS8aygZm0hL06C8z4gdZHyYMqg
rA6XF6z8hh+jeL/fW7nZi6iQ02EAFLlfdEXnZ2RiBGg7ySCcSw1z4Ln6yWB/LTHcYHJ/UmREkWTh
flaYGAvUB8wkmqhIAW++lXxTCnL4lHG58hoR8vuJAm4c4rV45tEt02EWmb1leZEIWZdko4wPVOtQ
5WNZrZBULYDMjKeKtdAMRBQOOkTntA46lB6D50z/3iT5S+QLX/ubR1SKDYhwkVdQ8YSvRA0DUYTT
pnzZ+vzMJTEaxC5Yo4Z0C6N7ka8LNyrOi5HWyY5hCJHhU28X3sOWfBt4tXuRywSdy3wTzXEmYARn
xz24MViWJuMrzSyuetGZ2zZizFKbBYxQZPGluDSvk1AEcSlJ03PsG8EevmAGpBLyLe09DaKOfSwl
jJBncz0pkHXZ/IcrK3yuGP5jE2YyPLSSj9ivqpgDmwTmq5XQRODeQLGizEVmbiNdHzRj7cocZRnc
aVjMY/g473D03T7UPrharuZHnk0rWULr8f3c/OO3R+XAB+18baRlbMUR6RCf9/wR0oZm7oU0tjoC
f5HwcesBthUsr7tWdzcSdGU6PaBDpCLSiD16qCYNw4/0jOkm3+yd5jOzsLnIICvMJ0dxOHVGjlcp
jYEHt7AhQc00JtcWasrVwPgmoqi0eQlbm2ttk+MuROt0uWKjFIHaNKHjbudUOW8W9/49G9oZ21FQ
ITzDJ/iJK4xkXR43eRuOhj1Ep6I3NqHWqhtsd+fkIxshDOC50NOJZQSzAAkyTj+H6gkcysPznqmF
vVRUiiaCAi2j8zwia++gv81PnmDunP9+Asa0FojWu+44ODQ5KoDAK0qisHYaCnki51AoB6b2TZcY
b7gekX70IA/WqEIC5kEsSEcmmsQnLDO2lTA/V0WiAsUJ41ZpeKHeYsbrEvjDt0Juf52R8F1WgaNI
ct8zsT/Wj9eAEZqkxZ/2kHdCT/szxaEXv/9mai/Fe0nAOtrnaYZww0nxyyo0+sreK6sjcCZ0NqOi
ocPGGMTUV0snSEUpPI92/qu+DNuU+226wFxBAPg8hRKvRp+k/55w1+hTLPRcfbzkihGviBDTrNme
lDxhJtxr3p6wNu3lAmGcyrpo2pT5rwksFfXQzX4vsjJB95iaRlSynBCavA1KsoLqQRYqNvkNnrkm
7DYTy7VLlYIzWg9oQTGBdgskEAz7s9qHmCi1vkNGBwO6TO+tLvF1t5anlKqcaw+CsRU9NR44CWFt
C+DdZLj9/dFg/uBhQIxPLIpgKf+Sl1T9QvpF1gxJ2fI0iq/AJiuoT7RtLP8ezNeHBmfvbDYcGpSL
sIr/oSt3S13XJaHngHnZWzALzXKGmZsaJrlQ05aPuWoDZLzKC/1trFns9JbnlkLGcso0RApr+OVU
5baI03J7C0NmZAW1w/PNSeX3I+ZJ3P//17ATWEyOu2dUUQ41xzxI3Mk3zsiA+o+IJ2gCaED25Y8b
r/KBsK0c67YX33dNIaxTQPD9Q0yOwywC9t9C3xaVSdLU2btloolpDd1wZti6HNzV76UPjWwumcKv
1UVQ4ePZTG7l6z1rAY6J3AQkQtcn5mTU/RPGtMsfkw3FZS5/+QP0cyu8aaMBTpxQXg8hBl5ekaCp
pvbWym96l5evos2IEW+qWlGc7r/DbT8r8dkBV9U5rA4TPA0T4f2cfQ4y/OgOQhgin4zf9PpWkkZ/
jdhVHT/Z83B8lJZjFtqaQD40SUiSbL5UwXMLc5rni4E3jiN9dHFhZN8euAVfxFDvKFY7BtPFYC5a
7hEIFR+hJxwzMWcb59uXbpbVv0lJZXw4HMcbgEwWgbFr6rJannDPeVcNVpsn5i9EyzziiIK8k64R
AhIiaHXITZ3x6VGB/uxdKTfEQiuxYYV6V6FWnsFb5Cb3lKvJMW9fhNQdeq8IYZfGeZzCq5y8h+n5
It2mU3dxPubh8WKLwI5QYwKorcpmaECesD2qwrhAT8GB9SCPP30tnnZOQkhZ8ol5sNgitXHxnOmm
+huWvU2wq14TCwg35sTivwYADt8BhlwzyXbubde2A5bSn8uI4TagXzO7GWu2CMTbTXC2ygqs7EwG
AzqnkHvq51ykVzOZGErkishZxkOsLmV65PzIgQO834rnsLPI5WPnJ/z777AzegYKzySLiwuLwwYO
yM+ZpBHfruUxw91m2zH7+G8f4OKeG9yt16v2oZ+QHgNFx/iiYkkphKOp0Kw9iu09ruB5N+u9n/tV
HlmIl05zhHu3Qjz7F/mg2JrykTy1/a5fepK1kTI5zbOF/j4uCzd2I2bTN74/GIpPHQO0AjxxQMHM
0GLFuCJHP858RHWtlFOaauPtW7Fe3K+gx6+JSBuL3toUcgKXex2Ud28DKm17Ho55oM+th/XeB8LB
K2G2kdqPZFhjpALtXcSwHujID8A3o3/R6qq5lcl5N5LESbjw7gjgv3xFXf5mbOwBl47pZEzMKVJE
j2NGfc1OiiCn8lRkdDCEaqEM1prU83cVRnSi+a4Fn9Ap8WGTZRGWj6Zel+OlDYN4oSsH3k+2n1hQ
p+oP3qPrXV41I182TWj9beoREjj3SSROUeqtr7H+jKgo/NsZalpoaZ8rvDPtJ9d5jwwNJwl6Teen
fJKbi7foqUcxikrCGpA1bOBx/YGaKXr/ua+0AfJAYBI/xqGceKlADtEcH1gKgEs5kyGiHwn0GBmj
0rap+vfFreUSYjaAxssGEwLLAFvu0poSnMJbZIjGnUsjlZbNzZz0l+JU51SHn7uIIEBHbOZ9hGez
9i9JKKTmwQcR+JQINIJnkss+yUOeBKoc5I26Ja+ZdEUQB/cDYRa+0KG9440qCKCdm5kaFWlxHRAc
mcxiWUAnrhIdc2lT1og5Yb98FTOPlFSDoeJAOm06g7IbhQtkI96/OgEivqhkXGFKKvMDEJE+hh8r
UxFFQGwzGG1rVpQGHSfkNWPoyzbzt4Og3J33uifXYFqmok+FsVEWu5V7iyxgyA27R+ssCT/7FfUA
va0XpT89Jx63lI5OFdYoM3/2aaGskmleR77hODkKKMOzVc+QpGSnGMUhDGiG8xZ4Bjv0436A+Pko
EXQgJvYqsIB9HZt8SPxO7VvqbMe179guOmTw1kfpf8g4p82SRtI6fisYCmPO++FZocNN3VkLSjJb
LtkojvObhMYAQ7DkyybFE8W1D7GpQevBqjuvxka8lCG2p0BVc8kqmMlzjJzNbOBNbjsMvHkA+hlt
fgy/nEjIhtBlEAT+Zw/c8oNaLOEV222kUBHyny7Y0AAoc1lnDLAIjKlPr2+nMS8mEP2LRREIIgXu
Gw95rnK0oobvhMMHAE8Ym5UaiTVIeMbAY0HDGPAHwXBjajUASAwDzzoAyVwFy2/Cr9hNwu4atWGW
f4E9WJVGj14pTFJ8fygyu969OB9oVXhuW66QLX55KQsXiIKsF5D0XdVQC7DqUn8Bqc8vQWxm06qS
sN5gAt439NvylWeDwfeEIIRBwX80K+XJSoOgbyRQMNPikrIU7PmSgzRRnOb2VDgwO7WwAR1Yu3nh
z+33cKKm+ami+lYCRe+l/uPaptYDN61BeBfLsdJOhIbrLukhpZLhQXR5t0MFtgi9/OHpV+L0xrHY
LUcOHYpzbSrtzGSnU7B716lGv92QfJKzmG43wJT9lA7KtJIVHdBbvW2GJfFZjdE1V+2oTk+x5mNt
8RVaQx0Z28A8JUGEws4AsxS5E6D24DDH2cr0XL1WT5QNZ9KdtCdUMPF1DojzExTMVLHQb41fq5KV
fMMnyZ/tStYQkUrh2k2qyZSZFkO3EdGdk1EmjRdugytJD4SZXxDc0sPXZnoBTBSaCZXFJ2hRbyoS
XNrPPB5fn6NGyThaG4CcEH3kxmLmqPPqEy1beQel3hGAUEH2s7JlRn0yRuCO9W3QA+3MTPWE2Eh0
zFWM/kEZlALTw3yamnieS0pRo76v9PPo7ActG7BbTDSa1ovony2hb/r4kH0ZlGXf5RNs3zi4spdA
TsMfXj+CTxYtE9Hp1fMMsHj3y7CQXggx2iAH3KBPnjf4Aysn9YuXVsQa3X3A+vbDJLOASEh1F0l2
ODXW7YsNUPMPlvjJ8M6obHdw19KvU7/Q8rfD3Bgm+nTDNWticHwBEnQnf2xO7sRqrnd/bwWN2dpm
wKaj9hcz2mdzexeCGJxZdaJ23XwHMLVG45t0giZ63gG+XBurcz0Nnz9Eb4Wm2X8aiq+GuOvo2mEv
GJt2gtKh7JbxvKFmNj5jERiXyOOW3zDcyqkJhC/Gcvn/E11UWZv6A94pq+6idGMe4Zbv9u2ppsTf
EUxhbwJRZ27OrFqDh5PtEhfgjMsINtFM/CEJp6S2527A3zSBPrdIcEyPUx29Gyl1ABVBsKTl8yyF
WdfOwORVBMsZD107aJyRpqkabIfalFQFrq+4bmkt6Vr98/yrGPTFY5WjfOEBHCo/T8GGznOtTyV9
dmuYgdPZ0d6cZrYCAiK/Yx98iduRiVWo6cbvp/liCC1GayhqYnkQpkudMWby3epOgBlgqzh2dsfk
CABWI2woNSPUSURhAVLlbA9A64yX1OsyAIBdYg79CU1In1u0Q5o50KGQlATi1GAedlJaHPdVehcW
j5RvnW39f7XvzjMChs5w0/0gorD5HTaRsW9m1XwQL3rATaxylUYKhcsuLdgD89tefL/chEN48JSI
g+q8bVFOhYvgVaI2WokHg8tFUw/uzi4/GfwUv6KdHCV4ikZd1Z+Kdxthqxxqrrkjw6jio/ObBamE
lP7R8bYJgPZi9t5sHlWvteoHvV/V6fv4IMB5zRVAqrsPfdUMPPrMRG4KQa1MgTWE5T/QZoQCmzDK
KqcGiCXsVNbU41fLZ+io3Fj6p5TBUN0456YOnB3URx9Gnv4VCEUVSjyIjcusXVcTdqlB0ddW0OI8
fCO+zsSQ8nO7UsMfcrt8ihnVamOcn0HsgozeAX1AR5jQJSpgk2NVWT8VIMN3FXjqi02ja+NNdjQ2
Ua7skYSqZpfbXfGkNm9ZheRMpnm4b/4Xzg8ZeVlSv/kUmmrcGsSnEOalsm2eSNKJcT7FnS4G2KhN
v705ZP8tDfPicxm6tnMFmwhtBQZC1QoLeY9ebT4cN9Y6x587joHfhFg/WZZcf1HWoj3VtoqVzCKd
juYgVulC8y6NoFG+3kO8qmHATjBk41p1Wi2MsYTP/Vq8lInC6UweGWMn09aGbf4XvqCQOJ4M1buV
EGj1V4DBQRo=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
