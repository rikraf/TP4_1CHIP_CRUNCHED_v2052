// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Mar  2 13:52:02 2026
// Host        : richardraffanti running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/richardraffanti/xilproj/TP4_1CHIP_RAW_V20252/TP4_1CHIP_RAW_V20252.gen/sources_1/bd/design_1/ip/design_1_breakout1_0_0/design_1_breakout1_0_0_sim_netlist.v
// Design      : design_1_breakout1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu37p-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_breakout1_0_0,breakout1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "breakout1,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_breakout1_0_0
   (din,
    do_0,
    do_1,
    do_2,
    do_3,
    do_4,
    do_5,
    do_6,
    do_7,
    do_8,
    do_9,
    do_10,
    do_11,
    do_12,
    do_13,
    do_14,
    do_15,
    do_16,
    do_17,
    do_18,
    do_19,
    do_31_20);
  input [31:0]din;
  output do_0;
  output do_1;
  output do_2;
  output do_3;
  output do_4;
  output do_5;
  output do_6;
  output do_7;
  output do_8;
  output do_9;
  output do_10;
  output do_11;
  output do_12;
  output do_13;
  output do_14;
  output do_15;
  output do_16;
  output do_17;
  output do_18;
  output do_19;
  output [11:0]do_31_20;

  wire [31:0]din;

  assign do_0 = din[0];
  assign do_1 = din[1];
  assign do_10 = din[10];
  assign do_11 = din[11];
  assign do_12 = din[12];
  assign do_13 = din[13];
  assign do_14 = din[14];
  assign do_15 = din[15];
  assign do_16 = din[16];
  assign do_17 = din[17];
  assign do_18 = din[18];
  assign do_19 = din[19];
  assign do_2 = din[2];
  assign do_3 = din[3];
  assign do_31_20[11:0] = din[31:20];
  assign do_4 = din[4];
  assign do_5 = din[5];
  assign do_6 = din[6];
  assign do_7 = din[7];
  assign do_8 = din[8];
  assign do_9 = din[9];
endmodule
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
