`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2023 10:14:34 PM
// Design Name: 
// Module Name: breakout1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module breakout1(
    input [31:0] din,
    output do_0,
    output do_1,
    output do_2,
    output do_3,
    output do_4,
    output do_5,
    output do_6,
    output do_7,
    output do_8,
    output do_9,
    output do_10,
    output do_11,
    output do_12,
    output do_13,
    output do_14,
    output do_15,
    output do_16,
    output do_17,
    output do_18,
    output do_19,
    output [11:0] do_31_20
    );
    
    assign do_0 = din[0];
    assign do_1 = din[1];
    assign do_2 = din[2];
    assign do_3 = din[3];
    assign do_4 = din[4];
    assign do_5 = din[5];
    assign do_6 = din[6];
    assign do_7 = din[7];
    assign do_8 = din[8];
    assign do_9 = din[9];
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
    assign do_31_20 = din[31:20];
endmodule
