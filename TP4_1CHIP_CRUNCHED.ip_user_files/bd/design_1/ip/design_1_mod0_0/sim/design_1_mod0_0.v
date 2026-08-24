// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:tp4_2pair_HS_readout:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_mod0_0 (
  top_p,
  top_n,
  bot_p,
  bot_n,
  top_refclk_p,
  top_refclk_n,
  bot_refclk_p,
  bot_refclk_n,
  init_clk,
  clk100,
  clk40,
  reset_all,
  reset_block_sync_sm,
  reset_tx_dp,
  reset_rx_pll_dp,
  reset_rx_dp,
  fifo_reset,
  decode_addr,
  decode_TOTTOA,
  decode_gray,
  use_rollover,
  clk322,
  clk200,
  write_header_word,
  header_data,
  tx_tdata,
  tx_tvalid,
  tx_tlast,
  tx_tkeep,
  tx_tready,
  pause,
  fake_rate,
  idle,
  raw_pixel_tdata,
  raw_pixel_tval,
  proc_pixel_tdata,
  proc_pixel_tval,
  proc_pixel_tval_width
);

input wire top_p;
input wire top_n;
input wire bot_p;
input wire bot_n;
input wire top_refclk_p;
input wire top_refclk_n;
input wire bot_refclk_p;
input wire bot_refclk_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 init_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME init_clk, FREQ_HZ 20000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_100, INSERT_VIP 0" *)
input wire init_clk;
input wire clk100;
input wire clk40;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_all RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_all, POLARITY ACTIVE_LOW, INSERT_VIP 0, PortWidth 1" *)
input wire reset_all;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_block_sync_sm RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_block_sync_sm, POLARITY ACTIVE_LOW, INSERT_VIP 0, PortWidth 1" *)
input wire reset_block_sync_sm;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_tx_dp RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_tx_dp, POLARITY ACTIVE_LOW, INSERT_VIP 0, PortWidth 1" *)
input wire reset_tx_dp;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_rx_pll_dp RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_rx_pll_dp, POLARITY ACTIVE_LOW, INSERT_VIP 0, PortWidth 1" *)
input wire reset_rx_pll_dp;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_rx_dp RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_rx_dp, POLARITY ACTIVE_LOW, INSERT_VIP 0, PortWidth 1" *)
input wire reset_rx_dp;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fifo_reset RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0, PortWidth 1" *)
input wire fifo_reset;
input wire decode_addr;
input wire decode_TOTTOA;
input wire decode_gray;
input wire use_rollover;
input wire clk322;
input wire clk200;
input wire write_header_word;
input wire [31 : 0] header_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [511 : 0] tx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx TVALID" *)
output wire tx_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx TLAST" *)
output wire tx_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx TKEEP" *)
output wire [63 : 0] tx_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx TREADY" *)
input wire tx_tready;
input wire pause;
input wire [7 : 0] fake_rate;
output wire idle;
output wire [95 : 0] raw_pixel_tdata;
output wire raw_pixel_tval;
input wire [127 : 0] proc_pixel_tdata;
input wire proc_pixel_tval;
input wire proc_pixel_tval_width;

  tp4_2pair_HS_readout #(
    .COMPILE_FOR_SIM(0)
  ) inst (
    .top_p(top_p),
    .top_n(top_n),
    .bot_p(bot_p),
    .bot_n(bot_n),
    .top_refclk_p(top_refclk_p),
    .top_refclk_n(top_refclk_n),
    .bot_refclk_p(bot_refclk_p),
    .bot_refclk_n(bot_refclk_n),
    .init_clk(init_clk),
    .clk100(clk100),
    .clk40(clk40),
    .reset_all(reset_all),
    .reset_block_sync_sm(reset_block_sync_sm),
    .reset_tx_dp(reset_tx_dp),
    .reset_rx_pll_dp(reset_rx_pll_dp),
    .reset_rx_dp(reset_rx_dp),
    .fifo_reset(fifo_reset),
    .decode_addr(decode_addr),
    .decode_TOTTOA(decode_TOTTOA),
    .decode_gray(decode_gray),
    .use_rollover(use_rollover),
    .clk322(clk322),
    .clk200(clk200),
    .write_header_word(write_header_word),
    .header_data(header_data),
    .tx_tdata(tx_tdata),
    .tx_tvalid(tx_tvalid),
    .tx_tlast(tx_tlast),
    .tx_tkeep(tx_tkeep),
    .tx_tready(tx_tready),
    .pause(pause),
    .fake_rate(fake_rate),
    .idle(idle),
    .raw_pixel_tdata(raw_pixel_tdata),
    .raw_pixel_tval(raw_pixel_tval),
    .proc_pixel_tdata(proc_pixel_tdata),
    .proc_pixel_tval(proc_pixel_tval),
    .proc_pixel_tval_width(proc_pixel_tval_width)
  );
endmodule
