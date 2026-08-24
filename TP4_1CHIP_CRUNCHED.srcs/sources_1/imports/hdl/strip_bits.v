`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2024 05:52:17 PM
// Design Name: 
// Module Name: strip_bits
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


module strip_bits(
    input [95:0] data_in,
    output [90:0] data_out
    );
    
    assign data_out = {data_in[95:78], data_in[72:0]};
endmodule
