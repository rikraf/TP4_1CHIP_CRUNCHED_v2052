`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2024 02:01:45 PM
// Design Name: 
// Module Name: to4_addr_decode
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


module tp4_addr_decode(
    input [17:0] pix_addr,
    input decode_on,
    output [8:0] row,
    output [8:0] col
    );
    
    wire [4:0] pixel = pix_addr[17] ? ~pix_addr[4:0] : pix_addr[4:0];
    wire [3:0] superpix = pix_addr[17] ? ~pix_addr[8:5] : pix_addr[8:5];
    wire [7:0] eoc = pix_addr[17] ? 223 - pix_addr[16:9] : pix_addr[16:9];
    assign col = decode_on ? {eoc, pixel[2]} : pix_addr[17:9];
    assign row = decode_on ? {pix_addr[17], superpix, pixel[4:3], pixel[1:0]} : pix_addr[8:0];

endmodule
