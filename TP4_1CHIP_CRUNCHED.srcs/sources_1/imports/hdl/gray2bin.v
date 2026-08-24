`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2024 04:35:32 PM
// Design Name: 
// Module Name: gray2bin
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


module gray2bin(
    input [15:0] gray,
    input decode_on,
    output [15:0] out
    );   
    
    reg [15:0] bin;
integer ii; 
always @(*)
    for(ii=0;ii<16;ii = ii+1)  bin[ii] = ^(gray >> ii);
assign out = decode_on ? bin : gray;
endmodule
