`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2026 11:18:07 AM
// Design Name: 
// Module Name: digpix_select
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


module digpix_select(
    input drive_in,
    input [3:0] sel_dp,
    output [1:0] dp_t_out,
    output [1:0] dp_b_out
    );
    assign dp_t_out[1] = drive_in && sel_dp[3]; 
    assign dp_t_out[0] = drive_in && sel_dp[2]; 
    assign dp_b_out[1] = drive_in && sel_dp[1]; 
    assign dp_b_out[0] = drive_in && sel_dp[0]; 
    
endmodule
