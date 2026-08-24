`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2024 03:11:53 PM
// Allow selection of one or the other axis stream
//////////////////////////////////////////////////////////////////////////////////


module axis_bypass #(parameter BUS_WIDTH = 128)
    (
    input clk,
    //
    input [BUS_WIDTH-1:0] din_0,
    input din0_val,
    input [BUS_WIDTH-1:0] din_1,
    input din1_val,
    output reg [BUS_WIDTH-1:0] dout,
    output reg out_val,
    input sel
    );
    
    always @ (posedge clk) begin
        dout <= sel ? din_1 : din_0;
        out_val <= sel ? din1_val : din0_val;
    end
endmodule
