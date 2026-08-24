// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Aug 18 16:15:57 2026
// Host        : richardraffanti running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/richardraffanti/xilproj/TP4_1CHIP_CRUNCHED/TP4_1CHIP_CRUNCHED.runs/ctrl_pkt_fifo_synth_1/ctrl_pkt_fifo_sim_netlist.v
// Design      : ctrl_pkt_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu37p-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ctrl_pkt_fifo,fifo_generator_v13_2_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_14,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module ctrl_pkt_fifo
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_mode = "slave core_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [63:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire clk;
  wire [63:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rd_rst_busy;
  wire srst;
  wire wr_en;
  wire wr_rst_busy;
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
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "64" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "64" *) 
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
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "511" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "510" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  ctrl_pkt_fifo_fifo_generator_v13_2_14 U0
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
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
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
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54880)
`pragma protect data_block
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
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
