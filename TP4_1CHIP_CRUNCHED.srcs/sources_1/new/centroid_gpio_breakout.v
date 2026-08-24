`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2026 10:45:50 AM
// Design Name: 
// Module Name: centroid_gpio_breakout
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


module centroid_gpio_breakout(
    input [31:0] port1_in,
    input [31:0] port2_in,
    output [15:0] p1_15_0_out,
    output [15:0] p1_31_16_out,
    output [15:0] p2_15_0_out,
    output [9:0] p2_25_16_out,
    output p2_26_out,
    output p2_27_out
    );
    
    assign p1_15_0_out = port1_in[15:0];
    assign p1_31_16_out = port1_in[31:16];
    assign p2_15_0_out = port2_in[15:0];
    assign p2_25_16_out = port2_in[25:16];
    assign p2_26_out = port2_in[26];
    assign p2_27_out = port2_in[27];
    
endmodule
