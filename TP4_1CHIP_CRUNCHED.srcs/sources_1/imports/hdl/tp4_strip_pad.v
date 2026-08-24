`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2024 05:02:28 PM
// Strip the extra TOA bits from the 96 bit input and pad to make a 128b output
//////////////////////////////////////////////////////////////////////////////////


module tp4_strip_pad(
    input [95:0] din,
    output [127:0] dout
    );
    //Need to pass the upper 18 and lower 46 bits, and pad the remainder with 0s
    assign dout[63:0] = {din[95:78], din[45:0]};
    assign dout[127:64] = 64'h0;
endmodule
