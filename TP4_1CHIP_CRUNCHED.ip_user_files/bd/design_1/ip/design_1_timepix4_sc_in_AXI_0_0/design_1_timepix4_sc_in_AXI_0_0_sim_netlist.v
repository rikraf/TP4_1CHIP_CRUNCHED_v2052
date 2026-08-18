// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Jun  8 13:51:45 2026
// Host        : richardraffanti running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/richardraffanti/xilproj/TP4_1CHIP_RAW_V20252/TP4_1CHIP_RAW_V20252.gen/sources_1/bd/design_1/ip/design_1_timepix4_sc_in_AXI_0_0/design_1_timepix4_sc_in_AXI_0_0_sim_netlist.v
// Design      : design_1_timepix4_sc_in_AXI_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu37p-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_timepix4_sc_in_AXI_0_0,timepix4_sc_in_AXI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "timepix4_sc_in_AXI,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_timepix4_sc_in_AXI_0_0
   (tpx_reset_n,
    SC_CLK_OUT_P,
    SC_CLK_OUT_N,
    SC_DATA_OUT_P,
    SC_DATA_OUT_N,
    sc_irq,
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
  input tpx_reset_n;
  input SC_CLK_OUT_P;
  input SC_CLK_OUT_N;
  input SC_DATA_OUT_P;
  input SC_DATA_OUT_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 sc_irq INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sc_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output sc_irq;
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
  (* IBUF_LOW_PWR *) wire SC_CLK_OUT_N;
  (* IBUF_LOW_PWR *) wire SC_CLK_OUT_P;
  (* IBUF_LOW_PWR *) wire SC_DATA_OUT_N;
  (* IBUF_LOW_PWR *) wire SC_DATA_OUT_P;
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
  wire S_AXI_WVALID;
  wire sc_irq;
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
  design_1_timepix4_sc_in_AXI_0_0_timepix4_sc_in_AXI inst
       (.SC_CLK_OUT_N(SC_CLK_OUT_N),
        .SC_CLK_OUT_P(SC_CLK_OUT_P),
        .SC_DATA_OUT_N(SC_DATA_OUT_N),
        .SC_DATA_OUT_P(SC_DATA_OUT_P),
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
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_WDATA[0]}),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_WVALID(S_AXI_WVALID),
        .sc_irq(sc_irq),
        .tpx_reset_n(tpx_reset_n));
endmodule

(* CHECK_LICENSE_TYPE = "sc_fifo_1024x32,fifo_generator_v13_2_14,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "sc_fifo_1024x32" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
module design_1_timepix4_sc_in_AXI_0_0_sc_fifo_1024x32
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    rd_data_count,
    wr_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [31:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [10:0]rd_data_count;
  output [10:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire \<const0> ;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire rd_clk;
  wire [10:0]rd_data_count;
  wire rd_en;
  wire rst;
  wire wr_clk;
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
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
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
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtexuplusHBM" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
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
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "1" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
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
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
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
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
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
  design_1_timepix4_sc_in_AXI_0_0_fifo_generator_v13_2_14 U0
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
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
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
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "sc_fifo_1024x32,fifo_generator_v13_2_14,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "sc_fifo_1024x32" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
module design_1_timepix4_sc_in_AXI_0_0_sc_fifo_1024x32__xdcDup__1
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    rd_data_count,
    wr_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [31:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [10:0]rd_data_count;
  output [10:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire \<const0> ;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire rd_clk;
  wire [10:0]rd_data_count;
  wire rd_en;
  wire rst;
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
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  assign full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
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
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtexuplusHBM" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
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
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "1" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
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
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
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
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
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
  design_1_timepix4_sc_in_AXI_0_0_fifo_generator_v13_2_14__2 U0
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
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
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
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_LSB = "2" *) (* C_S_AXI_ADDR_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* OPT_MEM_ADDR_BITS = "1" *) (* ORIG_REF_NAME = "timepix4_sc_in_AXI" *) 
module design_1_timepix4_sc_in_AXI_0_0_timepix4_sc_in_AXI
   (tpx_reset_n,
    SC_CLK_OUT_P,
    SC_CLK_OUT_N,
    SC_DATA_OUT_P,
    SC_DATA_OUT_N,
    sc_irq,
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
  input tpx_reset_n;
  input SC_CLK_OUT_P;
  input SC_CLK_OUT_N;
  input SC_DATA_OUT_P;
  input SC_DATA_OUT_N;
  output sc_irq;
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
  wire SC_CLK_OUT_N;
  wire SC_CLK_OUT_P;
  wire SC_DATA_OUT_N;
  wire SC_DATA_OUT_P;
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
  wire S_AXI_WVALID;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire ena_irq_i_1_n_0;
  wire ena_irq_i_2_n_0;
  wire ena_irq_i_3_n_0;
  wire ena_irq_reg_n_0;
  wire [1:0]p_0_in;
  wire rd_fifo;
  wire rd_fifo_i_1_n_0;
  wire rd_fifo_i_2_n_0;
  wire rd_pack_fifo_i_1_n_0;
  wire rd_pack_fifo_reg_n_0;
  wire [31:0]reg_data_out;
  wire sc_clk_out;
  wire sc_data_out;
  wire sc_irq;
  wire slv_reg_rden;
  wire tpx_reset_n;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_clk
       (.I(SC_CLK_OUT_P),
        .IB(SC_CLK_OUT_N),
        .O(sc_clk_out));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_data
       (.I(SC_DATA_OUT_P),
        .IB(SC_DATA_OUT_N),
        .O(sc_data_out));
  design_1_timepix4_sc_in_AXI_0_0_tpx4_sc_in SC_IN
       (.D(reg_data_out),
        .Q(p_0_in),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .ram_empty_fb_i_reg(rd_pack_fifo_reg_n_0),
        .rd_en(rd_fifo),
        .sc_clk_out(sc_clk_out),
        .sc_data_out(sc_data_out),
        .sc_irq(sc_irq),
        .sc_irq_0(ena_irq_reg_n_0),
        .tpx_reset_n(tpx_reset_n));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[2]),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[3]),
        .Q(p_0_in[1]),
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
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[3]),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h00008000FFFF8000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_BVALID),
        .I5(S_AXI_BREADY),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden));
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
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    ena_irq_i_1
       (.I0(S_AXI_WDATA[0]),
        .I1(ena_irq_i_2_n_0),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .I4(ena_irq_i_3_n_0),
        .I5(ena_irq_reg_n_0),
        .O(ena_irq_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ena_irq_i_2
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .O(ena_irq_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ena_irq_i_3
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .O(ena_irq_i_3_n_0));
  FDRE ena_irq_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ena_irq_i_1_n_0),
        .Q(ena_irq_reg_n_0),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hF7FF)) 
    rd_fifo_i_1
       (.I0(S_AXI_ARESETN),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_ARVALID),
        .O(rd_fifo_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h1)) 
    rd_fifo_i_2
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(rd_fifo_i_2_n_0));
  FDRE rd_fifo_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(rd_fifo_i_2_n_0),
        .Q(rd_fifo),
        .R(rd_fifo_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rd_pack_fifo_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(rd_pack_fifo_i_1_n_0));
  FDRE rd_pack_fifo_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(rd_pack_fifo_i_1_n_0),
        .Q(rd_pack_fifo_reg_n_0),
        .R(rd_fifo_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "tpx4_sc_in" *) 
module design_1_timepix4_sc_in_AXI_0_0_tpx4_sc_in
   (sc_irq,
    D,
    sc_clk_out,
    S_AXI_ACLK,
    rd_en,
    ram_empty_fb_i_reg,
    sc_data_out,
    S_AXI_ARESETN,
    tpx_reset_n,
    sc_irq_0,
    Q);
  output sc_irq;
  output [31:0]D;
  input sc_clk_out;
  input S_AXI_ACLK;
  input rd_en;
  input ram_empty_fb_i_reg;
  input sc_data_out;
  input S_AXI_ARESETN;
  input tpx_reset_n;
  input sc_irq_0;
  input [1:0]Q;

  wire [31:0]D;
  wire [1:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [4:0]clk_cnt;
  wire \clk_cnt[3]_i_1_n_0 ;
  wire \clk_cnt[3]_i_2_n_0 ;
  wire \clk_cnt[3]_i_3_n_0 ;
  wire \clk_cnt[4]_i_2_n_0 ;
  wire \clk_cnt[4]_i_3_n_0 ;
  wire \clk_cnt_reg_n_0_[0] ;
  wire \clk_cnt_reg_n_0_[1] ;
  wire \clk_cnt_reg_n_0_[2] ;
  wire \clk_cnt_reg_n_0_[3] ;
  wire \clk_cnt_reg_n_0_[4] ;
  wire \cmd_sr_reg_n_0_[0] ;
  wire \cmd_sr_reg_n_0_[10] ;
  wire \cmd_sr_reg_n_0_[11] ;
  wire \cmd_sr_reg_n_0_[12] ;
  wire \cmd_sr_reg_n_0_[13] ;
  wire \cmd_sr_reg_n_0_[14] ;
  wire \cmd_sr_reg_n_0_[15] ;
  wire \cmd_sr_reg_n_0_[1] ;
  wire \cmd_sr_reg_n_0_[24] ;
  wire \cmd_sr_reg_n_0_[25] ;
  wire \cmd_sr_reg_n_0_[26] ;
  wire \cmd_sr_reg_n_0_[27] ;
  wire \cmd_sr_reg_n_0_[28] ;
  wire \cmd_sr_reg_n_0_[29] ;
  wire \cmd_sr_reg_n_0_[2] ;
  wire \cmd_sr_reg_n_0_[30] ;
  wire \cmd_sr_reg_n_0_[31] ;
  wire \cmd_sr_reg_n_0_[3] ;
  wire \cmd_sr_reg_n_0_[4] ;
  wire \cmd_sr_reg_n_0_[5] ;
  wire \cmd_sr_reg_n_0_[6] ;
  wire \cmd_sr_reg_n_0_[7] ;
  wire \cmd_sr_reg_n_0_[8] ;
  wire \cmd_sr_reg_n_0_[9] ;
  wire [1:0]cmd_st;
  wire \cmd_st[0]_i_1_n_0 ;
  wire \cmd_st[1]_i_1_n_0 ;
  wire \cmd_st[1]_i_3_n_0 ;
  wire \cmd_st[1]_i_4_n_0 ;
  wire \cmd_st[1]_i_5_n_0 ;
  wire \cmd_st[1]_i_6_n_0 ;
  wire [1:1]cmd_st__0;
  wire [31:0]din;
  wire [10:0]fifo_count;
  wire fifo_din;
  wire [31:0]fifo_dout;
  wire fifo_empty;
  wire [0:0]in18;
  wire int_sc_irq;
  wire irq_i_1_n_0;
  wire irq_reg_n_0;
  wire [7:0]p_0_in;
  wire [10:0]pack_fifo_count;
  wire [31:0]pack_fifo_dout;
  wire pack_fifo_empty;
  wire ram_empty_fb_i_reg;
  wire rd_en;
  wire read_i_1_n_0;
  wire read_reg_n_0;
  wire rst;
  wire sc_clk_out;
  wire sc_data_out;
  wire sc_irq;
  wire sc_irq0__0;
  wire sc_irq_0;
  wire sc_irq_i_1_n_0;
  wire tpx_reset_n;
  wire word_cnt;
  wire word_cnt0;
  wire [7:0]word_cnt0_in;
  wire \word_cnt[0]_i_2_n_0 ;
  wire \word_cnt[1]_i_2_n_0 ;
  wire \word_cnt[1]_i_3_n_0 ;
  wire \word_cnt[2]_i_2_n_0 ;
  wire \word_cnt[2]_i_3_n_0 ;
  wire \word_cnt[2]_i_4_n_0 ;
  wire \word_cnt[2]_i_5_n_0 ;
  wire \word_cnt[2]_i_6_n_0 ;
  wire \word_cnt[3]_i_2_n_0 ;
  wire \word_cnt[3]_i_3_n_0 ;
  wire \word_cnt[3]_i_4_n_0 ;
  wire \word_cnt[3]_i_5_n_0 ;
  wire \word_cnt[3]_i_6_n_0 ;
  wire \word_cnt[3]_i_7_n_0 ;
  wire \word_cnt[3]_i_8_n_0 ;
  wire \word_cnt[4]_i_2_n_0 ;
  wire \word_cnt[4]_i_3_n_0 ;
  wire \word_cnt[5]_i_2_n_0 ;
  wire \word_cnt[6]_i_2_n_0 ;
  wire \word_cnt[6]_i_3_n_0 ;
  wire \word_cnt[7]_i_4_n_0 ;
  wire \word_cnt[7]_i_5_n_0 ;
  wire \word_cnt_reg_n_0_[0] ;
  wire \word_cnt_reg_n_0_[1] ;
  wire \word_cnt_reg_n_0_[2] ;
  wire \word_cnt_reg_n_0_[3] ;
  wire \word_cnt_reg_n_0_[4] ;
  wire \word_cnt_reg_n_0_[5] ;
  wire \word_cnt_reg_n_0_[6] ;
  wire \word_cnt_reg_n_0_[7] ;
  wire wr_fifo_i_1_n_0;
  wire wr_fifo_reg_n_0;
  wire NLW_fifo_full_UNCONNECTED;
  wire NLW_fifo_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_wr_rst_busy_UNCONNECTED;
  wire [10:0]NLW_fifo_wr_data_count_UNCONNECTED;
  wire NLW_pack_fifo_full_UNCONNECTED;
  wire NLW_pack_fifo_rd_rst_busy_UNCONNECTED;
  wire NLW_pack_fifo_wr_rst_busy_UNCONNECTED;
  wire [10:0]NLW_pack_fifo_wr_data_count_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(pack_fifo_dout[0]),
        .I1(fifo_empty),
        .I2(Q[0]),
        .I3(fifo_count[0]),
        .I4(Q[1]),
        .I5(fifo_dout[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[10]_i_1 
       (.I0(pack_fifo_dout[10]),
        .I1(Q[0]),
        .I2(fifo_count[10]),
        .I3(Q[1]),
        .I4(fifo_dout[10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'h8830)) 
    \axi_rdata[11]_i_1 
       (.I0(pack_fifo_dout[11]),
        .I1(Q[0]),
        .I2(fifo_dout[11]),
        .I3(Q[1]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'h8830)) 
    \axi_rdata[12]_i_1 
       (.I0(pack_fifo_dout[12]),
        .I1(Q[0]),
        .I2(fifo_dout[12]),
        .I3(Q[1]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h8830)) 
    \axi_rdata[13]_i_1 
       (.I0(pack_fifo_dout[13]),
        .I1(Q[0]),
        .I2(fifo_dout[13]),
        .I3(Q[1]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'h8830)) 
    \axi_rdata[14]_i_1 
       (.I0(pack_fifo_dout[14]),
        .I1(Q[0]),
        .I2(fifo_dout[14]),
        .I3(Q[1]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'h8830)) 
    \axi_rdata[15]_i_1 
       (.I0(pack_fifo_dout[15]),
        .I1(Q[0]),
        .I2(fifo_dout[15]),
        .I3(Q[1]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[16]_i_1 
       (.I0(pack_fifo_dout[16]),
        .I1(Q[0]),
        .I2(pack_fifo_count[0]),
        .I3(Q[1]),
        .I4(fifo_dout[16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[17]_i_1 
       (.I0(pack_fifo_dout[17]),
        .I1(Q[0]),
        .I2(pack_fifo_count[1]),
        .I3(Q[1]),
        .I4(fifo_dout[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[18]_i_1 
       (.I0(pack_fifo_dout[18]),
        .I1(Q[0]),
        .I2(pack_fifo_count[2]),
        .I3(Q[1]),
        .I4(fifo_dout[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[19]_i_1 
       (.I0(pack_fifo_dout[19]),
        .I1(Q[0]),
        .I2(pack_fifo_count[3]),
        .I3(Q[1]),
        .I4(fifo_dout[19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(pack_fifo_dout[1]),
        .I1(pack_fifo_empty),
        .I2(Q[0]),
        .I3(fifo_count[1]),
        .I4(Q[1]),
        .I5(fifo_dout[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[20]_i_1 
       (.I0(pack_fifo_dout[20]),
        .I1(Q[0]),
        .I2(pack_fifo_count[4]),
        .I3(Q[1]),
        .I4(fifo_dout[20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[21]_i_1 
       (.I0(pack_fifo_dout[21]),
        .I1(Q[0]),
        .I2(pack_fifo_count[5]),
        .I3(Q[1]),
        .I4(fifo_dout[21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[22]_i_1 
       (.I0(pack_fifo_dout[22]),
        .I1(Q[0]),
        .I2(pack_fifo_count[6]),
        .I3(Q[1]),
        .I4(fifo_dout[22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[23]_i_1 
       (.I0(pack_fifo_dout[23]),
        .I1(Q[0]),
        .I2(pack_fifo_count[7]),
        .I3(Q[1]),
        .I4(fifo_dout[23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[24]_i_1 
       (.I0(pack_fifo_dout[24]),
        .I1(Q[0]),
        .I2(pack_fifo_count[8]),
        .I3(Q[1]),
        .I4(fifo_dout[24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[25]_i_1 
       (.I0(pack_fifo_dout[25]),
        .I1(Q[0]),
        .I2(pack_fifo_count[9]),
        .I3(Q[1]),
        .I4(fifo_dout[25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_1 
       (.I0(pack_fifo_dout[26]),
        .I1(Q[0]),
        .I2(pack_fifo_count[10]),
        .I3(Q[1]),
        .I4(fifo_dout[26]),
        .O(D[26]));
  LUT4 #(
    .INIT(16'h8830)) 
    \axi_rdata[27]_i_1 
       (.I0(pack_fifo_dout[27]),
        .I1(Q[0]),
        .I2(fifo_dout[27]),
        .I3(Q[1]),
        .O(D[27]));
  LUT4 #(
    .INIT(16'h8830)) 
    \axi_rdata[28]_i_1 
       (.I0(pack_fifo_dout[28]),
        .I1(Q[0]),
        .I2(fifo_dout[28]),
        .I3(Q[1]),
        .O(D[28]));
  LUT4 #(
    .INIT(16'h8830)) 
    \axi_rdata[29]_i_1 
       (.I0(pack_fifo_dout[29]),
        .I1(Q[0]),
        .I2(fifo_dout[29]),
        .I3(Q[1]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(pack_fifo_dout[2]),
        .I1(int_sc_irq),
        .I2(Q[0]),
        .I3(fifo_count[2]),
        .I4(Q[1]),
        .I5(fifo_dout[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h8830)) 
    \axi_rdata[30]_i_1 
       (.I0(pack_fifo_dout[30]),
        .I1(Q[0]),
        .I2(fifo_dout[30]),
        .I3(Q[1]),
        .O(D[30]));
  LUT4 #(
    .INIT(16'h8830)) 
    \axi_rdata[31]_i_2 
       (.I0(pack_fifo_dout[31]),
        .I1(Q[0]),
        .I2(fifo_dout[31]),
        .I3(Q[1]),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[3]_i_1 
       (.I0(pack_fifo_dout[3]),
        .I1(Q[0]),
        .I2(fifo_count[3]),
        .I3(Q[1]),
        .I4(fifo_dout[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[4]_i_1 
       (.I0(pack_fifo_dout[4]),
        .I1(Q[0]),
        .I2(fifo_count[4]),
        .I3(Q[1]),
        .I4(fifo_dout[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[5]_i_1 
       (.I0(pack_fifo_dout[5]),
        .I1(Q[0]),
        .I2(fifo_count[5]),
        .I3(Q[1]),
        .I4(fifo_dout[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[6]_i_1 
       (.I0(pack_fifo_dout[6]),
        .I1(Q[0]),
        .I2(fifo_count[6]),
        .I3(Q[1]),
        .I4(fifo_dout[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[7]_i_1 
       (.I0(pack_fifo_dout[7]),
        .I1(Q[0]),
        .I2(fifo_count[7]),
        .I3(Q[1]),
        .I4(fifo_dout[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[8]_i_1 
       (.I0(pack_fifo_dout[8]),
        .I1(Q[0]),
        .I2(fifo_count[8]),
        .I3(Q[1]),
        .I4(fifo_dout[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[9]_i_1 
       (.I0(pack_fifo_dout[9]),
        .I1(Q[0]),
        .I2(fifo_count[9]),
        .I3(Q[1]),
        .I4(fifo_dout[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \clk_cnt[0]_i_1 
       (.I0(cmd_st[1]),
        .I1(cmd_st[0]),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .O(clk_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    \clk_cnt[1]_i_1 
       (.I0(\clk_cnt_reg_n_0_[1] ),
        .I1(\clk_cnt_reg_n_0_[0] ),
        .I2(cmd_st[0]),
        .I3(cmd_st[1]),
        .O(clk_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h0EEEE000)) 
    \clk_cnt[2]_i_1 
       (.I0(cmd_st[0]),
        .I1(cmd_st[1]),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .I3(\clk_cnt_reg_n_0_[1] ),
        .I4(\clk_cnt_reg_n_0_[2] ),
        .O(clk_cnt[2]));
  LUT6 #(
    .INIT(64'h03000000BBBBBBBB)) 
    \clk_cnt[3]_i_1 
       (.I0(\cmd_st[1]_i_4_n_0 ),
        .I1(cmd_st[1]),
        .I2(\clk_cnt[3]_i_3_n_0 ),
        .I3(\cmd_st[1]_i_5_n_0 ),
        .I4(\clk_cnt_reg_n_0_[4] ),
        .I5(cmd_st[0]),
        .O(\clk_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clk_cnt[3]_i_2 
       (.I0(\clk_cnt_reg_n_0_[3] ),
        .I1(\clk_cnt_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_n_0_[0] ),
        .O(\clk_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \clk_cnt[3]_i_3 
       (.I0(\clk_cnt_reg_n_0_[3] ),
        .I1(\clk_cnt_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_n_0_[0] ),
        .O(\clk_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \clk_cnt[4]_i_1 
       (.I0(\clk_cnt_reg_n_0_[3] ),
        .I1(\clk_cnt_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_n_0_[1] ),
        .I3(\clk_cnt_reg_n_0_[0] ),
        .I4(\clk_cnt_reg_n_0_[4] ),
        .I5(\clk_cnt[4]_i_2_n_0 ),
        .O(clk_cnt[4]));
  LUT6 #(
    .INIT(64'h00FF04FF000004FF)) 
    \clk_cnt[4]_i_2 
       (.I0(\cmd_st[1]_i_6_n_0 ),
        .I1(\clk_cnt[4]_i_3_n_0 ),
        .I2(\clk_cnt[3]_i_3_n_0 ),
        .I3(cmd_st[0]),
        .I4(cmd_st[1]),
        .I5(\cmd_st[1]_i_4_n_0 ),
        .O(\clk_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \clk_cnt[4]_i_3 
       (.I0(p_0_in[6]),
        .I1(p_0_in[4]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .O(\clk_cnt[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(clk_cnt[0]),
        .Q(\clk_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(clk_cnt[1]),
        .Q(\clk_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(clk_cnt[2]),
        .Q(\clk_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\clk_cnt[3]_i_2_n_0 ),
        .Q(\clk_cnt_reg_n_0_[3] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(clk_cnt[4]),
        .Q(\clk_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[0] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(in18),
        .Q(\cmd_sr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[10] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[9] ),
        .Q(\cmd_sr_reg_n_0_[10] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[11] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[10] ),
        .Q(\cmd_sr_reg_n_0_[11] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[12] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[11] ),
        .Q(\cmd_sr_reg_n_0_[12] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[13] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[12] ),
        .Q(\cmd_sr_reg_n_0_[13] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[14] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[13] ),
        .Q(\cmd_sr_reg_n_0_[14] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[15] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[14] ),
        .Q(\cmd_sr_reg_n_0_[15] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[16] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[15] ),
        .Q(p_0_in[0]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[17] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(p_0_in[1]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[18] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[19] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[1] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[0] ),
        .Q(\cmd_sr_reg_n_0_[1] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[20] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[21] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[22] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[23] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[24] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\cmd_sr_reg_n_0_[24] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[25] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[24] ),
        .Q(\cmd_sr_reg_n_0_[25] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[26] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[25] ),
        .Q(\cmd_sr_reg_n_0_[26] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[27] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[26] ),
        .Q(\cmd_sr_reg_n_0_[27] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[28] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[27] ),
        .Q(\cmd_sr_reg_n_0_[28] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[29] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[28] ),
        .Q(\cmd_sr_reg_n_0_[29] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[2] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[1] ),
        .Q(\cmd_sr_reg_n_0_[2] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[30] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[29] ),
        .Q(\cmd_sr_reg_n_0_[30] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[31] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[30] ),
        .Q(\cmd_sr_reg_n_0_[31] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[3] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[2] ),
        .Q(\cmd_sr_reg_n_0_[3] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[4] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[3] ),
        .Q(\cmd_sr_reg_n_0_[4] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[5] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[4] ),
        .Q(\cmd_sr_reg_n_0_[5] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[6] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[5] ),
        .Q(\cmd_sr_reg_n_0_[6] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[7] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[6] ),
        .Q(\cmd_sr_reg_n_0_[7] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[8] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[7] ),
        .Q(\cmd_sr_reg_n_0_[8] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_sr_reg[9] 
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(\cmd_sr_reg_n_0_[8] ),
        .Q(\cmd_sr_reg_n_0_[9] ),
        .R(\clk_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \cmd_st[0]_i_1 
       (.I0(cmd_st[0]),
        .I1(read_reg_n_0),
        .I2(cmd_st[1]),
        .O(\cmd_st[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBEABAA)) 
    \cmd_st[1]_i_1 
       (.I0(\cmd_st[1]_i_3_n_0 ),
        .I1(cmd_st[0]),
        .I2(cmd_st[1]),
        .I3(in18),
        .I4(\cmd_st[1]_i_4_n_0 ),
        .O(\cmd_st[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0AC0)) 
    \cmd_st[1]_i_2 
       (.I0(\cmd_st[1]_i_5_n_0 ),
        .I1(read_reg_n_0),
        .I2(cmd_st[1]),
        .I3(cmd_st[0]),
        .O(cmd_st__0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \cmd_st[1]_i_3 
       (.I0(\word_cnt[7]_i_4_n_0 ),
        .I1(\clk_cnt_reg_n_0_[3] ),
        .I2(\word_cnt[4]_i_3_n_0 ),
        .I3(\word_cnt_reg_n_0_[6] ),
        .I4(\word_cnt[7]_i_5_n_0 ),
        .I5(\word_cnt_reg_n_0_[7] ),
        .O(\cmd_st[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \cmd_st[1]_i_4 
       (.I0(\clk_cnt_reg_n_0_[3] ),
        .I1(\clk_cnt_reg_n_0_[4] ),
        .I2(\clk_cnt_reg_n_0_[2] ),
        .I3(\clk_cnt_reg_n_0_[1] ),
        .I4(\clk_cnt_reg_n_0_[0] ),
        .O(\cmd_st[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \cmd_st[1]_i_5 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[4]),
        .I3(p_0_in[6]),
        .I4(\cmd_st[1]_i_6_n_0 ),
        .O(\cmd_st[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \cmd_st[1]_i_6 
       (.I0(p_0_in[7]),
        .I1(p_0_in[1]),
        .I2(p_0_in[5]),
        .O(\cmd_st[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "st_rd_sync:01,st_get_reg_status:10,st_idle:00,st_read:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cmd_st_reg[0] 
       (.C(sc_clk_out),
        .CE(\cmd_st[1]_i_1_n_0 ),
        .D(\cmd_st[0]_i_1_n_0 ),
        .Q(cmd_st[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "st_rd_sync:01,st_get_reg_status:10,st_idle:00,st_read:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cmd_st_reg[1] 
       (.C(sc_clk_out),
        .CE(\cmd_st[1]_i_1_n_0 ),
        .D(cmd_st__0),
        .Q(cmd_st[1]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "sc_fifo_1024x32,fifo_generator_v13_2_14,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
  design_1_timepix4_sc_in_AXI_0_0_sc_fifo_1024x32__xdcDup__1 fifo
       (.din(din),
        .dout(fifo_dout),
        .empty(fifo_empty),
        .full(NLW_fifo_full_UNCONNECTED),
        .rd_clk(S_AXI_ACLK),
        .rd_data_count(fifo_count),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_fifo_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .wr_clk(sc_clk_out),
        .wr_data_count(NLW_fifo_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_fifo_reg_n_0),
        .wr_rst_busy(NLW_fifo_wr_rst_busy_UNCONNECTED));
  LUT5 #(
    .INIT(32'h00C00038)) 
    \fifo_din[31]_i_1 
       (.I0(\cmd_st[1]_i_5_n_0 ),
        .I1(cmd_st[0]),
        .I2(cmd_st[1]),
        .I3(\word_cnt[7]_i_4_n_0 ),
        .I4(\clk_cnt_reg_n_0_[3] ),
        .O(fifo_din));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[0] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[0] ),
        .Q(din[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[10] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[10] ),
        .Q(din[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[11] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[11] ),
        .Q(din[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[12] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[12] ),
        .Q(din[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[13] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[13] ),
        .Q(din[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[14] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[14] ),
        .Q(din[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[15] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[15] ),
        .Q(din[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[16] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(p_0_in[0]),
        .Q(din[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[17] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(p_0_in[1]),
        .Q(din[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[18] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(p_0_in[2]),
        .Q(din[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[19] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(p_0_in[3]),
        .Q(din[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[1] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[1] ),
        .Q(din[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[20] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(p_0_in[4]),
        .Q(din[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[21] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(p_0_in[5]),
        .Q(din[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[22] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(p_0_in[6]),
        .Q(din[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[23] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(p_0_in[7]),
        .Q(din[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[24] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[24] ),
        .Q(din[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[25] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[25] ),
        .Q(din[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[26] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[26] ),
        .Q(din[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[27] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[27] ),
        .Q(din[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[28] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[28] ),
        .Q(din[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[29] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[29] ),
        .Q(din[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[2] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[2] ),
        .Q(din[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[30] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[30] ),
        .Q(din[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[31] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[31] ),
        .Q(din[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[3] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[3] ),
        .Q(din[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[4] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[4] ),
        .Q(din[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[5] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[5] ),
        .Q(din[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[6] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[6] ),
        .Q(din[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[7] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[7] ),
        .Q(din[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[8] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[8] ),
        .Q(din[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_din_reg[9] 
       (.C(sc_clk_out),
        .CE(fifo_din),
        .D(\cmd_sr_reg_n_0_[9] ),
        .Q(din[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    fifo_i_1
       (.I0(S_AXI_ARESETN),
        .I1(tpx_reset_n),
        .O(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0040)) 
    irq_i_1
       (.I0(read_reg_n_0),
        .I1(\cmd_st[1]_i_4_n_0 ),
        .I2(cmd_st[1]),
        .I3(cmd_st[0]),
        .I4(\cmd_st[1]_i_3_n_0 ),
        .I5(irq_reg_n_0),
        .O(irq_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    irq_reg
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(irq_i_1_n_0),
        .Q(irq_reg_n_0),
        .R(word_cnt0));
  (* CHECK_LICENSE_TYPE = "sc_fifo_1024x32,fifo_generator_v13_2_14,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
  design_1_timepix4_sc_in_AXI_0_0_sc_fifo_1024x32 pack_fifo
       (.din(din),
        .dout(pack_fifo_dout),
        .empty(pack_fifo_empty),
        .full(NLW_pack_fifo_full_UNCONNECTED),
        .rd_clk(S_AXI_ACLK),
        .rd_data_count(pack_fifo_count),
        .rd_en(ram_empty_fb_i_reg),
        .rd_rst_busy(NLW_pack_fifo_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .wr_clk(sc_clk_out),
        .wr_data_count(NLW_pack_fifo_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(1'b0),
        .wr_rst_busy(NLW_pack_fifo_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    read_i_1
       (.I0(\cmd_st[1]_i_4_n_0 ),
        .I1(\cmd_sr_reg_n_0_[0] ),
        .I2(cmd_st[1]),
        .I3(cmd_st[0]),
        .I4(read_reg_n_0),
        .O(read_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_reg
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(read_i_1_n_0),
        .Q(read_reg_n_0),
        .R(word_cnt0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    sc_data_reg
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(sc_data_out),
        .Q(in18),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFB)) 
    sc_irq0
       (.I0(rd_en),
        .I1(S_AXI_ARESETN),
        .I2(ram_empty_fb_i_reg),
        .O(sc_irq0__0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sc_irq_INST_0
       (.I0(int_sc_irq),
        .I1(sc_irq_0),
        .O(sc_irq));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sc_irq_i_1
       (.I0(irq_reg_n_0),
        .I1(int_sc_irq),
        .O(sc_irq_i_1_n_0));
  FDCE sc_irq_reg
       (.C(sc_clk_out),
        .CE(1'b1),
        .CLR(sc_irq0__0),
        .D(sc_irq_i_1_n_0),
        .Q(int_sc_irq));
  LUT6 #(
    .INIT(64'h00000000FEEEFEFE)) 
    \word_cnt[0]_i_1 
       (.I0(cmd_st[0]),
        .I1(\word_cnt[3]_i_4_n_0 ),
        .I2(\word_cnt[1]_i_2_n_0 ),
        .I3(\word_cnt[2]_i_2_n_0 ),
        .I4(\word_cnt[2]_i_3_n_0 ),
        .I5(\word_cnt[0]_i_2_n_0 ),
        .O(word_cnt0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \word_cnt[0]_i_2 
       (.I0(\word_cnt_reg_n_0_[0] ),
        .I1(cmd_st[0]),
        .I2(cmd_st[1]),
        .O(\word_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEEEFEFE)) 
    \word_cnt[1]_i_1 
       (.I0(cmd_st[0]),
        .I1(\word_cnt[3]_i_4_n_0 ),
        .I2(\word_cnt[1]_i_2_n_0 ),
        .I3(\word_cnt[2]_i_2_n_0 ),
        .I4(\word_cnt[2]_i_3_n_0 ),
        .I5(\word_cnt[1]_i_3_n_0 ),
        .O(word_cnt0_in[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[1]_i_2 
       (.I0(\cmd_sr_reg_n_0_[8] ),
        .I1(\cmd_sr_reg_n_0_[9] ),
        .O(\word_cnt[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h60FF)) 
    \word_cnt[1]_i_3 
       (.I0(\word_cnt_reg_n_0_[1] ),
        .I1(\word_cnt_reg_n_0_[0] ),
        .I2(cmd_st[0]),
        .I3(cmd_st[1]),
        .O(\word_cnt[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8088)) 
    \word_cnt[2]_i_1 
       (.I0(\cmd_sr_reg_n_0_[9] ),
        .I1(\cmd_sr_reg_n_0_[8] ),
        .I2(\word_cnt[2]_i_2_n_0 ),
        .I3(\word_cnt[2]_i_3_n_0 ),
        .I4(\word_cnt[2]_i_4_n_0 ),
        .I5(\word_cnt[2]_i_5_n_0 ),
        .O(word_cnt0_in[2]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \word_cnt[2]_i_2 
       (.I0(\word_cnt[6]_i_3_n_0 ),
        .I1(\word_cnt[2]_i_6_n_0 ),
        .I2(\cmd_sr_reg_n_0_[14] ),
        .I3(\cmd_sr_reg_n_0_[11] ),
        .I4(\cmd_sr_reg_n_0_[15] ),
        .O(\word_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \word_cnt[2]_i_3 
       (.I0(\word_cnt[3]_i_6_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(\cmd_sr_reg_n_0_[15] ),
        .I4(\cmd_sr_reg_n_0_[12] ),
        .I5(\word_cnt[3]_i_8_n_0 ),
        .O(\word_cnt[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \word_cnt[2]_i_4 
       (.I0(cmd_st[0]),
        .I1(p_0_in[5]),
        .I2(p_0_in[6]),
        .I3(p_0_in[4]),
        .O(\word_cnt[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h5600FFFF)) 
    \word_cnt[2]_i_5 
       (.I0(\word_cnt_reg_n_0_[2] ),
        .I1(\word_cnt_reg_n_0_[1] ),
        .I2(\word_cnt_reg_n_0_[0] ),
        .I3(cmd_st[0]),
        .I4(cmd_st[1]),
        .O(\word_cnt[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \word_cnt[2]_i_6 
       (.I0(p_0_in[6]),
        .I1(\cmd_sr_reg_n_0_[12] ),
        .I2(\cmd_sr_reg_n_0_[13] ),
        .I3(\cmd_sr_reg_n_0_[10] ),
        .I4(p_0_in[5]),
        .I5(p_0_in[1]),
        .O(\word_cnt[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h660F6600)) 
    \word_cnt[3]_i_1 
       (.I0(\word_cnt_reg_n_0_[3] ),
        .I1(\word_cnt[3]_i_2_n_0 ),
        .I2(\word_cnt[3]_i_3_n_0 ),
        .I3(cmd_st[0]),
        .I4(\word_cnt[3]_i_4_n_0 ),
        .O(word_cnt0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \word_cnt[3]_i_2 
       (.I0(\word_cnt_reg_n_0_[1] ),
        .I1(\word_cnt_reg_n_0_[0] ),
        .I2(\word_cnt_reg_n_0_[2] ),
        .O(\word_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \word_cnt[3]_i_3 
       (.I0(\word_cnt[3]_i_5_n_0 ),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\word_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000100FFFFFFFF)) 
    \word_cnt[3]_i_4 
       (.I0(\word_cnt[3]_i_6_n_0 ),
        .I1(\word_cnt[3]_i_7_n_0 ),
        .I2(\word_cnt[3]_i_8_n_0 ),
        .I3(\cmd_sr_reg_n_0_[9] ),
        .I4(\cmd_sr_reg_n_0_[8] ),
        .I5(\word_cnt[3]_i_5_n_0 ),
        .O(\word_cnt[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \word_cnt[3]_i_5 
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .O(\word_cnt[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \word_cnt[3]_i_6 
       (.I0(p_0_in[6]),
        .I1(p_0_in[4]),
        .I2(\cmd_sr_reg_n_0_[10] ),
        .I3(\cmd_sr_reg_n_0_[11] ),
        .O(\word_cnt[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \word_cnt[3]_i_7 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\cmd_sr_reg_n_0_[15] ),
        .I3(\cmd_sr_reg_n_0_[12] ),
        .O(\word_cnt[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \word_cnt[3]_i_8 
       (.I0(p_0_in[5]),
        .I1(p_0_in[1]),
        .I2(p_0_in[7]),
        .I3(\cmd_sr_reg_n_0_[13] ),
        .I4(\cmd_sr_reg_n_0_[14] ),
        .I5(p_0_in[0]),
        .O(\word_cnt[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEBEAAAAAAAA)) 
    \word_cnt[4]_i_1 
       (.I0(\word_cnt[6]_i_2_n_0 ),
        .I1(\word_cnt_reg_n_0_[4] ),
        .I2(\word_cnt[4]_i_2_n_0 ),
        .I3(\word_cnt_reg_n_0_[2] ),
        .I4(\word_cnt_reg_n_0_[3] ),
        .I5(\word_cnt[4]_i_3_n_0 ),
        .O(word_cnt0_in[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \word_cnt[4]_i_2 
       (.I0(\word_cnt_reg_n_0_[0] ),
        .I1(\word_cnt_reg_n_0_[1] ),
        .O(\word_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[4]_i_3 
       (.I0(cmd_st[0]),
        .I1(cmd_st[1]),
        .O(\word_cnt[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEBAA)) 
    \word_cnt[5]_i_1 
       (.I0(\word_cnt[6]_i_2_n_0 ),
        .I1(\word_cnt_reg_n_0_[5] ),
        .I2(\word_cnt[5]_i_2_n_0 ),
        .I3(cmd_st[0]),
        .O(word_cnt0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \word_cnt[5]_i_2 
       (.I0(\word_cnt_reg_n_0_[4] ),
        .I1(\word_cnt_reg_n_0_[1] ),
        .I2(\word_cnt_reg_n_0_[0] ),
        .I3(\word_cnt_reg_n_0_[2] ),
        .I4(\word_cnt_reg_n_0_[3] ),
        .O(\word_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFF90)) 
    \word_cnt[6]_i_1 
       (.I0(\word_cnt_reg_n_0_[6] ),
        .I1(\word_cnt[7]_i_5_n_0 ),
        .I2(cmd_st[0]),
        .I3(\word_cnt[6]_i_2_n_0 ),
        .O(word_cnt0_in[6]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \word_cnt[6]_i_2 
       (.I0(\word_cnt[6]_i_3_n_0 ),
        .I1(cmd_st[1]),
        .I2(cmd_st[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[6]),
        .I5(p_0_in[5]),
        .O(\word_cnt[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \word_cnt[6]_i_3 
       (.I0(p_0_in[4]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[3]),
        .O(\word_cnt[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \word_cnt[7]_i_1 
       (.I0(cmd_st[1]),
        .I1(cmd_st[0]),
        .O(word_cnt0));
  LUT5 #(
    .INIT(32'h08040800)) 
    \word_cnt[7]_i_2 
       (.I0(cmd_st[0]),
        .I1(cmd_st[1]),
        .I2(\word_cnt[7]_i_4_n_0 ),
        .I3(\clk_cnt_reg_n_0_[3] ),
        .I4(read_reg_n_0),
        .O(word_cnt));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hA802)) 
    \word_cnt[7]_i_3 
       (.I0(cmd_st[0]),
        .I1(\word_cnt_reg_n_0_[6] ),
        .I2(\word_cnt[7]_i_5_n_0 ),
        .I3(\word_cnt_reg_n_0_[7] ),
        .O(word_cnt0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \word_cnt[7]_i_4 
       (.I0(\clk_cnt_reg_n_0_[0] ),
        .I1(\clk_cnt_reg_n_0_[1] ),
        .I2(\clk_cnt_reg_n_0_[2] ),
        .I3(\clk_cnt_reg_n_0_[4] ),
        .O(\word_cnt[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \word_cnt[7]_i_5 
       (.I0(\word_cnt_reg_n_0_[5] ),
        .I1(\word_cnt_reg_n_0_[3] ),
        .I2(\word_cnt_reg_n_0_[2] ),
        .I3(\word_cnt_reg_n_0_[0] ),
        .I4(\word_cnt_reg_n_0_[1] ),
        .I5(\word_cnt_reg_n_0_[4] ),
        .O(\word_cnt[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \word_cnt_reg[0] 
       (.C(sc_clk_out),
        .CE(word_cnt),
        .D(word_cnt0_in[0]),
        .Q(\word_cnt_reg_n_0_[0] ),
        .R(word_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \word_cnt_reg[1] 
       (.C(sc_clk_out),
        .CE(word_cnt),
        .D(word_cnt0_in[1]),
        .Q(\word_cnt_reg_n_0_[1] ),
        .R(word_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \word_cnt_reg[2] 
       (.C(sc_clk_out),
        .CE(word_cnt),
        .D(word_cnt0_in[2]),
        .Q(\word_cnt_reg_n_0_[2] ),
        .R(word_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \word_cnt_reg[3] 
       (.C(sc_clk_out),
        .CE(word_cnt),
        .D(word_cnt0_in[3]),
        .Q(\word_cnt_reg_n_0_[3] ),
        .R(word_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \word_cnt_reg[4] 
       (.C(sc_clk_out),
        .CE(word_cnt),
        .D(word_cnt0_in[4]),
        .Q(\word_cnt_reg_n_0_[4] ),
        .R(word_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \word_cnt_reg[5] 
       (.C(sc_clk_out),
        .CE(word_cnt),
        .D(word_cnt0_in[5]),
        .Q(\word_cnt_reg_n_0_[5] ),
        .R(word_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \word_cnt_reg[6] 
       (.C(sc_clk_out),
        .CE(word_cnt),
        .D(word_cnt0_in[6]),
        .Q(\word_cnt_reg_n_0_[6] ),
        .R(word_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \word_cnt_reg[7] 
       (.C(sc_clk_out),
        .CE(word_cnt),
        .D(word_cnt0_in[7]),
        .Q(\word_cnt_reg_n_0_[7] ),
        .R(word_cnt0));
  LUT6 #(
    .INIT(64'h5F55555F0A04000A)) 
    wr_fifo_i_1
       (.I0(cmd_st[1]),
        .I1(\cmd_st[1]_i_5_n_0 ),
        .I2(\word_cnt[7]_i_4_n_0 ),
        .I3(\clk_cnt_reg_n_0_[3] ),
        .I4(cmd_st[0]),
        .I5(wr_fifo_reg_n_0),
        .O(wr_fifo_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_fifo_reg
       (.C(sc_clk_out),
        .CE(1'b1),
        .D(wr_fifo_i_1_n_0),
        .Q(wr_fifo_reg_n_0),
        .R(word_cnt0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(async_path[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(async_path[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(async_path[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(async_path[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(async_path[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(async_path[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(async_path[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(async_path[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(async_path[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(async_path[0]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_gray__3
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_gray__4
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SINGLE" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SINGLE" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SINGLE" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_single__3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SINGLE" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_single__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_sync_rst__3
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module design_1_timepix4_sc_in_AXI_0_0_xpm_cdc_sync_rst__4
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 285808)
`pragma protect data_block
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
cOai1SNFhfYvzU31j0LVO9r3ahvpbMaX2MMQgqqyvL/cN+r/T0FGuQOwWLK9QrZeFz3yx8VF8N+m
ZkWbOtj+Fu5S0AQBgSclBIlrVDkeWCAd7yqFppxtLVUHIovbdg95/OWaNQYWqxm44k6Owb/zMnYg
YHWeqHVvrIhgvDITo82V53MWhrH13DOTsR+dPEYVk9br59dPAYiboPDwxgdzUpt3g/GjR8gyhsuE
UqjCow15IMUzkz3gr/Sky0V4FmkXN2e95396HuvIG3rft33Aa02WEglLiv0jBSpNLIH3N5DHELhl
M5vhx2X1bNC1kFojNvjTE6waDqKQnYrKOrYOMHPxppBsBIdc642m2Iwg4PaWnzH8Xuzwbj+8KZpW
NqBEUwHLtnfzCoD95ra28cUeuusqAqAXVV6tYi3nvAJ90vWZJz+ZtqgWMI0K2S46H6hAmK1tQZTt
tML0kY7SZDJDNAD2A3NUEMBKvygK+afZpglnPlhfWr07+rtC36IECw+Z/VFBDlSyxYO1JR4D7sS7
z+qNgbjWvN+6jDPRn2CGaoylKpRSoa6l3e3ebzqIYqFQ5pdfqI/R0jpXeMjaSGwlOaNpqjq6d53I
cF0A2/xenUM//lb3xrlW/FCdtSPa6KFt8Kq+EV8/djTmYSxrT5V/XtMlCGxW/GJEB0TwpYAz62kj
y20tpp1Mjd2/iL/2LqMTGhTguz8JsJ7xLSOmXfHzz7zZzHWnm+VKbOjWraJvX5/p05k/UOktaZLh
ngeSkM0t4UYf0PB9tfwWthj1mSomSl3Jn4a6GptbLg4VAL81lUq2T4n7q5hQYD0zlvqDZRgJ+7+c
p7j7A7PMmiNdonbkNRWzmNK76v7/bw9B6FpwUk+oXYd3yaNdG9r9rxM8KLyLyhqJ3EbiFCKOTGzo
6tQtWn2XhcQQR4v+oFwp3kk0dCQx5ZEaR1sqpnCGrrmSNcvhypoZ5fGeUx9WUXUOnazDT4kDQfzJ
Uzt4yIbsyNCzbQaAxJjowBTXEt6PRNH28skdCa2/Q4Z+iZMuhtdsPkWba5U+aOP+UWeLYnIMaJ/z
J1TpyxCYGRLpEDzvzFBRfadJ2Lw0n3h4T0lqCEuLc9KWJpbQvdgd4HGPF9tQYDdIpx05HXGeTpqN
hZERRL7oLvyg3jYZ0PplAHNhQvhhiDj/X3HYcj9sisKGOgjqRJTRzHaU6c5OJY2hkl8ZzDRS7D4O
sfkgMT5+prscL2Zf6Ovg57+ttllvkNqfEmeyUGl9Tx0v04fO2E7PcyKQwMjDFGKAGRlKMP37ri3a
VucaB9uwvvP5AB2J4qEEbl9pEwcjBm3UmO1zsMRxS+LIqJx7xlbilNQX1w6oB5dliWPbi5LngV11
o+K3t3YJyHKPYyaizCHJf9pRnFL2mwVs07QtS9SFzOBL5oNn4knQouXYzVb4VuA6vkS5F2nytTju
fVB3l7RAUZLZYFvo/LF7uta1etfUgj4reXCNFQOuYoVPkJVwA1qCx6eLv0l70Vh6sJ92L6Qo8r0y
wiPue2hZjhspO+b1sCe1qJu8szhqXvBUiL38sBb9uqyt0sqO1LkxRoMEWV9b0q4j2lzlGvGk63K3
Bt4SPvhRhdTbhJK424RktTnc6HoBQt2M8+GeQrYKp3iPgbWSTBxwy9pqkdVbLK0hLUPQgLgBgJ8C
EO57RZfRnb7G1/cT1Ffkfh+JUa+KJr4XwFlXC/JHKcBYGHaOKEo2eIsPzHUTUfWF8viL7zD56eXs
891S5wpoK/V+XlujkZ5THwuS8SgHJefzJDuZHqBdeSnD08WvQ9+GHyfizqEoJtRRhFqyMetEHKQR
S+7Fc5qbiPahcoQlPrlidrFmHhZWg8DjnezcIoD4GJDAjkjQDM2HV/RVhzOkS3UZoH/Cna6bm0Bz
K+BJE/nLPdQE08Jn4m8V867/gX8SkMVQmybiHkL8tlLBRIMBuZAir+0D1nRhEouwU853y9HC82qr
vC0GCIvtGfw9GK8l3mx+2uLgCU4QVSCN1CayFrGXAZ3CA/G9Al1zJrJyI3ioo04JHbLodoMBEwzY
m+wDm6YCUlu0Rdf6rYtq8iPZLxv1qPf+6JqLvXoSMrlJIQuu+DCKZVkh8elxE38hZ8UD2rsDSf2M
8B6Fq045hPj0YRM9hGa/fy4lqebPnJBdOFt69ZW1u05yc9A7/mxVPlESBAC4rwmowFnDJ3B08Cd3
iNd5vqj15RjLW/VQ8ZwH4m9+PxSFnW/3z3g5eoDgRkpSCxphXFgW2mU6wmyPJqYF8XmdA/FNXQMZ
tMdnAi3QtFLxzRuzzVZSh6tC9yLqpkQeMclVA4pfNZaihMKEov2Jf3Hb+RNNF7bw3w+4aQs1Fj4D
b7TIO7ZTJ1ZYVMWmZFCg1so1hFmlRe0OTjDpoxIn6eq1eMd7HJxTvP6rzXg1WnwEdsa43NIeLIvf
950K96o9Mz7XjYxh3jKDOs7vM3bduZKi9KP0spjQ2cghjfwbCosaqgGtlnCNiIY7o0qwoSaS7JPl
Moo7grVPzzeXugKATZLFe9W8Qc/RBc2UD9aW7vq/VRrUVUXZXUwRCa1Joi5trQ3DBOXgW75pdAP+
Gev7tXBtEs7Dd14Ww75VAsElamGBSdf3xeiq4yo/uWaT4vzrpUSs2OdolWKAhGateKQj93NDxOB8
SQMUdBz0aqeI6PTFe5QGsl4/qEdj4c2lqbOOd+XTLPcFFu2mDkCSfG3G5fD2sRY2FOntcOKS/ovd
hzScZq/Ohf3NzuU0J+U8TGRC4YG9uHzpUgtjyRNSb3GK9z+/odH6isIPKJBouPx++uk5Ehe0Kjxy
4uG6XctwePxbLvYMDUi4LvGjnVNMWhfAdqNbADK00/MLmSU5JprBl6AqmlfeXmngFzO3dbSH4KPG
lMjtsGhGRJBAtXnUpH2j5pcofG4eazsDt1ByooDI0oDxaY6svvLnMIVB1UdhO8hbFzWCFtkKKbso
1ODrsf4g+UT7t9VAgA+7HAWCXKrHjDdOfYZvHeXmmZfOKlRjm/554uZ3reqfV1BMPRuFBT/UkZNh
46hUPm/dz5qqYrVhFSkh/8nb81tD5qjK5b6A79cpO+ALs9YYi/zwi5So2lCtYt7KUYzXKv5ezMX9
VBY0ODhR1vyrZ6jD8d09/8/kO2U5SWWl4Geh0y60i47h5h6aXmoHvG2LCYxUiyfn1KZxOUj9PDvj
WDXUpAUVqEwYfOYSa9jq72Hor0gW5+1gNK3iziv9C7PRM1xjjqiDgUoKWlJieBYaFP57JQFDetJc
+u1qffqKrtdR6s/qkTKVwma0dFOFSeyY2CD5OhRDcykpufWO6FeGTeNWxtQiPyzusfsfDvPumpLo
GqHMIaLcJ4Qe1LwFZLt937gGr2Td0J0Voe/YsiAcpTwFm5e7uT3uyTq/bMX1R3b/c+3kbDpdOaX1
FYtJwjWaLVR6SFcrd51gb6+kxb4QXG00+9U0hWhasEnh+Dp72o6x/pIp46KkhpW/C9dwW8Dy41ai
0A1LcOnKlPfWY7Asw1dEjtPb7l5c4rRPUL0HMU57IpYYmz8x0LxHtpkgPpvsbpbKFykpqjIUiBGd
ohA8ULqYefQ6h7Tm9lnud+32BcEEhTSEEpr/xCzPN/ResbAk3NeAN5bs7YDzVZiPgL0HKfdq0nqm
+0vPRwEiZQ9f7GLqglMA6VUyEbzWZB5FF+7H1+dYgC2gyZbWpB33rMX0VfnRGQavBJT6I5ahfMFe
iJhMNY4c+Q+CwsHgsQKBiZ0Rl1NbdujGuVm5Y9hNxx6mkCLhef/PVQQMNMnDvujfS45wm5d/j9cQ
W/S3jhIbGoqPGILCrilVTHSJ2Zvc0ZjZ1PYu30Z62BZDKSuh80f++qLJ8ENNA3yy0B9uT74syLJv
bBXkuEMiEp5TSpCq0gsFjjQSoFXAhTbEl+houi2X+07WGn7NjAcggmfbeDlHc3+c8nNceIFNeJmC
HyEw3mrsI4ZU7ilaraX0AAgOI+nG9ogFRVTHknsuWKiAYUSNt8x4L3mL767VTgpso6nAWSjM0SXv
ugMzU9kb3DskygFijmz7+lJOsSnbLqCQhCyYGxIazI5ailHW4SWN4lo2Up5+TaIB/4VA2PJMcx4p
iBTon7GrUw040PcxY+cLf6An046ojqxyLGxDhPKa2SON+b7yp3dghF4aQpYyZ7dfeyiy9acCnQyc
0L1JqJcLAY1QDbI+qu3L/tfSfwrq6YR4XA4DzF40TUFmEnAOKkLayVgqcRodMc1YSPXs5aCI2Z44
A9cGBizhU+Q3P3n9wsscjvJzUymXS23Oq2iucVMRQC4msUcSwpGy4hUTMPHXHa18iOGM/qZPb2YU
JfBy9HwsoXBbx2OiuD3ku3vFgLdCkRC0HjA0cvM3j7hX5WYVx79r8bLriMWD7taeGe8JRLvXbr+k
sOFUNY8zT7tmc9JWazU12HfkWhVd6BJilkyl38cSfAzlpJsSGq3f9lpSBdydCn5BTyYRtdftZy06
W1q5rV3sIOE4zvjei0yZHoeLMaVeaV27/IafcULpQsrquZop00zxQoxkKf2PEfWJID/VVyUO+d68
vl3UditeYrZmD2Q+jU5eibZ0ym0xeBUFGhApky5BMnhaV8qalB1UI5KIfshonKzHDf3dviB22N27
186n0qO+C1NrrbdOUJVRBq0o0hq02y5wgq9A2kcLD2aih0Mqeu3YMFin+kWfzTfUTMlVo27MkkKp
zpZXxnqK/hJ2yBH/uKB3piI3REUozn3vp2FVFPkVpFBnJeTlGdHCzgv/lyCT3qtu29ZngJfZPj51
c25xLJh1vkU2Sl8Cz/i7GopJAYTX8dtT9D3I+pW+4dfKkFP2eM4rAV62LgLYbv7GdlgalKqWahC+
JZYQ8xw8HI+i0CN+S+zOkLhEazE+GJQQ6438w07nJLbBuXx4X4a7TEqkouT1ZIcueflF259r+2U7
Hvb7d3A9Os+RkWAkVox3vdihvYIZ3dIAecej1Zu+g190iRNWXsf62Lk5hRhVwx/mfCsBHk1NVb2O
3ix/tNInbNeeC4Sp8Q6lFdIh9RTkq5mU11o8BZy/CMNnE7JWUWsDdaT1CgvShDc8HY4gbLAkzBAR
ijsM9VwzekrE1/s4HIwEIulT0h4gCgaygzt8cCNWgVtGVJS+tuP1pwe3l7iF271bbfe1vrq69A/2
deYVdYzJX3HAqLqp3BIiel6NkPZ1+RPPD3rPPt1B5+D7qGOJGJi5lmivQ6bXSFlm1d+8EYXofCGE
wUiZqJgh+R8Pn/BmSgZxsr7c8zviHg3Iauf3W064tBBpqu97rcb//EnhGlaDmYnSWtSJDUUZDiiR
MHYT/tNgbSgk4q4eSs/pm9BI12e1+oXTJomAll2MA7csixtPF6lL9QlX3w4UhOfrlFElfQoy1um1
mbDMLMRNHiIa8xJLa2dLtlAuSV/81T+GtN2VVTXvGOJkm08v5Wl7sTEqsRlUPvH4rmQTIr2ZQc8l
GcAX6bh9ytK+iX47uTp8vSzjTLNBaLLc4/N5zUtzFxSS5yEk7AVq9cf3Mcbj61elNeH0hqVNHzWD
Dx7aRMt5BweLqoAAS7fqVT0QA7gwhgU6FkFpModt5pn/KkyehLJymxP7ObiZsDyiX9GDHYDjgN6k
mMyCGsWKOdvTmfjasgV43ncFCOhQEkM9+DCh48HJv6HFF7akDU2susQKsEfG5gwfr94MaV4uV3gt
AN+cY4i/znI+Zxg/fDPoASVAoiWmNxoHAIFplIc0lBTf2lqVwMe2qc5jI3RNYRvRGyQEhR0tZG2x
jQMxzMLNZCPhyAR66fNGffi9cj+pyXVVDDLeHI4ZY2IYMvHLzZrAlD8++bnkC8pVPrGuZD448Lq5
9VKer12bhV/98tCtQI7oPGoTyDqGez0dOMHyu8/EHOdQg9B7ArLRAsGVVhEIsCvBNMPIzVgKo/Hc
Ijm0ad/BqMLbHMDtv5gymbDEzrPhJXUnZ/6mxmW3lnrR96Uiy4uVuqWVhoiI3Ulay95FEJVyYazL
dDXanVW5l/GM4Wb8l2YtPoU9dgHmBfVJrt2w2Bm5LOv+jtoMOpcphwA63DjEtIsT9MELoJxQVcaa
onqIbV+nh9eExFfzDM32eZGlo5gMwU8j+TIw7NJbQKpwmYc9YKpynfEAMpzH8DJCh90bePL7WOKM
vh8XyzgKuQfK/hO8R5xNK9L9nrsBBhUtX8Kh2IJuLHzq+Rn26fRNsvkXbbawb2pKrJoKEwBUX6lL
Wqxby05gCNZwdN11z4Jz+7jfA7vPqs6tKEBMNUFZu+JINCtcs4TsoLPypiLWBAJDl/y4FwpSIATh
qpdekVu8aAABy/evbBpNhy0//2Gr2XsRZvITbXbDevZHhdshLWV0mO8IQexGTHeNR08CJBSm0ZNQ
94uO8DDZSNIXWGqsYMoH2qat4mw1KmennPIFhwiDjlAVLYjgGYYVkmuPgWZnYjj9uxkY1WqSZoth
NkJ3/NlYizsS8EgdR/q3voqeAYBW2yMot/z4QfQJydnqjDnByMroNuBsQc6KNWud5ALRPcCceDnv
cJJ9tz7daIjp6YzFKGBdqXnTUhssPO2kYZghjXbOwfGJ4g0P+zVwNyoCOl6ukxK6IgRzREyoXMFD
6g460yZTUtEWwu0jh/InxQrcapyUqhQ84YvWBDnBP9k1O9B9W+SuHgKOiDCQccekvcSU35THlMlX
5vIireYdSkjkbgOqGrnxfHwmqEOfkHVGkD8In5bGCVfZrkCqhOOxI66dSKpHvxUIGCoLGLu1BLnW
sSser9v13ERYJ/Kz9M5L12fVWDF9lCGz1CcpULeIOZu7iTJZDX/n2+074kbU9H3sB6JMhDK2/H32
94QF79b5+klUJ0dym0heQAiIypWmx4+USzWEc4S/3oJOGYeGevIHqn0L4y+Ma8Yx3PHMLkOgKaXY
p4nVt2r22UClMUza20HNxYSR6NK5Pi1TxL3aBtVa1RdVIcxR2nmiewGjh/nBb3pwS68A9xJikym9
6OFkx7Jf6VLVpou4/JCnwRBUuyfitum09IK+qBEYSPevqEZQGs1EKSSxlnFXSBfbHDSlkTBMymsb
OOKFBFoWutWrhepDuRziGovqVnWzD+vk8b1mqmTsdZwselj2XsD0jTnv+lMk7iA6jsFMKfEsf0k9
ObpObHNU70u0SQ5gQQ17So21emGZvSnFJud9BWT64W2xZUicGNyKWi5tUYxq49a5e6DMh7/nu4+C
xqhXFm4ziHJ6x6i302aigH1YE5SB1cMTv7/d6DB2nmISj/Bb/O0n9mJQQp7W6H+HMpJqS2yK6Z+m
mKmZkOp89FSpBVrBE3TxLo6SFh4TKGrWD65BuqsWIk+yqh4cU1DFpVP616BnyfTrC0qrntrT+wgj
4F7DjsVCtyYYeUCsaXjpJhnP5sUs1HjywhXzuNqHBYMMX3E8VUGhXA8U8hhd0V/p43yY4QFbNnWa
21X7PL0fRMKHwQ+/1lcymviuTnFVlPWwYNC318kX+wi8wD8NxHw1wYt/qhBBpi3dw77hduy9mgdi
JvRqN78lICpFkb81EsLgwqvXfyrvTUoWxm0+K+obzGh1NN4JvJaHaE6usA2hTQ/z4AS8Wd88KUlR
iCW43dz0JkPyjEJl//g/0SfdifpUlQQ/gmLYXB9xNZREafiwoAWujMt549xil3vxY3/TvfFoijYA
Mm1zQD62mfEZl47uWUQ8kGhjglSFA8rsBgpAdPs6XBcOOtDb4gtSolCU72eMMzOlVCKCY7JUQLBr
srCvH0aCkogB7cdPXYSJyjMpH7icNy/fDxtMQJPM+PWd8yJGXGwdk5l1yEYHzHtFTrD8cg9tsjy1
sEcr6bLXkUHwyke3Slc9vqsvO8TUfcM8dRq+Wc6l1W5PrDfai5jtXZnCyM7MQGbZAqzAyWEyR53o
pk0z17v6GKG41gZNeYLoWMFVqY/Jfx9MbgJpDE+yvA0SDEn/EUMPyut+/fWxBTdCY1WqBeHyj1rM
3Rjw7TCZ0GaX6QaktRFZ5IlnOjSGwxZv/IwUDNd+p/cR3Rqd5ZPlcNJmJws4woyeg/VxiRovC9XC
D3Zf9IKPf4Ln+A+Bi7Jhb/WNtySLwfa5CpDyJCBrlMbjXS/Iqg6fVvGikq9ZUbpJZtfbcFOdPEmk
2lSNY9p+ZEzjdeWpZCpjA3xSWWziiWHnA47i5zdZ2cR2CiMtD28xP82Ola4VYgGqtQ3sV4laOS1V
6+94CgR/CcX74xhpoeZ/RbDZJXRxFK/72sZ4c8lRIy/kwFLSBqnqJrb0SH7KpURIEyRDiE2G7Hmd
96wuHz8+VxZh5U5Ga++WFS6nH9jlelwYxQ0jdmmVbMOhEPHkV/iOiWqWrJ8dc+8ytleVAcwegTgU
FqLFAyNucVTnT29QBT4OqMmzJi9e/DeldScVatVGHLmGteCWHqFj+rB6jCQmE0OE9JrSqk9NvBLw
kwdfOYthuC71unyJKXINLNcR6s7vQUWnphNR3rfP/HkRUAZTotIAdehh+JFm1IHzbzwBs+M/b1Hu
c4ZAB9D3SHXHB0gSX0AM+bQ7byEv/LZ7wmmj3ns3iFFHKqAJxBDgJyZah80HzQw3wr8UxBRhRYyT
h1ZukWvgBZE1MARYxFf3Hpw/twmEVO/GVLg7y/QZ3o1ezQLHcpzvECkBt4ZaNU8dRvjdLKMbx/ht
wBtOW4gU7sSfchzayMJhd54H5x8QEpIeUhXsDVJ9rEiBnk8Ajg9WML/XZ94ugd8XyQ+wBNGlJBY8
88EQGy42M3WzFvgWWP029kx2VqXKe84GAexFAsJniRcpfkgwI/osscBQsdWA0oJvWxhXyjN0zGAA
a5A2KofsPNds5z29i2KVpn95kqEZhum5ACid4fOmAHdMJW5Xi1RCKaCXrrFTTiDTztA1EEPb9rXL
5tTXBwy4Z/x5h02Dw4kFj81ti6bWbonWeAwMaD3LQ9pUemgFuCX+u5jQZLEA9oRPFu3AHNRxdiSO
yQZDXXlauUODFCtHo976CvMHePjCKfsSqeb0vKzYZOlc21I6glIR3V9YgQgHQ2sXnp2dFX+SFspr
lLCJqUDuU46L9EdSBR7qtJA8KSfPJBuIkXnHz5NbOvnOZSHp3s61Z2AfOamZIHKUzFcOPQKSEyWS
9rM/xeg6CIx6W6M0oi7hM//xD4K+f++HTauGFGJkZFfXIXo4bGrvj7I35ISM5qs+23GviRdomLnO
Mc6F9F2cBCMhC2HuDa4Vv6Gmq6qpiChP4qMmv5oPeswaGXmxulboQZ0G/PE7RwskFaYY+nyNAvs1
UybKea4lzNGq5miQyl+Z1E8wvt3dF75eZ0xg1wcM3lncEBpxhR6fGCJvXCmhHW76OhcMHZfclu/B
9U/8woJ1MoUhIhGPI5aTl/7Y3aXgwrVNWWAA0RtsKfOyuS77UngXuIyAP2nLr3/rumq9vV5TlA9a
iTeYIlLQljjvI2c5/+3ctaLV9UtTPm5NqCrdkQc9QcTagbWxczXC9euWYZQBTbzhV3CFI3+/vYng
c4aiFwv5beVs9/BTuUqiKaHatSOlEp31Nq0fwSQls9NLABcArkwH2kKBO5UfWgrhpcq/BkiskIj6
Yd7GMo3Q19LyImDqomQuZ+pwXl7SLk4BIWdiE8z2Rf7NlkxfMI4SVsTBjZTjJaf7Ek+2AAtUERzK
VLOiDvWd0HJLMANeObz6TIOtGfhi1G2FH21MvSc2qJzMsXVTwPDiTJoYfpZQvw4FZ7Fs5I2uwFJv
DUSFzKawjjquaPniA6VHunr5jKLLoB+50X6Up6L+PND2wBLLkYnnLHcNTKmd2fcpO5CkB8t9exNt
NooSj8BxWKBFbVm2TGSyPcNX9ji0yDoY2Umf4r/nilqq6R6skEuYDT/GDnNRZs87OBwC1qMWUYvx
n1eZoRO82JL/WsfbgdJptLvA+mRFEmjFQkQjLkVpybVMZVOXmGjxcPBYChNI5raMShNl4+wsv0yY
GhVCoO0hFQcZmqIP0csrN24SWMaRhgtWEjfr5mUV2togNQBWdZb7svXQYAstXd5YYNeTb0OFk9oX
zotweXO9N8KfAZ2uB/MOZFd6is9O95x1oWpxI7RaVZ+q3ZKZorqHNVfDv3qTxPb9hDhHJHP7MK44
wnHcYUH6BPUswn25fhFdq4BAKrdKV3exX8PAJpr/ohEvYkSd9ZA8/h9BaEgoRJXFODUnJNHC1XDo
I8FYlCNkkxo2xL/kxSJ8VI0R9nRArk9BytbcoS5ze9i3Dq6MEFmgLwywN4547ZpXQnD3SWmG8OWg
Q33nFCkHHMDncDvyVB75I07nutEy1UvRS+az+j5jYCiqkodxrF7lhmULcWUBv3gHfCCN/qLGIj95
gUtQk/cOeuays/m8SUWh1s0gLpCIthFHhdlcJZ/xtTmZbCE4ZGRKf8uGQBhXEeqs+wgfnTN2yFJc
2PFJ9jYTJOEUqfKYWXKGt8cCoKLJ96t0KzVGoiAsiYpyN8L2SJQNz0023rGriuG6LeMn+aBa68OO
DTwJ93V0inpvJVfpI8S8cl90XMgJdPYfWh5u4mIutSlxpFLfVvsLvr4EEb0jGDbQ6IZaIYptWEp0
zFQ5tKjrQ/P1Fcig5IDsIQ2c9dtnGjx009gIwSXJJK4hM2KRs+jzLauuBu4YQt4yAY9qTqap/6j5
jMR4YP6Nooz8si/DOt06P2vG7jDw4Mdja4Bb0HfphVMsRGT321ZaFKleviWZdhP9KeCruzNH2Ce6
coBD7fALJQirWdJeenYrnUyllWky1WzVCPo60mPmdHXO8ShFVxtN+sWqHI/IfYXqs047R9dEy698
1TNPJ/MrWv1sm0OrUl1MiQIQXiZH78JDJz3pRgzOB8XS2ISj1WRTm8k24589BapRtVn4OLnlGpvL
8pJGr79pzUFhEFzNUwDZJgb971VJh4o32o8kJA6hfZ9SaFR3rcwTBPm1h0S7TEb9UFBSJ1uoneVK
TKk+VagsJ0r7YXhbuVCfqUMDjEUcmAykrCFGpvfMkzgEBlyuH52hnh1tWEn0f7+sX5pZi14Ikv0/
QZhEkVOwDMFznmll2M1tvZJ+xpF9KKd5FO3mkgcp3U0xeBr0ZWV/UhurDAnQLsIG5fcvOBzxg3Nj
FU2Gm7sxsv3nEbaaAdL87c2FUBCOZHGV2SBKDj7ZMZ3t28sr6vdKQHfyUrPZDsm+EdjO/IYRebAM
FFs+NdAXgvUuO/pS71+P71hnh4V849dsF++Ts4UBvACi27BOYM6AwEx7HLA/TT9FPl2k0D2nreFy
ItiptQ+KLemwBLjzZm4znSe+dj1HNbFdUwaLzefaBZddTryZu9vEk1EvI0aG2fcPZuwIEeEOeQxN
D7f2PE4BgOwerq4XIn72ea55DOIT3g8LzChyDTtDy6c8KpmJld6sAJZlumK47SPUQg7g/uxtgAA9
1TXKQj9dBPX1+2AOYFPdBCNpBzCIYNnmyIyu64NW8gFKWA3Tg66gsTXnq58WE3L8yQ3Zv88uJ6qC
eeohBUwbcqQ7329DuSgsRnO+iso79gp7r5JK8v88oFIXxw6VVDF9Mpunv/anHbrJo3Qt9hjkNua0
y+qbKyPh0QdtpI6qYT2of9WZY5fItx53DOfmncUDqLlYPl3a/Psc9Nt0GAE43Rox90Qkagl3cYXU
k7iB1oFe0YsEmYwLgl44Udohvy1Y7GO2FbRH7t+ZU6wAc6xLpyGP2JSEoaU6GD9IZgjG7OCf6OTR
a4Mf1ACfgU2c6HxmAD9gBZX926BzpgX3oH0FX6Kiiaunr9UMhT5sxZFzFJ5oEBOgBD5p/gCCFPzm
QNur1Zqar98DJVbj81qhLsm94uEvTYIEIN2/u2imtuLMRRVyVTzdCRmhHH+c5gSVkwth8C3+fX+U
vIyRYooGdw40XPEICZtnihARna3qzoPx0VoYco0jkATQ6Me/jDroBYkSiM5Wq53w1rqf9TooDIHw
brGKT5NpKRt98LcZ3+wx1pDwv73PkY71nMATQ7f18R5N6cINVh6O7S+OEqOm6wyXCdhs0eM577RT
hEADtEiBx4Flb9LPQIwR33ccvsJ9lKSBsg7BproLyIuTwIInZ0dwiO51vNi25Q52bKAwtWXA0zCb
iiKnYd3B/TeHtARj1BoJ9QUFPV0MWhbHR6kj1z+yZAHUZzopeiCQyVz4f+D2lvNz3nWJ4MgszWRf
5vlvaeXNWAwMjthVXwPZCJDi1UPDrGa3w8R3j/1Z6egvZXbpO0+da0pwdp5FDVtykDbTzh6wEHuu
afjFgFlj2vTmVmJwQHOVv0sPdQMTFYdwykGyXE1ONghNQuQMPanu2TcPuHImWoqJTqu93jfNyAPO
hfu2mdu3MxkTaKsSjgtGaHqET/YOqwLBchx4UbRjDoxmN/gBlh1qx29mBwe7K5d0GBmlXU3CPOAu
Z0HCGOHhWh+HJ88QWacCLllsmH9kudenHNxRQ12A0cGey8seClRJ55FxCNXrc/vwKdgBlb/Nz3+0
9kcfa4AvG0WVhtVfiviBwtexZu0vZ/6lqJ7HXkoJ04EwYubH2UIWVpZRwZ8YUs824lLtZ/dktRt9
96Kcfy8DTyq0PFyPS4xhJIQqk5gYB36VRGFXciWK1N9lIVWClWamopp+Wzld6Nb3meHmI94MpQxv
jUqzNBbck0zlOzNjARnqbj0022NGxwPDfwp1R3F6ZUwU8qMH4SnQsROdFaZ2wcpqGuqvQZl5Jo2G
vyxTgqG6pYeCvVfd/46CHyJY5BXT2QFcyFBT4biam8L8JD1QK2x4K2TDAm5LVfdk/eWazno3chJh
FRWpPbS3JHv/mA7IFACAtKfh1R89TQkX+7GeBqgYH/3qDe0EKQe6pbrhPMvwzHWcPd5VUNRB3RX7
B0eqiLQcIF9w5kBk7ahAIQ4+f2HuzZ38oA2ov+iBUOsiNR0ffpgcyAdizbC1gA9OGHuN8Pwt8p8G
cqgmwu2GxoM0cQODLwdF9zAAer5o5inMdorcfF1V6egxxNZ3mgboNtP4O0E0VaidkBoM4AftD5Pk
rUxFUKUpKPzZ42N7jcd5EksDOrvvEQZznOAlD4n53yyScoi0mdAtjgO43jBYBsnEwEbDnFl9nt0u
xgq7oY8yRBSPfS7NHVJuYC/ArrRPFcd1M/KJ4ksjamvqR4v0jrpr+xNSzYhqGJdphvgSkRtNFZ2h
ErB/1KfWet5pdqix/ZDshz9vFsxMoC2Zq9cVB92v8a/ewn87KqYvoTLZDLQx70AetlnPBqjkFm+/
pMc0OInLFVFg4sfqsA8wsZFooX3mYuqBHjn6Oi9kef0SddfpZKob1Aidom1fZFosjktQDgBBTNBU
n/BeEI246QSDX094KJRVnFptwS/CbngCa5M798uEkzRQkoB2YIF02AyYRQU82+6moe8h8bJPao4W
F30tXIWroRWe457urMn+9O+YzvQxwUaOR7J8jbHtM80o9yICgFjyEQC9paI+dde0S4VRa4XQDtWZ
1JRaCG5WA035KT2b/fzX9UFsHaEPT8up3HjTNcUW9MXtHxObHQlin42AOCbU9IohGcrSRH9r83e0
crvEhfXoxbs3COP+DVrhLqMsQrXoqaqYK4EdcIN85sRT9dDRuY79CJ8ShlHdPrpSXC0STXEk4r7J
RvyOdRrZTx2uWT5julAzMi/+3JrfK+hdLiu9HWc8HBc7AkARleuEpFXOgqCkyrhJ/cErjVAYFv99
lUukuP8Cy2tlC9dOCIjSQJe+sNfgTWDqrEqXLDMQws79IscNXaN/R37WwGhsrB+4AvLYiAwpNRRj
tcfN5bNnTp8LZQGd4z4K8xPY3nByRxmG2gL3KOJDMJdpDqTuzWtXP5iFVtw54sqITHTjdCCfgs4u
qvRay9ljgqsi7L+qUYwwhObWpptpfRzEGv21e+ntXMnlMbs4ZaBBgbuukNQAOfbyXaUCsP1mmW0L
X9JffjvT46Xt+BR/nhmNngGlozWsqwsrM/900z4ZENmE5/yn5oVchq8tp3CPapNF+WSDgb9yJaUN
HEX3lHEXWOK8MAYuMbQ860WSum3TjmnJHNQxbT63SssQMxVdGONYLPKfGSauitBYY0e1l1bQh1eS
BwsVWkYDKZAbz1BP4S0yBlYYz2rxHdTnv4qN+tsL4BCIfCTYsYIrYnHWCMChpzVtTdUNL6yTJXXX
WXcrqWjRw7zxvIBplKKl0mJAFFLa4IpoZoHV5Q0Uwt70svDpuvdzwSQurgF+mI4+M7qQM4tzuIcX
wmgrVXs02O6CMkyTZ1q0TA6uvU1KatXu/qoXbwH6kqRMi3v3t1eqpCo9ep4E+wjo0HF+ME2f+l+K
Atn6Ss5UwBjxGBgZobSfz6kkr0TzQbMlNOhFQ+TkR0usCLokOeDZ0bjCB0gWEhO3p+BBwVVItpKt
+fGNsBpXOtvEjPS1Ou8SV+wwuwyszcHCc6ubt0a9Ti/hKb8byCJIhUVwswHe94ai6pxXoYY1RwBK
Uiy93cjdpb82cuydHdGGDswRyHM72zdccH34W/OfnICjH+1lqx80mMVPy+xnn3k6Bp+JmpKvV6OE
yDbf5Zp0q6Ijfb+O25ihHaz9X/9QApHLHoUg+9aYHr4IUdw5/xML8YJCpwFmS6SP3BigjufXYvG8
QOho5kAOZIPpXhcAiPEXrks8LKObHd+wpkNQXTInyiOlvRBVpzn2H94lh4xxNk4XqwFteVTDTUGH
FCHbf996Gd7+F+cVhKQ7Ml41KNVg81wzxbisUOe6nNDC3k4Swg0AVWzUQLsttG8NygWztynkbI2r
7xYi1iueM2aoo1TC7RP31RZgOcXhWI0qqRhIWADPJwK0RM410gaH6ehQd895EluSB3u27v3dvQCH
Vs28xna4FEpxWfVyVsj5lyia8VT3Jrdh/kW9ENv56UDKsYS7tUcdnpuHZLytJjpDOh37zIBN8bTB
HtJZRANmpeRNw3NaMmcAS3Dv8rF30konTorhH+qE3edQ9SP4zedQHnJaBUINTu8YC/hsOKY3Cu/w
zPBOJkfOa9pICVo1Qk91jTxHQ2VBo8bxXI6sY3dZsB3pJYkGF1S3V864bBU+oDP9YPiuT+E/b11l
RIg46B8zqF/oZL84kPFb5/Y4Sz/zSBfyNXb3sBAMk9jcLhwjTPdYU2H+vRmszinJHLi/wdbFaDFI
Wr+ShZaf8IZrkOHPWhiN77dN7fIx5QQaXU/h4NDIOryRwEOL9lgQZnX6bFGmX66EuahmUN9ojTTL
J8lefqFMWDeqh4m+qZ1jLUqSOGQB65l8cShefajKBztQaELjafIB2/Wa31Uxm0EE7c24Kbs0u5sX
BKSpVOljXCtbepVOwL4KFh4sboD71m5sOimcGSGlrPACrBsYP9Na8HJWdlouxO23Ji074Y9JEtiJ
KeSaCUjEyJy9gEr1gsytnF2iC3wvL5N75K7TjETt+2jZCgHYpyhHNpyavY1ZgjYlQEir+x/JkRg6
RGcpYqpXLKSTDF6Eh6mrptXAYCbCUJ0RWeTDpPzSSDAVUST83UlE1ayA/QAGsGSzlnF24kLMhbW4
ffvaHR8E2kLadQecq7jDeMblFTSB0FhNRrXmoO6j4B4BTB7+fyKO2PIxXf7uVbJJYTnkSi8Hs2Oy
TbyOGa7woca1YWdunRIWB9+mdiqogLLRwWIfjUR3+/raZdj0wvqTp4l3NzzPrmVSiQv5ztQcgS/s
/QCG/3s4Qhw9l2xzhDOefG0URAR+eO9AlHuc+9WqXliqhmI1MOtL3wAcxoR02wRC8As2yOXBuU4V
dCdE2eGPSB98oFw46PacsRPqhUSB1ZOW1Y3tEGbN95aEWWLwAPWt90meflKLUn7CkoMJoWP8W8MP
d/ZkNLZ1Besu0u3VOxxObwDvMuN7np2fvtVEJqC2+QJf4/neo6+PkVrmDYSMrQicHh3BXstPzP7C
DpAsShY2G5d5vTAuyn1RGfisuUFagSm7feklAZeGaEj+gtGYne9Q6jP29+1xNC+JD4wyXJJrVxTp
PuwUa0Fp2ngk0XCt2Z74cf+9PDAj3sYeC31oBg4rc5eC58q59A/cVTDfoxoYm9/ou8sdMY4hwIM+
u8FDnYgHAWywlgQUJhLehhfTESHg1+fTr6pQl0DBAFdOLYGuD4nMFMZY5O3SsYrMtta4SPvPHRsc
2D/oeZIt+fjXYo5tPDiUbYpD7B0yqVXnE5qO9b4m1Mt6wEca26ZpQDuZ98oIDAdccHAJFJVzyxlL
+2LasSZHXPlfg91yfU/+jwS9kE/qmugKki9xZLDtIo+q9kv7M+RqGgOFddwmCjtAj6LLT33NClps
yNxtJ1zyq2BgWJ+tw0Qpgxkc4+xssU08joJ9403mkpzht53SNtJi7jMTnz7ZGdBBvEvychIMF8uP
3lGBRI0jKknsoXeuUG4KjGZWAn3eF70PCTWYx3kaNmTQpSpakzkCybRn93xhmSG8ncIEkFvgZN10
BMXbSP8Nzf2Gx85HjoGv0C/6SXMEcws45tgjD1xw42h5bwPFV8Uq7WSatB5cETeGsp8AxPon6aus
S6w5NVf0B/BcaohCCPp/obUl73SOEXalPELclP9OdpUUpz2FKWzNdfU0NaMaPqTtMujfLapUuFtk
z6Fq4NB5915DCr1yjzVRmYLuGLMzBLnVv5XDWqEPttZJw3qlzLMU0a68s1OdDDsQ0wubkIWp5YpJ
rXiRHAJlBzMKZ70sQtpxWYD0Jn4glKQkKCIqPn2Gm0QIigMJCduvAlCfppsyvsPTR7lMwpKRN7s6
lOeGqWs67g8LBkQYHLN32/EVxDJRpvm/rALQhYIBLLl6UTo6uzWgs3ah3F9ToC9ymUoB6/ShJAip
gNqHDsmDl+OMX6z/uiTlrDENMGLagJGT0E6EJbHv/SpRPD7nKCx2O/rTRMFyBspX6MoaJ7cmJZYD
0uIxGJfuE9F66AjC66IOHIzxT2BBIQaH1Rk6uDoiBllMIgZ6n+Hs3XdkYz6XRHbFz30xBzBQVt2J
ESSbq4KTP16DDH6mNKX27zrG4XDgd8QnYbtfBYNXm9DYZaagEJLjBwBM2on4jzk0YD1Dod4Fd5dR
MFXII9a+NGs3kq6UsQN4mFpbVTH3mzyYeA+1BAH5j0FDphXvlGUMGWZqOQuHT0bUys4XKJuGpHPK
H/hHd6PlCauf2nrF5yYFYO1MJtnnuokxsEn3NH04qW9+e8PGL2pAGTz/V9xTEnwZYD8xGAgaIZIg
Cb7PEnstBsX5cH2zWK2n4+snsabs+zyNc8Et5W2M0MSW6ZkfBw5vXMyzXtPWpLhDyjanJUnBOMWl
sztWJ5HN7OHPux9RzZhVh3W+Mx5txJQ12b4kSPBrIv/WZL/mkO5lzk9kYS2a5K0jR6vB5vx7jkUJ
aIVexJpx1gC/E3HHCa1RvODWnK4yau1N7VzVd9D0vKXU9KHyodOonGr84KFtCIZETmg84YcACgpk
ST2LNs4aASm//fTgiLw6FO4ruEOE+Hhy/Qp2QM4o4mBVzJ/gX5c0j2uryxb1lZQvA9aG0OJGsI5J
9HU+rduZaC09AxqSsuFz2Of/WC2KTYXmYqthIYelVifqmKX8TRPUFJxGcuqy6CsRBx0iRQ9V5Tfe
T78Enevksg+SmQSJRuVjjAuZPSoy4OI6aZtzUtNv9ffVnKKL67TmEfTXWSGun8BUpq/hhvPSitIM
IJRbTb2DFVAOdrQaVwToJIpnUp4svLGltNxMsPCcxcla3jPFaHUwCQLylXNkjtwayF9RghrgvLTa
MRVptHdQ17axxa8A4QrX4J/R5cqVvsdnRnb2rM+bwRjTKr6FsGrJ9NLl9BqttgfqXwzyVjwv9oqZ
rsZXyFCiUfdj37mFPWoVGT+dgQkI7+nD41D1akUOMuLBMUYoAspplk26AaY4O1oOYYk/ELqbWOs6
aP+ZulFcrWAcEK4Pb1cyC4UtfIVMJMyvYgPPyKy5F41e5LV7sb6xZbwHtTDhdeelj2f+V1fWwFcx
Rduf+n+FxSbnOVEa4BaPSqK5COjI+hhpNCckIDUApKBmn2O5muD1H4euJ6afKv/wddhzd/sZbh+A
DL9XYPqVKNMZSzIhmjOYwBvl+wkxvxIgVdrG+Xdh995o6b5Gsyix8AZtQ0swzV8BXMU/h5UqZCwb
G07OD1Ht9JsQRBMH2aOBDlUteuQNYB4BZEa8LXzwYdqS1t4XrCH86AcZyGJjHT8H8dvakorbpex+
BIfb92g/fxL81xFrk2AgqdfCg6T9wy4PzIvKiEqwAqA6WKdlyTgp7iOgxHArP9rYxmCHFt+Wd7kk
xKvnS/sot87NU1kJFnWOr8TBECNSHyiTqvcGTl6G35/fzMpiB0xL2PtB+hpJERx7LyS3pf854cnW
EgeQYEAZBuAvwzbW4W/Wnvx84Lgb5qom74am05nPJVvOOJUywZ5rxjkEOrIbUtqibI7MkxpAYk12
aq3XKK+gT2E9I2hZKCj0HZ7gOvcDmONJWnDkbtJKsLyIqa8sZoJkmO86mDLObY4r5PsHKfoh8937
cZ+yvIunD3awTmkLGMiRBXGm8ZmmJg2ISkNkLohIYhwo40Qbkj2gDr3CnnWvNGfaYgd2BMigkulH
D0Mscx1TOwo28zIuG6le46juoijRbuXvFCmCIkMHFZGlQVgj20mkU9tZt0vTOnCYY86dvaLW6l+n
Dp+zGfTMKIVKlpDLtZEgwppnlMsBuaRyWHXFGDqvNrZ6SWiYA14NcYbDwT5ht1JyHCtF/Fjl4GEA
0ibV7/Jk3cdIV8/9OoGt40IcG4uvYO17L6+IUkL1V8kQ5mDQSYdfNJwVkFaP37T2akQ5KtQ9zR9r
lU6mI+aC/c9w63/gkDKjrdWQ54gqC0KQKPQq7x39NsuSgOwpAR+NEIdP9It6mcIB6W+qHXu62c/N
ciVsYCoRsW+icatbakPf5drM6O/mx1P0ir68BQO76BJYlh1zi43kgfa8SKof2LheZWwaJZ2oxw8d
Duun6z0/1Te4MItWVVO/Uo+nxkJUh874FmqE5/OFtCoUwCTmFjhQJITudRUHETvqWBLkNQjkHiQb
pqDcMjenTqn6oiw0dnWxvCSxxWRH2pFeDFqTTBpkqdmo8PNLSm5+hVVFxf5VIy+azA1fdjRayhhs
DbTMxPSWkusQco1oHlk/Hyth53yysHBYCbYbmoa8Bv/jmtNZorUtJAusq//1K/AC6t8KDjqqR6Ws
ha3NOTmU/hP2PFIB8dhvU9yMcutj1iKso1jidBeqBMtB8NLQ1Eg0Kzb+H6U/sjdlmSq9ar2INQU3
xV5q3Z1elAXfmIlPDmZ7MBSK7G6cM7xhKHe9lETzvw+HXTz95fiwjze3aXKNPn/OHsZh68ah1tNw
feJLSeyQ8xA1UTd8kmlY5Rz37BcsJ0yj5Z4BqxQsmqXiVKcFomOgq9r4+IrbWW6kh+1GiC/2VHoq
eWy7/ncqDHIn0AW+px5NAfS2gF+2ZKx66hSnRZfRvTBUhs6wZVRANKHbLCeayhl1oZ96Lt+++Zhu
MVDXPNwa6UE6L6+zGZtk9HTq5Wy0jq0+KnBykEZrzrqexaQnaaUE2hluNUmhfz6jbxwJAcAh4C0H
O8VAskCoHv/Z3HEXSNVUPA9JllQ+Hzs/kzK6IlSKcSBF4u2FyzKVJfn6iafyuo5hA8i6DtcazV3t
SYKmQZ18MP0vq1IvN0s7yCPIrFST9v9ORi4oYLmwCLD1HfAn84AXCncf9cwPaD3/m82nmb7Av/mf
9BhrJizVge5cteW3ixiJ6aSC2+W9isNVlzq+IFeuBUHB70LzEJ8JyofTWSa1nhEKbeWfBoPtjks6
lp9mHartgmedHXjeir8agje3DjEGRB4/wFi3RPYpLX/DvgUmCoqfxSgT2BubsaQWHUtZldAQCxJI
mG3zap+hTqptVGcR/H4hJrht+Oma17DNUvlgxKTIZ5ycJw/2jpqh+/OGjao8aT5GbJXWZkINngIk
kxxJ5VgQ6p6FnNXvyNzcQ9LY30vUIehjN2Lc/TKIzCCT9ZM0/aPUAsmMoi7H8sD5PcLgLuxSiADx
0/+sJq7HeZ+TL8c4d4BdQhTTeItkexKwJvnO7aluOIqvx/T4FmCU2pjy9KqH1FuCzwQDfbMVsnfV
M9+Mh6tMYaG47uhXImiZFX/DGoHMDcfBHjz3MIlzvl4gGidvw4YZHVOtFI0ULBm6Sq6qyCq7nDab
8trnGlCjXIH2s3hFwc4pLOnx17JVdsXi+iaQyvRYXcL5wFZls/MURv5KERWTeLOZlTEgx8Ylj1Xh
mbM3hbLbF5hJqc37sydfe+kf8wets9bAbKdWUZ2aeR0ZW77Vs8Fgyif5cyWW0H6K94H+z7rT85K3
7NndQT4bcMzeQjKIXzdJMdNotc+zFTDTgw3nT34uEd690zkPMwcEjvfoknYMyO973+Tl3AFMcr6y
N1MlvapJMd7PEbACwVU9uKRDeMfLwLbeCDox49UkoFHPHTL8wvwIHkEvt8ZEOFH3R80XYIAXewWv
MmJ0R97MSDMxYKPOLYfYX32sys8xHxZq1bNICs1Bz+Qn93uQEKm6y943iHmXbwJwIxRTLsigiDUG
jj+AqIWt0q6kR+YwPAk1jCwchqlrbLIPzcig8W8lNJ3UPTvpYCu9b0K2MefU84a/HixUU8rljqNY
aa3JEf9vArjVN+wCjxP+bz/05VjlnJvJier41TwU9TBtfG1By69op6Zhc2Tl68gtJc4MizB7SzzW
OGGSHoZI3sVv+nq6CpXRzJJQtZOU9KUgR4G3kiqEVMjA/e4fLgUbxaDPnO1PG8Cu5aFB4bxP/v+K
JmB8HZPg5RNwJn9lJjEhidSJb+5RmZXKqTZlyp67R9lotIgE0VRj3zM0KpTmucspStWUw1/WlyUR
fQKQTKCIrOxgXhK3+MTtzf+jwzUCpLj3k4eSNI/IfB/aRuFyZkAEHa4eV835AWJLMufDgrvPL1hs
CULiJP/yDoT1nz/exqcjF7Ivu0C0UmmemY/IoJq/dDxNYqeSeF5QCw4iD98gg30f1wOnpwskGZsu
Ui1oYtBtHOTE7yjLdma7RarXyz9Xcp5sNoC8tbBmTIYFr0Ra88oWrrV6SZMDMMTwJp/pBpz9ZDN3
k+ZZrVIbKPRBeeq/Zf3lZZxMhQw/LTqFI+I+RdGU8vqJVZLtuN4+abCcBs7f2oPAxlXBKAe7fN49
J5L2in5Fm3z97787wjVxyT6XJk9+Nc+9jjiHeRVNjNSXMdMKYq3Qwgem+BKI+SAT34tChinybQdD
XdjAXC22sOMeO33fSFhsbcAi7kXAzs+ApkJz4UMbCDFbBntOn368E2hQSNDfIbnEONESHRCFKIZk
BxTFvzdNO12wCiDDxHLkM0+ssoxqVa8ko7Tp6eJII0zzoDEGgjecwo2dGppCLAZVLjAkH+lZIxb0
sizx8vnFFWrVT5LnN6bywrKyr184yBET+MzdIsjWiGO/qffm/IPdMOsPaQ+F4wVtFhVaDfwSRKOB
c/+yT4zZdPwm0Ko/5ZK0XcvkXd512KhhpQ5DhGPs7XSVcd3V5tmHUBo5V1BHbr5i4636uTmr+xh2
Nar3syaifNYQ6xOfgoTGN/h5PeEEq7ffcZwK20Sx1vZLXzsdnZyRcYgJRMTaSfYoMleqLcqcT9Ff
FDQMLZpNsCXx25olWhyd5mThPLdY4ZjVa8b/TN2kVTPgPr/L7h5qRHxrpNt7iubIHt6gUK8Zdi6l
W9AuDXhaf4eG5F1o0oOLZTsudPScNmMB8vqseShzJS/ajPWxStQ5uJdNWHM7n6P2VY0UHm/0HW8k
CpUngCWWz0bPKg5oS0Q1q2IqzpF735XrMgXU2VHqfU6LkNW3pT9U4woIRdzZeQssGVxd7pCcZeIy
X1JNcgx8eKnfMpTMHTLYy05sd4b4Pz8ZqGFfjKq5xGNvKX7ru9+OIiCzmihhB0UZXTI5SphsvA4Y
anHWmlfmMCx7+u5+PtuJImHwzQpyAgM6hjPCh7JczwaoVmlJRJKub9FLcgfzlk+RYBpSWIU58JMs
qQqld9AwZUCkplQaAmz94NO/uihX8FNnaARfixJR+xS/YNHqAwTcj9RNYRmGLoEgblWild+EH84F
zAhv33Tp9voTyaeaVau/kQoRwDGFwe1cd5SDC0zQANF3v0CHeKinwrCTAfSJxuJUR7iADkdxHavO
ioBRQ5+7azBXYpN90tf97Vi5fKFL/z4p+qRvG7T35ENZTUzjAkLtXgo+2vKRt+Ao5MtHHSAqDDWE
rzWmdIeHp5jqQGKHTaCLGaaK/dIAGDoyCc6LO3t5waDEEImceMCg5lrMQdGSftl4nQ7u6m4ESDss
mZdqe3RJYWzE+U3lJP1KkgcM6BtJPc2QB9ISFfakWG1innAjX6pz6YRKsHnwZFo3BSu0Q422QBRv
q5CWrKzRUG04LXaiDWtRJQ5Meroc5aT5Y5AW8qOOnr2eIISjQN99+eE2L4LiOzQsav8qJco7JJ+N
R+7dnwgAnudIXqpuaa66FEwkS8uZgrMhjZR3qQv8J4SANbj79sf2jKuZNOwd0HwOTZdY1jj1lIWG
jGKXZQltiVfyjKaw3DFd1RtgnFLo9wRpFcE5YG1Amu7RTkwKj5fmOiMg+eD/MItDdMZ2Xoojue2w
l3VQ6vw0IfqJSMnOK04FQTwBy9gWuOcpO0bh7wxI8d0M4t5lGnBr+z6hcwAUtoI8JE55bAc/RApz
cL7JXpnaWaToqwIeYFhzaXA0Mg5OjsicWhNctLCbarbaJp/PpTxTr93z4nQgFtYMKve0CqC9Ut5t
2rKQvhX+N3VgKc9Xaq8dvjybzgfZyz5CxL16Zjr65ohqU77ZsWyMNvfHO6kAx8bh1TIJ29TkZutU
jw0VN+a38CNQFivqPiFe095J0yjJBJ43nuTu6b1SE2KbOlLYWfKbK43rbOhDBbxKUFSWgTYBBkAM
m77LFiXFrVIrRX222EorYHlvvyRDEsjOPLdU6dVEK/FMUAFt7XsauXDQsFQYl0Wr/LYlWjrTAyYt
1g4glfHHhaqLs98E03JuVJpL20HLFG+rpcsu+mMxq73vul6sPZ0l+nf5qU+BSFD9Clk6h1y//Aws
xDrwQ9y9ShpI9bItbWm0R4eoLab00BHEuP0afO8RRkyn78Sy6IdF8Xjff4Meu+bd0b4LfzMaZAqS
Yerw8JekQPBvVzl/UrW7k7QiPVFfGRVZr9oOQY13M2ROj4Qsrxlf9MetfPyEOgdoxjUr2q7kZUlB
udHBDnvmVewPJVTW3+vnUJP2rAtSQbylUBKA7lp3GDK6jC65LqjEbWa41Gl4skFyLRZj4JFNRTmA
wNeefdQB6ZfOlG/IBf5awq2F270furp1+3zrmZ/e0wZo+WC5Uz+7m3JqHr7ubjz4O2444F5Oc/Kg
SgBXwMLs2O2iscx7+XA0yCPT3xl/v1Cs1U4UGLTjCbNHquPTu5ducZ8RR8QrIswMjUQ5vh3Sw/Kb
o8onMhTGk1NuHTIeqKohLjbIc1iJkY6UoJlARoqVNcwit/VeYnORNWLm5joxrmkOQ7Q9Qv9X88vj
VTvAKzbbE/kJB/+Isp77/ReZyY2qGVrcBCqwyRrWv0r58zmfxTyoX53y+E92urpoSRny9GZCZDda
SI71iilXvqLiVl0kHTrkjsS2ziq3HFOp9LPPzrzrpoMKxkPItdCn/nVbV+86oBNH3S+c+IDdWI8h
zuywyNFmZ3gEGCyakh9Im8pJY8pEXozNQf8wvokEwVBoZG2NF+woqpy3o017kxWoKanA8IpUblg/
E63OArYjBOL4632DVbwZl9GqB/BC5kbrBQ9VfmdVilJN901rvyFvXgge4syAlk45Y2p3G3y1iYi+
HGGXWKxR+CIEvOgh7yjj1UnQkBbSRtHebPdKcYvnccNx1G34TSdQR0KbrBbowExWmdG7j8LpVJzK
A5eTFbbtYrEyNQ2/eLItWBOzZmdL/PRGyJnClQXbM9EPWVO6AF/SMVSdxQJI4+fv9hqhqBILU3HF
cHEW0axV31Sc0fflKbKlHKiVwvqpXsRUwh4s4Rjpsix9Iw6LFL6tHKWdCnqaeifqak58gbEcCKY0
uZys7wStBGdkqt/YJz0K5Ff5crh0LssOZIimwLIN/O2Mgm9tY/0aZMlBmqVuMz6rB7C+xMpCTL/B
TP74qebFyWk2BHEjxk0l7In+2S2iBZC3NDEOhfLOlBN8Itlbex/lZW273sWovyoyKBKJ2wVRE4jq
DyIpj7QhI54ksJ6tFhXCEGNEj0uoAWYvbOueL7IirJPGp6Y1FOx+LCEtBk1KSnHig+oNr1MAAFSX
7k6rz0pgXIjt0puuvOR4B8Gp3Z98djl7ZGNKyiKWF93IwpjDDfM1HGp1U2VbjAyWyJltKWPix+tL
o7GPOYyZEcwVrbWYzAw1K7jgTf+qGC9sj/Sdbj+1TqHATOENLCmGkBMq4S7jh/8m3ZqSsLFpkIxZ
TJRBEYUg+DZKfT3e8aE8Fm9vTiBvBBRahoLpWB3yToNB44Be0JbFMYSef+fCnunbgp3CprI5LUzS
4kjEwOjuFkjKJuO2ypR09TxKUEd3fjqBkpBKzbXMke6yaAozDvGtEBXrB0Xulgjafz0mxyeZODfE
IYUdFmwo5xTbFK9h049lJ5xSFPDkkLTRgIlO6hib91tfiZXM8mq3sw0vSo6zPOXrGybewoRv9oB4
Gv66gS5JtWb1SP+rqzDbf0OQC+FOdcAiuP7CFYTVaj5I8Ym4/xVpAJjOPaWgV3IhDY43PuN8IRnX
jCgoji5//Mzu+X723txkyIdJaeEmPznaS5xUH8JnAn9Ap83XeDODMFRolYuwkmJWS2xs4JD9w1Xa
53VUrEXE+8d9lSBDpfKVq7D69i+c2NXNf54BI2rInbpt1J3VCA4nEEaUhfwjfCr2DNhALpce5iIm
MMISzdz8kJHpaIhVxMPwV6SMlBc7R4wwgAGYlcfuqeXEWn7flu1CLRbmkFQMmPoMGZuMMt9VfBTs
YYUDKtxDapFsXktClXjJovfl+qXNpAhjGuw7sQzGrCQMFVtuPT2T/EtE2w+bysbnCLsbznEVTwfs
5LQzsQ9CyCKRzder5wJtTpAiM7RH3GKahAHhkGB1g1Ci27T61ChHfPDVy63IB4L/bMivI15EbavQ
9VguxxiwXjKQk3WmocaTH/t7RFSwBndN56Q0RI3UPCrD1Hi1Np9/E7rfAd/2JuhXSXQ4qFIPbYAl
KCieQW7ysxsyTzQUTQv0MXdP0NicUPDhXd5rmEq9o8mT2iFRU6ph1whyYeyHJn0rtZzLdeRG8C21
p9ncG5tUYcPn9SjxNf311NDOsx2cHOvBkJ85nHBL8YajjrWNmiFcnVgMJzD8V9hpCOLwPH//PxZA
+AtynqKrSb4X5jgc1bmgfufuC7OXpI4mcaOcc3fCQwAVjmYWCGSGXBCV5xYwNDKFpxU1wiQlybPI
dysHWf9FxCa3/UrvQWq5ktNS5dUYxN9Vqp7jD28lQL52F/y3qP3m4S4rOvH10OMaMg++eftbiWGb
x3T5RN3OsxCLC0cTPUVzK0TFPQ/6bBuasGd2m+NLExYvCEutU4qgevnGg+bYNenKiqa+OJrh5P3Y
G9s4LmR1szzxJ2DKtLSb6bAE15t6L0vXCjR7QI8SSQEann6Vw1n66Fg5UB6NgqeKKHEDUOefBRPB
EZdWgCdOjLaySaGG2H9jhLWaSUS5EzWt2r5HETOLFZvegGC5M+ezJtZ7it/DDdGHMvZrhxwDR1Up
jHHd3M1eG+hy4uEaA1Tet1WPEI+SEoo/M58lhQeykEYnZvGVY0jZ9Y/iCZZusNcgbTbh+aHvlELR
ylkaC/7Uf4wdpRiocXpFyJnNCD+0TD+lpouLK4MJBjBEDTjBkCtRS2TPDDJqWw9eQ/7tHnxkUhb8
3RzAhxZSjlaMKfLzzGx679CCiWZ0hfyorX/vT3F+6ES5YAeNWMQy+eX/2A9yrR6CrX85Mrbj1hiz
tBXPmpeMx2SI0gTiHlsKT+u7x3XojgPDmV+RxbYs9U6R6dn7iDjQ8IQw0nZaEjGb9J8DxpFfCFPA
gSiYBg7EAD7GxtQFmHKyqukTaYf7aF3p4v4+BXQmXJXk9+vLqzMgYh1w/LBYLzciPjjjRja3MeMY
jNn8CNqBrxFzdTWnL2ZMB5q4+c47N9Q6s4bzNNvK6nCRThCSOJFaJH1/XxstwQ7YY4Mabt5/hjIN
cO8SZn4Xv5mG2K93FtV8Wht8cxOV+uII4NHGNlPN6AWrQUXOIgyhZSN2xK59athcxhgVWMPylQp3
GEFCSVTXGJq0fLyQCog5sQnUN8l9LkdNsAlhT6ULJEMvLwyFveONJqtBs88+JEvcHfMVRgKuBCLI
suuToztBv4ZA2zg6MZuXnvsgfp2pEaCAr+F2jMlsfejz7rlCYpCSMSdXMX19ZR+Fx4muYxLcm4XI
K2H8qJNGUIHW5PhSMqG5dIuNq6nU1+isRTkS+1OeyBd0PfmiE8w/Po5CbeNTVOqLR80b99l43dKw
njwJ/NE+NAUlNO1bQo4L+xtgN2phVes8j+HMUwu9HtrwsBxkC2dSk0Bxs6SzWuU5iEVkLuljXGif
cJnqsgaUjM8FZ+W3IOt42glXR5HTnxYAaMVTGC6hJOWbt5XegSEQ0QpN+L6caz1RFvk8mqtGsoWD
fUcnvxGEiWUE+CbhdcygDsCAWcTFQ1u9IKIwmvRfaTr0W9hV5gw9icBwkeu1s/IPWkK8DMf1WDxP
2MT/xoZBbFI1XzMIKNrIVA8S5Cd+m2u1zUd9xBtRfRh8tDw/mO2rs/4LSJYgeyDlMM0pd6RZy1wX
41uyNbd85/f6wiQcYp5zjrBLBuK1k9jAJ2jHYcNHRMp/ZYW+PH/P4vUjcSYPBSVCuw5JCLcualuE
xK8kJ5ELTMss8MufcWi7tmqTw52AzpNGCFgtt1eUugkkdimfSGkSXmOMKRucR0cc0uy4ehqMjKDl
Ej2Wj8ozo2rAA4is6fRPj5HFc9KW3B4JSoG9gsovLoJ4G2EWD3vUghmwTABT0x3qLB0aMil9l5Mu
/kh/DbARdtHUHOqseHGfZk+VxwkLDWcQ060/lC65WFRwPpreeYdN8qo9ygjQUUp8dwdLwqrFvuj/
frWTJXspyPKJKTQJWKERNyQ/s2q6PcoYE2eNXtyNEKpDE286xGct+xwyHLTmr5H1rN9+GDJVcBp8
g36bBoTSIt9AiIHGkh+ZuZpWA/t0+Eo87Kox6ysYBEvsUuMp+KFCZQeHfxeZcxK2y18Ilebk7c6x
o8yULsJ6jJRGmNhYLfmzx8qX/O1OaOKLYCxyBjotfIehKVa+4JNPhPmdXS+rPT+k6qdiSh/OcyOZ
D5vkXsiXd11H7OVKg8eTL6z434gt+7KrEXfLrMLmgHDuJ5iQpxd5JEzaHve/qtEy0QeKoVD8/a5l
TfyWoPKB6iaNC5Js2YHuMwBHgHf9jZQ3DqESNbQM3QIMNvxyEihOLHiOUq5TnDd9a+jnXGdS+KXv
VD5JEM+UV31P8RdG/nFg+CFeH+YlPlN8vOTpyc4EdX7XOCpLyE3Rm+ZKJmJ7VY83Dv+fv/am5xPu
n3hTKRgdPORCFYqVxPq9UCsaCRwYLLtjyR3UNTWpObeYQF6FlitbF5tp6Zgg+kpSzxZhe+m6XiAN
P0ngjZm/3WsGQVeTAPXroJ97wqamO9pHeLTi7WPbVC5NB9zbmxaZkpM+moHBDKEDp3XXSUNMMsrQ
J5PSoD5QY3MdEnCtu3vF/qBMt9EwGVVI45HvoqJck1c7UXcsGsARjVkjdAgy33U3gvk1sT5sQnif
WzxipghGt4eRV8Gx4Sz/aAZHpM7wqcfvuYWXcPEkVGGGw/GBCd4thFMWVIOm+edQmMxIKLRtJcOX
FXvXQNtlGlzpNfWNWl/Rm10T5lQuSa8A0oFqpUtcgLsw9ORvwq/V1SRUDvI6vJp0mqwCEGQlNJqR
3gpTGFDdJ67z/3EXGX/K0ORmG8vxIvAxEy9cGD68u5NnTcegaS6+0MTXqiD+LS0Wm/oSA+uXKBP0
ViVytIhsv8yFbm36aa3KsTrqF/30WTVMzaUEblqFbF8OZfsBNg2b8UyRlgQOfyDA9QxNOLdKD/o5
IYLV7097Dql9thxIHUpFlXtGl/J8VV1CQ1xISyTEKxC+rzXF/qLz5nfjp7qUECvkYZP2HyR4jQMw
oZC8qzDGWg7OA05/WkglAXuO78JsYODv2POkEzfgHRLtDrnt4018vfhWN2AaPd079MsDkZyJ1YAi
EUe49LW2nYhD75YcDRiLDOxGA/MyaI24HK/l3w/lgVLV6bSctXkoOQTS7nCxUFo/ahA684AChPuy
3UgozNBuM6bhrpn7U5C5PN+CwVJamRPM/b2aS9139f7q4PsuulWmQu33Sbc8HaP68seQt85gAl5R
KwU8fpKp4LSstEfqYoZrc7jjIZxdTKYdym5T6T2w5Q9Y0O6e1BAUS/C0mtmCftdBMxNpThVmbN2Y
HtMIonye2AzBJI+rjMR9znoLQZEHnzQBh/TdLl3Dq+GVdBAPs+zKYQr8j4T02mED/6Q5ay3yjwZC
R9xh5UnsVhaysiDEKDT5BNGAV49mvlmWe4GOtcRKPsLBALNjcIlSzJbdemzMg5LimycBxVOH760b
atrdk5Kx4aYbHuVrGYicolj+8xdKNcghrKDGoudQLcS9lQJHkJHwdJsrHR5SXNv3kXu7gFBUQIKD
mu8UQoy5/OCX23uC2wKCTJxZZwP2BSp1JC116r83/IvlC26nX7qdrzwJxJUZ1Ti0VPCCAJaZjXdY
BwbV4bPAIX63gUIPlTsteeoKs+MZh2QYriSawX+gAdWw0CnNSynlq2lAYPga6/zkUTkEx80EtOxh
wPquauJPQqGJ8WcCeXf64eB4dKMMgR8AXObbNgBcghc1Hm+kv1emQYLfECm3H4o0Vh+5li6NyURz
s+GqBkLH9KCaetw4xyq4I6G8RV4bWBKNRGskREwqAwb0jByPtySgXVuoPeKp9fopbJ6fLcxIChUf
Da0RUH+nBICBqJiGCvfomZZaHRzT4miuRgrgcYJ4iaGgKiqKDqWsB5gC14NVrl06VmZqkWHBDgWk
g/fbJ9zPx4FhUDt7ax+obKR3sYLYn7H7x1vVytB2GVdu2APO7B/RYvyT6IgP7858D8moTNkK5Fzo
O3i0PdhdSWyRPtlW5IEzBq0nrZ6lo1YOyg3Nm/Xp4xFb2Ox9YlaP4f5FVlXhH/eQJYKPAVpDPqNW
b5B5pIEzf7+e1iwbf5qsDdeNprw7kiuubBOhhmkW4io30X/aNHyXiQ8A2FjROiYTECjP9FWhAUvF
WANS8U8K7WXrF6tx32NHGCuMVboKOr/sSGN3jW9jAiGqMl5oHo2oCrk+bNhrXm3R4OSDYgETuRHJ
L3iDnuMAKkYUJZj7VGI6bYp4FJd4+P0gy9qijEAHFelqScyjRHF0MwNUhEZd76zgJ/In3d1Pk5SZ
CKCd7jkrfvnwkbX4E1HWhzo92FT9iLOmISoP5bPYHyQBtr+QZP5kDqv0E2So8fieDAvfIGoIREui
reaAi33BucYi4LVmgyP5Ns+lnc0px6quH/OqE7bzJm7rWgaL6z8kxEsKTwMXoh4ofX7zXniuavkN
tGl42gvYHUfwMIUI2z52yEPiakWQAi2j/CiVbTdOg83dbXbWSHBP8zwVWklvXMEman+gTxwLhWDt
rO0LN5MkFaqPGCMbsmcV0uUaCMzfLPOiVCQtw/pV5H7VeLLV1yuEhSfRBZQ24kqsrib8Wjb14MDS
YExQh6FL9zz/4ILUCRQyhvkjW1iyld2Z9ec4pxu5JZVu6L4foWRmhMOflcOV08CedhJXF8MRYFiB
GZVSwgo8a+C3DKXKVgLcnIJxm7zHyWv7YVcF7g/vxXQihxX8xgjstaYKDp7vChYvghLXrNyee+G2
TntNHycRqwZUd+c56rVOKwwjcRmetjL5dSWGPkqPKInrw/R2/qOUfiWFnzkEnOe6ctGq4lQ6F6NO
XNRGnABZEThutylnIdg6HylU+b66tCk0tIpb3AiRCLsjpsmlw+AbNgdfU5GMMhSetT/io6nBWkqo
24xRzAQ/zViJvX/Nc4AgXxQy+5PeIWF+o1m9oDUneCz5pIsBalrckkFEBVpAQyrBid4u32OA0GRP
LQ8fZKgpBgVVf7RGSRZcFoQPTh6OYLiS145T4E5bgK6RwshUXnBMD02v00swH4ZnHHPBSOdd8V8L
ooBqZWKopUh1z6AzO2UBdL8m9gedC2NAsdrW5LkaZrwSoMUmURGsyuKCrMbBIJIur21bNLW3Qhbf
flFblSXkF78KC/2asgRE1wl4Qz9zPR9wCSL8RLIzk7FGBq7UBorid+HGgNRNWITelC1TcBYOdK04
9o2VFHejHkEZZV3hrFI/PH/NqEeN1oiR+Uoyn5f4qOcI1PQrBgZ7S0p8LKJajU5DRdP3TVukUEGl
MQOYEOaGteoniVW7TQoP6qumvBorGYvGuDcg3zHN0YIbjXbFug2ALF3gRK/QxtlFeLWeO/+ST+Fl
xVaLWDJdMeRHX5SysB9H758LOyJOPPDzQPcp4PigZNjgWcfLlNrEjERyZDScaYi64M9mEMsbgvj2
pX+a1PTQOs2k7oT6oqaIR9jgV8XBC/vDs3gx03FA28yhddIMaa+aExR8wnZAXNObqllgcywrp9DB
V4BWxcWP1F9c7RgGR5zecjGfaMwnSXuDbXmE7mwlPYI2VxRDhO7BPHlGslG/eXAQtOmZ91CJaBku
h++ZNYo+1ChH9xTPsTMyHHKi+7Wd5RvadCbNh4vXqS4OX52RAbazTYLRK1NMZhwPZNli1jdpSwXn
3WpwW2V/nC1PU0czdBCVh+8LIdy8Mn3aOsdYINFLzSLEieXPJiq08CYGZCJLBHEc2xbDDmS0uuTa
716U+w+sw+ZxebpYd+qTehv+YogCE6LYy8gjOm86Jo8Fm07xdoyKvOWv//vR97JJCdFLWObQOa5W
eZ617dhdG3xmFE202XYFv9Wi5E6LErC9VQ8gd+9GNFRi4qRe/t75rYxNzhVsz8zPrP51SR5bPVzY
v4SQCRj7BoWQ1s+SYzZDvdVJONPITPaVWhn6tpERBssV0ZJiXJXZwZf1336/yUXQJL3eSPDxGfM6
1afDt3bmRSO0QsgNdgll7vqiVi5Pi4ZqwCcNO4jwxr3oNU14A4iEl7Ze6Clt+J1JsIIzKYZq5/kL
xlsOQmsCi/ctYi+mdFoRzRKrBwR/yGwlIWJvb4JvLsiyGcc6lQPCJx5JQ/jE/85rNhg7LZ1uSLXv
3pdZqz4rQ17AvkOwokeGPrffZaAm/+bHm5N2aIFINSmtW7PAxcyn9vmYSVzhLeCYZb5yeMt3B6pP
nbTvVr0ys6qGvRlBPBOOPgpXJa1qodl7ExD+kGmTpNhI5ENcgRpR61JR1b+SkSi2YhAgg/8mQOuQ
aGXx7gWawI5m4EBv+2I4g8L4/UumaKuHF/mGcH9d6qJK5Tnk7vh93BHlYwuHk0pTNNT/+ff2W0V1
q1XQOqMua7wipIxrnFCLr6wrlfcnGuJFQzzeP2a65iKYAHwpzoa5iz9B5rIxyHpeEkdx/iFxC0QF
XPBIHBXZhzaGMy2icaAwg+qPfqTPET1H0hLjRHY3eiPF86ryUAFMIZ3a9NM6orajsLo2ZkL90P3K
kV2N1V4QdavqG4RUOUgNcvtSRTrDsc2ZcpYVRl8bz100lmjCw8VB8/NKpzaBEXlVvs3FtGGUCrrv
61bdoNnXmdU3PFVte71WBuxBMDyVEwphD4MPi8Lv7Fenc8ZHvO/YfU/fCPyjnHokD2ChhJNp+y95
zuXKCmvTDWDO2LR0y7SSiekzP+aNuZUb6t8kGa2L/bA/qCnSgfxTzP3Az+yLFlEQGkKc27uT65SL
hsT7uPj/wU0c8uzFOPvUXkB+QRX+3yf9pe8IFqRJotMmIuE+smkeGVM8FFYPtCMx+VJehG9l91Be
paMdzs202U4/9i4jVktwL/LgZ7tTgrQgBm1J1BMN3VL2LNbqI7nzB1nq8RcKC02SprCHXwZ/8rKN
i0hOVPwh1KJxz4lDCR356NGqo8XMeWY8LqE725I4r2mi0o//fiXhloBoVghHnHqy5amSWKvb9IFO
iZuMfHUUpp1fvvwvPkVqEGESgHdIjoTKr+VPMmzLvgp5NNF4gYEjXFiCHSvzzd7AJGakORth4YtZ
qpArsHszyYVIlly3l58POZGKPiQOy2PShVWjMn1uWGlVOazHwt/+bwAesNI8HRIdokgCQn02lj4z
wuE/gmpXtlcmfgbl8N7RoXvCSEqILwTUOBCGOpUn63APuacP+sFfOKMeOQbDkX66IqajZ58s7QfM
yR4aGE6OPTHYB55XWCdXHV897xEViLs0a5EyFiff4+KLQwrBEpxYMNIHW8xWtH2LKRq2GXcjvBSL
VuYYBTrvinnTLQCKU4cv6YuJc6HP8X9CyAxBQUaoc4Mu+vGC40hIBHu3ttVJD6c95ACqH/OgAk+H
EDzJL5gq8HNCdMARiFQxkEDhHwnv6EDvUf5pKXBkC9XB8JXAYDOOWCqhmTWhvZvQME5T/zoQ82oB
a2SEYus7S34tma15CCQlOKYkXEylMbB+kCOonSaeEhVy+FlUAs/9hc0lEQQegfnUQ6infBaYrxf6
qIIFMnqK3Ww0uBiZq2XqHeb7o7fNE0AR4qjUbd9R/TCTXpD15al4R44z6X+FMtucys5jbZKHrW5x
6FqFtDyWW87X4gJ4pRbowrI5ASf6GX0vuWPbW6O0gJ3k6OitsW8YU4gYFdGFMOrdvHqqBFuBby0h
JoX86e8QXcVgFjEblT/WLffOQi9qMySljlppifHiz0PP/FDtWD6zzWXgaKyQ+pCMwP5/ZLCejAjW
qYhxzNPRLMp42hgWNLLn1Lo/8ze+ivvTPoiSp5aQ0iBUAnUZBt8/tiKPIvJkfMw73GUbrv5e4EXA
g535LCEyvJ4LABWuCHdV6AUDAISlEj4Trd7TAa69NFYlZNuESp/DzbdRszKAPpxijakHQlUmuqcW
SE5kA1R0tEKJIvByuEzBIrqs1QqduFMeRX6mQULTs3rgxkfM3J02dPi2ywXgi4oQ7rDJLjY0q5PI
xA88PRCAJQhpuaHD4oKvWPbYnz5FddWVZ/oiRWE1P9Aoqf/ineS/wFZpYHv2rtwlO85nOWaBjnw5
AUulHUB8WNlthE4XSc7n1SYkhYlKPSfRskA5tVaFhRMWHD7eF2oW/pAnCMi5Nfs5z4ptG/WhteB2
GK29RLUS9GKK7Ty/C1sCMxUVHqaKLDkDpwU8IlSn7UM2ohp87TJJ4oMdaoe5NZOQVvkmwGXBAV6F
geJ1i8tweHXBEqHJinnrVIUytZDRhevOzh7I5GZCuZxZHyTHyDyboosrsd0AJ11iJjCijLhas9nF
zYs+1ZhUVGni5XZ021VPABONKe4bBDxohv1bXg08WPbcxTFZREZNbpjqe3NSNPNo+93ezU3aMekq
lu/f5rXPUpY6To/O7d+vw4xDWT7W9jPfy5XlmP4+qE7Rv1tHAVHx2o3FHLpcZm6HpIIgg/0F2fM/
OTAmBJqDaAa1C3LkbM9QKb1BImZOspm5PsRRh6NNTEEfBeJECZ5TW/uPWsI0KJiaWjgTlYuic2zF
E+ZL1FdwMmlP/6dfyuXowP+s/t3WK7mhnNTlPtERqHflcz3WIcAFA4QokJsYmKEc6XlBXT2UwEhG
UNtxFSZ3DtNwOWhmCfPp4j+zd18l2MQxZ4ElMH4jB4KqKOlTccNDYvPc9L3tY+Q00Fsih3rlACuj
DK3qFYsXtOQFm9AbIdTEi/Ss0rGupWc3zGrHahv07sabSopJq3nZJS4yu2ipntHTyBUqzq4IPKJn
VHqJtSOhgCmadNPoiDE+WL0e29Vj99J4urkQjGq6vZeCC5oYN08wjZ5V/WRjs4cWH3IVbkUR4n3/
maJZFar8dHCeFbF1wVzD3ljNk6PGIViuU3pjPyjfi1ih1cQW2sjaeq7SsVZ5xFwWK7xB8WXYiPhE
AP9wfFilHQFU9f4++ipsyM1AVKBa9P2xb/ZmG5OKmfFn5LCtUTHdhN5Zt260PJ875EfrNtnElw2A
uHckOPtRDwe/8RQq1ieBUYMdsQ+Uw0vMGEIRJ0pMFueE2cSolX5WhO/ekuqDgPh5/dCYudJDV4cY
GjiIvF0245AeTXtulzTpuIpr3A6xFTGzUK9FEdpMzzlIxpx6/9qPdp5Di8mAXSXFFy+81eMT5CDc
ImN9a47J4Ens7yfMIpqCiJr1mb1Cf309O2fqda6qrZDKBFDclNr9Ep3LXLlz9kr9469uIOdOI4eb
7kWH/OloBA6JKKE8WW4HTFaGKrqMWa/I5AbXVeFB+H/miIh6N6ZuTVA6Lkpz4wTS7sn3q8qhSWk1
6qu5WyedXGWw/8vebJZ77E4drXzO7JaFv7Ts+7BH27vrEoUZjkGJ4CWrL5lYHBAHGkMCjZ/bRF7f
Tz06nln5jexkNW8WtJ1wk/z25wI6pQ0bRfLql0QHdfMYBq4XRuWoSD8fKIzS0JBSSFhUvCF28+Bs
DuSn6ESt9z+/wiys/GUxe6xChYtywq2w+3KhD2r7j+DfRfBwukA7PYnfMXJw5lsD4IupjDqcQj13
uATnauqt1MldlvxBNBiKyQMGynRX2Px0v3AUAzvj7VHeN3riJyvBYlJSDamZJ0HZIckR6/e7AGWQ
T9A5ZUDCaeIiMyee8MqexCUaDNLZ7fByBLCnZskVChmUqrttCOgaFkbBvJ/BRJntzuknNb1pHBZC
nXUxuccphhNB+ONMB93lkPIVAhAxpbvrIh32/snrJl7FgqR1OoxSBLPWdi/pVeni1EH3+HyoP18/
dZeajUmiOyvqWgP2oFd3qwtd4KhXaEvMQ+60qhk+VZbaAkWvYv2gCcrUN8a/3zME/k58BE8Xd65J
ZJNmxvVAqqt6X2hs/kprVHODKKqod7mPJf3S8bOzSQl9ddkVa3ml8yJaJNf97BbumbZuxNm0cYSv
JHXVQkXvgYJ6zOZN9cOk3jTGDjEwUi1OaPQHHdVEiFeLbGpbjTCkWRHw2r1KlKLcg0utrt6fQX5l
uGe55E0ASZSrA/R6HYSp8cOiVdf9weuq31ORrALGXrwJ9pKYUC1IVzpmFGBXIM822nT8m9OWFp2G
QI6Gx90HG3itvyTLyfpfyL5zlRoik252NnXwnQYwzKfjh4SxgOjDsaajeg29C8tMcl2VGQS2350P
vrtHcvV/1e638vQB4XiBMel5hbursmcn3WeiWG3ADXvqE/tExao6QJwGG6cObfz+fDVnoR+KnuAh
d2tD13Eed6hSTmHKaczghpO36kBL5LIjMu3feRmchca5aRBRoAKho2uJy1ND2LkvPbhsm3JNRGEv
Z81WeVm+xX3xfJA+0Ow2UG+9rRSXnEpgIlhQV9t47uAmLKw4qj0yTfUV6QkLDYAZKD2V2v+6N3V9
5Cgj0G9uCrVhHeFnZ2uszNronw73pd9gsBC0eCBTTFB5yw4b7qlZj4DKvoD3Gh7wR9xiS42us9oO
RcWw9bRAAdnjvfV+aopPYt3GTAG53vOOdpFQX5dVmNT3dFvjQBM4zk4DQmPYNY39Ofe4f06rAzx7
IzEG5MvAclM4XN5daJfvIZ11xgF2hIN5Q+qXKSF9r+dOT2RezKny2gOtyJKWfhpQTWyRHrFmEBIL
PgpJVa6+ATa4HHW7/5S/TWbYGxLHQDX/YQFY+Q4HTvHPxxGMd95rviKW5Ei74BGThiC/sd5P/BwY
FgFPp2VxO344VghD/iSOIZ8bDDZiqQJND3FNTmSiHzAJZHQvoPo6CMIFgXwva5WCliy5AOGq5f88
X7gPrEKVVzTJobWNW2mF8FcX3G61b8i3+V8PcMjK73lAAUIOnAPy+U4M4GByWMhVVysguv4BioiE
0sXAb29fCFCDduUVYryu88LT7kVt6UqH1uS4FkvlGU+vJPv9xbLl6ga7AQcyrVFcpGHufLrSR0R9
hXcSJJ7OvPV/dK7P0cMWlpacp+EC/xvKC+NajMaEoPwv2+xJ/YAXL5FmNHrGqgnyjw6TMlJIcC4d
MebHEI6F+Y/ZFEV6/mBQ+HOBqDOefygR3NQ1XaEBfbBtq3clPXNPPTRYTYbE+5i84SaYk0bkvHwm
5lFCPUbEYj8QS3SKMv44asX6vNOZaK8K1wpJEkFbDcA1JdYeK157Ha21ffWCy0cN7BXKw+SdbDau
BhENfNLogNnsRic1qqVY811nDt7kSI4OzJvBqRG/FAf5zDlGKmsRVAEZHWjEPqqAXxd3yFdpJ34B
5B86gJPEmx+YWmQnxg0266Q162Ny5EzzxrGBW9Y/kUtevIvVph6daS+KEFi/okAESjiOfbvfMQpJ
yEr+gMoIBu9HDppwUajYOBge4F+2n1UE5ovxELtUe+2aYMxJLX5DQ097mA/tL/E5h/P+k8GQcwGX
X1JyDwQuphcltFKd+ZlzpOCJZWaQRIu/eIuDN5RZao4Gn2X/SNpALw+YoM+Ae2ZnErlG3oUkdEbl
xGUlEVYMw2sMbhBntIAFwJyqAhL0kmLi8BRRR6QP4ns1gk7aMADRzkUo8bM8sFsLdIPYXi8966hh
t81E6XkW0Qzt1N04qxs/9ABeZAQs0Ox7khO3HJkjmqKq4AV1iPI3ZThpbeAJH6OqoWMfHwPKzjwc
RMZ8YzlGTPSJmuuOQn8FlITtM1zlL6IWajQbqe8Q7q1iiUNoXttYoPKXqczZuiMHsgPh9IUCQv8b
AB3O3r5465MdGwehUDzKUl5GJFBYzAtycJkUWasWBzaWzIqDiLzN6BBs6s8HNfQIknC8/bVi7UHp
vy4nbHdw076g0ZQRxEd4688zI11vtoaCSuZieLO4AieVv05KFPPxofbT99y93OskCQwuyEpXUp1E
yuABjwwm506V87aYQ1cbWzX7vOXWIgt0GLqxVrwv6GBGPla4YP3ImetQMN80VMS5QbahL/xEhnn3
x8oLS9y6Po7GAmB2nIe932JNwD/c9R9YTn9FWzDc9RD1f6k3VjgDaM0jQddL80hKTO1vLorB8WdM
8V0SUBtC1UBKjrQcoJZDXXYrXhf5z721jtzL/hht0OMgYHoaCLf+GYJ9GzPq4wrjXvN+pjhsAPvV
xPIelHhnabDcLK6VF+fJF9lpaX6KGOQpiQdONjXvHqCo4/+OqxCmax3o5D6mgYf3figfKHlx6/Sr
Oq9btdi798rt66KJkGDK0hT6Y0x5sWtq21G1sRiVdxQvzl9paV6OvcXo+FqnQssFAFjekn7HsbGa
dHzSx5/jdUJJnVO5Pw7QlO+UUGiZxGMv1Fp02XMS7vmWqGA9z7GN3GuERCSdE0FBp35tPvU5UkCc
vD3uQud/oIL6qlBEVQE44hDfYWsmc6f6QnIWkAoKZxKt6JPOjxiGGSXi7eT4c+5LzlIzbU9CeOfM
1WaugGEXD3StVFy6gTPIOVpJsxjczhvxi4Q0Wayf+BSVNvtvyctj7JXcof92vEPr4F8/0HVShKaa
I3bccMYV+l7bX0G96kWIxBZP/feQGXEee8S5ZU51yvGCgmnwV42fTyMEaYvE3RjxgD/8TuEYzq85
yb0SV951z16ALD41pv57V+Cia0MBs7duEt5geXyZ+ZiA8FEy+5rkcbCrkHqZAJn4T66RGUZpYE6N
pmKLvV6cIkGFTDzjyAedME22a6Zu8nkjj/2ULi6XncmCwSgwuj5OWZeYuCPzUxFvSQ5ujw6eVbl9
kBWmRK/F2oY9sizQxgKt41FECDjwm1A4IouhBJUQYTcd54hYv23SFV8KsrKNX0wnQgON1g03BAhT
dGU0NpwPVAkqJmh+HGUNf44IannvfZp5f3X5aZ6X+yh15VM/ozlqRGDL0bCdbS6w+Mbn/fax7DLI
FgWv2KQc70W+/Y+CZM//Y2qI1Ks3AOslafoVFPvCqX0D823PFgJdFbporK7e5FaouuYko7G+XOeQ
WvFnMi16AY3PjzAvJQSX8ZUU8ul6x2CVwZ46hEyx1CIMnAZAkDeQmGJWoZaELG56StV+8c705cj7
yfnOMkVO1y/sXBtwpggzhHVHr5OWV81km1M8ZDY4PGG9SvreoMqDJGS4JE1yrCLQaFC+4kO5tkbQ
9H7QJ918GF5wC7HGTqmPzao5KSrR9joMopN0lOyEK09FegiNuqB6ONcemN2EL0rFUUyhiv22weDX
7XDilHvxiO0fycRhfAP0Ziw30vw4NRffuibMJbdKq6QDSUQv/IxunLAxNm6PRLkRMRnRCGltUjb4
XOy+1ctwZ+9iFhkFYroSdjwyy+v3OCuDFY/qLONaJMG5Xi0j/yQDTR1Di+9ZBH7nnrlJ5bW3Xz0Y
kKUGfamkTtYbuyVT4L7fBTRNIwTP2zr2MkUhDDUjeo4ef22rET+tVkw9/yAgTCeIEg8w72wBqjYz
UKcVwDwSQwHrr6xrxdZGGYgNq+G3YW37QLDbazSIBySndSyL2rwcYLGrZlx7QFXnmYbCjIcx4uJY
uC5IOJ+jXTGxVJCmu1Gkq+lX01jBZeF/KYcuqdNysmn6Ie79IHlyRFNCRmBsXx/tHdCDT/e52AMt
6Oy1VKubnJllVEQESArJRwRmHk4IJsJNJ7sOBIDhvEvWZQo/NMrQDcIBup2c33gobQiRLvtfdTCI
Fjr+V8EySxyev+obmAJqtNMGn8IbtA3slWYTyEaK6DUidi6YDZjymf6qdbRnVX+++0ooGrOJZn38
JwezfOVUIYcSpaPhgGwHbpnXqVbm+5sOzN7CcAvbVE1cOnkcMn+Q2HpK1ffOd3LtHH6SgaR6UOuL
OnAx3iRShCsBIJv9cYl9z7XGANZH/SOvbkdRCrYXHNnzYfJDKuTJoYWtYsN9sl2Ed8QvOtqC9FFD
mC92Aq370dgQFcc4QiFd24SYQlba7RMJyp4nJt0q4AWwsTW4xe4ZRvCwCl/w4Kgy2VqbSc2goa8f
gIfvg8sU7Kmeu5voC2rbpDsmIrYSWBpC728FSbAbRBRH14nPqD1xxKUI903uQESW2iE7NmjZZjtM
0Ou0enODtbXhPmNjJuy6dv3JrdlRm1/9Cyy3UtQ7R7AAQ0YvaNhmpsQruLvhXBRHF6ZAt6RnK47J
6rA8XUcFAB/YP/7cj1ZKXNQjGFce5nDdKpb4tBi54eTUyX8DDrR/Gt8d8lK7fqw/D81RsXtQkqdm
C+YC2oINJlU97myyFDksiQkQg2AKhLqwxEwN7/HO86oaaW+IoPtkcJFgje242zl3ODFIOsc/kZWX
zqkSlzFkRC1NycG37o/m4znI4kYikIo83wqovIo8jOlSeexL4cw223ltuTB6nZakmxC76e+dKIno
+vIuVSOA5hDHmev6qCDKCUBFVQ75CUoRoKNMEJrsJTYVPwkTwRpnA5F6nTUd91f038tAIISCielv
Wybs4+3Yu0KHBDxQLhzlgYG1u15+zX/4Hx2VvRak6jknsdE0qNYf/mvqcfNOFFwVMOc1uw8JTs73
Q6JQqXMcJtLethgR4pt2ZO0pAy9XXf/8mgqmir3O1l+1a1WqowiaTFL+O4Gl3GhrZQzryEQ+yPC5
pbqYyCChuPPEtzwv6wpchI0wIWO7eMRh7DSjObpUrbK5yZN9SB/Yg7IVT2qaGKOpUdwTpMQ7q4MC
IcqC22LhSwYyA9VTmhcTjHvQyJxzDatnD0hjjoMCp04zueHnRp7GTSlXmG6vh8dO4mE56E+AfuUL
UmRWSl4z7md0CCJtIlben3xWXGDzAE33p5U2pz9TimL4cAIi5NmLCWlHpMQTUvma8dsXM3WuhNVs
Z2lxseTer9fvsPFDHeRFOdLSoBb6cYy5Mru8YKP2aLsQuVGu9WhD/H8SUc6oARD4v1IIfTL5T02U
c3PftL3Jz+JCYFqjkmog8/9gAK8lVaaG89ATMludLDVxqJEOvzw5qSKO8dKulfkIYzwx8T0DsCra
cy+oz7D2gg32KN+sd0I9Se/44o1Ljr9QTpDTDA01WD8vKhr93agqv1Wzy1cxy5uTgzxdckw9t5I2
9rMVYthZJEcC8ZrojYFNp5wmtKEggy7afMvX/7GXslpOlQl2QHFOXItj19X9yNR2LS3G+hdrHM0n
ZVyAwSeOvvO8bQTU46ruDdTwxkAb+ijG3zzx3om7/vxOdn326ykkDBR83oqJZP8Xtd1bndfJy7X9
+rfUpgIoYTYxuHyBXSoq0E+wimUl18KBGl2fVOpyFdUv6m6TB+U8ZeNGIq5ROXeoiSpFm120e+Gp
Y2XFBAwqTt98JEUu1nYDdK+3TwUhrgKqTugpFw5G+z16Ah+KTcisg4OZ34i43bWHUlV+i9G+0xjZ
z2MfymWlhQqmjM6PtTYRbI/tNYAiUam0PMeBpWPRdqn0IY/xlaV4mOxJpjKhcM5FndvdcbNLzoKJ
t1PowomCv3hBkadkEm5b7swl2WKSGExnXWC+VgcCeFZ1yiGGRSPyNbv6JvmTW1f/NRBGX1QmE9aW
Cmu7wF+RYDchUVhNZYEYf+u5VrnZLEjctLmhHB8gZd+uQg9IiwNsQebEOs1dnO9Kcy2WE+Rnv02p
Faz3NFNQbThwdXF6Dxnr4mqC0k45B5L/PrxOn0EJJQRjjhgjk7VvUdgbVrjgapPcxuZKhMsgfvJO
OCBhnrsluwgMe9c7FAFMWI9m8caCVEhjsYr9y8ZnDAB/Y3dd43sq8LyqBcOD7urwWFOdnoyUGAzv
7Qk+stD2U2nQXqazX2vipN/VwWEBb9DlausiZrdzVP88MgUz5Qz/fOKM//2qNw6w324r2JjowDP2
7H5klRjTRJyNRelUdzZ/LN9IUl7JuEB34ffm1uwJmZ3wdsaa98JIFXlPSfV+1LihB6vDshT/wNpa
lKxs4WtBFj0JSKe8KRUss9/dE6Qh0zL7cMAZ59UQmIMU97loaErSDHxs+FYKgumqt6LCix1r6M6c
3IioNRa8yHtN4bK4YE7ZhLDvUYn8EAt4+VkApA5eFVzDfIk2Ggw/M96vmb5NnP7H0GInzDvaAcQi
QbCOA7FjFk+kpYdjYCB5Nxc5DxlWq0lrh0gg8/8vOeD3hCvsJ9A8dl9kKRA/8J4s/QTKHLHk1+i0
GuC4j8zuPKWLazdBPnzN9i+f5AOeN+WV3ov/uoDHqrGiksdC5U9gsgoQg5D5LjXQlBku8dGll8r2
KrGjGKxHzDM/mwB7ClZzeR/gnv+/TVDmLA+hcy70HtGjyv3HR9QccMjKq5B4tygYKgMtSf8hWtP2
gsEYslTpx3pbnEtyCiTjRmwo9PpOaA6ckwIsvrHYUc4mN/zg98Tism8Nqr930iD+ScbM/8eCACqV
FrVqcO+ytfqg9O1cpT8P7zzxnMEFj4cNSnp1nbFz+excZ4ccoIdG2HuYZutItvEsG1qwwIFXSq4g
jLpv2x9vl3E/zPVIlxPeqqX4nlIt9tOFUtHklvcLMdHjDPigJ/8bSmUg3jc7nla73ul3m3WppCRj
0fwjkv60Lp4bHp+aYf+P12yL+nyea5uVf43c8YnyjpgrFkKSO8jInRaUu1U9T5g8oawYDAacYeMu
GPCgaMGf0HxDmgUDzdSqqHvtcXROYacZfNvrvsL6ULZ25t5BTuy5q5qrxGSH85aKTTfqx/+hsBJh
04B26J2PZS12MP1X9zHLHOjeZXFUrdPbuEea895MU3tyJkoPTLTU9kKK5AyUY/BVVVoB65K2VBzU
afWSQ5gRUc1ga9Za8FZNpp0GN2S9e6wVFaeKiZxfOGLhsyBDXcftbQJGB/v44MAm/UPdknbOUULN
/nVeeq2phZcFD5AmqDPD7a+t0grpLiQ/7lKVp50j6jliY/xxCoXEh8qRTmT3V9FqIJzkEMzTStnE
u7R9/9FzdhzWOuziN/jXQcPLpirO7chShykRG9hKX7BUNh36LtPKZ5EtAXvz5bYOzWAa8H4XsWy6
XnH5QqOg0fzIM27x68tJddQNpOLdoB97FR9d92JwuPYm4XF1260svwJ4xvXWss4tVxyep7M4oRRr
2VJZ36WEo8XgZr+u8N1gS+mtiUt3PlVxFRLUIJoQn43DZdxRH83MmHrYZujyf/swSGqW0uBHKvLF
WvyS134KW4nq+nM6bSjc0Pm1t8IpLDLrY05NQCr9boaJA9NZNKg20sKNNcI6mauwbUMIOFX9VQxO
FfpkiaPYP71Nx3FrKX1pPx+EEcOeG6YyM//OZD7eWBv7dqCbe70p7L2Si8i9yDSIfzy7+YY4a8AY
uzs5P3FNDWRrAWT0FLa4qYqiHUalnvl3wVxIEFoU0naKm7Hi6w3kSUIbd+mU28lJ8OmkLFyvdUeI
XZUgvahunv7fQQ1B6sQLkl8WngbbHJqYryZdfYwFwaIjAJ4xZry9Um96eFBLXucqL4AtrhI8Rt1O
IYg+UiuL/nj8SlmHT08nOJblUTZ6ceT5iY8DPDGgHU3RABCwTN7uJyRrd+5b/Ne/T1tmjEXg8cwI
34wc+aSXYxAw05YK2F7jaGmYvhwODxxj4oZCn9FkNVpV9l8ijTjby+9NMtD2kkrpOLYgh3Fb8/lk
Ctj1BXg3objW/tBEEtbnwKPqjT9MIqkM8DUs15koXrgjo9uV14F3glOTnzF37LyQB1lDjAcwLa96
lC7ZowM6IR0XQIy2G9JH1aphMtdHkqcDquAkAZ2uJgZWKMBLYXRBAZIIbbd+K78jALb+i4Ot+GF6
JP85fv+Pw3JT6pLK5Ruexpon42MGdgP6HHiWB3hw2iIEGcyh0nMyierXSMKvwWlcgtqSn7CE8Aht
eXNvIDoDcXufaa61pE59J7ItBOWHh/yOpu/oT1rWloOsXyF21/mldWdg8mVkqbcdG42zdLbu5GV3
ca08hsDa30/fMaHUHcogrttGWki084ClCT8w/9OYBs+ppN7lF4mDg0ulGG5M12X8maskf3xNZ1Q6
Usolr3EjFNhu5TLmEHmJuLyaA7Fj3LXz5GiqXH1x+e6WKhQiJf8eY4k7P9i5XCgJhk0vHHkVBv8a
8hUDPbZdAbPOXBTVOe9HPR699gxrYN/Mjz0X79d0yC0qj4w6peW1ch1Kj4fZyyCj/HkwLgVUZ83S
nRRFwhp+Rr6rHjfmzHzSYqkBwmgcfkUg5I83McMemFxcKxniuQkXqGfOYAtSavc8gcr5Xb4GiWnC
8NHLqKsrGRZW60C/mB4U0OPi8yfiTDc1GN+WjgS9pfb7jg7KbusWhEYxJsLZeRaUvs3ePvayo/NV
4HO2thS3ih9Je00QAI5HVZIua15xa3wslH7qN/4aShmV3/BWSlZQ4WVyKaoSIL4zlHnEM24ELwrM
6tiMpr4SdPWMSB+FQrneHfVMtqlHukE3XAby9JZklnBMvD5v68wkfXZVh6J+QfHuP/RME/ESOrAy
6w4uoeqz7eTutFuCl6IfynueHLxvr7WWmSJ/BPHGdnT7V4tK1DFvTxxclJt3+DdD7rQLIspcWPIC
goQPbue7/iOuEuFq/FV1N/3+U585Y7SACyPONMhh8k+YMC7508LCwBi/bjZfYMYFPYFeuyB8Tx/x
fTRJXOPzGDP5LB3cLU0Q99DSSVpzivnxz1KrslqiW+pMgcRFJohA7RS/b5lBQflryUZSOQPIL/fx
H9DP+ZtsBLXMi6dPA8N9kb3r4pKKDVpMNj80vahGFJyfczRbs+rxMFDCLBcIE6CGz33zZjOJLaYX
DQU9POk6du2kzOP/BnTn8QufFLWwLMRf8JFRIqfAhQKYtajjUgrfVLYcPzQIl9NK+0B4LS4gsLND
ZVm+P7OX+ukqEJWTTV0KOKYAEg2O5DcZW7+wgOb2k2fo5H97cW6ioCgy1BU9ylu7aBFF2b0Uc3Jk
4BzWWIhJWxcTo8hTyvnAekGr5NapEr/OxqvEBqHS08FodFt1hCzcaygw9BhnHzUKnVd1e+EVlMSu
Ym3UOu1d6U/99wKe/a4Yd7La3ZEfMcquxVEP07y4aNI7kQMo0V7Pqlo59+LJqvmae8oXUn4KGbTv
4Wfo6pUsOn3TcqbO0B49ZfMdXIckZGtPnd5AgehpK3yXEAKgXxOqI7CCBDXSh2nrjfIVbeCvwQpx
jcHkce51cA6b2ipv/V6GFbzm7eYFF7N+8otg1+5RAsaDa7Urzx3wB8flZiCPxXeuszaHSbnqlcTf
J1wrrh1zoby1MyMJlXOOXzlW+rmNQnLDVafXnPOhr7fj+/g8Ly7HYOziCSTFQw9+q6WkgO4uV+Pa
FhEG9XJOR6ZPxXVHDFr0EpMdtoKZg3dVxwqvJ1l4LI1eP9VQqn9TKMHnQqt0H/Y73c3nNP2YuBNt
Lu7xMljatam4pbolfxVIGZRMoiKS7Go4NpkShtQ0mEwZ5C7L0RKLFxptrcgmVExJ7/ECJUW94j+J
R72keVOTfhLHdZJPhFCoNcxN5Awp1qVwkpdww0v553bGnOFpXrvtLbhlpb6K74gWyGO8hkjRkxZp
bexO1DgcW/YkYXgFEqeBGgRZU1l79kidhZB35l5KJKmF3rt8jLEfB+4fAM9NP5IEDm+94NXX8yfm
2acNu1iPTf05nJzn9Ng4QEJWWkZmONwXT/vKZC955wFRK5FAvJLg7lJUqBQ+76TUvdmiLdwQRNFD
V6ngPpBeiOsD+bnP/xa2Tyqy7WiE/4N0MYMGyQQjnuaQr0BdNvQMrDQv/sglBXS1Qh1r4IQKVptX
pWIBtdsLuuLPi4h87JZ+1jdR+r8Es/Y1Hxjjiwc11KIiqTnZ02gPGCU8UnsyKg1y80YKd45yatcY
yXDSH7gMGSwDoG1Q7fEwZifFFo66jgFonkEnGBeOq5GmVZLwslmehAZ7BNBsyTm60tmU8v/pEsgZ
rOXzGr7YCpNsyMcfIfG+N5bxWRg/+pwr0zXD6VTJT6Gat6j5SlD3D2EEdIQbui4KrRf4HADsDFt2
BQ9YiT9Cg/SSN9/UstzGMc45De4yhHtEQ1wStaPwOLtS5uD76b/l14lbJnsVZyx+pug8yPfAgAEe
ddYy57PR0BYtKDMITw15YqR4eH06lIClaQ+BNA6DlhtSZUCceUKs0RTdqbM93Hid0YkBwiiSxuZV
ZMTUHSzL6wbQSKEM7V/gqvZ5p8Ndf+NFDAv/0RNMO4Ca/67EmpfIedju2w+WBDIGMr9pbxJgQeon
p3E7ijRWD9BHQ2rO8OS7ZdrharUVRbgqlDoK62oCE+4GM2LFkQgoHaCzaYMOYpv4jd+MBXEOhLwm
TlfGcXuh4DM6IQ3oXYGODzMvZVbXrHbE2gLHATkFDI7kxCmMYk3wIO7gEMf6m9f7tlEpjxObS7i6
+QGHbS1ZaNhHnf2zHJZ7JtNE7xw9bgqqsv22xFfJ9FzXUwSfHXG2/Na7GyKykBiwUKlCfgbg3oBV
Fc9wJnCLC8qNhlPiiM+7ktG0odeuBebaQfYrOJPhPtWimlRzDX7a9aoU76frjNntbX7MIMZTLpWN
8bO0ERS95S+LACzsh0xufW6vDQcUZTp340zDxaZcSJAqPnaHUnIYPtfgBoBKnJAUUboPtjtioKjQ
uas3XyXNUoFdORWic7ci5pxmM7MQBBKPpoNShAm9CjSyAzBh/EAbIU0hmeybA918kUnlJmbUr09Q
83oX0wGxX69h0DFep+bNn2cUe2qJCwq2vC/fFV8/+TRqI2+zd4NoTV/ZuAaZ5kv/sQJ4l3vrH1ac
nOKK/lVgiL1P06rRWlKv9lYTxlFcBAiJzax1Zu8QTRMEA+FDbaIjT5PnWuD6/uwmPCV4fryyOFS1
79sPJ+wwr8ndqC1X2yWoSBrmYRiQ9PrYEIQW7ceGcwWgnjrS5H95tCpzoMUrxDk/ESXM5TFn/8HM
1gJZ6PDj7ypcebLUo+FF+YJ3vT9sbmCSda4Ye/DpC0/rV21Jumk7pWAk6vS1NrXsIAT196bmoCmv
Vj6iKJBF9sOFjb2tCyysEOsTLREUTPcVQ1rMG/EQTzZLP5nP6UW+pFB/5Tkwug7vX8cwDim58mfX
VjwHvKIVgEKgOEip61SIkzUpl5nJpQBpHINJAd5SDUYFaoPNRF12yzE6ptfeSnBK2uTvhQDCBPC+
ajs5cG9YqizwZJHQt5gHloxeo1Go17P5PqBafNo0XGMo/yaOzmGavkfQHcIW4EPAhCZTIn+8vCO5
x68QZ/hCkh34Znn8gxITBRtLSOFKypliF0z13vTxm4YGg9O1CpjO7O+KgVX8j4nfhVwleOirNur6
NWFfhlMya8wvMIrupyMZlhiz5lJI2J8E3le7+NOuIwoaz9aQIzY6u7CNO4ZN8jypCrT9XYWiLBdM
JcPbdTEH/RIea3sfrUzO45nAsVAmsWJgFG5UDcDPYA7nzrGMz/n+0Dq0RmQbQ6G77byZslec4z6C
Ki5HNsP8g0F31WKnsN7QGWSaa+bu6J4KXuo4mLKH91T9hmzmoG8Q13D3JtJpL5fNsThK9VDNE6OZ
hoPYMg1Xp8m7EkHVrJfSSlCT7xxsq9Pf7+laZpgvs4hkiHWXJFCdfCvt1grHlt22dp/q2gTyn1u8
jbYMVbodXN/DcZDwM9pJZ6KaTRl07XHqGt32hddG9RAvYD0uj7IlyHI1jApX157WemesL6q7xSic
ToXDOrSHz+FkEeq081wx19JWejV+fpEUchBRMrELkc9G3JXd6CTgYemXIFF7BZvcXz3tZJSePWuW
LksC81hUIk6yhyaWpR2us9LdcRCquGCoEUniDchEfWp3xOgnd/du1I5aewcJYROlh9N3at9IdLb8
rckYJOxAGfF6UcaQwmFISxu2U4yKhCwPy25CV8JGsrl3s26BNz89hfO8syK8MZ1agtNjVY0GHxCt
LFhLf5oF6wPDekAZ/YXkxSfkXiQRPtrifTo0xboa3JG/ziqlTrwq9KbD82WtxgaDfAsYU8Shbiiz
zjZt7NFO6EwY8fRblg15r3lsX4emktYZzBZtq2buupQeTfc9+lQVjzbs+kLaYBtNJKjVTn968vVQ
nq7tBZZga1EPj+QeFBGzrIoaKwb7Fn/P7dOK2Z6EAacWj0rwM3rp6asBoQMfxmlIN+U2OrjtzrYg
DrV5DwA1vDw+uneYhL1Vi7dOuH2s87+EIasApVkuz8mwrHvaRXJzgpMeVz5VdyreYPe9+P3g5lQX
EtMxcd2r6nDNE9GPO6Ij6rJSTfNYcc5zbScgMVOUZgUgVwWTDxdXHijw/rljXs7T/lG6t6ly9zqi
+/EqU0711OqUgxwTmEQCt7hzJslwkAwOJB1MgsHnYAQLmlKhryHVb/VD4HcSWlxb/1Rxhf/7eme0
WE/0wWXGhrJohCX70x8J9wEzjKF1TLrUZpEvsefxLWF4d/ZsyD578Ws3JcoveYDfskEK0JjCMSqH
MkfDiLuf2U8lPjhl2DYYnX+NZLy72JtlsRG64+SqVg5zeofmoVigBmbuZ1MVLqb+C/IdG02uuTJK
Y8U6hwl/Rsvr8GKOWB58Aj64JZ4bW0ubmyEWaaoj14tIVvG0paDk+kL75qH2QPrsj7Ole5YwTKaD
HgvZQmz9XJ7nq1yZFo3LG9VSGyAh3gIZRACiG9b9Hk1xfRUyxtWlTo7LB+cR8GNC4aNvcZRpvhXi
lBoipOqvpW8pPX3VQ2e4IP4tYRtFJrmSEmy5mdCFPcLN85IaUgRtsphalezK3pXUzHzagkDAms5c
onRE6BeSvwYxBNmS2pBB0EgBqIeQkxT2mggUeBHaKR9FnRLEe5enLdAcOGqcTkXK7DwTbJlNhNUF
n7IkfYWk1v1bqtM5oBi/xFSLLk1Gw9wOC0MyKuE+TREvfF8ssh1d0vbs5hp6r+W0EgiHi6dgLXSu
w3oJAb5vVHe8CMOWgql5DepNMzkRgTxUr+RbDoI923NfPHc/iyOfFgRLh4T9q4NKkZZXgkJosuQv
Vkc8bW31YFjczBFySBML7y0DNeWXZk1WhZkTQqphfDxRUF6XhvARbJmFt2Zjmqdc0eOEY9moLQLE
9CsqkIb40ybYQfcjD8Cykxj5MZIvxbmTyLgWTaVIdfzP0himnX5Azi2/eLCWC3mmBaoENAFKIRgu
HwhUhrUkEDe+nRwpaRES0zNo+KZwp3eVXoWXoAmcsJ3xiWlNpyiEbJw0IRPh1mGqmfWwLUVjrHZE
GdJUVWHDvJ/KJ2UX4wivV1vOd7wx1oqn6adygoCYDeC8K+AwwPSYN7DUVqRP2b3zlMKBOIe71Cb5
rjXknwIyA7Fo35kz98CLUKnFlw5O3/W8hEnRIkDmimaB6xVSqXgy7rAI7I7zTjGIOogPQzgTglYI
EekTjO7fY+t6e8ibBlXlFMGSpdw9hNyfyQdiFRbjjIAyp6QMFQm0EaN9BEDFxjV6xWm0f6xxHK16
fQmmOcqexFjemgYyJ81HnE+xo43xjwf1LE1S0cTLr534C+Z/d/ZSb3AcE67ADVXQdpm3BOP7Oj9L
P4stQS9zmMitI3eVtZNflYOMxZRjIBV2cmf/pa0D/XiOd876KJbYPn+AlzbIBKV42HUAUg11vNqP
fYClBsAp5YoDE6JMyYc8ZWi6olyMtrwH0cbyaeMcmYeYTDOFrhRIb7I039wJznksogGwdmUHdNe6
ltjuIS3u1yPWmElDviagzkIcKDYcrjXt7SA84+LFaYykac+rmpcP28d2J99fj71mB8AZCs71ANEF
ePT2vd0IAiulHeqYtX0gKYkSmntnZrWPMXV8lTVJuy3g7fiY3fWvvjIfS/yQPURycYzzOvpHu1K3
TYhY4c70YQAdDbhDI4fCgjlJUuiZu7QS3cnKygfhn//gJYcb/uapsu+p7RbptWz4kidqU/kDBeHs
hHE2RxM6t3INCOsTYEGo+TZpQT8oaCO7LrnRZU3malVCCj+Y7LDspwIUOcg50XjTQGcBOodB6wwO
8GPn5e4LjqSyHiUbRnVykDVPSYYlGwiRxVlaCIhiCRwDi5hHOjNvom0NZMKuldy+fUfmKbQ1P7N4
aICjrLMb05DFoSnpc5FuGXZ2crnFRI4DMqednh8tijsrV5R1IwAmP6UU3jAwYv5gp2anaJKg0VZK
eKZm/CXhdmEAF8mYXFUjYHgBgVfM2s0TyX4XmG8oLdNWFoLBck9gtNTbm73eBhiwAXDNcngqfdwc
pnjEMoNnPJYq+SeaxAym5uvBNYtD0ojVwwjEPvVyb6jP3e6iyHNniSzsLTKscZx/MkUx/93w3XHa
C/bvWw4BISh7nKDhPnN/V3UqOlwAkAQ9NfaSF0VEWx7RsZg9gntrVdkaPZ8up0hC3rM3HpOAnGV9
f4bSFGA5zxuUeC7Cu9gX2nvahSv6Zk4SF2YJ5wYGIdbtAfNR9+ttnuhF12pD2DqOFNP9bG5ASvoh
SaOAZVay5sB1lbrbqyzJ5t8zTpR16KbGEAacUh2/r93aIKtGR9qW9V+y4+6CRTKBljKHe9cAuNBl
OiEbBqhmI6gFY0AOAzQ4J1DQS3vD1R9SfgBYthag6HxiRo18kJP/nKDz9TN5dao54xW0LWJavdnt
6cGGRlw1JsgCUi95afKQuG34G19B8ja9oK5xnpI65t0kK7rO1DgQKxMvZeR4NnlwpDN0DGpw0e5O
yYz7l6HGMlrFbAGv8kgvvjKsvGPqU/fC3Vli9TPkudt8ujNEmiV5uCcNgMnlNc9hfNZfRkgfYcTz
GciTFzO93xsfHBG9IcIsXY+AZQ+XarCj5QcdgHwyEpFrzVvlK8Usulb4aC0e3m7HbTRfB1rBEfsP
hv6/oyOqXEKOmI9VExLqxLVlSpTGt8kukPfYG/GQz1grBv/rhaifISOpNu5EHBygT7mrGmNH+3IV
yAHmqoRRuMoM67oN6Gocgaa4tpH2k9gw8GIBULG2q7DixnFLmFvHUO/gOVSHFsjj4PUIjfiSFs3j
CoBbr3PhtitjJ5433svpE46ktRNa7kOZVj7xtKNH86vkTzaF4oP1/L3/DBFiuDBIkpODZixxTiDX
ZNicgULoqhTIaUGrirR03OCsW1l4xsbzge37OupHLnjw3r6t7SOYxqSUju1qn4qtOyr8NDbSGTtX
hZZ1Te4d1zKqE/MoA8D0jFf/V5NUlXiag5oMLVeNrW8mn5qhLRuxFK6cU1yYSWemdmqdVbjNaXsD
M9G325iYNhTHErX1uufOpXO/c6OicUruCJjvix2quN25WBPTg7Gpscg0EEs0d7hV/6Etov4rmowL
fT9Qf5+41JS43M3fEvffm1u7E3XzTqU5mz/OZWc0u3mU9kC4em3sfQ3mk/hrNgUL6ayj/kvcMAk6
+m8R/hVoFReDJAGsRPga/y+4G+U37oOjhQhucIEcJoRbaFwlDd7uDf0k+uJ2veV0A47JahO/0SDm
kG0tam+V0Lj3hO5OPP2+XWyct+EpDpDWjSn0xWSVBfNakp3WRzPh7WoVAjNIwVamZgz/x3J9n7EB
9qgVKeGZV54DOYtIrdofTW94drAu3end4TITL0+KrJTso+kbT5dHaZ9npJu/VA/RyGJuO8I1KJrE
30oThnx5sZQ99x0XHmd6QmD/GFSI/Eb8Vr74pwWxbPbGu+somf4+fcc8LPKQ7x9N0KSLrMEvObLz
Ove3op7mHgUgJiFqO1nvF4Ma8829yfTSkIBeikosOjHk0L/6xgjV4Ia72EpbqykFtujit7g6bTb1
1FgQuVBIFizfMi14Co3t1Bf1itIS9Nx6ah5iXUO/CYaT0PtVGZhx1sVIfLs//tfYDH4maI4AH8va
Sx39rXmGXGglhaNovcl4pKLVFXMpdbAqJpS0qj4wV+GDR/oPdyLJOe+6XnYdUCgCzX1sH9bRIdfw
4tH5YV3Y9erjMdQDdNRPsmBxhlYi5inD2hxz2rcVzBYTg3119OTboOZv7p+1NInxpTDHebex1PAZ
1xHLMaaXz/OKtQYgFW97KViAxCNKfKK1Ei3oN9sRMZ7V1ba7WfYxHaYMznW5mRUHsI5jp5W9K+HU
u1II0MRQEvqCbvvqsMQ8/tTELxns0BHds2PRA2F3+1znz9RiiWTYpZ5J5oUjglrrI6mflyocbJ0b
q4oQ8aqK983jXyKV+3lCH3Q939h9KYNbSabj/KQwQGY0nJ9ix5NgVCTcwSpj5vWL8sviRK0pXhb2
WwzWvNw0W9WOcVgvefv2uhYNXKeCvFnLpHvxLb6Lw0xWUKqBb+cV2OZX2cmv5YSE50sGZod/1l1M
Z9eVR2IWThWe/NktumDR4fROfGDYIdq6LIyE7FpOtGtu9XOm43twHEpMZdJ1//8FPIWCqZF7wNeE
3EuphbJltTLQMKrOpB8om8Xp4mnhf6eGus8CwQ1nJ3Huri4kLRiQD9nn/asFZzNI2zLbM7+ybKwQ
bQukYnx+HN/BlMG/a1+iZ1Douh5hV0K0z0hz1v84vitHmbzQyFQ6lF27borPpBpCV7EPAFLxkBb7
MIRMJl2UI2B8gRg4pznLhf0Y5+fWiJb7XEwpYktEkGWnIOKVV/PGF0hNY49L6A1gq4bniDpTOqVd
FdiGFj8nSVcMQJz3EuHx7f1T/Wq+UtiM5tfE73hNUWOodzBaTLhEohOMflmiieMDYA04V/WMrdhE
q0YpimewDAD923JGHb2m6BAAtc5eyFRNVbNykU4QcRCUew14olnKmGa/zoYBoiQmTcXRRMqcM/Rq
7MocuF6zBfU6NkPcarwO/sbhSmWBlBmdgoc5f7xsL5e9y7Obb7e8BiQ/AQNBsa1G1LHyZ4brJyw6
zCSiHVVcq8XHD+RtKKAl9bgIFGuHozLezJo/N9OYAbz97KafsMJiw4NYoA6wUKeCGIYlo/RMsVli
Kworn+voXX3aaRP/HhUSQff7Bl0qloxKmX9waxfR0oGT1rEB6X2GIu5qLFvt7/8MljqkK519I7Pq
rpUlM+Mwly9iRaWXwJbTrgmaKagtNbaibviDc4D/cqyz3IqsYsjIUH4f3O7idjL1qrAuOfTYjhrs
o+OjRBDWe+p27aXes5dNwKBr2jXE3cdRlUNoPLiQfsFl1hchlqMVvpFv1+cvf7N6zCYROlDd21KF
x266qph6Z1aC9OXAXs7sdbvmw1VXXeY15602w6px2ve8Hs5hnM7ru9X47rNXECtSuW2gxz4iHkYZ
6ou+s2m601qnodoaiPghs8UCtwsX3OU0E68fNfxkPJPSmhDlEadlyzfyvQFhvDPJ+x45Jw8xEsTy
o57E+t0q8zijwc0pknF4qe6sB5I1xzXKiI3/sW03dDSamCqrzUsalzyReZStY2QCdbzQIlQNJB7b
kf5jGFy2S08Z+rponv/dnpilj3ERs9dzufzc/0LeD8p+VG+0R4Q/CHCaQX5Ym2WZ20FOQWXz8DjF
iydWwIxx6ofegm0XfcO4RmlfgllZKzXhGl8bMfsjWL3fVA5s34NjdN/tFKSMBujyS+Fvm3IhgfPm
obxLuHj6pQrGvbTI5gpksIcPURpScX6u75tFudxCRfoppTARAfYeLANeTc6s/9lGXzBx4k7DTcQk
uWKoK5Ii2iH8FMSKvKb6rFf+MDPrCxGhaER96fUVJV7CF//9210AHtvYHGTVpIYmwUU0yqfVs48u
QW3lKWL05B7LZpCKOV12X703Cef0RSyfOvhCInkO+zNzg9wgeSyeC/PDmYM5ZGegnndlp2XScRKc
ShgiUaoqnF6cVi9FE1Apm2nv2XJxH4qUGiDmEvd6tfCkz5o1tyj13JfFIU9lmgDdNBcy64d3DJj7
fJvaXlFCyPVtj/4miybVdf3G1tHNMJ8f6SwAASPCAUgIysOl57WuaxwYnG9pXKbnxJraPVDZq83/
8giixoGpV5o0sKBA8MFHm9IX6Sx//JWwX6qtrpMXr5cV8qfAMvDdb2vksCU7eHKOlQZOXqK4o1iK
ltNfRsfL9yoIuVwwrC7HLtJo2a5UM8haZzVZsNXwcLNKctL1bOlqup9j68UHLDGtBsxBMLVbPx9W
f7qgjOEEfRdKBQ5sVSKHUgoChoknwEkwrdo/XTg82cbJn0FcDLIYHqgceEsdddSREXuh9CgwjfKS
9oMya/O6W5jYSFbeOkHHJA5XaMfFbD15zpP7TFUY9jKCE5ac9cxJl4i8poJRT8m0O+FWfW/uXdvp
I1uVG2OUGAOEzCnm1zXNj3nOCeZP3ZrrngIfH2OcafKnk2tYr0/hmjsm7Xf2sOnOolGdiRPeSl5C
jZDSeobw+12t8cqRf3IsKrxJrRc0wCZprgHoju3mp1SPW1bZmEHVAvJV6QNWgcCDNNYBpMhOV5qM
eWGbSuYuSfRej1i2DlYbU4JeDKYDehObjCT9jvYRHDiH2c9CbkeRYayT1YE/gwgEySmH1hjnFvhJ
WH/7NOXJQfc0wlwpb3g7TZuE9RdNm9QIlaAM4N1oDLcCqkuF3TNudHmUU8+Wo6Y4UEppsW2uyWDv
f+F9BuJYeDdHDwzj7uf9EFX0/O8F2L52BuJdcE3uRuu2Q9odzuNuJetPY0x0M2othjUYaFQiApmW
etMSh/qLFbRDOloyUu8Dl1uXtY5R0mH90BR9r6a1nMyU+/VWgN8tqs/M82GGTD0nZpwDluqDwG1t
mIzuW2jOjgIWX8AikZC77UZkzcXao62LHNvPvl/AyRCdXKEXOw1rniD3NzQvrzDGA1wqrvj9mOJQ
MfSjLaG1RBawjperVnY89LwtWK63RfBCokaJTdiGdsD8f3MvnCffK4YNmMAfAV9/0D7XBcX+kvUB
r6tqjxha6jZabfEIL/W56l8Udab/VopgPFWeBFYejNsuyb/Za9c/Pwt5/BF5ydS+GUTfYBxSyjaz
xPckhxjR0te9HstNqcWLJaOEM5O45m5viv4N+o66FgpCR67X8F3Y33nyfG20tU85D4PKl1Dho+1Z
cpDHcH0yIcTDXnanvdbngC1TQz/aiYjV6qzmFfHHb77LB7GxeMx/GrUDpypZtguhdqeNcGVYP6y1
o5Q65T4ehGnA/ekDweMgRVPCzck9sm6dBUwctQwSmnhXRrNyDdsDDQKPrLUCwKrZcCVcJXjKXgvk
wGKPL2QuaJOD+cOfwVUViH1YORm+F2a1I0AuKMCBGnvErZqyYUf+J02FIQJCJn4hKOtvATmg4hLT
P+TUHMNXll8BagAMurEsQ+DC3frce0OAJNvhbBKkRv/Bsp8Zan0xD0YOpzkLpax9ccSMlKAu2Yyj
eL7P3OlKhHXU+7WCkV/5zGjIgbDE4HGUUPr6gWLJX2crEnw/8ciK6bN26d7nZaSQifImJzfN01xu
/0iV68JaNf4Q5Rl5ZC7qHtt6Ic6STjZQzgD7/XjT9CFioJMzqIb86kvAJ1x4jcOrrqzyfi/WnHhY
wGlbl5PVvwQcV4PltbU6sSHpG41Y9dgNFUz/fuuMfaMZM86LMKE4TJPerX9bWmbxgdxoyiD6MXzY
eRLTwmyP63KGKK4jjOVyGjnyK7YtULsfjaRBsHM22+M5083/LsdpJc9JvSdmdsTYsffGPI4M8is0
/RUUd7Q0PLHICF0THhIJXtjF/Z2GY3SKuXRplhowL9PZHMFKhFhmimcksR9Yo2fAfyijFdAGNj32
3ZIvxrH3vvC/QPCz3dnzJxwTugIDqTGKPZJzQl7GL8+tX6jw76/3k4IytX1GXmrAg2Tnso3TH8Cr
KTPUoVOujBvk7sNF8v5URwLTKO27cdY6cfzWGnk6cV9wWmuPpHym29aieEoE7eSTMuWY4/swyKMW
7IiP60jKgILRarnz53/bxNQWZ4Kiuo2B3HhsjLWI8rMrS5ByJQhA00Mcp1Cobyk166qzBQwQpjL3
vXBcehldpeDctRsj7YPaYnH1tLXDOfULdLzi1LdipHDbOtg5SqRD02ofdH+nyeyJUWqfXpJoTthP
goODefTASVyi0sLe6MUuRSMAIKjNu+DDvCZAAAINoX76mvtzEHTkhLXLBiuiHyghK2dWjn4xKzJU
1m7BvFcOYqR9UbQLgPtYqcAJCoF5f9qGQnYfqCup2wQK0QahfRMgVw2aRlNRExoKX04fNFULAS0a
8dqhEiswD9FqwUseHQ3H+esqI/77wi7I/FiEA+PI3B/S1MV/dqZBKSPugAQDPVBZsP5bNGgYeZAe
rrcJyXmTIs6YNtSNwakK/DiqVjyIBufOGfk8H/b6T1j6IwYoN3Ndaao7O89uP2wKBTm7uzzWG1kw
LI2twpGazKmuPm9Dse3SJdZbwof1Wt+I+NTCzq7NHPe+DtW+NinRI3i/yE+OyNzmalJn0pf2fn/s
u53+RZITRikKOd0BKy1KZ/sQk0zBIfS1Cx/VtkXfADTzpOWmcjxlp0/qXsHGD7oriWRQWjyeZK8E
U/NSJcb1K7iAwDCeOP9WRQ06W7Ty7eiJ9trmxoilvMzN+TJMXRynYUCUDQLrQLgFZzsPjh8OLykC
geqH4FapP3zM9YFOvl4ZvdfXl2s6MaZLQpkfhGQEEublBwJpIJovsKIpQ47XZDpyc6MNPKAPmDuw
jdUVGuev2g0jeNZx7YIsZEdLlQeu4eAJ1frjjsfH/78iaTTu5AX4CBWBVOJzKnemx+SuyF/0mvf0
V7xqsy8XOr+8R8zG9DRFdamKTysSMS6qcqQVz73ix8ohkqzeZSgTPRvukWn1Y156fbldVBOFqNuf
QN5JKB/wpSZ6BVwJeyJofVLOXWNXCPizosKpeWPiKjbwCZgXxGA7mFbEsMeXZD7SEMELv2kr0QBV
kbS926TOAe012170dCIpGXjUBPhTvXUzYJhEP6WI9DP1P+WyT2fYj2VMStuo/dCayOIwH3QjtmXM
zWTfvVcO+bzpeIoF2SDaC64Pmc/fr8Kh4QH2XPbP7dHZFYm7ITvrBlA8URkMmcfpFaGu+a5Cc1yS
52qev1OheuXE2Ss0VWXjfidOk88e6bC/+U5wh/HrE/nij7dPVirqffIqFCPsGQTZ3+ESCZFLKFv8
z3umvsWG2U1ErlEa0XzxjRSCZDTy3B+sAc0xf7hocM8KUxzOoJqt1OZGiw3quYW/f/VWcD2gTibx
OG3GIkGqsF5uzhDMFKOGkDKMi7P+LuvfzS+yPKNVyVlMe5ZuWQ38PtkqkOOCG6XzsU54ZbWaVJmW
x9lD2qoFkmTKKjuBYI5xDauSjsKo3NqpIB4dNGmGtoPRbRixxGpa8rKWpNYpzp9Ph5grahRdOhfU
ZEOFdZWnwLLn3fCG4nW0Kf0fv6C3hxmyeDvPELfxQs+H6VngvXV4Lbu7HVTqbkPEYkxHrdqR2Qnb
dfLQN6QZ3i7nwekTbbwse0ykkDpDU5e383SY9aMGoSwRDkhyMIwMVmnVlYb6JYa4Ja4NorH5kgsr
PCsCW1tpIeGu40+t9MAQn8VqGkDgBJj8zv2gFoI7yWxl3wTJlrZggePkMpQWov1gCJQo+Q9CigpW
CL8fD5IX0uuUIM2TR8nNbVf0jZUFFO5X/tmFupCr9Z/JXTk47D3Tml6kyOE1jiJQgOkydfccvBY0
FlFSzEetyo1R4oOcBDg0soyIgM+/DRMYKqoO3HzNWSWO8RcBtPbCCmWeUk2HgPeG3OD2PlKA+dDW
0KvBIXnJdTsNZgOvPdwFdkkmmU3CA8uVfx9rc9MmWKa0xj+jupb60V2EQ7tez0BXs/TpskqaF3Si
9TzxtRBaBPWGm5v11/mLfFnSql98B2g0e+L8cuk0jEkDW/J9Wvr7zgOKFA0e+szssPB06qm//Uko
AuNzaaK2u3JSEGNOEgBSKfVsKio1v8EqRzLhBfcak7Eh89jg48n6sTb/E+d30ATwk2IiqTsd3Io1
1nyzjzLarzcwtCpzoR2JbAYo3XN25S/lw9WKbcgUeIkcf0/hWEyl5Vu8IQDqD+3PPthhT9qE4rnO
hykBcOjOq+pJn+0z+fNkZNot5jnsA21PzdId+SLK0IhkK59KB1W5mOMrYZuBqSolQzHzcfnTAOgJ
vYA47Xjg/Edry5ZIeaC7nerr0B2bmBfdFpXUJuPVn43wEDL3B4hRHiXstp7XYnykOt9PA3fMw77t
I20mu5YtxQhJDX7pbzOkG8y+udaEVW5ZY8wD4cNJQ0o3+kCAdeqeWvC/DBQNGesrIo9XMHLVf3ky
9K9qGeWLcGuRmV9oVfiNnBadAkPzs7e9auYdVO0aIdK+9HeQMyB5ObMvOThSB798n5H6DmWq19w1
SnXny21qIrMOoTvqoW7CtAaYlH4Ckr9gi48NO+ry/Ignd6PklPgLrkUHOjlVWxEXI3PNQijEQwmD
KSCuilscmdqj8+8DQmvizH0XtxcLjijvAHwxDiPYjdistWOAipA8rEI599GUQdP21F3XHGCrMPYY
n5LjCe+/oFo6z0elHYvK4/Skb5w7h2eU/b8EFjUJYZYxv6iK3hLBReyFs/mlDsv8MP0RHybN+5zx
1cKDWgu6gPxG1fVEvuGS+HnNkBbUsSC91474aYO4P7c8Ot86tt8oOefj8QCRUMZwCKacqRSBRNGg
HpJdcrP/R4LA6uyMkM2+eseqYc/DM6auPN4cZwJvUlfm3EGnJnBi2QwQ4WJM04O+0L/amEVvwT7Y
R/povTO0vJ8Gak8wKMQ4UtRJp0hhJozrHLoSCY6e3/8V0BNNcMEW+QGebwQrbOEWHypbMpWKDWkE
8IOn6jcO5qn4mIskJ15JTOQWSkdAgkMd/wqiMw+dGtomWXgQcCUQpZ9Eyh/DsjULgs9fyJE6EX5n
T6mCjEp0ZO2xo8KSLCuhRq0SV0gFQR3ebx1q8RGjuISFlJzxeNGJ2S0Gq73LcVGsfHWceZa4LCvF
boqvXI7WVlOYN8WZp/pK55Vm3Lfmu0rq3fbJxGatkqRbpXyu/Kj/slrKqaY6uW1ZQd0Z5aGVoS2h
tahmV68r8c6tcYfUCw98bDU37yEOZTBKR3Rflr9qaCAb98V9g+SBTR61XC5q2xCkb2CcLQeLwBBJ
qogSotRh17agLlWr/WgDtB9MzuTQFEXB+leA8aFDj2KSMtsv7aaPVV0JihuvEiH9B5C3YSHZMuDd
0CDusku6wFr3XSTF267sLpCSwiWwUb823JVFBbLG5NJXKvYv2gYufknym/lUEPbNFzLaJlXUj7B0
Y11/ChnvWimQJjH7gijHxbqoLXxJQW4JH3r8bozz0fEo3tvUAEDmCRmTGc7xCEh/Y+9CmNOnL7R+
6EDq/2D1pRkxM1BSriGwhp7SNDvm5MpdBY/BDQK4eKCpA5FJ9RUq+6CAOLTNSBXbmmexdiZkSP6x
Tnntk/0bITpKquUZapbLtwPI0DTbJvbUdxjn2ceuE3ScFGnN2dgD29FAvang6Jp6EO1gK/4Qr5qT
+5v9F5YVSRt634wYaXr6VYsmNtGfMB5AVy6y++VCjythXg8Yx/vVFRp0KwLfugx7NP7zIpbuMvxY
mLByP9JlwyMZWK1kIY22d4vBt++LNGAMJe1BDyqnU0k8lrM2OKeFpcg/dR5D5I9WreTBfx0Oi8j7
ZCJcUJn3i2/Z+c8Io2AfPsXcq3Vg2UR21E8so3TQ3ntIaA8Kka/I/z93cd7HNKQ5vIyNScsFSJOH
Wgk8k+laujrGD7ts/hbnRs3Hw1sJ6/iebTtM1NCoLW1t9Wf/1EMzJuqnqu3CrVG6Ffky0o8rzgAa
owY//vlq44NF+DrEUAv8Y+HmMo2ffILCOSBmRI+6JZDRJsCsW05AA4K5RpVHmHKE/0K58amhBv6A
EYHzgfyHiyNrPz8lkdK6PAS1wezoT2u8ynPYP4BPkfY1dfudpLE80zt0N9UU72T14qaC/cs23t+o
PiqUOrfoXf3rmQReWCCbfJk/lL5YZThQN2/viTxfzXeh3hqHgisySgE8Cf7j60UOGamDn6p8dT3W
9XN1W65IZfPWP2zW64t08qDUjUg8q7gRmxdG5Dui8RtR6ADcuxFs7aCLKb4E7KNgLrcmOKXt+AcQ
Ma2KSPGkxJRGNbSdgG/OISz+MFkN21+MUxy++lFRccb5uPQra5wxxKVIxNh4KgKyLDUh0EE5CFg2
I4J7e1DgaCAmWAF18gTi/Fna8/vWzLWYM3/zx+7V8wCVT06CKy8h3MdeSCqD410fQaqVwLi/Q9fa
zaFjENGn9x0nGZn9lBy0B6mMuZnwgXStXyhvp81ADafzeDNsF445XTITfwHwxB6jQUFL3+qAI6kJ
R/ukpC7LhYSVJJeP0Jwl8yIeo/jkE+VOBNkjdzy3idzovCIQCTdOqvoEtWfrLxA1T9NgVZ1DGQtu
VtSdgtrSCb70heF9w3MH/h/dJRHXzxsxlamrGYMkPL/BUJZoQmM7XVZ5X100SB0FT66Fj/EyrEJE
R1um0/UlawyLWqY62q0VMBeb/cE+lTMU48IdZxQKOAQ4RHR38CnvAIUzIynHdtIDe6FWp8GdBQHs
b8T8tMzX5CNSLAz2bxNHNDL8PLNnEHW3ONfwd253h7JSiIzWDIGMLidm3QZFFULpxRMYU5sSl6zE
c7Ho0NILH8vZTwXnFljYyyqZFBxxG/rhhYArQnr9q9VzCv0mFWOJD5SD1dzwAkIH69+DXMdRgFEJ
bTpL9b7DoPP7welzgFUoBmIPSlhGWVdh0a9W2YmxL9Vw8j2yoL3f8BmnUayter5pHE8Y/58bHf1k
H9Eq6xAuKsVu91AVTO8jR4czoNRZyobE2kVa9DKkhEAdHlj93Ax1FakcXQBBCzVsn2jMytt3CB0L
bZIe/TsNt9LnkkQFgv58C5+moDI/v3fwnzRY5hDSjGdtEngBR1YjJA6Qx6obJ53GQe1AqoM3Ju0H
bfp7VzlHV7Okmyy7bZSA137y6Q/keAhSkVnkvlNNOWtTihYXXc6YEt0++dDDaOw8bai2KYhAnq2U
O8BCODhxeHDDrgVOfzVqO49koQHloTZSImIS/yU070u5tHgg44HUmJtTdiFCUA5nHfO9XEkVaykQ
7ga22FUFHexOYoBPoIjTIbYx1Jr0+aKUuGuJBqZ51dJJLqIE1JDTkQHw4F0ipSdBRlOC2MLG9hYJ
dcdPISnUH0CXodSspgrKTimc8wEAv5R/Hl84v5ADjHe+Ua0e75eAINWM3CLEV18ZhJHC1h+trv3X
YfoFSW8QAJVMI+iBXZtK66B1fPAkObhhnfA4k9JRpVESD1+AKCT1wsnDdfTl9wH9UL3R+ViB8Bth
4iXpu/tI6GF0Ym6qxKpJaHqox8M/o90rJk3KaTs0tNxfgf2Fj/7XVVegp5ekMF5FIFUjSBhG/YKU
DiMXl6HB7o7O9fTBXmn9O8gcr2PbOxB4rn01A8FEgPcmncl5RRuCvQ82CV1EEoBp/eqx54tRno9I
fZG3lB9qm4O8ze03kbeY4awZSTDK1S4IQ5ku0IRATsKuLROMmZStOQXQnDIVyVEvj9nIrKy51B16
m8yYQdknFy0ZTfw2jjKfmLc8b25nftCnb6eEOVbMkn0Omwi5wam+t+GKOuGLx2uHqQfC8Gk7ttqH
zo3wdrMXM9npv0z2MkG5nDb1NaPDWsnacMbTJ3aCjNmJeCLIOU1vjvrbiYL5e+p0gy1Ss1LvHZy/
Lre21d/lX7Zf0bxsuKVaTUvlWxLDpv4POuVZst8xxjaHnV3iKPsvkXIPyHYsaem8Xzdy4rtMKSEh
mUGjybdkWpZBcPa6qwc/rqK5RCTXOQ4cmOVZuL7ieiopfhxQMjlVzDn8yI/QYE15f7u6l+4Z69A/
E3y+F/76YioYsHfzg/lQQZjJnR1OGIkOUjOTh3W4w9E4e4Cve4Te9+sDimAgmSc4YSYPGUCv5KjX
cGng8MlEWX56/YuPf7H7vswPCMyrPVKj8oCzocUTJ6uAA518BzkJb70N4C4mEcFek4O4a+NX47kF
zR/dzndWufopf5VROduzhSm35kr5yFe0KDiqc1PgtWp8oqNSUA42JfhVmNtkpwKK9sZUVHqChRa9
wtsGfHOvisRRDKobaA0gxqYwqaVe6C9UXMDjBFRQZJ1wK4tUZaIitgeO//hvfw2qFxj50yZyDQ4B
rai66OkkR9lmkC+XJIU8aLGB2osU2s1GoeOkauxQbmhe4tkpIZg5FFvG8lD67RQTfkXe0tsF+IBM
Spvarg/pWJbfzLnDvYHWlhMCFIB2/5N0/u4wZ4iXf1cKy5+0PiWnZnIyFAIvS14ZWHCiK0YjcB4v
GhXJ9rs/U3+ss24fQ2YwlDcbDYxjerN6UZFI7TorMflNg35JvtpTasBtUtrTaQIZtl/0cRQAuS9A
lbFGZGNdOuugaCkqO9ujoDCxs9AQsWm0LDLPtLH1c7d7r3Pip0xrPow5wyeutpxUVS3H9ErV8mgK
9JAqDWivDbJ5IK1nai7TPJ/e9CL1/04FfiPbehdq/rwHn7ZimZb0QYE3DwDyirKXhXYscSzuyQUW
HFCHCIUTDvdFhTz2cbKP6pHhHxHgr4JnfiAzMu9YR6b3xjqqlV+aS1XnUM4WqW9/k2SnvbGCk+fS
mfsuDdB00bz3uP8wFANg+NkQGlLLYcmd/UZko3dJ4om4h2Inr8KgJGzdSt9NKdE9vVpcrnErdmIL
j4euGe6qBOlfiqD7FxeQkOql5A1lzxW62TE2NTAhwPfocY7sWF9oIj7obinWqTNwl1WZ2Dne547P
QkOvE9nKo/8kBF5kftJrPTm9DRfe5nk0Oa/06duW2yHYtt/xPhkEgJcgiUweJcswMqhEzWuxEjn3
KyocaExkU+svUypKeH+pE8O0I1/xEEXN5sK9ufYqHg3KpoPkivYxMPHvRBQ5jRnonliYda40W//C
c+tzFc6ZfRgd+HfCUd15BlfSujPBNrsb9B/DTLw7vukX5Wlkt/8iMiNPWWThhGI7p2pc65PaZPrn
dBwuUc6TEMsI6DOdBd/2+ZDhSZQ+Cx2DSDZ76+c+1E83tOaW+FPmpowvSiInG8Pw5fT/9nR3SRrX
y/OrdTFs11M3u6MSsm+VBJrF5KooxzrzWSv4LekcAwr3ZtzYuPcwINF8RY/f306+vmlBdzjm2aoS
ABs5zgVjpJkKXAniNCxpeRIf2xHUH2Rvs2eg5VH2KAJfZ9ebnQHO9tbncZevnPP8maF9zs4doM6t
equ+sczf8+3/C/UVmIKnSUaUqBNJBsNoPZfACCW2+BjC4WV8MFWkj9qazSjEWVR6KdfsIZHBXtAP
tmn7ygfbiXxKwssdfrsy2h8N9rEp4Bmf2v150maBPLRm1yY0v3N47WuQb6SsLLblQMVfJ7ow/7Vj
YGS1stLzzozOyRjvhzZX/cfaeNhyviYxYQK60JG/3uoZp1nKMebykmcfijF7+jk/pJs4K5EWdXF+
59CTV7oaMXzmNVt6Q7aKtSw7pXGh5Oyqx305Y5+tvO3rS6OLsQMZoHTiTr8SRRU/rt16dXqg56z0
uOkMyF9oSCwC/bhA79a9e2wdVdGofh1mmF1g9jdJL++w+sHDPJK0AtpU9yvumzr4ATVEsJLaw5gt
vWf+9fyutlr9eTqI4livyvYshoss6iAUPXvctwkiSpIbEKEeOaCj7nw6Rf++mQbzHbypYtDQrAOD
VVJQGORZfOjEv1sk82MEjwtt1rvUorU9DL6mPOBroHvVVvFkYjaGNPk4eTpJKfgP8azmqWrNk8IG
B5BaZN5/E1qViBYfbGpPtRgL+NTBicKspzFySo/hWvo/s2hZxxwCEjlfyRMU2dOQJ5NvOBSmfjjm
hz94MowJPfgHtGIo6KFC8ZPxe8TyywYzpgbUSBBtSrwEQCXxd6EqQVI5qs3U3WkF8Fs3qNNUm6CM
orvdvHmZuXUEONDqr8idqwskcZ5jRAXY47hc5PBcicUbokXVERRLMl77uveI0uc2J0AJUsJdgIWg
ZKPSa3VffL5nbpm+GemVYRAtAYwJNW8o02HdDaM7zM8JTWss4zNoPNK3Ft16y+EZb793u/fXGCQp
89fEE8N2mj8aoaO3BOB7TVjzpwr2XS5o83+has16njGpT6ABfFa6fBRDvsbb4QEh6MUTfrdvRNJ6
yp4InL+WRyAj5H/7uZt3htk2kUMGhe8ptKIdb6XGdKL20Ao2hqhAOpdN0X7g1kmmOptJF6YqZGka
+1A30MEYZ0gXuTAzaLSaR9qXflnPHiAFVxL2PTMIJcX0xjHHlHKXOOcMY50fq29YDnChaOOo1fU0
KLOrkVUEkuA//Rx1ZBTpNLM8s77LVUPVhJWj81SFc1b07QKJ7i99wIYHrM7tpiKflU83MQjDHVGB
TN9S7KSOaF4WIWDPpWgEmw4P+ZBhnOH85jDWlfMtjo13r12OBylmWHjbTg09fh14cGzFJtDkx2Ke
i/ohnMIPXLJyYRtKHKjpC8tHeoiuXfuOXIX8Ga3wkjb378ePxt2Kl2v8SuFB5t7LPUemJKvNPKfq
nSfQM6JQs8Iyq5cO8rYPlQRxVyaHxFRjppigK7vhZJ8KbJC0uciMZ8nwqI5WAk8ry2Y6yfP8ICyH
/Vc8WguHO7wdDrDl3sxiTOI+pwjxGM1HTwzF7BsxQA3ZgXfCN9MJa0GrjoafF626UhRNyKLr2KVB
OtS8P4veE0H16wm+O/IB7mdrt4rUEx026RwT+ry7CFC67Jr5RjeA1TlBmas5F8wUGJKLcLLtM0nm
l86mQ0CclbNMCUs+iDBBPJuj9L8ypWRF/WsoFNa5pgG2YicPu2CNwqCT6czRj1psDN5uvEDTT184
qB9/TdloWzpauKUZo1xrgXku47MuCOfNGXnHoat26bWtMmsm6DsVnP4h0a6KsuQPT03+LsL4J1R6
v7dcF8E+moejRX2I15oxyLLaFjW7jIxwOcSOYJ1zzs9eAQPgNaPLqY8xEXcPkwQRZTx+suAEu1hs
QEyW87BWUKfTJk0zbyeqG4OvgWxN23vTKyvqU/Pz+fPa9p3swgB6pA/sZD4B9JBQNNaGoEEuem7E
VA3AXP09U1H2CGiKtxNqjInfjo+3XSVbfujXDWjSl/cOQFhbt3Qhk60+xezigkqVmK6K5rw5qoUB
I1INC4qL0qT5mTbmrpQpXWxkmqv6kwh55keCODfQMPm0hnvdb+h4tzYR+xV+wJZoOcuKn7QCwg18
J3+di7ssawxsxif2OdEdaAXo5K/LGuhEkM+Xmb5VMav8OUtHH1+/9wdPr5oteBxWodgwEolrhJna
S11oqRakLWsTwPbee7yQehuxY0NbSF26G5+Oc2KAwxev3gWjjAy2YrhSoQi6JtuO8F5OwCDHBuky
CoQh1q3Yq2qf4YCn2NZBhX1/RkK9tb2Xihng21eNlZS/Fdf98adko5k0NZnKwrEG5xsjg8/gTAPG
/8+CfWzSLWZ73k4dMPHJH7jECxFHSpKZ9CssVg2a2SoWHIVdJPYy+DLfP3wecgEm0rPQ3zYUd9/U
aiMBoZBBlE3rzudUsOXGHNHvWuLvSi6J5G6QadsMijGUracW/bJjXdw5ufmGv/C/EgKjx9L8o0DR
hJmNX0vqlUbX3IuSn7dcV5p195paolfj/XpFYCTX2SRpTO4hctuHAyPOU5S/Uoygd1YxkRzXGylO
b3o5UEdsjEXpZEMBUmO3Fi+wac500VwNgTjHGJ0Bgq1pG0Yxgk/DUgVhfhFswvwU93pSGyUEmJQD
Ao7jyQZ8dKR7dySVA3jo17jsteKXpx1TFasgt0XpBTmDoFuJSAXVsMpFX+OFh8d3JmJCOL1TPWaq
oKny+iY+sNnEDw4t6MZlg+B2i/1GOpcCxsOH2tVvBtcKS2OptKSb9GQkNxWKHFA4AL8fyWzmHHcC
+l5K/Dtp8UmerK6ZuWb76dP9YAmZk21F5eUlP9FEqeEqcsS9Q28bhJkvixdSZvK+V6Q1V/CHh0vh
dw82Lff7uSng5wkq22w++WrScUxqzTLQJvjuj+8XbRtZhy9x9skGHoTw+DjcOuKeH9wTvXcazhzD
0ovomGr8aGwH1fTKtDQPXQWkgSQ8oHBcu+Lb1TIwpA8xlLCTgs71qmhReVsRQqgN6hBQfVfzKm/s
uK6liY/s8HF4GVepYoIbXp9weleWTZYymtuDWP3OjbOlljDw3Juy9LhL2ZK+SLG2xgvnJ5QkocAT
/Am34whRFVnTXgfZ36ZInJnHeaPGucPLqLwaKKB5IruiMcniSCU6Cjhzhmi0CKNjN3z4rhKXd+/j
oG6sWmcK3bSKZfokDYXjAuDUbkW/avsXHhgBpAO7/F7rNYNc6866GJ2jPDgK1efTS4SX3jqevqHE
JsknfN9VJg1svjpwoaJUmkHOP78OUuC9Oh3Q5uDhJHZK6nR9XsbmR/W0xWWLbfHt99Phl+mhkOSj
4xrAuQp/79I5MX0kUVHeovhsfTKlr9yldbwKhaXKmqYYeDt+ecJgFA58PmjLD23GdF2zvCwPgZmk
x7C8DatoV5rS1psI5seUxcMVLY06qL5VuYSPMQtxHDq0zRmGvMaowMjr0Y3PuecmEaj7+4+v5B72
gjD6EA6SSZXiFATrsZm6JwQInM6VcXxTyRgfHxwD9cPhHnB7hCc/cViCtI0lt+vVdahRAwd7YCPC
rr4M+NDwGl9kHVzSK+lqmeNSJtb5DlBAQNiyYZdGGVefTSxI2fHz8kPVbkIpdVZ1PPhgVBDEjqI5
JOqKfas+H0SgME3m+Wa/NnRArN1vtnD/NiOheS6b7FQH2EuTCZ5mHbIJFDO3o/DTMLgQqfWcru/N
07U2Joh/oun4GAyljwyxwXqzsXtuSmo029Zff1XjUVFtbxD/R5G4W0BUEYm51qi7c1RnSActiBpZ
grB85kVqUagUaQGoxjqhCQ4kjBqu4stwKy8Fk1dJl6IlONKd6+i6b5OdQHLmP/3UDTd6xjYzg8sZ
yzo/ONttn2ky1Oqe67PRkW3JSgvDmuRbzgGGOG9Z8w00epxQKeU5rNVHWnB7fbMHLRFAbuxt/BxH
eMAHGOcS5wSt2SKBWZTykt6qap/vi/ir3vQ7zVsxMIjuSMPMSd1PpJdz72MYCxz2xaMYSZ3hGwrF
oLBqbP5xA7PBkv8QGeMxs/F0ZIGlI+WKstCdmqB6ea6XGYG+kobkY2Wh2nQ5pWryvMNvoURzcNoa
3OiXjYKGmtCF8DH3B7jckkQvwUU2wdnwoFj/mmSAoC5AU4lkFchvr16fjcnO1/dH5Yia+/9LXymU
WFLXuQGtiojuXnptqhetpHbDR3xWhUaPzDNUjKFMI2DZ1onyPoLrZLOeTFDHKoI1EXo8VHP5sMYN
yVD6e7n0q3Ndi4uYzYaL1gFt5i6Kj70YbSSqR9c7KRhYHnd1tSOSSNeZpBEx6x6x2V6z5hpCAj8M
PibGgtqWl39Zoa6DJn5OzCxeReGe4tpSMLvwtNX+BtRAu/BhYWF9S06kN9wGk4W6RZH+2fbk43m6
x4pk0/OlMwWScl5Fak9Gvib+208PRJYlocETq7SDow5sh93/eYwh3sJPHVzgIHtSN3y018CiQOhw
UstOvxUI1kkGoWS8UrfXMzxVjgLPKgfU9wGOGcj3pGOwqUR3NRnqldrbe3mDJMAoA6rZU0yntcmx
rBaZCWXSJ62DPXX3GGtUemxW2DOU6HLV2PHbtDQKAlfS8QI782wD9Iv1UjpJ2VhSyVmzFGnRCCbp
LwxYNctKrmA9Io2IoneS3KIWYvKE0Maf4wQVcTBy8Vb9ao0pSTRM1123ZycfHNVKfkXfZD6+yxsG
0LIwyYvPBxTddNTu4B8Oa3phl90HnRrUjBPMaAupKwZIYY6wae/TEk1vwjMj0wQsoli/5YykrFLE
aQ9lHODVeSTxVJCAYjXRTgkiNjBZTX1PUcwo7E+NWvYpcoMlKH3Cr8PN0qMLm0WcpH2+BAKEq2P/
o5fojtZDEK3ILwiNoSdDo458VEpHqMugtocTUfFwhoxeTHBnQxVx0yjiCMtT5TiGEUgeCBFkHhUv
+uSmN3eiajaS2MHTPm/8bat4hawpKfSIws0NrmHZPdqCqlvNqWirIwWwqYskWPhJ+LmuswJudlpZ
PvJX45W6Z8Y4fYFv8MHyQT8a2PIaUpEb5JpGVEFPhMX75ZFBMFobuD9Y/fUn8dOa59Te5XmH2J34
i69e9Jj4sb96DsKhkALFB05DVXkEhle335MzJMWoGBwFd9p69CvDBlTJyb/FR+CvCFdBXsBEOXfT
qm423MbcY/uWPJu95tQyeMJljWxncOXfFqd3FdK+rdeuLy4uHF+5KxEg0DNCmamP8QLToxbhDZME
6h2zLue0tiNL/d3e8PDIj+XFelLHSTi6ercRTLAO9sqCjw2sDjeTCUS90jNAa1gn6+7Omy6hFXzP
J7FIjUH2we6Kn8YbbhGe9PaKNmKb/iTmvXK7Pz2fjkbkDNhNV3JBL4yMD/skeInD1XCjYS18wyKJ
hWImR+rq0pcgvIy1ceQBG7u2s4B+40ENFFvqofY9JxY5teiY0hY6SjsInroAKMCoe8IvFpy2BNRF
9/mWTvkN5woaJKIp9Fo3AEeHhzl0F3p+HVeVqzFfYPnPhuUFMcfHDGOTqnNUKm69jo30THulkTq1
Ke6g+Z0My+XtF0QHvIpt/DhCIOXbqN6Dh5aB9NnTsGhMl/3YQMDmW6Ym418qUWvdXe0LxDBLG5w7
9Ny8XiJ4vyKc35Mbupsiu826mSgjfTY4XDY2st6IcTneggKMxoPTwUr532NMso054zYp7t0HsAvv
nR5zaLPPJp0/ZpiwRZRdT4pIH+HTaLhILXpfWvHBind42pl6Yk8zhVtBdvL3JN8/0o6rzNuH3Xwk
L+g0KM/BILlbpuIs/q3EEN9yqI3nC+6LPq9UIzVqs2M0dZKDcB/E8HtgAoYxDnAVew3dKBIlpdZ9
f4OgAkHi1+joFuR1UW1ykFVXtjjXTeWsb5j/ycz19pqgdPOMmlL1fFdZwuHiT85eQLLB73sH8r+W
YcclwqdXxrgoyd+DRBGcIjy19bse5F1i22pUBBAwb1wmxr0aifRVLncHSvRWw2b1HZ9plJJOUA+6
lwLjWajcTo+VZRzzPtCkHDBIztWeUdpsK3MUgyAeBvo8kBINEqTKNDS4e/bkQHFJfENsODP7/+Sz
CKrex06TaybYmJ/8WfwhCxoETkM7uIl4gDpidAb6WNpQRmKGRftGG6AXOP11rSFHCpz1ObO03mkE
mLErwvRtd5bTcFNrgljlJewUyZj5Qxe1O0/TPwZGHRboXaSRqukLaIpsongHIu+FiEjf6gbDwpnE
jt7llUSiGHNsH6mfmuCCe9Fu11hbkDknqNcdUDPhtpNGAYfK3BrwYSY1x9W1WiXJKXvw7fXMxCJs
wGvz7rJZZl9zDKUcgA7jQeLg4nxhWDo7W0K9KbvqbZPpQOMCO6aD5ZwK47UZXpiLWmhxapEowg9k
KcT75TCC83sZnFUqZAY/GriYhQsu5noakbcBoLxb000jotDKEp3M6mDlQ/2vzs3VvQHLqh8ulvXq
z+tWIfOf5K4xPy8W+6QKURgxeg5NAr9NtOIF7eTnzCzXm9+yxpTqsD0LvQxBK7iQMsewrYzge5Y7
wvmCuA8bNDLChvXoxV7ieKeS6u/9J8WnOoX50HMEwPkdm/+kmCL6v7nnqkaklO/RsWZQsv7rjrCg
KbrxzWdzHoM5Y0DDFWEWtWtgjs4eVTZKsTP9tkdGMMV0tHWwfMV8J2BhgOcHORNUAo4+Z5zJX+B/
0hogR1Mho8wZ1woqRRKxMmX+T+z6jphXxg+TnB/ULP97dtujYXQe2CWdqB4kCgblmz65Osh/xYrw
udSNX0cFAU6TNriMsRPnXAp7PWZdHjqwYr4GhB9PGc7khmT50ZbOlyyvwTGKspuURrqOEU8yldgQ
EH0UsbkLd8tYWULyz48wTcHexcjpU5OMwa3CxIa2n0n/c6n574UQPVXD5rKxTPWfmfqMQ6PO7Yq4
mjlP5/H2hl3dL5cfyrsdzxo87t1CZaE/cmouHAj5MnCThCteWQbK9E6Xe8QUFtnA9rBtZjoxAUjq
G3/d917z9XMqaNH9ZG5JAHSkH0YAP19e7Y49zRBbfX8TAt2zPmOXPWzZveXj288Eb7TxcniLR9u4
609gCq4K8dBRtriMr7MfVwEveybKMvmtMZsu/+V9pzRz55RBPabdRuJGnLnEQkGXZJqehrx5D6bM
3kEyTfvO3iSIyfreGWe5EyfDd1C8ohv+sCdbw4X7Dz1KMo0okm9+Y3mg6HMHx/skqgoCpyWuNh3B
SkdpKHMI/2IxRlH7N2jyyF+Q66fb3ngp1V2HS9JWf4rUlcJx/jAd0oBnaKkHljLZEXDqZocaLlId
miV4T28La5ChIema35B0wexw6JfyBKEWbBvYnvVCHXlq77URH+6uDaOXE/EMcMyVuao4dpzW0UAv
CLtpfhqauq4hPqOzI1DP1cIB5EV21xXimzUZsJFy/ocIWRiXLcRFULW4h/4YFcqu7C/NQ9+OIPK9
Qs5LVz+Ec0djmtBq3R5dzlk++UEidxvRTfdtIW0jFm8dW8gSHgyNuu5nm9lbAMVWTHtR7nYqBkLQ
RPrKWuuBLKA7kO6yJAzpBOvKAqgceNtIJHtQc/L0RS3zLfecyCrCrZnP3h1xfuqJ+kfP+twv7kbC
8Mkh/6ZQoqHEJoWem7VQjCa4x7L7xiScTH9+P2P0TyqCY65PgjgTuQKuWtfjpPl4DmMLG7BETubh
C84M/xRo9ODv/JsJwxC3Mwx+TbPnNUObJtWdN0N9hExybd9yxVYSjzkc2tMO3uf4FofK/1+dBJED
5ZL/YqFmk9PDr2Ip8md5wUV+kHOkVjB5taVPKrggIhGpMympn5t/aSXZbWP17rvpWz4UTKvNh6k9
4vfiYeyQEFBC98mF3XNFjxIvHSastiYx5ooEgiYV8P3bLROlwT/hoc5p3FCOeGmcqmIWof0sbPgY
HibsgwAsuNQ0xnXvKnof3olKJVHYWKaEy5vNhgpB1Z8cL3C1R7X6djUcrAtV/42rk+eDlrh/zRkX
9/8j+uZIFZSD/bjj96OsMtT6vyr/Q+9W4x9ek6caPOOc/DQ6JqMSZS9TpLNKmbYog0vij83QbvBZ
ej25g0Cu/N7fJ9hdMX6SzoKy2SuC9d9C6lbqC6k/jC047CKlzJSMWh8UcUWgmFtX+HkmaB7kQGze
6Qg4uFRvUrTHDXYi/lbURK1NhMkFVuni5KGPwT0unnxvFqvkucXbJ5ZBMyvCqEKTpVr0owP6Qmrt
C58OJMp+KwpSHIQw027uG7yf423cHicsYVI93DyFreqHQRRpidq9AJ8bSxAlLRTmTg34oMrzf39+
HS8YdNcD2sJrSqmEdQomjgrYahdkKcI6COGgN/boZUwoxFmfgvBn5Zocw3hjjUn9MYJb8M/iJ4RU
mIuJt0OKKtwcKErPE+1XDudnF4iCC/8ZMhcU/UbAJ9yhaqVBh9n0+53tpBOu4O64tStnfk2LCYTY
yrmV+EVJDZJZ2co7h9uApijAEr53DBR3HjevZ1xY6zHKS+/9h/BNz9mFuI/dTaUQs2k9Mn6ELDog
HOyZ3kXodM3CHx6G32FmL9XZKiNPNTW4uF/uHXNoKfAMxs9sixALOSfwJHCEqlIFB1fAjYXD5hrg
6hnq6eHFJMyoSJslDTh/rcr4XFNpsCfIctam6KWDiMSn5ROlZsxoTIMn7EVwEYkneRx7fO8C8j14
LjLn2KzNPJ9Gg28oH2f8MvG1aoQLR7/cFs0+V+hFzDfV2JsA7TUrTNK4yc9nh8WXPszUS6r17TBR
FVuBRHxlUPByhsFk4S4athXxKfmxUaPyjsNYPuUgi8rj5tFgmgz3xVbOkTZpORZvp1g8KHs5dK3H
FohVGJ+tFb0UlKBTjikAD1Ouy6n5hCTA62rWgk5Pg74OvqcQi2JRZR6kV+NFMSFGo2C7c8YhbEGI
rf9fneRcEia1sGo9Eb5e1jAvJs9kBAjqyHJJGYTcmDCnBPWJ+ILPOKKa2I05mU+8tTjIutCkmf0/
qHvC7pxKWCKmdZ2DDMi1y8ydrjNMZlw2AiauETH+zT854q7RtFhzqdRCYA0Mz/lYpGUdKC9Gr0lm
UAX+vX7mJtQyFf490ZnzGA1Z8Ltdz1Y6UKR+caTjyeMo9u8E/x6nAlObK9jwwxhR2pa30/CTr34w
MK+Pb3TUWMoiOk5hohwqPVRVWrL3sWsh7dYZvk4TQQsVfmp6/T+qqCYI1TprgUHAt5mYLItgjSqH
FJHvgnrOl4G7kh8qB/7wpUDZvwhWMtPHPzjwZuJEjNUPOtJw4JkyesAoOsWaPq+b6Abksq2p2quy
RVARnnqSJ3UOhJoXB5e4ZcZgvqgVl41AJg0f/MDJMppr30bAX6ZSjyafTg4hpuFFY7i3j0LJZn+A
hHH+ZuwbFMtKE7qe8FZz88kZgoiGJSeM9haqv+ghzWZFpbI+7DtvRrl3ZNgDsG263DUE4rTS6GxR
oBkWJZ6NkPDKLbhxfzxwMju1DCirh8e3damz6VJ0GzmcaFni8Q5M4d8J2eYgUFEtH1rDJwQBo3+l
996LmcKUvXPvfuEmVH2XuDAi16lUqwnTO98Dsu0K1XpLw414RnKRIbDxl97j8vRsNb9ZCD/r4ZCc
uR1LOX8SMdIgqO1UnTy4i8M8FEbdZhbnm9NxYh2wWRb4+6DpdQx3RZy4vnjwpg3S7AmQkEKDMa3K
Um9St7c7vFXbUJ62yKOKF9gOiiUYTWrFDM5b+vqzXjxVa7Pq6JEN/w46cDmX+4+fxPD6kOvY5dgc
HGv95YI4xlQP5BI8xsF+xtWCh4J1a4rh0X+olGw6w8kdG2yiM2n8yHvWrp/ZEGkTN6Y8Yd7t7gVr
1xI+Rhq5IylAKaiE3V+2Ol7znNWnsFpgJ8DcT8PU59gRyCQyNAdnd7Rw9YSxUrHPz40ABhRLEh37
XOFGii/ZVOmke6c33k/RocLEsPfpCxs8Z2ttr5TC40798RUy0PbUMI+H3eAs3KvKPCusU3sZXiPv
vn42SMNoyMvC/KKnhEfjSeE+UuOTq1oFM4wkEdaT3/3SpdO3G6eW/1UkXvjdEXi+0n3t4CevpFFd
F+bCB8v7jBL6s3IBv3t+rutQKVaH4xWzuw3veDnveEs4IKx5pajo9upNgV3hExgnHRt/QGwLtuBc
bOYuVMQOCLpp98t6hd3A5tMZVSpToNmi76CLiOVWhUQgBqpCen7GkSyiOH5jal9i/2lQ0ELAaa41
uHJoeB3Uc2UwHfs80gEGh2i0Y/XdWZvSgjCBgpHOouCXh3XCgOvqS5hdR8VsVTiQn3m4OuWeHMGb
Cq1kfwTeIe2NdnS61leUcsrWXRS6G1Sr0LLDCNFGs2Q/Xv3yzQ6FqQVR7SkgqeN44Silyuyvv4QV
D3OgCOQ3g1nWMcivDWQ+aE7XtjzAft9N3IZ7n+VWCZtqAmy+zeRkIHTlDdZgLF3dxxULiXZFZqLG
MawAGDR6bEXE0yzg3sAGVwZ9KVVQdJSaU0wHFinahMvl2JCK80++m8D8xtHca9oPi2lvZVmgIjRk
YZ1zi1q/5phaeL8KWFK7iMlKSiuEPO3NQTANfpxLXNlZxC0+G6PjyVhhKilKd0/tww/bvjntR3vh
dD36Y3+EtwdAHC2b090iv2cuQz5iAEvRbrm+uBM8jVjIwrGiubhhkFxmvsnVHr4IE/qyX3NGLPoK
xeQq2xu/q5vw6p9Llq8EsGxSSZnJXwSWxpVlbqiLndlYdmqJKAevSMUYzgfNUx4NMm5t7AUPuF9R
olbM4M8bqDtBF96+VRp0RV5nuN3YBLbkjmpN+vx7aPPrgxc4+8ONqWxjZY2ZhqPicKQaChBpkc3l
rtanLRkDw02/RtoiN1GsVAlqAT/alvt/Ua+UD32WQZdu6euLHrIipq54aPA3NFoDzRBamWe/QAUG
JThg86mMH3T1XFub/3yxsTOZ8M5j3g7kZgV/8ROZDSAFMwMkwea4XQmd0h8+VlVsMvn48o79YoSP
9INaMyZ1ozyLJOOPGDf7vFu7qp3lquwtl1saAhsnAJnH1vndcb81rq7m8KnuVwvMFxzXCmzNjZ4c
+aLkvCSWkMvjEWb7/PBQYDCz15utXW9zYXS+0YdAZgH7D5VqDUDgUnp6liZ89UE7ImggKqBGKbXX
XwRbxrBi2GhFYd9nriACSWXO0vRsRXXmxN2tZntPVApp3bevhdBGBYnD9k2JT4fSVO/OUs/TXCa+
IHhim6lrxo0lG4zuTLw8Q9Aq9qFYl4czbAOsewPJu5BUbXjrBgZYlVmUHNHsbcaDnhCKdibfaNCZ
Y4Zm0/qMfAKFkhgqEP9RgFz0ka0ycrv990H9SHcOt78xs9Ph4WY5UMAn1v5rIRdC/nGqSA1dHeiY
viqX95jn3ogWW0I12xqsO9TUizLP8GKd1cjP3t9FsLFE45GB83NTzXNPTA6/XqGWs1Kyk+Cv7BBl
5OfRlpLAxAPX8sSR+NAWxdKdlA356S5z3TsDGo9+ceh9Rv0OmpopTUI6N4K8WDoMbgUSK9DTNxu3
Msvm8Xug7XThmpN6zmIbZAq6DaCrlwJ0CrqcoyHFCEaCj0/O0G0RDAp4PyfwFZzRv016xy7z5dyK
Lf0HIXbsK0maja0dLXTq9jUrnnGzNvmLyUpWUTvvkvBg7TxGysmleLGtDXaMcsvvmaBT53yq0k4b
JyqmaLDGDEXPRwS7AQrVlfdVaLj/uHAaEm5L/cRDGxdEo+USe/C/n93omQsgPXvzFsBTrTiq51X6
//B6lPhDAbKLwfi4S/CSULRkJSNxYLNLLcW0y5y0bOVdgt63/Y4y/VLP9lkhnHTK+zh3c3E47Fq+
5NcYfF5SRJ9YllLQ77pocL3hjvkyttRlQ/HX1v8Qmin4p+pKfYlGVKcd4FU7YHSkcSoDp1uWWQeV
EQ1kr+Yovr8TD/lX+wx0HzQBBLpSB7tfQnqy/rNO2HIcZv/LCYh3A1+nJnEx69NUZkTAybbZCQl0
nrJH9uh57CiekRXBpwfZ282wtuIa4CNpq/hyOZmq41JHmp5RvXHfoA6jZR9bx3eNtloWEg3Z36Uw
nx8rPs/UwUwxXoUgz9PHp7LYolPKfO3Wu6kRAVLL5cLiI1TdLWy5E91uoX/v8jPyTUSkMXkAIJcu
VIwQR1kD9W1QoBNtc6Jfuy0bendkTIMW8MDpxXL3Ey48t+43hVOJZNhn2Qyoa/iLtRh4FR2XO/em
B7p62XDdYKAQ1cQ+VoPmZYqZ4I9DhlKF/6VDNB/Q2FevcoskkUYMUr7fdWnRpuWtYZu8y4Igp3f2
RduvJAMptkBWg6Omfq9Prqpb+lYu8zQHmPufRxR1S2pobHU0msveC7VgYwfNYvFucufSeOW7XwYX
lR/lN0nRi0tM+mNzt3jVyqE7ndqncyz0EIqw/pI+RHAW7COAcm9lgsZ5JOBCIAX3z+NIGAuidtvy
BY0qAFdThN+VbUtsWrBweAwg7hHMdG9pBCSxDHwTCm4uFe7n3ZjIskb7YGr4Cu4uW4jw0+WaK0dv
A7lnRgq4yeJtskiCEE8EfFrX7Mn2YkYm1Q+2joUnRytm1H18xpH0VHiIa/+Jxzy1jQtRuCU7Xknl
DwkPxGCNvk2kaQCcJFMSXvpr2LPFWLdNbn2DRPipUh47RhJwerIDJ9TesZmF9kAQBns1J+DNPQEr
0H08PP7iPIw4ZjohF11LayRO43A0GmnCSPz/qOrdDapb+ZUsc/EFo7SmOvrGSGAs7O3dnyxWUX3N
jn8YrwjJalpCm1rmdAG/EEQFoLDb1C9+cILIeC132zzNYARuuZM1hsjxpp3ftAlrI41RljSXfvVI
cRdalAxCA1h8/gSwmqg6pI5SqBKE22aQNiEdL1StdQWSLjm0ne+XgWmniyVjmnLoAW4D40N+5OrD
f01saVbkjHVoEqB3x98eTDIBi00Gxe+1hNPFjGBQBSZB0wKLh3RLOS4I3XTU83tY7/nGtl/JOVcb
mOn4DWH43McuMakdmgG5hYqPA/DYXrSQmLCX0OGQBoOMpZ6d0wOsKJi28FrV9sGaB4tj5H8G3yQU
jtpyga22p+D9sKSNkeTAHjUi+gvF23Tx0pk7hO3tSK2RbrjOzkQWUq3BBv6HICHqRW3bl9gAENwn
1I+6wumPIn7sdpi/vi9zHfZR9+//N0P9/dvLhs9kYB5f0zObDYD/q7kB1QgBiuMam/rUhSTfEEJE
Foyn9WI6sI5CyhHX4yxdWGmxkqKpkueDeFNQSWCbiR5hqq+eJvdG+SYWJZsqF1fUgraNO2n+BPMx
OcHRC7hcFE+n0OaKnog2Z9QrY6Tc7p2I3sGIhg2iQtFnJcUla1U/PTMRl/lvCX3pa7Sli3htrwOO
VqEvRAk2M4ilup1ncc8Zy9357ZYqCeVzi1zyW0UqXidjXanQ1wE1jqftJPaeuiTjv8IpwSVoSsD4
ScdTuW6SmpKdagnecaeVqOhYC+vY4BvLq6q1lnfdX6DVEENhrIIZfD6D4rRmfHUE9qe+mkrvQTTE
ag+BmJLFd1zcU4bsy/UN68lNahmXKUSv90Z9pimTfQppA1FHlBdY9IPQ9PVQqqU9k2cxkcfma4p0
Ver+4xOflbEon2YDEdHFqQY5JTUh0OT42TqQx4E9EIzzLlEn3LxKnG2Uiq37HpYl8ErenlW84Dqa
MXkHv+1KwvWiFOofYSHJOh4CX7OpMGycIeUca9637X7O5yzbn1PsSQoyC1NFh7BUwp7ZGhEUWADW
oC5+8v0rw2AFFYzJo+uzGwwELak6UiZgDiHlVySGdcY7CcJ9xHn0wwIfxqVYez2vOFbmFzDgirWZ
nBfEIUJ7A00zgofWFEUn0rCE2mMk8iryczBwhUYHOR152bwSoIIJDOZS2QNn5wbwTFMcBV9NDI10
8wncoE056GW58amD/BYaUAkQdeqMExRHZhDztm/YYIE3B2F6QxtduMnZaUQ/3zu6HK/crwrWpwKo
5KxOgVLwiddaFQsmhEzr7LS7MRKMgeW7qCJnwrv0I4UIpZLuIgFGpCRjdhobEjEsoBzUhQndGKXX
gYKfmhJaCMHnh6Focm0/WmJzvBBn43S2w8gsM6TyqVTcqrXVobfhYGWTdMRCp0vh7gq0mPfACnDM
CUtJWZuKe3hsIiJ5OWh7Yhm8Pt7kmeMDgMvFKl6H+HsOEdApNhcEkJJCfDoHd0H4GQf0ZJ6vuOhh
euzzxlnwpR/Z5qMIBZ9hnUqi6vGBjcsQHWBjOvgaFOZi12BRQpDINn5Uz3vXEKQ8ontC/1cBG2mD
+bBpUr731vxBh6yrrG1M47xe3OOSsOqVe+2Cap+iLWj/dsbWiqqM0OSx8p4NlE+xJsm4gkRF1Uy+
dH85CNpvKP25anqTrhuJcLYGsVN8/fo4OFPJa7q7WQ72hsxtv08RHWzZBoEMB9augTiQmAM5437D
Ex2yU9BH16Xl9fG5wK2iH7x2GikBDf9W4qUK9FCtGITuD1t6021VQOl0A4fciOYDk5gJPsxY1oQV
5/fyVyWLeEOWZIXQcpqY2vhAxl33q2suRHyAxHM1wCUicwcMULu74UgRcNzenpGyd46bWU0X0f6J
iQw07FOOPMS7SwmbyTqH7UDMg5xU6Zb1esnoIKyFbBiKO6YAd/R1gzQJwZGVejMiuaxvAlwYJJaN
ccTLW2VrZfn6MgsyICT//mdcEGRtUqIq4PWM4aSUJVNJoBGhSzSABf1WUGWQmXqi+Tcp48F027k/
InmSy69tiUior4Aspbaqqez2/3VcE/qJZxEpcj3EbkK5X64W5p9vhVRjq3nGNkCVRDdeiBGCImxB
G9ql0lSRtKMOv6xhtyDrwqu/gYvclTZXUpYBrmlbp1J7I3nSA767O+8S5bXovwuPW4+POK63zU1P
ozJceQavv0Ypq6/inyzlvWnGiWoS3svxJ/1LImX8Nqj+xsIOjPP7vjp8mw8VgXX5IvMnqimDM62x
hiuWWMLJu5TcYhJM8qTfp9EUciDWPI6UV8TGL6I7hMMXi60tsi8s5Nv06+hNtuvFga9sHwALxLRQ
ZafjkLW36u9Z8tr/yQfYDbjPgKbuHaDOfMXqyIrlm5h3eccQkqy1AYnim0W1RF1PyVx3/5cgHoAg
DQXK4oG+zc5dghJdp7k9lsnRrexMglHBgKNCGs9Tw89q8/qbH7rhvrHoHsRRBNSJXNvy3GKPWyBk
6+lNFdh+5i6f253uDHkk88x9whFIjx0ScGasLfuehDeFhHJzwinoXM3kS+kLqJvtSXkW3Tc30Jop
KnRCxglcmW/4aqU/XHUCXblxHmfSVLXgL3ikot//ABILhzspbPHWlTmQxp3F5RZUAQk+5ljLpBDi
aesrcJGXBatmCcOWQQ2HCxDMjZi9t8TFq3FXq72kIGtJwGaITpNwRFtz02vfWBsMaJadibGR1jBE
0BPjAEL6n4LBw7WyCuLzAIYmdWkgOv+Guc8HGC4GAvvGeVasHwPWKErzb83cRBKpPBN14JlmSJLM
hbla5fpMhEl/c5abR9hwEkBjeeg7G7xfRSINumDD/mTdxbq9A5tmQ3YTyFo3IlBtC6hjWbtGI9Sq
FV87Ewgo2DGI0NKbOrQXRplJDzc+Zx+4AAaKaoKTzGyWbd9ymgCyl6XrYpS1ugjcVYj+hX48PuOu
8m8+MZjMmeEblXmqPnOTOK1YJ5mtl0iyJtDNlmmGoAe6lfXOwOuzCNBARpYwqv9aYaQMSJVDU/2P
inovvGj25xjtUncclaTRB8fh5fJxWVD18R6810UVMculo5NkAa9s94UcvirXDmaXRNF/TWXEyuiA
c0cniPM1j2EH4zKbnkOMR5u78henyQHP59apnVOnPbzPOaJ7BtQUmG7vJhCBuuQX8mw4K7g2ZSu8
ogzWtODnSsFJ2vXOfbPfDsXya0lLmKrQpycoDmdgrwaapTI6y2aAiGtvC+VQmI4CzEyu+Yk/rTbA
9pZHV30WSedgvkfFsSglRW5nY+xv1QwhI7L5ovBBOEKMc++0qOqr9SaZm8JvHXZSeThOy/JKD7dB
7/05qnOudFjpQnaVCzNQ3oG75hL2bw485sOhAYbf/7Ak5McVXAgmyiJ1fDR2Cqo5xXJIpv8W/Qrg
tJYZRkUoVyjgeLa17natZAhgDuDXzv2xvnoC5w6FDxyH/XTlA9jVxv4DPRSeCksSDuQpMMROW99Q
Yy+j8WAmQXC68lwfGnRIAFbkDjJZDkENuI7ft7ipRPBFxF8jPwqqfPzUMtc9YOjaBvA0W2+/Wc13
QRVH7d+J00Ta4zYpQ8KDoDRq5Tes9BegwlqjIolZkGSW4jXJgaosUhEGJKHmO9k794W9kJw4l57y
tSsgCFsMiYQY4G84/krIZkmeAYdsLYZ+IY6WI1Vo/jXLwDQohL0KJFC+a8VZDI9nYORsyqPsdDQ3
QTuPv9rxGTGM6nWcfMCKAfsPF25uDG1f2oRRrU2Irh8BxFH31viMBx4cGibPU7RbCwXhIMkHjn3+
t6+jFSolJYghfO63hWt+2akxVr2xe9F3y+Flcjsj4SE/kTeuJVxfPusS87V9X8kBHlbV6eT7/9df
By5IZPdN83nyqmS+M0cqR+wm57O6BLCunu7zF9249ZnoQHPgb69mCy+d3SHn4fWS4d/TwrSjUnns
GEDNk87aQIDNE0XpLpzLA/yWC0A84ACaYI+4fvk9yLOhCUmZHKJ5kBuCYJMysN+a9E7fWw6LlgiB
iJhIBLKYrgwpgsb/fDRK36ZnJrvspvYCc1ItQ+9VAyxpT8AjfgGXNANGtA0j0m9tpgWxoRiII8U5
tdrQIYOQTqMjbiZZkhI+7uKI9Ut71Qhcck1wbUyPKktqhXrW2rbKRMhgTSYh90l8fWheZIesZm4T
LXd2RSCOzyHQlJkYD2x1+Pl88WHwZFzVdMJ7BdN9XyeDREm/M0tbaeD06vMoCcn300BdWiTDSGz+
8EBDqizRuN3F08WXvh0myzmyqNypv1FdRAu3hibgn1RNTFjHTCDsBLW/u1QNHvnMl1mcPM1eyqrk
p6YpiCOH2P6Ec/3dpPZi5pkfjay/FkWC0hoEwvigQxfGRD2e8ZgzvlK4DnHs0dE9hwd7BSIbrOLc
+ELts8Oo+VB5DSx4xy6V76qkbE8w1nPvI6Kuf93KLwx8Qkn91qpph8GXA1Rzb8PMjA6MP1KAaFtx
0S3wbaF6ou7lIOH1tTp8Z70TyHdYLjpHfRpJ0tN2a41DUxDgxwvrFxM4F0HKp4Jt0ABl7yBionkX
aDlTg1Ke82FVVCJd/Li7bQpOQzNZJQ5B8PYGiqqRBXI3PAnJp4i9G66LhblBETagPE/P5ZnqT289
B2AX5bdtZkXERnDzTAhZyfy4F/DG2mJbNqW+PfVJ/pxQPC7jiEs8WCOA8k0cAWqckA66SugnD4/e
IWlJdL0p6eFssmfLPwB22dYfnVgd0cjM1VZOseCWcXkFdytqqI0+l/LYKZTheX6agAeW0C2r/WYR
rXTqlmrhofn0guILv/ymgrS8HYVLI2CEf/fDVyaLaFstETjkoPPLfR3dlNN6fj2sFGUeo3xb5Jua
l7NSIO/gb6+h2rcUR7Ap2ajCZYDVpkVWDDbFYHfJxsiEtzvkaNTqFfPVrP7ybHY7EnNmYKBIKj0P
9JPbuMYk3EmIN3pJMZvakRJgOC6KPoMV/3IVsqaaDoLnUaaY1B3cvA+HHU31ET1UbFBrGML+S7mn
nxWAwDYpHMiGIgRtzo1T3afhiELkd4FKEVFBBPH4tb1DqZARqwIAjyFeN0P62/FBqS+Y9YVj+0tX
j4vH0LqpCnLqV3e1ENpRQzsGz4Uvxm8IfPuNvfA2SfBZpuM2jlhqLCVz79wAbGs+moJfsdw5FgOy
3w0Doyx34Ael8YNoNp93xFvkauwup4Qb3ecSfWxqiY15a/p6dsrcI73202/Rl9FqPsdFLym/eFRA
/Fh75WGoRNm/FW6b46yv4VpQDkJmB8v1G2+AAzG6B7ZJVyad1sv0F2GUc3Eqp/wUjnX8mFyoPPlS
ObfPoP6mzGSZ4mqDsK4p+Y6BZeBSxXEijgyYlfqpnFolXO6OWMz+/N6PTdAQkpvhq+jGCEim+TiW
t8fsmo0KeG0Vf9REYhIRlEmXoURRldibAJzWGb63o+A7koZTuK2QHCjQbHpLfxLRw0rbl5foEpmL
EJ0rcnURMvUigK+RMVNeYmj9HOBU8grqGd0CKf9ZYq4aqHfkz8RzCULcnzckixXs2t5TipykFRm+
aoeoxRT+tB1qAx6ZoCC/l8fvPQIp+rNrWN2yQnpn/NCVHmrGnStkWlzSnjIYzNKlo8XTwn8myjHM
HaqsJ2eYuchf6238YMJiIPa8fkRWOBEOkTx+WJZiawUE4PKDqRMtUBvQVd3ZnleA6rxaDfdLTW5t
zdyHcmWy3FPxpTNRMhiNtM3uaqCBPt8g04BZLRLIU1sqE+DCp9j2NqmBCMUzG4+etj0XzgXuygEN
GnJQrnnuqaYqMaqaoBnA+2j7AOnfe4OPtrFW4IvJbQqX7Oonmqc95VizdHBh4SPVWk1bCy8FiMgJ
3oTNc2MJW8a6iW3tj2wAOPOBUUZzuOkOgyzPy2MRTEBRn1EsLjE1pZNSsjM7/KihlLv2Tk5gx9zY
m32gKjCwat9Pb0tfcITXjbYwtmQhyxO4TcwYWqEQuxzj0S3aerT/cjn7YxdOjHCYtpqVRC9mmijj
DVo4k/ZeIFGLZUbqxzNaFyEpsBJM0m93J47hgoU5y30vuIhqAtvuf5wi/eAF3JnsIsVzC0xEoOrP
Jog5aQeJdfZ7+VbNe+MKktT9xhM6Qs96a9gkZVgsnRsrG1sIsYwSWndgC57qemLEdN857orN2RiX
2OaerY7Q99CX6qxmLXqGHfDEIkKwj97sZdzr1I3pvP2k5+ly63/j6xCP6DaOWwG7hQG3TVeTvPxX
lEFgEduZzd2FRYKIdmQMat3RdqQNUoRmWboklhstdYRYdgaGITJkTUKWjmGMfGZIWJ5AYYjBQHJd
kWPZx2ZdmB5VJHDGHiSyTL5lJhFZ3Adasx+HCikv0EZ/7YWd/7OjMM+WLH/gW0u8k3LoU7KEUliU
In4rycFDRwQbvhovggBkIvkmURkDWqJK9DD/1ho2oWsrr4NdYf443curhJa0BQZ8J9D95ia35cNd
pwctNrD5weMleBe/t+vyY1xeUgy52a8WkgBvvOyLleJf8ZqEYUTiLeLYIaV00nqEXgBrWLgfcj+B
rnT9EO7ePmYNPxo43EYd9qJzUe8HnmtvjT4qdHSkmkNQmpQJ7ExKVojsDsZ8femYyUq+hSo21jzt
pdwf0m1pHY2d1AfHFi3cyvIlj2A1PjNLwFa2k5P+/9n56KK7xCGCEsr1B3QLCPu+QAQSjfp3i+xr
EwThdmyVcNcOkD7NBI0fA9PQJ8n3IIrC/pTk6AcWmIqyxAjrdiOmfQun1KS1CMIxbOBL3y3KPQrN
DW3CnXSUg/wP0jw3F0UH3ABuCBTjs52q6oOLSo42qeu2KFosknFSVNBDTD8hekoKx60RBNFOyoty
Eb0FYYDj9UKK2/RY1yDN0gS2T7ic3+tQHKq4cgMJFIGYruBQExCG65kFLvdvmrp1jz82kIoqrxKd
/MPdZdUwQbOq+LMnwWKUVjwOse7+HyltERVLtZ6EObh+hlaoer2dY0TwsEz0QeK/II6haxE86Zld
34CXO5p2lUz3AKs4LbcAW75PHxsFBIBgxLGB4CE0K1/0oARgX/+PH9sahH5uR0zgEHod5spOn5lR
ptSDqb195nmmtDO4UMj9spT4BIWzY7VfmBPBxixE+cTBBwYzqrsyAOmXb5YsQga8DnYl++uhJrxf
jgD3fFERMtrY1qBvTzg2xykfPVRLHg2FDbeGDSr+CAi7hrN0R3I9FsVOuXiUlCIeS8psyFp5ceUZ
EyZqDEEvE6VbWaDEM/atbNjkappLdV5tgQnMhJvY7eTK/YHBwttULmGfDcgHdjmSTvXS/mQ22BEY
KgC+dTu58axCgsLVCC5g8F2+HI2YkHIfA4Py3sNL/9mpomrSlHQMXI5TXw6Pn2fDAPzk8PE7NmH6
C0hX5oo/7LRB43CEOjoKO6Q3UYIq2coRD+qLvG+rsmajTYmumZPAySOP1o4OCLXLd+Gb9sE/yZ2C
ywCoykfzZBZF+IYrd+lNV/DhkYUSk+adRXPBHiVtJKGrFp1uBG+K8YhpHjgNc74vWMGNYQyaqpQ6
RHCdwOYLR2L6t92znRX4+2zs2wgVkSAh7wdRW5jfhqtJMvdq64Ryt1oPIeZ1GWVKcgDCvfeSTxWh
mHPC0Q27OXl8hvpwkIPpoBmriq0y5Kyz0+41KBxrRQbGtsmA4Xrs/fIm4qWVBb0Du2ZD4kqLiNK3
+eOn5VTwIDUB5jIpKI8EHTF3KVmjA/oHSAgJTDlCjIkSDBUtDO5CjlHbly3UBoJBfBTy4izGBoso
Ldq/khlqGNx/YyRLml61XFKmYXIsYhuH/PwjIWSCfA9XlII9315GjfMGSqmVjs6HY8VLWjPxoAMA
IpohqZiwBwLAhc8JSfgcANZ7c1TnRQhOA7NpZ505t6LA6/7adZUPsz8+nhR8vJWPrn8RS4S4eYys
bIpSAeAoc++blkiEDHnnGRfHZGfVAh+cC4nMyldabTeU0izeXq4jVJsTXquZ4sACVaL5lZ266y5P
6ReNhVjenLoVgXHrXULZaVpBDCvQinojsLGGWzE7Bttdw3FqxdJdf72wPCfsyXookLj02ZrmmmHf
MSnufINB4/yyB11okbsu37gPQL1NhajPbWOCWt3n9Q/3w9Rrp7h50JXbM+v7lbjvSyEDhRGrKpCw
Y9dCNpeQf8QJYbFbQhA85df12NCbVVHjt+tT4RBsMQYfFpmewuZtbLjiQ6QSBw9Kbph+uMe31h+O
CQjjt3D8WwzgxK5kztLYyh/IbeXPk9MGwklB4z8IrHF5AgG/XF3EW2AqR/V5Qp5VBDCFkuVQq2sn
CKYUEek9yPxVreZm12yFwlKbPqT0ld0C+MmsdLWDnTrcYtUNaTr2halnMsDH2JRrRFLvZaeMboeG
GHb3C2zNOwCTwA+wS+QRbiMXb1EiRvMbAeqH0Twa/ll/c2NXp6JlKqSP9zr0BUSzBf2UEuO1QuKz
8QGixUWTZAOStn2tNSer90d3ph9lBTyf2MHPtfGRnsCJaHogAkosyLvvThE6cTwvm02U0ijaH/ZS
UY+scxqDsjB9QKmJtjulip/zLjgnz5OwCuuOauLBb/Eb1a+tzACNwv68TRqqePeXkO4WZRkU7efK
uPH05mn20sfxkPpIT6cn6GmsGiGs9Jv26u8WOy/neke7WfODxtuzd1EeY+H54Kf1xa9x0/DE/2AW
1OpnChyu5G9GTmksESJewxcDDh6jeIUceWEuyhy/L9ysFEvGRP8hyDQtLGJYU0Bk6IV9fGTA5mrV
dRWLDIq5Ge8ngrCoay2KUTJTbeJQFjO5rc1yIKFro5AJeIZs4NVXwuAxlX23djSzYuVfhlYQdvc5
lk6FFzFVU0RWbhuqFiYwYkv3L3xORONCUaQ6mMQSkTYg8BKfQdjMM3TSUzH0TNw0C7mszJc+ZL81
IG7DSIJBc+DJLCwTfNFEDXGJ0sCP5UnYGQktuIfg7TQsWil0RTgDP8xja5FabKFNydIutE9Ys4st
MfhC8hGfy7u7Kq+n+P+MD1XUgb0p90T180omi+xS6tKfYXy3AoqwId9oU7kV1ag31fDGOTTmQpm5
huu1t1U1FosnXCGoS5w2rDPnsMKfbjiLqZYD4Qeo1Ah6MTWVpY9fiCp41tnnCMqH2NmJh+LCK3HE
rH9cizYWE5cOhKs1dRWmxMfcRRQffJBE+y7OWOBA/mquCUnzKAb15BjHG10A09HgWGJZ0BvRFvpo
REqp+XFuVKQiS9iv8desxNjq5tivXe+XsL975NHWE61BlWY2BjcZgIqVcuyzhTv6Pu2NMGmsPY1J
2k3VXdj+n9ZVX/FZbBztdatMJrN6iIxn58npQoLQwohsHuk4bta/QqOnyH0dBHuXsjz8TybBqf2P
0CGS1R8X4ghxQjNx44paI4/jWM0RZ1DtjT/YsdPMM/MEgtopzNPUkjBgWldcdwqFgZvF2Vmi0e78
TWiYA27iXupI2CQP0Jnz+yE0adGRKR4/Cd5N+I6Oh642yOBoQwJhWi4qviQEM/SNV9IwRemmvSBj
9Xam03epa3huZ+aB0J4e8po+ZBhZWasSHAGa7DRTvvPwOj+w/yPvX0J/Ti/n10Yp4wKzdmzpD9mv
pbh/6Mb+0u1xn0iaKOpVtnAz2bxG9CgqSK6sfcQJrEiyDhY7DBJLdiHYRz24Vv9ztJKTjMDkV7TG
Qsf1WYxURv9rD5ITL0rpoGhvCqTC2TEv8IiGbcpeKh/8f9R61IpEAMXCXAljjH90/IhZypCpVbH+
LJ4DJFJeXSsLdAKIrDOlp/Vj1CV4m/OC81bQ/QRfCtvcnaGXNZ5j8Z5hKf17W/ghqsvU39iMJwTO
gOMDAPVquMY7xhq+rDNuNxqhdhNG/1xVF31hAJUmYyowm95RF6mQ3jvOx2V2BN9W+kTXVAEWI8Lx
fXRq7WqIcupCzeqnSl76Gp9JIrLeiF+s8wWcaZ7vZGDJ8rWSk2WSz73fb7hG6oAgreL+P5NCe9u0
1zT2tMgLEBXocddH2FuCdLjRE9jdsKBw6K7/jSFnJhlSuWAlF/yYO+yCW1YHkyHCxRt9ttW+y4t+
lN/3DfEkpKvGgmF1X7lV0U5L61N0Lc4KGdqD7hESyGfIe6biZ1AVeLD0V66eLwsSnB7rpYKvgtB8
QcA2ygQcD4teZ8lxAvnEtI6reQ+1AcCvhsknZkg82WjeWZGbhxByL2GuqdLNonH/hGGUkFDh2NH3
XzySMdfYzoE9UhLTamO5rHh6izZYcGc2YlQplzprBkEIHCRdyt0P+bqg39Ix5CohEV8mIGkcxsbc
UbTdf1/tyhNglXcj5yxqQRMvVT1Y/1rRSNpkCybc9qbrnCRGkEvXG9BliKARR1RiNFzQ43T0Q5A3
B+bN4E4XiHYq8SjlpGdASYdPAJyPYw4PbC0PykCn/tnw3bzI6XME5Myd2KhJygBk+0mTNf9KDuaf
/DEVr0AuajpIDJjiqeopL+WU6jWgBbLMDME3kZivx+wXdK5xzGCD8mzMH3s5Z/k1dZtg1EPoemmu
j3NpNEpoDgrpkS/fhAUN74SMBFpZKaVk55Hb5bulFfDUDLq+VBZtksapbGYKZwuO+aOIxhx9uYxJ
3/8ZXUNvurOvuStIqxrO5Cy5/baT4dC0qX6W1hOInPRYY0XYLXitTS/Fk1aDL0Q37zU7Ob86P7H4
gojEallQehipmOxvjnpwhSLtaoHz36R5ouGGNGEbqwPbobGAF4fvM93LcC1RaiSMtQ6cgePaVxlT
q7Ds0Un3Lefvn/xPuaCVqVxWY2jQE/fiXN36DvDIg5qa6B70i5MyS4wXESoratQHMA8waxix8Mu7
2Kgp4keZYuCkJjan0lnltMRsj2Gg4Y7VTC1fpzVExcxezvw+F2msFkpizjVPNy51YhF2K2eVKIWd
2xc0feyoteCBHfL3lg/DumyXxv19RvqnrkQ8b1OU53/ZSFCqbyqu64j9gRXhyFgWisoiSCyOKzQj
UNUs8Md9aF5veGbGlSKNdLNBzcDSanGzbWfipDU4etFvlq7b9yATLHuCX74lf1y4raZz51jYOcUU
bDBGxdhWC8sVLv+Ux0lLtp9YY0Z7T17FrZc6LMP7RtsSog+tMoX3vgewr1bMBX64x+o1Zwo0giJc
6vLq+KXm1UjlTm7ttk0w4vjqbhlvWDvtSPgToBbBaBrcEf6ujePOPykxfu1nucwVRvstSwA7hLj/
QJLwm8+f6UDjv//+tfVgSI6UJO4dIms3jxRikMKr2TFhPovTJs0vGutojHa6RXl6IQ1zgesnHmTe
vpTFAcF1Zc8YL9hsJx1O9yiaNmpcbxL6vEDlcAkVB9KvPHQ/T0/lpVg3stNB7Vy3RoIMEx3eYrbw
NZb371ICRk9MrxsgIYsbJ99FS0+gQL56jTAnMzoicROMZTv8jnFWkw7j1riE0nBJWSdYQL0og390
K03NcSrI2OMUFEwhM/d4yAKzZIBasbAHfOdHQXaZ6omuC65v2bovjy5MZLGcr4nHD+7zMzSLyOTT
BYcauqez5U2cs+unR/oozLXTpNOXKKVqwht9AJAXrmrrBNvLUusBrG8NseUNt4wCOPHjIoV/of+k
GKnuWCeXnsxsTMYcAnoyL+AXzYo6yAKLDp+2Uf8MQzIH0EL/aeUNACn47LSgOeLBqu3wahTm88Kp
WsWCeuId0+LBiM4Y8oY0mJ6TXllm27n4fwd0qMzxwJ/8BosMqzJZKaO2fcdTOgIsSLARRHgvr0eu
czYtZeNBL2MlxwV8mMtYZeOV7D3abQf+vnLF1rDO4ZnpY+BtN7LAzsVv8OFcmq+S7qJY1qWzmYOH
lEhkmYBxt12jWf2T/xR5OFZIXcnfn3bA/hMwiluUPcI4XWCYZNpkB9dGVcIMYvGL9LNZRheyxF5A
YOVHPiPMZs37gjyunlBA/R264+1DPkCBY6F2t5YuwBqwrlg2Oa90rCmT7iXok4T1S98PrgJf/q7R
vMmza3pdiA4bwXxtusdTYKahdngFVGr3M/HfCf2dbnBP5ugKdXIDnd91HojnbOmd9IyJjZzX/zw0
3kZIUSxAVP/L5oqeAZo8rk3y5jt2qxvnQnOfo6pWVi4XjYrkUu7on6u4H8dn1CYSZ7+Kl0qEdtDC
CdsY8Sux946XWfFNsDxoud9Usj6L7TCzl6vnazPmDEDYnZ/tq1eiBHXU3Gzt6dhSZAZ0tuWuJ2Xn
SXug0MpAfPi0MknisE5Xi+Z53gAgXujtjaImclqQpP3MWlLtdiCfUpt1N6TLNjRlPF4V7B3k7M0g
1a4+YlWEY58cyHo2XKRr1dJlYxR/ZFtl2h+2XX8SdeuFYRsx4I3O5Kecg7liJ0HGI5rhw4BVxfGb
8V1bmqHW77nrWedg4DnJJbKCFvtCNaq9FCOdjExUWYbCmDzbrH7/RKZYqS4jlMYzoZ+EvCXrvqEB
nE7XatYK5qYS6x0bWKAtG/NRHX0cOQTu4P9yLtuEnDrlmU5/QQdqFHgRb8GfnrqwsrgJFpPB6CM8
Mx8TmGaz40eFSyO8bQH/H9lNjYv9neJMq+mqGhZChcpfeYUzLgiIWJicD02lwt5SAdx6PrkLrKdS
2fvdszriwjxvBRkd4BaCKWbShSSs38f43AsutyKM1csJ7F9nyR/TnbKB75nH3ClgQnD0t6Z9nJN3
qE1ahIga668CUEu6HGIK5QGav6tssfxvnjBS3xdty7eG38fjDsGLvsxffvewr/wx4XVe/B3O8Xc6
+VX5rFEAyjmuMWVuqDOJgfWw4kMJMBS5a4cxept1OCuWIIBmuvhspfx7BN2t85DkVwNEDx9eqvA/
xa6OYl/RSTDIdsUWBWx7suvK3xbwnH8Xg4M4Hhdz9N5XKd9R5tJBEkGQ/FeDKzWVk22FqtI9bM+P
o7lfKPjbLFoRiLUHBDRGST6eyi6iUefAvGg+TBiD7DXTWamYxN88xI2G1cC8GYovfi4R61uC22rz
T5It+w5e06xw5bbMRaIDuCHvmf/nyTbcs3oifj0pfIe/YymYnOWTxME3y9Y/8v3bnAS2ewwYVFMw
VuFW+2VUdid9Z3q1Xl5pmqTcgyulbSzvZHvbq1FwtfDKLeV+egnpt2goC+zsSQm5/NMk5lJa1aw/
NpgoF4LZQk9QR+yAbDRuFD7YUINQ2/8z98PNNknhX1Q1WpE1IYK9WhN9qgokc+MKOkX57vp6mRTr
JufjCoYGGAEqQmAwDdFY34xemjceisSpwFivRRceFqmL3AOzkSspLaeLdJDfkJYGzHxFsfjg2a+n
HWmjva3TsAyr7vvq+6SQdDuhyazTs2uIuWPFgus7jVnGPqHBQFbHJN7ymc94GCl2z4iiuf7jOxUg
m+RiPwfM/epWY104lMNfVX/CNvbKpMhLbBYiBJ/4m1FowNPNlM2XlW+IhX6vT/wqWNt3osj70vaX
NneQzrBnev0ydE/kuDp4rtG93hoEkxFsMCFp5pSK1xnLntq5FtdkMnhTwohBLT+dyxL/Rig3GcJB
31kcP4nrRLNllEvtVeJQl1SJK3xc/tCV8tUG86uE/NK1v6EgSQOo6g7Envh77FNgHwb4x6VovwAi
6ruPSaN6lHlULszdWVP3Pp94ycti73ibNYXzmWKZs35NSlk+mhsCBPBZ+vOAAidqzY3KZySm+O4z
vs021N+5H4YV4KobPmBdz/eBt92UZBJ8ot01LRrqTDDaTkIN7dQblh7VDyyDFxfzqz4/zN4DuDNR
oVohHDIMjOq7LAwL29XAiVichEZ4CVlMq8qpy0GJXHUXdyaGWTvZMNtTvCCNwaopFrxUoM7cjDZH
hZ9m/ZoLYI3LVCWWcNgG1YxxBM7GQMbN5wpC9RBkY3HCa78/uFKdsE2JAWNVHl82VY3Ubr3zpm+V
HZi7wiesd2C/BYWdeXq5Ko3YW5Afh/+onXj7K7rKO2wLQIBOVG0prrynnk/MVHnD6xA9nHObCqax
zXZfKGVSJXeRTDYBTHvUh5rnCrqiLK8m2vanV8M9KIL2lQTViOnijbJHyx3uf7S8rulX9hIPU+ZS
Ohwtnlz82REWW7oYqcJCgmp8f04IL/To0GlGVKljRo/sygfGVz3uPT23yWMwgmZTC9v5CFbCR2Vf
6BZTpIkNptbYNX4UdBpy62q94XPp5B5pyPlZwisiu0ckd1Luq5maZEVw5xZooVGAlV0akUezfenW
yAr4srWzo3SPZf4sx0hyGNp+pGmpjHs27XaSj+5Mwqpk6i1cYkcI1zUhvocr8y19ZJM16ahlyPuZ
gl9/+XWMIkXwQqFFCekKB8GkDItB4fUpQoUVFqe2WMeYE00OFLsB5EiCLwhNiei7vE9HM1oUC9Sv
/aB21SsXT7rVfoN5w5LbK9UyM2r58N1cHhjYQNig+FL4D0e17LDbEo+HD/QzmJ6QajUZ1UoGHriH
8jHmr09U3vNsKelhtXVqcOolWydpssGtWjL+qkd26JKpykn9FsRzPy19E7mZU13nQ5SZYY0/ydJ4
uy+u71u5cBs5UVOZo5PY0toaalzRzni4/jrl8ZMj51GGoaJT15z9jDV5Xa9Ac1H31Y0rBS8iQbyC
LrQLV4Czw8tgJdXkLsksZoK9Yvz7sqYU31szkU/8A+Tf0p2YNyCi0GROiTLGc1mwpOFMy2VY7aMT
9DFOqpC5Net4HKhiMK1UR3AZc0rssVDIXqw8f4LQKwDNRi1Pa6eXX+YFqBbwVQdSdn04CvqDipEY
BzDQc2HxI+cMgZuW5v0PMo6LZqBW+y89JbhYzr3/D7JURSI29PkOZPXMmT3coTOVL3N6BEazs/gS
JiCdj4u6QNE98+9NmcdmyPR2drnQaAQBtdrZdYI1hzBpATNBeU1WfOMFj9dg7p1CvHONN6n91ZSn
IL0tWF567M0Zz5iaCqIqtpNp3BFA1A1R6wS8URkuWPPaw1wE8ngPgvIZaq8LgTVCkZCf5fxnJpy8
rGRIon5vj8J0ztwOTnhVSjpK013tQF0hFKLnzSaLEccS1do4JP0Y87XQ+A87pHJTG281Opfv6+Dw
+MQWRKyFwsuRCOUKiihSDN+AvkKR3nDeWcuKfLITjmBdJY14L5Nx6y9Y5VFohKMvb8w8Ir3qD/Tp
YMaMzggbAbwsZk6wleRI8s6p/c17fgzaLCOUMtjKJdzC2c8cbcMyn0aJ8HcL1JurcnL5mce5ydlB
IMH+XWLkm+Xh6as1kdYpzVWJnaPfudHxjy22HZ0tF3vKkXLCb04ICZh4kqVSHU0ujMOtLEp/bDke
AlF7gTAlRTFp/c2uTM2YK9Iwf2/zJi29X5seS5x5SuDoYtDxCZ6qccpxnOVtBnJpc4Hcyr5olLX2
kqH+hKacm6GpHWb5hWpntF/xh25MBRzE8PnEmRE0cXawNhTiCrv/vCfdOaJHPKmhNWfJ6U/2EyTH
euZMdA9u+lA7eMEjZWrIlrvbEDAdBHxKndJ/lRP/q26VCfxRsoh7PIpxoAkGzpjBw1NvblG4cY03
kPp2xxlvT2j3XqIWWjOleZaDAy3rpwIW/VpmxAo9b83rSNQklklj2Kvog8TdWjGm7BZq3/K6PNzH
zyj3sPRmV4ZAQOv7OIp0t3t0Ygl11GsKxVeRq3S8wmmIBO+ULxFttkxdwmFHRZ8nbMfpYTX1vY5d
p6U8qv+FC3axA8nVcIT0MQGQjPGczAk+QQPSaYJNjGR64eQ0Wm+mV0ilZX6GoIt32imFRsmXRVe/
DZPj0zZo2Y+x+uXKjCBI1IZOqABeeS5JvntfRmTEM9xK+MfTCCmXE4kjtKgZsOrM7+XGS5x1G2OE
Rxsivssxu1LXkx0VUyNLO4B4SK2y1fTRAWquZilEOFawwYzjc/itZp6M+q+1SnGBcOCEcvXXEULy
YGnUPsuAnyifh6rkvEd8HYI0GCmWn/NTimcqCD82CYt9QtQBTJxdo8mtn2jayYJC2pRSCjpJ9UVq
4OUdVx6Gaw9uiqAwatY4lX/iQ7oL0UCo4VPsdzKHbrWunZeQ1v+s7TE4T3wO/lfq0Xkkbya1ht2h
+oWv8XnBAnzCoXYyhjPT40WEvucU1mm5Ixv62LvXpuWAfy3Pd7z37Ss0TxVTwW9snH5Il+P2wTdm
w+K++XgQs6Ukpiku7WBLsNV/3aFLEHJHcteHbYHKBmpC6ETe2EJTQ+YYYwIDCPypqpCSGt0JZRc2
al4DGnzQpm0wOoLouaiN72M7ny3INQC09ekUmvuWlr6Iv6EPnslFhcTqn3BmvbpUa3cxk9Ig99u9
/9FRoPHvneghwgtpN4SuGmRq75HI1m5SgvfM4JHEThUrVkkr7M81elqTPKZcH5li2am4UMsj0CiC
i1ccz9Gu3u1YVnRriEyBDHbXoRu0J1xBV740qfonelez5JKBDFau52WccFDalsdvyoO2shHHKLJf
6lxldj2kZIUNPi5BDsgRVDNvVF5IUhbNxoQ1aPpizhf6hO5XMtGYPdWQ3FA83UprkVwP0+Dhe+Rk
IZWYAfMpqoQ/QjYW22/ykdlb7dzd+7u3WfUCTlb/SIL451rYNVlXBB/zUsdfKEPvJPHS68gMZfvA
JDT4rXorJrCAjrt5vGrNcTIkBjOIWY9t/rK6WiQ1K5CMnM0L13yenWdXmWpSF4SBPsWzKC5tOMRf
KgyIHk7iw0nIPzQ6JVFbmWfqnnsz5VK61cBnjrt/gaGU0xbJ11tlEwH144sdEv+pRpPfORedOwRn
HPyVqrBfAoJBO4jhKXaicShXEn/8uxB2AKC1UBqluxLfSoi77DII92/JWjSUMmCPTT4OPpY5h+9S
WRPE94lK38QoCkSRXkY1tR8zWwU3iM/Gvdh6AGZa4ok9KbrrSnttfUkwgFMyDO5LrddbVVC+4FXw
sAfFQo2ZwKH/TqA44fJSwbpHLMEGaekAvqqu7XuZz3RnlUAn65bHXEyziqOAprJj8otKmoHO2TFu
tN7jG+CV8UNzkUp49ItYN2IxwP2bV3tR3tygIwJRLGJtkvvGoR8X2wiBv4OnSbhi+SQwbI2IL+4h
yULC/dzW8dUG56aUdPvHFrOQVCL6wra2kzegoULdnp0/OWvpQXMgDmcq2eKNI4dFpVh4kdkZk/Cc
+UfGr1b27y4ELE/9rnjHoIeqFYCfMEA6oDCREC4g8wVhXOkisUHo9lfHUWjAeCdD5i9dRrCYhp8g
DULjwuHrfj0FjJ+/pVB9vi6ZG7R2SCIfnoZ5TdQ87D2Yt9kF9ak0L9n6OCve2qhPzA+Aea33JsJ/
pubO5GWLzpcJRFihPMXThG/H8GHa7qmsBnqbzLwf76BMZdFFLafTRJ0yBZ1Me5A1nGatA9L+35Qb
wd3MqNrMF8la95InBGK+cSeGHHbR7u+iBdqlBRKbwMGy8qIknuT012+rla/QqKUJJ/IlVjmUFELz
mcHNYDE9n6ySW0iW5++3H4W0zaVMfs7FIClf5o33kJLeUM7RaWF1fhdyO4AFRkCtOo6FXJzg9okd
MLAdwvNB1Hoj5HoNshdX6HMwEpfuWfY5B+Ev3lzUr/YDe3Nsoyu4c+SbXgRG69riUYbTjLeepUDS
rI4VGOMdShNksr0IjXd2tSbxWV8irQ+cEBJX7uwiDN3Td3FPQk5I7Fe4S4KkNQGZAqDItfKV7aD5
CaFQFYBD/cZSRYw7pZvvPwmXY4kh997mXsv6fp1zbFrtM+F0QZxz1Fzkk1eELoRxr6ZbLCRCBxJE
+i7M8L6dwrE42Hq7ptNlFCxBKw9nzYsusuL2CdXsvQLvU4umS6zdcbLwm7TbxJZXJf+k+g7vhPLd
Gi+f7nynIOTpH0dmNCgNaChEqPLexxqE4lDHedGbUSmyrJW8dvrJIHx0a0DuCYrEzv0bpJ4I4fWF
a8f7xp6E2IksvwOlbVlAFnpMAbZS4ftVC4PWSjgiea1Er9DDNeYhs2ycClguaGPsU+RC+ge7MUFl
dwKfVNOE4KAdplwwPdX4nR2xnpy0Ys7ckLStXX3EvikCV3Kx3HywimGYbYDfkdUI4szyFJeuGsyx
EjhV1+6FBDaVtoBg1JiFb1eIPQGuT2Rv1Yq4zj0bEjzOCRUNaweVnERJCtIX45HrKsgKFyav8xyk
6qHahsNmHThytQXqaDteZdEm6xYDtN8d1IF2heM0SErurT0xj69Yxo28A4c6CbWOwflZytp18G0a
n2NHEbGFsAFIo3O3iT9IgtKjkfOQ0UgVl2tGcJugKjFxe3j0gqd7aAvUk5DFlF0GKoGnByALtAZs
s21pz/Ny4yr4q30p3BhOc/RsdBqRNjjAIqCM/KDX+VJO0uoU8GQ9ksgNB7xBtiOueuk5ASMhhv2c
XmNhRY0MqGP+bFy/drKXbnbO2Q322vgjJlNigk0qSi1qW7SDyvLNwwnP18B1PqFBRnGx0j1uAsCB
ZVvuxKqlCe6SgWD93ulO8n5WpF1lp333Oy6mkUtsagGuYIw+8a1OKM1FAAknTyNN9qF5UXcMwall
Q3KDsracK7dM0OZgYvXwLL2LFdUqAthaHJEwB1NNlfAdisNo6pW1Q9XnqcVwKFlCQbrxy4tR1fCL
joaM2y4BeTML0Ee9PDVX0/1VZQs1s6RqBG3uqMUw6LoxjvI8QWLR+MAQUcfymHYecAxBQvhKHOP2
xtREhqMK1Bs0SEjWDLBcuhh/jb/DodcfBc/HCjcMPj+LtdViMx/iNnVgJERYir+C4dLJj2ujQE3u
mxjTrTFG8LbVEnbN8Yp48W/RHPQ1V+Y0OWKLyTDBUbluowR5+1igj5bDF/ANcQ7ZLYYycOnYU6KO
Fa8Cl26r43odNsI8SpgGqylHec29/Ind832ndmfMODQSnSb+Jw3Dx28vum4lh8pljg0ODiRCSPL4
mOZBzGfCLH6hQHxNhrtpERGWK5VKEEw/sx0Hxd5AZ2Q9ZB5ztJZog6udZOtDs1ip81kvVAyrI2d4
vBZMNaGS7GoNdluoFy+/4djcJR3OkzzpqEURTW6SQTnSXB0dD/qcTtvhb/hxTV/pvyWH2KduOc0K
3yw7yvoDnUV0CtQVeyj5n7QyyXjdvSMIfGjzqv8kKOnUZUu5g+Z82ooBEi6fw4YyAX7LLf+K7xGj
zIWwPP2w9oYstOGNSXaNPUQ6RORLFEhMtCElbnGflqRcs6FgeHnohdijx0XdMOhJWFDhvvT+z1Ts
o/7pyVvW09M5/msXP86Is54VGELKEiQdOXBgRBmU9QTZxIopPe034cBNOo0pMosCQayAtNBJ/PuA
HT7uJolVv6m0FFbRfaZtyJcLbMrvEI8wGeWXK2jDapoGy98nOdKYMXcCDu2qW+Tzl21f5GrevvhE
zhZMsRND7EAmqcZwkX4BWd0Xe5zxQBLGhIRxQr28wk0kcntP7ELedGNx7ySMtU43tzdd4QUawxHJ
cFUJbb8N3Jl+YUHCos2iYfLR9JYiI8rYV8ZlwBWaO2m/fyCcd7e/SGnShCT30NnUkqi5qA6ZRtNT
qI3Zf3NNy1z8faywT/X0glBbVLFpM9aXFTOMxXY4ulixkgEoC5su/UAA8azU5aRbievhN/woUULA
JYyjaml1q2HBmkQ7XO6yIbwjkMBsC2uwfH/ePkdwXV1Zcgi5BKECEOuVQwuXmii+Zihb3Mh/t6T0
O9pINaE1zmjxaV/RATKYZozjVXzXwwswzd/KLo/IH/BoqVwx28xT+sED9OFh2KpWam6ST0xApsM/
orw6cYVx3QUkUUq5m7Uheg8Mv58ZbiJPbQ27EjhiFLHoc134f7Nn+Et/+NQYuEz3TVvh8rRrHeMD
+yo4pKcOW217BJgHGZ0IZpMe3XAZy75vMCyMhLHIFDRAxrAvPdZ5Unmw8YbClePXBt9ubiBW/ksP
xfNZgXdbtjROOQZZ40Eed9MvgDPhgrRCzfOrkyYplTc7+cFW1YJPUjLybelarMLu+lq5/zh0HGZN
M/rfySjwBVHij4n4+vaJpuelrVk6KeCCpYgpSkF4VSRs+TsIHONCP8309RjaPo8VFGaUcQvQoRtB
NQw5FniKwI06Cg6Tf8xz+fll3Y34apVGjMEFOLi/4aA61RZFBR6cVtbxAJkTXiAtSZdzPgGB81ZB
qiC4QOy1WRcIscQp6srGF+xiMuDHcFrvLMUpnsRvdbdgSjsg/FVH4E4Z+wm9jvdaxK0tQnPTMUTW
7VjceHlMztM5kwNc/8X17AcOBzVuLCDe55saM6P/FacvRkkANyw9YCUc8azzwtWZSV7GOdK+CFr2
4wSVQyCgXMrM2WTb3N+fvhwhUynkZSZ92lSrbOkK92Y9dQGAhaaEkFkhxgke4/m/IXzp2CYFS9Gg
UkbwdqVbf6lcRcNySCE2EeKNj5ve8g6IcyDdn50FO6OhlVnTkNsoH664oHGcarglhcs6TJ6Ho0H/
m3zNOKjbMq4PhfwsrJszAcB2fldziAZK7qYxePZIzEegR8VjqkBfvooBfSdHgQhzK4FJhRA7WsJz
NnJ1PXyz+S7QitWuqBb/ge6eH2H8OyTh7sM/qwQmdd7UYO/9+dKTOWAhOkO74MFLrMOBBVwHlbuk
DKhXyyCvXTOWSXVR8v3k9MFLMkOWhzpIhVIi3VWu1a5g/FjiJsF4qr+0m7ipIEcjWzZwIhVu67IX
aNTASRBSTHC7kfM/dzzmELm0Ls2zbf4BbN/PO7aCug8KH+AUqCGZlk5bUgM8PlGOe2brsA/s9WfD
9HaJti6/tU778StlkeVACfOuBFNDoYQg23/acUB/ueIqzJnsqAGw9d+ezYVhSy3PFRAjTiByS3V6
p4k4LzJRGekiyPA46cpnjVAHguqqse1FSbtc479cmRDPY6VLDfsHPXB7VYNvHPO76FNiVhXKmBnp
9C8JbGkfcqxfpFomOE2WkocxK68GfOVQylODvv3eTnZU2TTLXnk9cZKO7oB152ssrIZa94rcNWVU
SfwMUsDjHeVCVNnHqY785ZuzwjVhlpFdd31xmgCEG8Sm/tEvnRzx3DSYJue2zNslggtoD3YQbL6l
QfCzAgYUyYwulwdHc+PG9S8upkWsQiMYZJTz2CoTPAVMYrwDqSLzoIshC7rq1rRpr9vumhLqicLf
830J81VMpE/r3PFTV6XfT8A8eQ6eFyXSnDKp4o24VC03TdcnCG6LjvuXH8DNsZK5PhG94WXuMka4
TOEAUTW0sHGMAIJAF/MLY8lZ5WMnNrysIH054TdvKJ4NQwcG6hfqSjl9Pw03zlQcAv/hA7eaCQhe
iO6iAQbNjgsHdqJc+C8xWHFOfPK2quWfR5045KNLIYm1hB2CGHMw+dO73cDaQU9SUozCFkYEjvR2
TQ9O9WiWu1Ot5inW38FJ0XLYLuCpTR6oOFg0gYZOoMe2n4Ad0k8yBcDjqFDhnTtOiKARfCiiq+44
PvBBj0Hxz/xxBo3OhB74APWuAQTSRS0EhHGsEyp55nkquKVA6vePZ8461zAk5sK15nejq0BpPHmf
cM6apaol4+5GLBPClyMUQo5AhaDvKJ8Hp5KuEbst1e8MseS5EBkcVGw/LuKbbLhQ+wZaHlkLjICh
zkl5ZzkDPqgeitGM7j+/oAmas5ldEzSXsyuXafAaqQlgQ1UWOzQI760FC+NHWO0kiyTPWjJEfuyj
6f+MFzg164tudcFLeV11tbx+5Iwy8j66s2ueDFNZa3FXLImI7YwJl3N2ZRz+1yOHX3nAG74sjZG7
+seeqQHBN0INMZakxYFtNJvsF2JUFZZJOItoA5Y6ht7vwkLwWA7gNo2KRf/pe5E5UO7JRDADsao6
0zAj2bjgrPSW4un3LRjOGoikDUeuDbFyZyZwZ7N/6my40NRocBnK2PIjJhuAyyFLAOKTefcVM1GZ
GgOdDRYEudSdXmLR8n9pigmCcF+CHzCjr6Uvc5YcF1n7QhzDzplbt8q+NFoVt1B25ElxBzvegwax
kmB/ZJbNmqqfd94cx0hnWdFQq2HEgaSFsF37LFwhM3tqUHfpkhr6wQU0Do7xL4pwQAlDtOSlVPPT
HyCdDKrs2KG3whsg2fVDXgdeT95vlRWavfU5c+j3LFIGlUTwQqr0K8xxY+bETeyn+WZBrMxpoQ9M
88/HFx1GL30H927nBV5lCF+0Piw/7y988YVImZ7lVan4HNC7Nvj/YUOYr5EEV8THgfvM/KSzzE77
nmgtXxncuWXIgB/3Fju1zYkhmdXiYO8aLfIbsy2U39A0gT/OUTkaufqEwfKSWeY1jlwF1kMSg0NT
1P7O3/d/dATWIp7S4T6LGBppgdGVlXGF6PhcMdweIfOv2NWWlx3ouEEIDOF1+kj0gb70BM0TUxgz
AYpWS2wO2X88S8NTnhF2v0VDzB++nb0vZWQsXAl9m5QrTiafJ/Triw7IPcCu8J5IO67Uu/nRXZg/
gLq9js+ezEJFvAr01dxQTenHzpPEfkS6fMAewZ0xC3bX6XdR4qt5HUR8Diee+KfVGKBykGogscUd
fxqM/sdu6MgJ5F1uht9kC6JsJuUq1q9IQF/dQwayMaZtD3e3AgcFpDZcL+7gD3GG9xZg45RPMWsW
e5yxG+pBzhMp/JIXFoCxHujCqbiivZxkn2rP+Kf349JKmRvcbagVnAkqol3w3rMLPZw26EY2LeWd
o4Q9tmWU7of4pLAw0D8pFge5zl15PTr0Zjfh4Taj017giO+kBIjox9U/eu8RiZ2JDwNx0XonQi2u
ZH+JwtV1GYpOsKuzbT9k7ieNNW69YkGEcowTc9iC6fGBkw1aGIiONsC85KfukY2HyF8ReWcL8ZOD
QA/UdfBp6ZsyXRvQETiYDbASPZl8guOD36aVXlJpC0mfgzRlcDIOrJZjw71MD0ViubW22HJImeDb
cBxJC23+yFNfKwyMci4GryesoJMhkpCZ8GPJMg7bw0j3j0ouM3SGBDPr4J1+15GT/fTfjugcz+rA
Iqidjz9ojjiVZPcUiSHfSbzovBspfMoD6jjk5hoPqZAmUP+E/X1F/QXGwxOz8Lf+hWS92c9Z3tVy
UF3A2EeuO9EEL/l5E67LgJFg45afrsnAE7HtqTQYHqX29Cz4BprbfoBJpa57jUxAPgDYe04VjEem
cZx1eT3C6tBBcxPgwoZaJXqwD83YUNe9ThzrglCtEuOqSZdrdQj3SJ0FX366duC9M1wFnlxo+6i0
KDlL6UKzfJ8A/JiPUHPg8bboXwBbG3o72dwACD2y5yCYLJajHX9b6HeoIpYoUzL+VBneYzHEkgCi
aq3JYUQG1L2/kLkdK07ehuhwRbtk2dQ52Fmed5M3I0ZuZoHonh0opo/1QUXBHePf8lSoPG8hd75P
riUE3RJ15QTGhjoGDOIXCr3ZfoxEkQvCSMobplsZc/3DWccgftvgXMQbJURutPCWrzvulaBn/aCo
IagIU7J1Z8JOTUsRXgZrZvphloA+tTZnZWgbAJuvk/9j0v6C2pKfCqkebrezCDSxt4C3kZNBukOL
yfbdxaoMcontOBsYEcXZhq4vYBUph0AQ/I1FwTDvm2rG4tXtFfPlar0HAzEx2FfvQvU9zquHjbPO
gs+AO7WMDcCgUEuc5+nS2AIqWtbkGJA0D5ri/GcecpeWeVf8LZVBJtDBh1WP1FRxnN56Z7YwHMIj
DLKz5r+QeJgWv/yvNKMahEyvRUgZLRDmAkhrljrOUeBoyzla94LJiJXKD74wkosn5FZDFS6PuxRP
yUZRhF85ZiiUYRanwpkYwZ9XpptPjAaCOKGoXBApS0KpHkoyEbfRsULXo9AWLv9GH+VAzjhCUdrJ
6OPExLdRI/Emm+IPLBZdh4Aj5e+biimU+jxzyU2ZlxEWb/Ocdw0Xcd5goPl85Z/W+yCEgfYg64bY
JoJcCXc3qtIrZ07Y5mNUFviXYtcllbTdDR3/LSYEF5E85iOrOW+6whCjGab3weQmutmobAn1ja7Q
QW+0ApUIaK9WovdOHzFxlYG72GWpsO03G956czvlPYjBYF+vKpMWS9lOhnxvM0yKhnchRJH+lErI
I09NX6WgfEHEc1ELmNkDl23nXVp2g0i7zdA5SgQbk/A7kQV0BMtX68GnHkl+6zMynRq3bg76CeZV
0HrB3KUaF4/ooOPz0FZtqSMeCe5idLIA5YCuGHT5DzMbKkR4qQPivAbWUS96oyBLV2JFMesGBGHH
tlFii/vtlaqSBgfGh61MNQKfmMXS1ZMEKAWAbNNv6ISn1uqy/6mEpKu8C7YB9/udJJvrXZjAW74f
0Y1egp+SYzUuOgE9j1Zuio6BPN3iS+ia65KUe9uWctSy+V3tfH/sK42MglTJ7YihW+KJrGYZrhIJ
uB0IyeRPxXBJhDGmLQUzE3nzKtloDmau9na2P6VtTOvn3pn9xnQwaTySzJs3RGpzanEomBNjf0BH
Xk45CMewograbQTztY7Q5aYpKSjOKFNWNwEmosuM0F0DINIiI3O1TgmvIOAnh9egpvIdSX9Owrol
lL+jif3yG9vjGQMUBi99bZroxuvuOAYfU6fP8iRHl903bSe79hLiecUdRw7nkGZ5c/JOu56Fg+So
g+lvnlzvRHceV/AVURpprn6MPkJEmLSL+smkAS3yt0S72kAE3i5tWYfeuPGpXwdtiXGulE99+DQD
7wRrMVIQSM3pOlMJeRPW5RNTahfcmLer66XrxjdIHFQaW25P5U8oxuFXepMMUM8ENHXAdA4OAMy7
QpT+FKEiTm8IlbQVxWb+/J+DywX4WyH8YKKhSDBZV0bcOetMLGBCa1je7DE+0G8DT8jBHabGg3Kc
uTOuSIlR/rTtP0mDyzmJ3e1DC0NyFxIyV3uNNEcHg4/p+PnDonb4wzyt4KLb+oLhrZoDj4fQKIoU
FC7j5lfoUcXB98eoUjbndX0auk5ZuXu59BCuUD3zmR56YmdSuMltYZDFdpUc35aPx2Y74NNgegif
x2f8poyCGtky0z5xqzQeucM2QdYoNHU1jDvl9/kpp1xburYrng6EFc61JFfi5y4mnBSD5ggt/zxN
mPl6A4EMb+LioYptldl5iVRFGrnLiq9oP0HH01n/Rw5qAtpsivyloRrlFf09D9e46ITJIeMZ5Y0O
jEHuI3FscaAJ/nTZ5N7ktIsPzAK2P23HVRLnHTl2zt+V7nXLd9BbKfCpTshZmGwmPHpTPMqUb5yL
WTQhdK0SQz1ej5q9GM0it5Y38bv/ll0lwm+Rx2qGPzoASjjuJr84VP7YB4dqfUsEsePmn/5yjbn0
xCZNHweJNZVDoTEw98qLEY6uB/u56grW4ppGh8fq94F6KPhXIgT/FOx6mxxibpKDrh0vkpEyZgyi
SwFkorv2SfAzOHFdirgELNWMJiJbn30PuVl0hEBK/sHMDBE+IQTYa59kIFsIm/swGgBb0zkbMpUY
1nnlhtxI+2VpCPYx+8DuC2kyS4tmDrOWOQhna/iARswA94D220QtQVfwLu1rN8AQF+zmCdzawf87
q+EcWgSioYhqXJSgJYUYNVhpHqmVifI4QKC8JzzNrocfXn9nTYOStFcG+Gfb4eG3E+0HxMUJ4fLd
huSX5U0uy7p+U2YuqmnO3iZkX2eZUpIDQ+J+QznF9ueWVGAEZbpWgXPflsY39ZaXDp52AnJfu6AV
eUgsNsahLeOPGkZtbfoZN98JKX9YZymfQRAus2iqDJ4ruIeHrxKEv0XJmUaqHuXugYrBX5HCX5M0
9i86IOCqJINC/kvbNE3tb70vCuI3CA5l2S8XvcXZp5MXnUHJfkxwjXsOHb1OsIEpVUQgyEAeDdY6
DtZEa8ZZy8yyOJV+LaI6CJPA7agk0NOES7MzAvJQa85x61ll5mzoEPUbiq/bScUkToWraf6htgCA
Oy9LAdiDqH2P9KNYoQ8CCKbFahr2o9i34T/98PHuntuPxgTcLFBU9VuC6iPNJtajLC0RhNIuVwNL
7zHC4NxoH+GlYrPglDJrIlybXh6pKZsdLd3/+wY9sZjR//R03oO5hXcQ3kVe5y2rPK/FmKdC3+oS
DkPEL+ltAV2656zKywWrBI0TkFyLhLEYOfFggTrIqkaXU8ZGxODSrQRQRE722kYFYwox1eGzLS23
f7/LqPqdU5gqtisDILmG4z0vOPM8hMq5z0KZozCYNmvnjCpmc+Jty0PeXpw1vC6Usv0jGedWWE5m
BdLFtwk/xk+8odJWLMx+Ie56N3XaBygoP+UeYg2hGYu6ET0dZkcllcXi/6IyGCZZz2s18HBGFgDP
5RqXFgBw/0sMEg8wSbbJwVwi7GbP4sK+4XgVuw4GWf3K6dtnPNy0Jwxdbx8m1JM8KivRglOVsn64
XrQT3LQeFtfltEH08RMSdMsHJWu+bOjcaZOoUTeSWU4GM0yzArqb2ZjJ/sMBfg9HcpqE0dAzn2tY
aSwzB8jCrVuH30byEyAgb4D04FmSrC7eV7VGOVF4zypmhBlB4vK1cnptxAJ8rPRDBxBsQOJ4HP41
muUDVG2/41/hGSjK0CMqjmlFvvSqW6Yj3gbtki8FhOmK5oP+MRjwczJupw3AlvIMuqWe8v4uYRnj
bib/JYWdrGp1Q7ZFN1B3FPgZHXK8sBvtc3qS/tk7n5msmOcAzpjVIC6ZiR3ik6gGXM+lVFK3HOGc
s/VEy2x6fYEqhMWRjvDbPN1cxzkMATaxumEv805hzacsxN5dMWI479YE/ttiCvGWll3vsBuuArLx
NhSOlt8Ye8mvOGTIhGgwTAJTBO/L3Yl3O4C8oLm4+23v2tvPxz2fZjxsewhmwiZYpa0/u9uKxLa7
THZ/1g6tRLjAad/nNzL2IHLbVWTsJFnkJhSPcB6kt6xpurhSq1TNrSWAFbSkYllCw1eyvk2M8JNT
l+qGCOmvqfQRW+mEJ29u85sJMhfZegrIaDGOLqZ8DuQJQogcNTWMUjNBdQVnj925egMhpUptLiSY
k68VXMJKIqXESKNAcwUAzhb8VkG80cXnQlMD7oWjexeEN2LRYH9tC/cuvKU/9ObTEGpUVSTuQ5/T
sO5Gq5dAsA0ECyoKMbZAuKSzbMwgGH5tdixxIYRIHm5zWwCcBwF/ufXH8ztQSEdHsC3+PETixQFR
RWXiR9SS0hkMNYh5B7Ug2cBGJDiyHHsLZKC9PLXmWgPDshf8rbZS1BL2NrF2sjBizJlExoPSdLXC
8iFWRfSn+4JBB7yjFHtflP2roDgSljzhlrz3Fg3ENJL99RJAdM5IUDvjoLd7L0EBpg/Tgc67E5nI
nvLtcvl9UKdFuSvAgmCPqVFJCon1+LftdTzzReOENqJJDfobYMTNPcbm/XP3zTO2xZJguMTRvYOC
SH9HQD8AG5APKcwpjq8AdL+B7NCjNU39BC//W5JxzbZ5Wpv04jiHDD2K5v1YiFXdZhi4XvSN/8Kj
0A24qbtop/rhCjQ3w9FpPVsO0UjMfhNlaKaKRro3HIPga18Z8IoPnxRlDYNpe+x+Kl3/Gt1MFjhE
nN0F0fgH5g9TCc9H7LWDHN5fy+k1aFc+aYLXqqb5L5N8sOjjirM1MfK6x0o4cfhucH8a4yo+ZyjP
qz7pN8YJyJapQ0ZjECicR1ZF4kt1hrXQMfKwVWHTfuFp9j1m7nqQ1T5+bnTmgutP9TEJ8s0IY8tC
9qpX3hzWkm7ayZ7ZjieXxWZZ4sIJ8VvZgbS9X+9W1gpu1ZnQk0M+Rep3p6aNhju7HPeXTzj9JEtV
TEGrzIj+RdoQLZDWIpoCWhJshA7bIjHbdFh7a5hsSkYTR5pbQWbEXta2coRbkLhFPIKmTSY0dTsT
jQqDnwEr0cWWwOK1epSwEUOKT3WjiI9RVWY91XAYWhhFyAuT4tf8EfLSXlrC1086aDepQN/bS+hu
I8l3dRflaYRgdqR/6ZhDP3kpt898Qj6EmA3UAl9h5Q/C7Ud5WG+8l0PTJdJicf50YwunIqEvrTAH
UAdK5yrCDMuuVGZuUcDLH+3eK1qSJfYXI1eqnIpUr+vyOX0BsdIY5hZ2CUc21Fq16HUoG2Bm7Yxx
WwKQVbkdR4YjSyOiGL85I7/XPOIDjKBlFjj2HNBclaJEpreMurSlNg/aVXMtK+IRVp6j4t2HdpDr
gU3LkCTo1GfM5AH8qbVFuS0EH+Z3wH+TCaP4lM6ow/lGV+uMr4xqO3a1BS5Tjf3820yNbSX1Yr0X
KBi/wNOBzQ5e2fpR/4ZK/q/7qLW8V6lz8akfs3CuMUJg4SqRtkiE1bBan49QoxmQRSA2lIXqGd1s
SjDd0ypQ7v/8E3QuV46t6f4nFZPMVjhhuoraLK+2cw8tTmRnKsqHtERVSZZ4Hdhk9Rng37eJzTrz
gGrD0qtl2YpLH2HtXvjL2gt5snS15iKXeotD+T0VAg8RaBUYAFIq983r5EW98XYhlE9rzil1rDPE
VnW5Z3ugPDEfQJTIZhC6Ll/thw6nvFOWT3mzFI4wWbxGdnVzeQ7s6IuuJipfL9wFExZMdu0n1FRl
qbXJx2iT8zYBU7oNqX0S9txG+KaA9SrH2/78IGSUn6hgkl8L+SPOafn/nQCuUdRWzQ+rfPiqglQa
xDrk5noNtVGru1+G82g6vYPMC9e+qvbfl+r9ZutGufCcm6hUzjsZ+wQhvw52e+wD5eYB1lR1dMk0
zgBLjPAFn2B0uP8/WyiklR0Rc7cWOSUDHsisgPh8sqIeTutc+l2nngZHohuE+dgtn8GhMF1Gqqdy
Skx04NykeJAw+yA7q6qENGBKAJPOVJMFG4HyuKWgEiIpg+bPIDNanep1/mV7FahfpO9HQ5vqPaDu
soaQNOajD3ZJIKtEkVlI+GxK1trGwMasxxE9CZ9spvMNwO0PdtNvVVfgAWpmbS2VDE0bw/b3VKro
WNdWgH/VdQT4tEYLANuQh237t3HLtPmCyFthopHlcSbHtmZEHXYDHKRHPpxHxbzHzCqS7wcWnQd/
7dQW+Zhlr0ZOMSJkcIObqfPoXKDgrtPt+BZGE5OvC6Os1LZh5P278FW0jf6bgioctaVTUtV57cav
X7eO5u2Yc7AT4RcKIw7dq0jJzTpmNWtHJDOxVBaWILTdSRgANATIw9uLFBOeKniBWoZE4+9NXUIw
bOlHSI+rJOBXqO1mQEUzJzSPkWU8SJpuim4/hWUxtdqDd2uICCXZ3UkCB5XGIKP3Kb3Oy6Hah8Qh
NnhSP85egauZs7/gNKLRt58b7NKF76Qb0Xd1StaCntV2whQLWzjF268TyXz4JeSmbtNzmDoEZBPT
18/e+PQraEzl73NqcUNinFYPsizL1Y8+09ZSHMDNBVSGIrD82EwZtQSzylFY4yCPSNTwGo6fYWuK
Ktq3Cv9Ta3/S4LatYfgB7+VleCMpGW8bvowSKMw1+z3Rqxyl4ALOp549yG6J4CU9PZmdsqBX9pzS
ms/+8Miz+PKO9iAeXty7N7oEBPfQx2YeiEmPOqm5FsVAZUoCyYQkoMoSoCFrFW5wSm+6awetoPz7
umkWg3mKYqUFmrQGvJpMPPMZGLe0e9NN+S1ZsMz+BzZ0K0UHDD4fw0epAI4nkst86bV/UfphPeXB
DZRtdjoS2ngvZSmiV7FG6/nOb/5vlqSKZi/r75FNChQhWB4Si/e8dkPzf7NzJCknhgwa/fn9pO6p
HYNh1rfFow3Jmwo+nMXJfBOjHcx2eofse28Hk6/JmvNew1iwg5glML95mnbDytHobjOa/sDEmKgG
NjuE408q+1VyR+wakp5YeaZ+WQtPgM0ZiNVip7k8r2DJ/wzY+yelFYse/yY6XLYkNoVNitwuJ3ry
b9KWrN60IwfGySzdSQ9mQhmOjeu9R9gsEzXnV4aht7DUhi226BBQ8kQxztmX0mxsQzuhplTh4IXe
+N6TD/uAA01biODlmSkGwQFgwhvi1zOdr/PEeTsS/flDKR3bMiDdWw73ERwxC+qpVgox6RHMopx9
LlLSEVltsEEh6NGqZiTHcDZu88oaSG7lJkF4llvmXDvEOUwegGg35/c85zAI3a/jvDtAHGivIwoa
DSkFipi7EZfyXpBPvUS5dvKP3Ei23f9Zw9WNauirge85WE1lSjHI7y7TuWBDa/oyNNd37srwwsRi
YdRrDpGgeI7VBc8BH0Om6Gr0f/fjU79VZaOmVKJcI1PQxkh10IsUuza8Sa05nBVaYDJCQOpxHp+x
2QSOQumGpQsYVxgFhRllcjEs5Cbpcw+0OsNmbZu6WPDGJNzy8Hc8z/2gZY9iq23v3Qza1Dw2l3c+
raNgShk4t9fBzCmc6ZbGhTLcGaPZZjCQNVo9VYPo3WqpQrVxyBfvl4Zc9IT0noB8qQlpiqHF35t2
dw8xu2agawB0SQq9ZkhaXBoNrAx7eoyi2/351LJiWZQW6k9VrOx1rTS49UICQPVdpiCcDNJReED8
qvVu1DyeeUf1kITlGbTHA4Eo+VBS7r33lNj19yeTUEuFiQAyHq8dPvFqQiRj/Q53RORwdF8z/ayU
1pzrEPODykgIX1xx3mQq5bwaniYSNKRCBgQR/rIf4SXTEkD0W1SJO1daVQR2+tNT12gcXbiqOUuI
Zd+Dt3+BPDwHc9yOoXWND9Ml/tECJq/UwrvH29CYHBSAFNjHnmngQ9ocLNdVbBoNMUWAOcodoPkc
8zsqzToiYktVCEIac85O290JQBOO1f3/VDizQ66HsuHZBvWmpCeEGiIikSLJZghpAVqgfFzKcOth
vai9YiBBR4XqtYsiKqJ7YV3mtWeuzet1ZbXc7r0c+7WkfZmRQoTY6K8v2ZJ1MFwO0T8C1x4Uj1y8
6vsjdLmTe+t17j3/r5HqKDjQtmFPkq2B6gMEJ/FDNPL6LPbjw36Tuzy1nRJMskjveKb5comhPetm
nzdMmMxUfR5hdy8IDR3/Q+lf3iud8xYia5+5j1dascLs5vhfhs+lAo4GaOhE1AlsYZL6Sm4ABQ1v
5LJWWbPqTrlTUvsb2o7RtlPvejJbbSwXuNRv5z8FV01bN5hn1jM7iF3vESUAd9GjHmzhbKqVoCtY
8MCF/+E/BmP1coEYByctkzw7VEwVart0IwdunUtb4g7mNzP0DRSNikWFF7umS+wH1pTAHHhXP+jY
H/oRIA0aMShhUoAeQ7+Q3FsU2Rs4kwiwH8K+z5Hjt108qPKhwdITlqr66aNJA+WEvZ7LHM1C97Ap
um/umap984rrXTMe9u8BSBgONvwBSQw6tPr6q05A3ObHJidanBU5iWr8KyCbdFixonaIPW1rI1oh
5Rz36tULzBIDYVk8ELSg3iieKQ58XfoPOiDACbSD8Kw4mIC5EnqVjxxQjepipG7J6pRGhXt72OXv
H5jBdDeHGHsdwClJvYAK0L/BX43rjR8mIvpqESnsII6V20APJXkEnGC1cQpf20r1fShE+mIeC9jP
w50HlHzJlRNUAjbcaHyUU7oR9aJ9BKH3BQM69HeOGgZ8nD30joL6dpZcNGbZ7MKu7XyVDTnVn0Og
IOkpGS8RvKYDhsvvFBgtQ3gm0o9gee1j633QzZwfkqNo80EtEJeW/7Jkdb+B7zSx6XwyWLFuicc5
0Tx3EYluYA8kAjz4dKcHYmq6aG22CjzjxAgaLHioGgu3s8X06AqN4s1CDLDT6iQSxk0T6cSCfRVy
KHCw97CQTzMlNufHKUOisTRLFjmTiWHS841cRZUiUvK3W+NLPaGDTqGnyIAKuL5HskTPLVeH74WM
eg6y/fwORQ8PMEZgoCUt/7VAu53PUlmB6QHoJ8H3aTh8Lff34661yNYr7brfZ7LWYCYYLGtPF1bl
5WCujbFBkwK7nacsPr6czYitBrH24C5BXWy1mYfqfG6I37R/Q9YvgCfSc9WA0WLhsyvmOcGfVog5
taMocBQ3xSB8wP+bO/XXCJb6DYlfh3qBpCA0HGPpBcXdZc9/2/3cADOwxha/u/KKwqkuspFttNBe
y46MHIHXeA17SFXqpOZx7sIpK6j+uIG4l8k8nWJ71F6YKOyuaS9SmdqAYXCeMB/Bnei+slOmYhi7
tdOIZ+whxD8fd9gTqoUmewUk33toJ8T4nE4L87UJDjMiFUWbaUxPbFTrgROfJu89gp2w9m0o2cAx
sRoe1sKwea6+81Y6tdSOvV/Xc9d+Eyy25rCeeEGBc1l5kWlPSYw5Q5ESHCXqGWTdjIUMdYQHi0sl
ScfHP9fXfekPPvWDRyyY23uQ+O6AA+9/iKb+P2ZhR9Ab+M9APcANlM+or1mqexdDnTcJfsexF+oy
2J7s0k1YNh8fKysh57yUDGL84pPHMDabP2D9hYrwQW4cKeiR4niw/5cuDUOMeRMrddVNiBTcQ522
0X/yKoYIfOJVNrfKm+97jrsG749lSPkLDw2fQ4QjzXSPLpWtNpaty1nnxw5uUavh1/mIaxMIY9L/
JN/Pk8JUwdt/esPuEuPqefw8cY4bIx9+F5AKfg8rP8mluG2kwvulCPmee6kelM8P1vIqiuYG+GrI
/5HmnDfIO2acBSf1hBRdhkDgjXiQ736IJuDJIusd9AfO8FQZ8lGd/f5zlgYwkUoxRCqmzE/3/C4F
9rP/SsVxhL9SrWMrAkYI8CDKgLLuFN40A9NXc+DgSU7/6CVB3OzLk7ZFQAv8KsMUrd5E9CK4uY38
rJPsntTP/EoRIweA02MMD9Fp9jqyKltlqJ0sksc8g/orxeWPp0d6336C3RsZi9cvbRb/mZiIfeJM
9C+HvvGShk1rpYWP8UA26POiFy8b7StWKW0sG+/cAiEpl+HdUs9jtMXAcNvFz2nkEl/K9ZJB+eNb
c/1OSRY4Y3dr9P2gXivHx09X11kuRiCI9+XSK6sUZgG/Gq40N4B48FKq8+fKspyDrPO0ySKQ122m
ifgMd4Ooxa5i0tCEwsNqGMe5G6WP8tK+aUAbBoHsHPf0PiJHbGfEeZMEuG7W9AfJnMdGhNrqaoIQ
Cw3saq/jOKf/n7cRLVsO6epnuxOIWWlW50xKRXvJ9AAGq+xQVi3oPhka1HSuA2aHSfFgoz6eDm83
bW6xANwVdGSHC4uegNIQJBLGKBFBxUTuS7B/8EIjK3lVvvSPLVAtfa8+ftRTaU/DOL2yzJd3r4vB
rvoV9DzvJkHOBkE1DoG5+fkgHllekD8+EiDLtFGIPPSSLFoC6ibCjrrhqxc4TzPk8lGDTYC3H98o
cJL04kCaxJQesN3i8rQrXmFUVJFj7UISAzdnucFNYTD3VGjo2uBf9JBDQz4sglfgqkazd58H+AnT
vbAwSuuKv9ACWvhU5MMCEle5Z+aFdKpMqI/UNkynJCJEY21q4P1ck3YfNVGV5wOSHXx1xx7FqXv7
oKRx+7FvZkYXUe9XDbGfyFmDxyZi8La+rdyTwK57FbtH6NyYZtFZ/Od7cvC0rkNHnptM5ppOrZXk
MV3uPztMc9ydnTTBJiZoSyi+qvdvuOKCWKOIG2j+VlDhEkXezx5/r2k2fsMqk/GnjNeaGyyQOS1+
YekuZHqbRIQqmc4lE/uDkDtd+HEfogpWg7d703/qrO4NKBCK5lXhFVOMkOV+WcKQmaHjZo/WK/BW
9YmJJik1FHNOe/N69KgiVjwWpLx++ZNzw3UI8DTtYwPSG4r3Bq9c2v15SdEDPSoGyB7f8LywXf1r
ZfnXobYODnfA6VTOBLKg8AupHA09v3/5D8e1HiNqzleqM0GTTGf1JdqU9Yd4E+vp064UzR6mjG7w
i+xTYEYI6POuQO5Nxa/gGC3OZqzF78p0HtunPqHNFGB6v8I/KW4xu4den98qpZ+djufWEClrLbIk
8U0OI+PAGulHortT+vkjKaLJ2qvSRYWaXzY6Tu3f0mvq2bpj6q5D9QNH3zg0J8U3jKZoX3kBgnDx
5GrPmzOqUcCxQ5OsYOJttOLNqRs+sflTdg7/xSRVQ56eC9/uxo5PX2EmfUF0F+3G6MmRMnfl3bAf
HdTqkkMWUBYUuWSWnRR8nozVWIQ8bP2y5g7qKgwMOxwY77MY/gqILuSS6583fBB2jaVuUDlflwIK
snW83XbsZ/cyYoyk/UsD7vKQcYrEIDnTNiP7VE7nOG9BwXxqxLwFl2DNsZq48Mj5tYVR896PdvO2
q8oZsmqO7n5kF9qEn3WcR015Oj3XZVxweBWt3VkVTl/+CwmsAfCIOJki+mq7kRpki1I8aIJq2ORV
JrI+Oubm3jxmN+1pHZGG271Pl+Xp59yWCZkHqeQWIGONPHOjrTPdO5guFXXzdm8MyN4P7n3PsM6H
Y/cKVPK2LGn/xIoWD4O5SOx6dLM1d88lEeE2DIosYjJlpuYxI40HpiUEay442U3efIOP4KRQ80Ae
LbS4hRQDlXb89WTeatf8IWJts5CTHrF/Wftmi+sVZWrs6SivMhDQeq7FSFfVInYTpV1nf/glh6a+
sg/2y32QDrBEp11OHEJ1x+URfm2WtraVvckN1IM5cz7oS3Lp4LuJG217uCk23eA8cauw3vrjS5aq
57oYVIzlsCoN3Yd2ud8Wq7gueUURLNRIHIWfeSlO9TAqtCjENjFSTZEmjfeEvqjeoFswSfQwsNVO
qA/E+Dy+25Ple/6IpltXwiMMCdcJojJS59vX8edifUxc+500s1Y80NQLgDYcbQvDr+1OYCFYcfP0
tvt2OLaMclWrgYHBw05Sf2i9JZFuDOtpG+n5URqePuqu/7SZBR1WPqfjlRh/51hW9T1aBylUA3pV
EZaKkhepFXKENddNMVrqexYrrj4Dwo3hNu3KBBArmjPVwOpjFIXuyhTCEC0DNvdEAcw79xUCxnkT
zypbrFUTpPB6OzTYZbPS3fcdbEQrIwxJjQqCQgygJB8JRkD2GNIndnQhbFJmWq8PNY166W0214y6
GrLHeVWW6rlWTRNsqXW5WKM0nMSof4Jxcqqh54LVCjtKEZ8m+4o1efVQE/nZ9+jBw/G2gcs5c3MM
R0R+kxiQo0rrIcyNyCzx5Urc2NDZjFq7T0MOkVG6BhyNjgnCoyjLNEIwyaGQ0P2CxezQCzr1wZoL
g4IWR8YLxQi9fA3yT8ZNWXRH/cOEbC/ZuULCNuDkJcp6kyDmbGNVIYcD/+ckVaO3hUHKP5Cm2HE3
OJ8wKRr/jNaWhUOFmHtNkDfqQayEF+R1MZJQ/+BkKTA7S+ffR3qbywHn0lctklvLE5AnmqF3ya3U
0uUD24mQ2iKudhSoj4tyJzWi9TJKXJD5CUbdNcW8FInTSRHzB9nnLHCTvKj81KIU5z0RjeZsmzBb
7+E55mpCDB0TSMdVw54XQKW789b/jlZfgk3U0ZhpxN/sdXbFiMKax8D5792mRTiAiODuRrEflA9Q
z3jHdKNAsofoOq7OHUDnzqpm6nYqAfQm3HpCKKeEsOeAulh+lOANMV3lxvojwOX/lmRJdN27MAdc
QlsMAGw3Ku23x8lDYQg9YbxauvOgkQe+NvOo1xg5uWX993+9bCvyYqgd7s7SL1PeevSsYv8kRXRt
MTmkM/uX6XOGKvDglO1TXrG9Flt49KM8HXeaDM7cLngYd1GDwNv9KIZc4gw4YSJ6OXFS8swtuYSm
O8k6NaSNS6WlvTG0eWNTZg3WpRd8rzcvL8/ycs/dvbJqjeFjmRPzW4RFQetvGFopXE8GhIHp13Rp
4bJBzDOUqqFGSwGSlgxWQni+0TvNwHWRfiteHnuKPFqU8cCBfpsFe+4eOBwNsK6hweZWmMODXUcA
6ZGsXvvXbszsQ5iDpGdS8vabpMURNADTQ4sgdFXrp2k9lMv4jZF8OvJGTpf4jAzvTqVMG70Fu2Zg
GIesS8ORIggh5OpcYBXGrMBODExyxf5a3rVYk0jgTco9hp3JftxWWJOEDRI9auxxzs5nJzAFqYot
aMz8gIB5qPKvl0+EHL+eVcqOgYKqAPFG+7XsVlj1dOWH8tTTS+qv4NT/k2THi4OkA2VURxnFhy1D
qtu00D+uuHX/B2I/6t93IBvOVGsq8nH55COPobXxsrFvugwFR54yfI2FdgxuzmhjJqJDKje8VIGK
PFYhSqdif95OK+pUh9hyvAemKUxP8q4EgdKjHCJSCMndT4y9ynQkfzPnmogudBbFEyKuxZZ4Bl9J
6FLC/k7wIx1Whm65uKeg3DzDHU+wDhI+9FQAUpQK+afPXHokKht/9kZC+PAVl60A/FO/0jO1SuRH
In+GgmdtJmQ7g8ge3D6ozqGN3s811gAl00QZ3pds3FSdTtqICZCOjhc2yDxmAUueteCjXeMYTtWu
f7ZapomNRd2E4d63tMHPWGcra1avIMf41lf1ZuuaaKcqu1dfbT7ItSCQKcVy/LRcokqxZfjjWtof
V/V5JVcAIl8Pld9kBaHpBlv6UEVR2VW3008n+cfOgGddaFZYplqi4TV0zPOfwdglVNHVINUoYF7K
hJh3yyc63fkb67c3QEHFakLD7EzFEOUpjecJa+Ziir0jBZfh+M/s4MslgjgOft3GqZ0LV0YF39f2
2i7gM1TY8NeRiJGHVoOV6HROeSWEcrUs+IDQT7NTFPdijaOCSrXzLPuqKBPzBuzmWVRc5nc3QJxM
RwYzyFQx+pjvyRYiF5kyG0sqKKYHIwKRudJc7c96+jtarD5CI7lkot4VFoiE/T2JYD37KQMZpz4l
X0hJYQ985KrEiS335Aj4Jsje2Kfa47QD1f0sv8l3x2qdYo8v7MfgpJUtk0T/IP55QhY3rhlSTEz4
WQkrv6wFDd5RvDbBr4VGeMDjBIknRZ1H5ySiw8S6mWa783e1rZn0FPCFHYDQRlogAlZyd8JVMf+/
PrQPXPHX0O6OX2eourrxlm0VNgTypj6EgquL+7zMnn6RWdXeLC+LavOBkRJkZpz8f46ihgItBMmp
SmKTvHlisSkQUvU4615lV3mKcDk6EzRS7z7Mp6TqJhiJpuEdAQjEsYdE30LpHSJ02XuD7gRrlKq3
YFa+SKA4Ebd3tSWbV8Cp4Z1EhwtQSne6GWfyExzq3sWmrGWNISW1TTGS1mUNA1R0YWV1odBkONEX
kq0OXi/6L2RvR0bQ8NX/TQZPXPy0pmOPs/Q8KtDRt1/aocJaF+fjv3uJrGqjgf9KwyvWeMPpcpXZ
w22Z5wAEKSJULjr6afYdPbNic3/zACOYHmmO9Nb1eTjW513af+1f/2z5631rxvQkLoAl1i1HBcXG
kq91vBEQHFt+VKLdy3f71fxFuAmlQbwOVvCy8vI8jeXDtvRylkWYO3ZyTCda7iLBZ/FZaisXZLlQ
0eVAGnsTa9dz3mUkAPiwuoZO4p1mSW6RlRhfEmUK8PI8PGc1ow9LHdNR0Ei/Ur3kCcJmRV5i3APU
KRWND4E4WQkdvWmEdJ5RdgjzJeuZtNAs09pI6SB7I97IE0NIaxKHeQ7kd36qtdRPl1uWMeLdgcRE
uiw/bj7zc0aikmu3Nq0d0hSAueOhk3yDE3pf5kbTPfqZeMHfLCwc9/v6BaPf+8IXPVQVzRzFHVfF
kyUclQd3yB5rQ7+mzehiqMU06/hXmw7VoqlXhYQ/q4OnQmEch92AvT93vrBq/XmNg1Bjdr3SIhIH
k1dRanNjcOEfybOqsp1Dky58/3ZPywgBJtw4qdZGUXZUIOMd4hEQn63g+ZtjorCRcJUQMK0XEPFY
dnP1JSLsVq9XVY9kna4017uR7XkafEPen2PqiwWf0CRl4+aErdPzB1RPbOqysxbScwAbw8jUdGAb
NjHLcDB8mM5HeUigWg7zzYuuxcvT4PLX1nLNgHVduqxcasQ80PVhGvnc0VJdPF/bkCaEeJctgTqT
m8BGvlotncZ50g7vDRthLa+xZtTA1NSxeZ3RH5A1HxLCedaXZlXHrPckxPrR1pO6UgEfKAnaRMwX
+5DIj1crc7PFp7YgsM1fw7zIPmrQAURdNMiMmfEW7xSHvSA2JfzR6hcJ4VE/C0NAdJgWGcQrpXjm
5cDLUHBoIHtkOsO8UNlS0H1CnGRBZExVNAu+2R1alG798+6IorR/rXGy+6ENh/cMjXdOQA/mZGcX
ukC7VJEVYjBncnle21Ye/fJzUDRPz0MJCbUvi77VPqaeLscv5Kd1+8CfMu3hVeteIw2h8rl5Nj4U
H8lTALcBm2GyKJycn2owcit5HvHrtJWO4/8Sg9CzDqkAnUvD+6Mwze2PfNGQ4qgVFOaWHsK9whgc
/k1jx40J/ReSw9c4xzm3M80C0TPLb+yyiaYZLyWh818LU6HixFTBAqMQ1k9GXbk+uaM8+Iw0+5ob
aTFFIB8040SjI5INTZyxpGQUFoL5Qqq6iUynvemyayYA72bsYct0wmVVSWJMsttCRZsavCtad10/
nX0Tgt4N9nMsIiRWR+SNoG5jTtQ0B2e8wQzSBqtciSenUKuXSXCV/n8mGQP2MQ606VgXd/IDOJ06
l0vgnd7zO7ovEHJVcFc/qsUtuSHHAJ1+n4Hvc7gglcL7m1fPtZJH3mJkZF1KKEY99NSMTyhUJjkq
fzFu25Enx6u6BdR5gAnV09e3hkvg4sqC/IyO43Qz6oiZO2FkAunluB9ufFe4OEYnWaRw+ousxagR
faUBQofmVy2AyWcG4izcOJLfGe9TPTgWBth/iaTHw2IX5beftFLzZGMTpw0R01mvGGZnsdTC70Oe
JTYSXgjrPAZK7Z9XIuXa/jxapjnufp2cmQehC/yz70CaydaZN6aFiKLYO8olYvdSkn9n7apz5a6B
0oLqOLt89bRryydHRqINUYmxDFS+OmVqdPny8zC7YCzlvLC9X2jzaCvnuVfg371ujJi5a/dQZVql
u2oKSjStVQsLydX9TgNo2xX3p8fRWbWvbBsMeZOcw9NxA/IJ3qkACvigZvv83iEsBoLR5jAhDGlx
cPn8MHXe1Nq4/eFr8lPxpi0X3TtLc+DdMYqDkYlp9/uOl4PJTIwPds4oLDTLnM3siuKG/ZyTAGI5
bS9hQMw0BiD+rqqt4EJY0lTAvtfVlJcs53BrHthlCz++8v6miwsodGJTxsGPoNz1BKoDn+29xOQp
YY3NXFphDu9bQSltA3ouCU1BFnayR/bZ5esmgBZh5aI3iMQMYl1jCdsGsO1xUQDFSo+tNlpE9hbp
jLLuXdle5w5V4e8WSxuDjtzFIVB5xlunF2kjFjrRnnwKSQz4mb/xmxDkoS7qx6vF7I6/e0kp1YfD
z0U9lGJrW14Qgp3X8wyPU9kUJQRjUHASQZPeueezrzw6C676qV6VJRVqkRVitvUbV9eJHrRwptan
zGghPGNNubo7U9FWw/Wu0fxnv1Kh+vb5kWBQT7EDvub6TPTapRIqotFGaccCCk2F93HCEXtyc8ZZ
4JN5aS9ARrJRb48yUnx0xf46zfM2kZeWiNPsuSBu6FSEoSEZFYwLB4jxTZNfmyourkhoLfZlsTkq
oDem071BWh/3JTl+X/PsYWqR9tTUOGxj7V5d/TeQtlhAvBTZmwE7+f6TkXaWaYl+NwQjwDa98fv3
YeSSO5jmNhO1o9BUL4+oeFl2htIzj9gS4XAScZav0WG9yzWw6pT67NDChCvtJnkFVO7hEMwqV96n
SI5v272l3rwK5r0LJc4Q4yPb90QzsoQU2h8Kr+EVGW7u4nESH1oOn1lwTRQFyGpmH95/n1lpTo1S
cayQRBRv/pNbaA72y3/X/27qsXcdy7CzDjn+lCgW87+k4pg2ltx/4Y7G6KoPRTctWAys+XGPcu5h
E/wTj0isafwCIUHPGOCJiXcFFMzQ7gz+CZPLoeQ53wGX9FrddotePEsHFBlo1VYbZItQ0xGankmN
s9hApFTrTZnJrq4iNQtlBSn4JrZcQLqIVs84Vnwwo7ci3V50SA4FP3oEq42Pxkw1ophMqBvuLFAq
nf13B0Bc359WwQiil96IJixwWOCKJGrJ5wUJK5RNceAGbLoV3GOwXJs7x+dtnRwe7lfC+KiL7Pf/
CUdD4TLodO7zRwIglyj6eG0mNeb9SpUgwD6VCM6oRQd7xs2TLmdABUnVceWz+UHpgzOKshznlhEj
KIuX27tcvXHyht0+fNOq2zVtF/1+pAk3hqHa7SElGD0i7JdhdToLnw97c7xZaTc4sLE3oysKjV4w
PXNcJ322uKQMJ/vZQIWmUa9WzgV50Fk5n/wXKvfKZqk/+vNXHBr7oIRts8BF4auJLgCs3HwPPWMF
olG22M4DQX7+0kcfcSRTOEyFkUH0ulX99M9pnPUwPXCa3RM7MKuwp2Sxlw1hwZ9OvyS/apQZuJHz
VHhcqvtLL4YnpoW0Ih4Xa8n5MAM1WbNFHA91zZbLecRWDJnP6Yd8sNfWJI8wnTPT2H0KmeCEUIhf
YXl7WvR1/rFjk3ksLEscXBOPqJWGLxJYxd97faL5w5M2dlaA3v5E7bDWlIzFW5n1c1noCTSedseE
IzuRDjXc+APvkNakRoSn0GDLjF4LDiLR3wIxokK40O5g/LbTDAzl1xfTB9Zz9IiqXmh64RP4B/yM
1EFXez2IKz3fRDk33M8pp/ncGETsxfNTdk71PwFoQtTHNhGzOhBTQNxPszDWlnPECcKeemBAPNTV
cOu5pHfgpBT0rWBsE6J6X5wuInjDyChvk1ne/fH0WahXaZ6LBi5pnMxsn7nSGUMYoiZYd8XYFSa/
SFanZpnAQABAuETMilpzfP5oWyBfJenhQIARaTnJWODcdc3V5K+vJgspFOi9bBztqSp+1Q7Ui+Q4
4h1LL/x8K401Ull6zzINhHQiUGROzIvHsON7keI+RKh6MgLCE2DBW8fFrsWudNGsd0QVHGeiOt0y
wZkT9sEUhclu3DPR7Rjyy4iRGVRYxir2sqTU8ErrNp45a5H2FOHI58bwpiF64FdERJcYZo81Jq24
b06SqbhEW4rDF6pqAQiXuGsPjRZ6nKNkeSq3xRrUSuhAxwbNNHKjeojYcnebWjwKZcC7mExEbBBP
XhhBkZUHJF31TAvy56ngkS4IqVRnN42lWz/wf/BUTJCroN4f93ofvIEGv+Z/lEdU9gUgK2iG+GMJ
mR16iKe9jE3eeLWlG/vVE2fMKwhEVTHII05BRyilHx97EFJSNgc99PBmNhCML0xlIt+hJE+I61Ke
gQC66TEuvF8z9CsOxL+0qhQxegFarh06zJU8SNGrbtUtIXf6SnBLnOGNPQRTixNUbZRfOhpetQ7d
IqGbbJjrutG+nnFzFoCivW4N+nSFfE2hJFafZK4nhJt4v22Xs0e/5DBxllWNL5zgR2787oQMHnQ9
U/+93L83Ps7uWDPLXaMv1DC26MK2ufssL/1lGyzh+OLZVeypTQI6zh4JZdcLFiAqkq0y+wAxW/q+
+uWAqJCTbkc2t/jo35DJwA/IqxoW+YIgb9QS6SlI9KABJqymIDST2jJMrfXDPuHATt8kJ+hcowBf
7SaNlQeQf8x9KBX0gmr74P7k/hLHzPLmaW3O2EPCC1fC41QA2TcJ+KBkTOzplIKh8vfBm64XN1co
yjT3NdRrazJ9J1w7//YPFLrZhGrfy6Ht+IPk0Y8/xd3yPSt3F1qJx5xOsRMzkcuGUUrRvloIx3PB
7yjWGbPIZ5Pw41uiA581J2DGarNPy6is+Mng9IZLoa4PXHmyPuDo7vqUGGlS4zqdEaYOjab/Xb2I
iXeBET/lAMoM1Hgg4om2yBDuD8SqpQZcZ3oEnu9W2E5L78tJzQjcEv6QTJH0fjK2NaYRxmzPTOJU
TSCpBLCtMGi1bxHTmVFB604Lwr+kKh3bcBlAhTFGe7PVOpAGf305nlYtCPgx2gCiH6H1VhK+KK0E
QyMuRcv5O8fpn3i4ML928aTMAfk1NOCaFL+kpqKd6Kg5qlnweMFhiiQnsdAxAvLrr9qQ2b937Raq
Y5dMYFPhd92/j7Zo5DiJgVLU6fK3DfI/LIAS5GaLvAtVs2qv1ZQNzdr35kj6QD611Dj5NPN6HPS1
+qJxkbR/Xrs9qA0m85pm5tTBman5LGwr+En/A7XgOsQ2NFvByZneIdgkwybMA7pkeXudrisCC/vD
6pdCsSuHjmSedQ==
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
