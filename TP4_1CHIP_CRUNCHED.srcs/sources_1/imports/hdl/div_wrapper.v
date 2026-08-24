`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2024 06:04:20 PM
// Design Name: 
// Module Name: div_wrapper
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


module div_wrapper(
    input clk,
    input [146:0] data_in,
    input [15:0] tuser_in,
    input tval_in,
    output [127:0] tdata_out,
    output tval_out
    );
    wire [31:0] xsum = data_in[146:115];
    wire [31:0] ysum = data_in[114:83];
    wire [27:0] tot_sum = data_in[82:55];
    wire [54:0] toa = data_in[54:0];
    
    //A divider for each X, Y
    wire x_div0;
    wire [31:0] x_value;
    parameter DIVIDER_DELAY = 33;
    
    div_gen_0 X_DIVIDE (
  .aclk(clk),                                      // input wire aclk
  .s_axis_divisor_tvalid(tval_in),    // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata({4'b0,tot_sum}),      // input wire [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(tval_in),  // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(xsum),    // input wire [23 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(tval_out),          // output wire m_axis_dout_tvalid
  .m_axis_dout_tuser(x_div0),            // output wire [0 : 0] m_axis_dout_tuser
  .m_axis_dout_tdata(x_value)            // output wire [31 : 0] m_axis_dout_tdata
);

    wire y_div0;
    wire [31:0] y_value;
    div_gen_0 Y_DIVIDE (
  .aclk(clk),                                      // input wire aclk
  .s_axis_divisor_tvalid(tval_in),    // input wire s_axis_divisor_tvalid
  .s_axis_divisor_tdata({4'b0,tot_sum}),      // input wire [31 : 0] s_axis_divisor_tdata
  .s_axis_dividend_tvalid(tval_in),  // input wire s_axis_dividend_tvalid
  .s_axis_dividend_tdata(ysum),    // input wire [23 : 0] s_axis_dividend_tdata
  .m_axis_dout_tvalid(),          // output wire m_axis_dout_tvalid
  .m_axis_dout_tuser(y_div0),            // output wire [0 : 0] m_axis_dout_tuser
  .m_axis_dout_tdata(y_value)            // output wire [31 : 0] m_axis_dout_tdata
);
   //A shift register for the data not being divided
   parameter clock_cycles = DIVIDER_DELAY;
   //Need to delay the TOA (55b), 16b of tot_sum, and the t_user (NPIX), 16b, so 87b
   parameter data_width = 87;
   parameter SUMTOT_TRUNCATE_VAL = 8;
   wire [data_width-1:0] shift_reg_in, shift_reg_out;
   assign shift_reg_in = {toa, tuser_in, tot_sum[SUMTOT_TRUNCATE_VAL + 15:SUMTOT_TRUNCATE_VAL]};
   reg [clock_cycles-1:0] shift_reg [data_width-1:0];

   integer srl_index;
   initial
      for (srl_index = 0; srl_index < data_width; srl_index = srl_index + 1)
         shift_reg[srl_index] = {clock_cycles{1'b0}};

   genvar i;
   generate
      for (i=0; i < data_width; i=i+1)
      begin: SHIFTREG
         always @(posedge clk)
               shift_reg[i] <= {shift_reg[i][clock_cycles-2:0], shift_reg_in[i]};

         assign shift_reg_out[i] = shift_reg[i][clock_cycles-1];
      end
   endgenerate

wire [15:0] xvalue_truncated =  |x_value[31:16] ? 16'hffff : x_value[15:0];
wire [15:0] yvalue_truncated =  |y_value[31:16] ? 16'hffff : y_value[15:0];
assign tdata_out = {7'b0, x_div0, y_div0, shift_reg_out, xvalue_truncated, yvalue_truncated};

endmodule
