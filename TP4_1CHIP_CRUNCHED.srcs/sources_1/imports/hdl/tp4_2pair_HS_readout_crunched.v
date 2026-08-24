`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2023 12:58:14 PM
// Design Name: 
// Module Name: tp4_2pair_HS_readout
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


module tp4_2pair_HS_readout(
    input top_p,
    input top_n,
    input bot_p,
    input bot_n,
    input top_refclk_p,
    input top_refclk_n,
    input bot_refclk_p,
    input bot_refclk_n,
    input init_clk,
    input clk100,
    input clk40,
    input reset_all,
    input reset_block_sync_sm,
    input reset_tx_dp,
    input reset_rx_pll_dp,
    input reset_rx_dp,
    input fifo_reset,
    input decode_addr,
    input decode_TOTTOA,
    input decode_gray,
    input use_rollover,
    input clk322,
    input clk200,
    input write_header_word,
    input [31:0] header_data,
    output  [511:0] tx_tdata,
    output   tx_tvalid,
    output   tx_tlast,
    output  [63:0] tx_tkeep,
    input  tx_tready,
    input pause,
    input [7:0] fake_rate,
    output idle,
    output [95:0] raw_pixel_tdata,
    output raw_pixel_tval,
    input [127:0] proc_pixel_tdata,
    input proc_pixel_tval,
    //set this to 1 for 128b, 0 for 64b
    input proc_pixel_tval_width
    );
    parameter COMPILE_FOR_SIM = 0;
    //March 18, 2024: I think this WB parameter is not necessary, just need to change the .xdc to reflect different BGA pinout
    //  Should confirm and remove all this if so- 
    //April 9, 2024: yes, seems to be true, I'll take the WB_VERSION parameter and code out
    //Need to instantiate different receivers for the BGA version (vs the WireBond one) since the pinout is different
    //  In WB version, the TOP(0) pair comes in on BB51/BB52, Bank 124 pair 1
    //                  the BOT(4) pair comes in on AW53/54, Bank 125 pair 1
    //                  and the refclk pair comes in on AV42/43, Bank 124, refclk0
    //  In BGA version, the TOP(0) pair comes in on BB51/BB52, Bank 124 pair 1
    //                  the BOT(4) pair comes in on BA53/54, Bank 124 pair 2
    //                  and the refclk pair comes in on AR40/41 Bank 125 refclk0
    

    //Instantiate a SimpleRx module for one pair each top and bottom
    wire [63:0] top_data_raw;
    (* keep="true" *) wire [63:0] bot_data_raw;
    wire top_val;
    (* keep="true" *) wire bot_val;
    wire top_synced;
    (* keep="true" *) wire bot_synced;
    (* keep="true" *) wire [1:0] bot_hdr_out;
    (* keep="true" *) wire bot_hdr_val;
    wire ref_clk_top_out;
     simple_RX #(.COMPILE_FOR_SIM(COMPILE_FOR_SIM), .TOP(1))RX_TOP(
     .init_clk(init_clk),
     .clk100(clk100),
     .reset_all(reset_all),
     .reset_block_sync_sm(reset_block_sync_sm),
     .reset_tx_dp(reset_tx_dp),
     .reset_rx_pll_dp(reset_rx_pll_dp),
     .reset_rx_dp(reset_rx_dp),
     .rx_polarity(1'b1),
     //input reset_rx,
     .block_sync_reset_in(1'b0),

     //input pma_init,
     // Clock Signals
     .reference_clk_p(top_refclk_p),
     .reference_clk_n(top_refclk_n),
     
     .gt_cplllock(),
 
     // Serial I/O
     .rx_p(top_p),
     .rx_n(top_n),
     
     .gt_powergood(),
     .blocksync_out(top_synced),
     .pass_control_chars(1'b0),
     
     .rxusrclk_out(rx_clk_top),
     .rx_data_out(top_data_raw),
     .rx_data_valid(top_val),
     .rx_header_out(),
     .rx_header_valid(),
     .refclk_in(1'b0),
     .refclk_out(ref_clk_top_out)
    );

     simple_RX #(.COMPILE_FOR_SIM(COMPILE_FOR_SIM),.TOP(0))RX_BOT(
     .init_clk(init_clk),
     .reset_all(reset_all),
     .reset_block_sync_sm(reset_block_sync_sm),
     .reset_tx_dp(reset_tx_dp),
     .reset_rx_pll_dp(reset_rx_pll_dp),
     .reset_rx_dp(reset_rx_dp),
     .rx_polarity(1'b1),
     //input reset_rx,
     .block_sync_reset_in(1'b0),

     //input pma_init,
     // Clock Signals
     .reference_clk_p(bot_refclk_p),
     .reference_clk_n(bot_refclk_n),
     .gt_cplllock(),
 
     // Serial I/O
     .rx_p(bot_p),
     .rx_n(bot_n),
     
     .gt_powergood(),
     .blocksync_out(bot_synced),
     .pass_control_chars(1'b0),
     
     .rxusrclk_out(rx_clk_bot),
     .rx_data_out(bot_data_raw),
     .rx_data_valid(bot_val),
     .rx_header_out(bot_hdr_out),
     .rx_header_valid(bot_hdr_val),
     .refclk_in(ref_clk_top_out),
     .refclk_out()
    );
    
    wire [63:0] top_data = top_data_raw;
    wire [63:0] bot_data = bot_data_raw;
    
    //A clock crossing FIFO for each, 64 by 512
    wire top_fifo_full;
    wire bot_fifo_full;
    wire top_fifo_empty;
    wire bot_fifo_empty;
    wire top_rden;
    wire bot_rden;
    wire [63:0] top_cc_fifo_out;
    wire [63:0] bot_cc_fifo_out;
    wire top_wr_rst_busy;
    wire bot_wr_rst_busy;
    wire wen_top = top_synced && top_val && !top_fifo_full  && !top_wr_rst_busy;
    (* keep="true" *) wire wen_bot = bot_synced && bot_val && !bot_fifo_full  && !bot_wr_rst_busy;
    wire top_fifo_srst;
    wire bot_fifo_srst;
    wire top_rd_rst_busy;
    wire bot_rd_rst_busy;
    
 sync_input RESET_SYNCTOP(
    .clk(rx_clk_top),
    .data_in(fifo_reset),
    .data_out(top_fifo_srst)
    );
   
 sync_input RESET_SYNCBOT(
    .clk(rx_clk_bot),
    .data_in(fifo_reset),
    .data_out(bot_fifo_srst)
    );
   
  fifo_generator_0 TOP_CC_FIFO (
  .srst(top_fifo_srst),                // input wire srst
  .wr_clk(rx_clk_top),            // input wire wr_clk
  .rd_clk(clk200),            // input wire rd_clk
  .din(top_data),                  // input wire [63 : 0] din
  .wr_en(wen_top), // input wire wr_en
  .rd_en(top_rden && !top_rd_rst_busy),              // input wire rd_en
  .dout(top_cc_fifo_out),                // output wire [63 : 0] dout
  .full(top_fifo_full),                // output wire full
  .empty(top_fifo_empty),              // output wire empty
  .wr_rst_busy(top_wr_rst_busy),  // output wire wr_rst_busy 
  .rd_rst_busy(top_rd_rst_busy)  // output wire rd_rst_busy
);

  fifo_generator_0 BOT_CC_FIFO (
  .srst(bot_fifo_srst),                // input wire srst
  .wr_clk(rx_clk_bot),            // input wire wr_clk
  .rd_clk(clk200),            // input wire rd_clk
  .din(bot_data),                  // input wire [63 : 0] din
  .wr_en(wen_bot), // input wire wr_en
  .rd_en(bot_rden && !bot_rd_rst_busy),              // input wire rd_en
  .dout(bot_cc_fifo_out),                // output wire [63 : 0] dout
  .full(bot_fifo_full),                // output wire full
  .empty(bot_fifo_empty),              // output wire empty
  .wr_rst_busy(bot_wr_rst_busy),  // output wire wr_rst_busy
  .rd_rst_busy(bot_rd_rst_busy)  // output wire rd_rst_busy
);

wire dav_top = !top_fifo_empty;
wire dav_bot = !bot_fifo_empty;

wire inp_dav = dav_top || dav_bot;

//A MUX to select one or the other
wire top_bot_sel;
wire [63:0] top_bot_mux_out = top_bot_sel ? top_cc_fifo_out : bot_cc_fifo_out;


//We'll extend the TOA by the full 32 bits allowed, then trim them later in the flow
wire [95:0] roll_core_out;
reg [95:0] roll_core_out_d1;
reg [95:0] roll_core_out_d2;

//We'll decode the pixel address here
wire [8:0] row;
wire [8:0] col;
tp4_addr_decode DECODE_PIX_ADDR(
    .pix_addr(roll_core_out_d1[95:78]),
    .decode_on(decode_addr),
    .row(row),
    .col(col)
    );

    reg pix_data_val_d1;
    reg pix_data_val_d2;
    assign raw_pixel_tval = pix_data_val_d2;
    wire roll_data_tval;
    //Will this Gray-Bin converter work in a single cycle?
    wire [15:0] g2b_out0;
    gray2bin G2B0(
        .gray(roll_core_out[45:30]),
        .decode_on(decode_gray),
        .out(g2b_out0));

wire cc_fifo_rden;                        
    //Register for speed
    always @ (posedge clk200) begin
        roll_core_out_d1 <= use_rollover ? roll_core_out : {top_bot_mux_out[63:46], 32'h0, top_bot_mux_out[45:0]};
        //roll_core_out_d2 <= {roll_core_out_d1[95:46], g2b_out0, roll_core_out_d1[29:0]};
        roll_core_out_d2 <= {col, row, roll_core_out_d1[77:46], g2b_out0, roll_core_out_d1[29:0]};
        pix_data_val_d1 <= use_rollover ? roll_data_tval : cc_fifo_rden;
        pix_data_val_d2 <= pix_data_val_d1;
    end

//Combine the various timing fields to form the complete TOT and TOA values- all in one cycle?
//The roll_core_out has the same format as the input TOT_TOA packet, except that the TOA field has been extended by 32b
//TOA going in is bits 45:30, coming out it's bits 77:30.
wire pileup = roll_core_out_d2[0];
//Pad the various fields with zeroes to match the resolution of the uFtoa values
wire [17:0] TOT = {roll_core_out_d2[11:1], 7'h0};
//wire [8:0] fTOA_f = {roll_core_out_d2[16:12], 4'h0};
//wire [8:0] fTOA_r = {roll_core_out_d2[21:17], 4'h0};
wire [7:0] fTOA_f = {roll_core_out_d2[16:12], 3'h0};
wire [7:0] fTOA_r = {roll_core_out_d2[21:17], 3'h0};
wire [3:0] ufTOA_e_raw = roll_core_out_d2[25:22];
wire [3:0] ufTOA_b_raw = roll_core_out_d2[29:26];
wire [22:0] TOA = {roll_core_out_d2[45:30], 7'h0};
//Decode the ufTOA "thermometer" values to binary
reg [2:0] ufTOA_e;
reg [2:0] ufTOA_b;
always @ (ufTOA_e_raw)
    case(ufTOA_e_raw)
        4'b1111: ufTOA_e = 3'h0;
        4'b1110: ufTOA_e = 3'h1;
        4'b1100: ufTOA_e = 3'h2;
        4'b1000: ufTOA_e = 3'h3;
        4'b0000: ufTOA_e = 3'h4;
        4'b0001: ufTOA_e = 3'h5;
        4'b0011: ufTOA_e = 3'h6;
        4'b0111: ufTOA_e = 3'h7;
        default: ufTOA_e = 3'bxxx;
    endcase
always @ (ufTOA_b_raw)
    case(ufTOA_b_raw)
        4'b1111: ufTOA_b = 3'h0;
        4'b1110: ufTOA_b = 3'h1;
        4'b1100: ufTOA_b = 3'h2;
        4'b1000: ufTOA_b = 3'h3;
        4'b0000: ufTOA_b = 3'h4;
        4'b0001: ufTOA_b = 3'h5;
        4'b0011: ufTOA_b = 3'h6;
        4'b0111: ufTOA_b = 3'h7;
        default: ufTOA_b = 3'bxxx;
    endcase
    
////The "Complete" TOA and TOT values
wire [22:0] CTOA = TOA - fTOA_r - ufTOA_b + ufTOA_e;
wire [17:0] CTOT = TOT + fTOA_r - fTOA_f - ufTOA_b + ufTOA_e;

//Now patch that in when decode_TOTTOA is on
//Pixel address is the high 18b of each 96b extended packet: either pass the decoded or the raw values
assign raw_pixel_tdata[95:78] = roll_core_out_d2[95:78];
//The rest of the 96b extended packet is either the "complete" TOA and TOT values, with the CTOA extended by 32 bits from the rollover core, or just the raw values
assign raw_pixel_tdata[77:0] = decode_TOTTOA ? {pileup, 4'h0, roll_core_out_d2[77:46], CTOA, CTOT} : roll_core_out_d2[77:0];
wire inp_shift;
wire [63:0] ctrl_data;
wire ctrl_val;

wire [63:0] roll_core_in = top_bot_mux_out;

//Put in the Sequent Rollover Correction core
(* keep_hierarchy="yes" *) AXIS_TOA_ROLL_CORR #(.C_EXT_TOA_FIELD_WIDTH(32))ROLL_CORE(
    .ACLK(clk200),
    .ARESETN(!reset_all),
    .S_AXIS_TDATA(roll_core_in),
	.S_AXIS_TVALID(cc_fifo_rden),

	//Data packets.
	.M_AXIS_DATA_TDATA(roll_core_out), //out std_logic_vector(64+C_EXT_TOA_FIELD_WIDTH-1 downto 0);
	.M_AXIS_DATA_TVALID(roll_data_tval), // : out std_logic;

	// Control packets.
	.M_AXIS_CTRL_TDATA(ctrl_data), // : out std_logic_vector(63 downto 0);
	.M_AXIS_CTRL_TVALID(ctrl_val), // : out std_logic;

	.CLK_40MHZ(clk40), // : in std_logic; -- 40 MHz clock (Preferrably the one driving the Timepix4).

	.DROP_TOP_PRE_HB_TOG(), // : out std_logic; -- Toggled when a top data packet is dropped because the top HB hasn't been received yet.
	.DROP_BOT_PRE_HB_TOG(), // : out std_logic; -- Toggled when a bottom data packet is dropped because the bottom HB hasn't been received yet.
	.HB_TOP_TOG(), // : out std_logic; -- Toggled when a top heartbeat packet is received.
	.HB_BOT_TOG(), // : out std_logic; -- Toggled when a bottom heartbeat packet is received.
	.SHUT_RISE_TOG(), // : out std_logic; -- Toggled when a Shutter Rise packet is received and forwarded on.
	.SHUT_FALL_TOG(), // : out std_logic; -- Toggled when a Shutter Fall packet is received and forwarded on.
	.T0_SYNC_TOG(), // : out std_logic; -- Toggled when a T0_SYNC packet is received and forwarded on.
	.SIG_RISE_TOG(), // : out std_logic; -- Toggled when a Signal Rise packet is received and forwarded on.
	.SIG_FALL_TOG(), // : out std_logic; -- Toggled when a Signal Fall packet is received and forwarded on.
	.CTRL_TEST_DATA_TOG(), // : out std_logic; -- Toggled when a Control Test Data packet is received and forwarded on.
	.OTHER_TOG(), // : out std_logic; -- Toggled when other control packet is received and forwarded on.

	.TS_TOP_RO_PULSE(), // : out std_logic; -- Pulsed for a single clock cycle when the top timestamp rolls over (after 81 days of running).
	.TS_BOT_RO_PULSE() // : out std_logic -- Pulsed for a single clock cycle when the top timestamp rolls over (after 81 days of running).

);

//We need to take the control packets out of the other rollover core output port and merge them
//   back into the data flow
//we need to decode the pix_address field of the  control packets in just the same way as those of the data packets,
//  else the decoded data would overlap in pixel address space with the control packets
wire [63:0] ctrl_fifo_in;
tp4_addr_decode DECODE_CTRL_ADDR(
    .pix_addr(ctrl_data[63:46]),
    .decode_on(decode_addr),
    .row(ctrl_fifo_in[54:46]),
    .col(ctrl_fifo_in[63:55])
    );
assign ctrl_fifo_in[45:0] = ctrl_data[45:0];
//wire [17:0] ctrl_pix_addr = ctrl_data[63:46];
//wire [4:0] ctrl_pixel = ctrl_pix_addr[17] ? ~ctrl_pix_addr[4:0] : ctrl_pix_addr[4:0];
//wire [3:0] ctrl_superpix = ctrl_pix_addr[17] ? ~ctrl_pix_addr[8:5] : ctrl_pix_addr[8:5];
//wire [7:0] ctrl_eoc = ctrl_pix_addr[17] ? 223 - ctrl_pix_addr[16:9] : ctrl_pix_addr[16:9];
//wire [8:0] ctrl_col = {ctrl_eoc, ctrl_pixel[2]};
//wire [8:0] ctrl_row = {ctrl_pix_addr[17], ctrl_superpix, ctrl_pixel[4:3], ctrl_pixel[1:0]};

//wire [63:0] ctrl_fifo_in = decode_addr ? {ctrl_col, ctrl_row, ctrl_data[45:0]} : ctrl_data;

wire [63:0] ctrl_fifo_out;
wire fifo_reset_sync_200;
wire ctrl_fifo_full;
wire ctrl_fifo_empty;
wire ctrl_fifo_wen = use_rollover ? ctrl_val && !ctrl_fifo_full : 1'b0;
wire ctrl_fifo_ren;
wire ctrl_wr_rst_busy;
wire ctrl_rd_rst_busy;

ctrl_pkt_fifo CTRL_FIFO (
  .clk(clk200),                  // input wire clk
  .srst(fifo_reset_sync_200),                // input wire srst
  .din(ctrl_fifo_in),                  // input wire [63 : 0] din
  .wr_en(ctrl_fifo_wen && !ctrl_wr_rst_busy),              // input wire wr_en
  .rd_en(ctrl_fifo_ren && !ctrl_rd_rst_busy),              // input wire rd_en
  .dout(ctrl_fifo_out),                // output wire [63 : 0] dout
  .full(ctrl_fifo_full),                // output wire full
  .empty(ctrl_fifo_empty),              // output wire empty
  .wr_rst_busy(ctrl_wr_rst_busy),  // output wire wr_rst_busy
  .rd_rst_busy(ctrl_rd_rst_busy)  // output wire rd_rst_busy
);

//We need to put the control packet back in the flow whenever they appear, but we shouldn't
// let them dominate the flow.  So store a bit indicating the last packet passed, and toggle back-and-forth
// if both are present
reg last_packet_passed = 0;  //1 for control, 0 for data
wire sel_packet_source;     //1 for control, 0 for data
always@ (posedge clk200) if (inp_shift) last_packet_passed <= sel_packet_source;
//When we merge the data back in, add a distinctive header to the control packets
//When using centroid (128b) data, the PC will recognize that header.  When using 
// pixel (64b) data, that header will be stripped
//Make it possible to shift in FFs for when a timeout occurs, so we can get the last data out of the SR
wire force_SR_in_high;
wire [127:0] shift_reg_in = force_SR_in_high ? (~128'h0) : sel_packet_source ? {64'hffff_ffff_ffff_c0de, ctrl_fifo_out} : 
           proc_pixel_tdata;
//We put the control packet in only if there is data in that FIFO and there is no data packet available
// (the data packets have priority)
assign sel_packet_source = !ctrl_fifo_empty && !proc_pixel_tval;
assign ctrl_fifo_ren = sel_packet_source;
//A shift reg to combine 8 96b words into a 768b one
reg [127:0] shift_reg [7:0];
always @ (posedge clk200) begin
    if (inp_shift) begin
         shift_reg[0] <= shift_reg_in;
         shift_reg[1] <= shift_reg[0];
         shift_reg[2] <= shift_reg[1];
         shift_reg[3] <= shift_reg[2];
         shift_reg[4] <= shift_reg[3];
         shift_reg[5] <= shift_reg[4];
         shift_reg[6] <= shift_reg[5];
         shift_reg[7] <= shift_reg[6];
    end
end
//Combine 8 64b words (for width=0) or 4 128b words (width = 1) to make a 512b word
wire [511:0] big_word =  proc_pixel_tval_width ? {shift_reg[3], shift_reg[2], shift_reg[1], shift_reg[0]}
                // : {shift_reg[7][63:0], shift_reg[6][63:0], shift_reg[5][63:0], shift_reg[4][63:0], shift_reg[3][63:0], shift_reg[2][63:0], shift_reg[1][63:0], shift_reg[0][63:0]};
                 : {shift_reg[0][63:0], shift_reg[1][63:0], shift_reg[2][63:0], shift_reg[3][63:0], shift_reg[4][63:0], shift_reg[5][63:0], shift_reg[6][63:0], shift_reg[7][63:0]};

//A FIFO to store up the big words, 64B by 768
wire fifo_write;
wire fifo_read;
wire fifo_reset_sync;
//wire fifo_reset_sync_200;
wire [511:0] fifo_out;
wire fifo_empty;
wire fifo_full;
wire fifo_almost_full;
reg fifo_write_reg;
reg [511:0] big_word_reg;

wire [511:0] fake_data;
wire [511:0] big_fifo_in;

//Rate generator for fake data
/*
reg fake_stb;
wire sel_fake = !(fake_rate == 3'h0);
reg [11:0] fake_count = 0;
always @ (posedge clk200) fake_count <= fake_count + 1;
always @ (fake_rate, fake_count)
    case (fake_rate)
    3'h0: fake_stb = 1'h0;                      // off
    3'h1: fake_stb = (fake_count[11:0] == 12'b111111111111);            // 339 9kB UDP pkts/sec
    3'h2: fake_stb = (fake_count[9:0] == 10'b1111111111);             //  1356
    3'h3: fake_stb = (fake_count[7:0] == 8'b11111111);             //  5425 pkts/sec
    3'h4: fake_stb = (fake_count[5:0] == 6'b111111);             //  22k
    3'h5: fake_stb = (fake_count[3:0] == 4'b1111);             //  87k
    3'h6: fake_stb = (fake_count[1:0] == 2'b11);     // 50Mw/s, 350k pkts/sec
    3'h7: fake_stb = 1'h1;              //200Mw/sec, = 102Gb/s ~1.4M 9kB UDP pkts per sec
    endcase
 */
 //Make it an 8b linear setting
reg [7:0] fake_count = 0;
wire sel_fake = !(fake_rate == 8'h0);

always @ (posedge clk200) fake_count <= fake_count + 1;

wire fake_stb = fake_count < fake_rate;

//A PRBS31 generator
localparam LFSR_WIDTH = 31;
localparam DATA_WIDTH = 64;
localparam LFSR_INIT = {LFSR_WIDTH{1'b1}};
reg [LFSR_WIDTH-1:0] state_reg = LFSR_INIT; 
reg [DATA_WIDTH-1:0] output_reg = 0;
wire [DATA_WIDTH-1:0] lfsr_data;
wire [LFSR_WIDTH-1:0] lfsr_state;

lfsr #(
    .LFSR_WIDTH(LFSR_WIDTH),
    .LFSR_POLY(31'h10000001),
    .LFSR_CONFIG("FIBONACCI"),
    .LFSR_FEED_FORWARD(0),
    .REVERSE(0),
    .DATA_WIDTH(DATA_WIDTH),
    .STYLE("AUTO")
)
lfsr_fake (
    .data_in(0),
    .state_in(state_reg),
    .data_out(lfsr_data),
    .state_out(lfsr_state)
);
always @(posedge clk200) begin
    if (fifo_reset_sync_200) begin
        state_reg <= LFSR_INIT;
        output_reg <= 0;
    end else begin
        if (fake_stb) begin
            state_reg <= lfsr_state;
            output_reg <= lfsr_data;
        end
    end
end

//Repeat the 64b data 8x to get 512
assign fake_data = {output_reg,output_reg,output_reg,output_reg,output_reg,output_reg,output_reg,output_reg};

assign big_fifo_in = sel_fake ? fake_data : big_word_reg;
assign big_fifo_wen = sel_fake ? fake_stb : fifo_write_reg;
fifo_512x256 BIG_FIFO (             //actually 512 wide by 512 deep
  .rd_clk(clk322),                  // input wire clk
  .wr_clk(clk200),
  .srst(fifo_reset_sync_200),                // input wire srst
  .din(big_fifo_in),                  // input wire [511 : 0] din
  .wr_en(big_fifo_wen),              // input wire wr_en
  .rd_en(fifo_read),              // input wire rd_en
  .dout(fifo_out),                // output wire [511 : 0] dout
  .full(fifo_full),                // output wire full
  .empty(fifo_empty),              // output wire empty
  .prog_full(fifo_almost_full),      // output wire prog_full
  .wr_rst_busy(),  // output wire wr_rst_busy
  .rd_rst_busy()  // output wire rd_rst_busy
);

sync_input RESET_SYNC200(
    .clk(clk200),
    .data_in(fifo_reset),
    .data_out(fifo_reset_sync_200)
    );

sync_input RESET_SYNC322(
    .clk(clk322),
    .data_in(fifo_reset),
    .data_out(fifo_reset_sync)
    );

//We'll now discard all the added TOA bits- no need
wire [511:0] fifo_out_stripped = fifo_out;
//Need the top 18 and bottom 46 bits of each 96b chunk of the FIFO output
//genvar i;
//generate
//for (i = 7; i >= 0; i = i - 1)
//    assign fifo_out_stripped[64*i + 63 : 64*i] = {fifo_out[96*i + 95: 96*i + 78],fifo_out[96*i + 45: 96*i]};
//endgenerate

//A MUX to select one of three 512b words: header, data, or all Fs
reg [511:0] data_out;
wire [511:0] header;
wire sel_header;
wire sel_data;
wire sel_allFFs;
   always @(sel_header, sel_data, sel_allFFs, fifo_out_stripped, header)
      case ({sel_header, sel_data, sel_allFFs})
         3'b100: data_out = header;
         3'b010: data_out = fifo_out_stripped;
         3'b001: data_out = ~512'h0;
         default: data_out = 64*8'hxx;
      endcase

//The header ROM is just one word of 64B.  We'll place two counters at the end:
// a 16b packet counter, to be incremented with each packet
// a 16b elapsed-time counter, which will wrap in about 200us at 322MHz
reg [15:0] packet_count = 0;
reg [15:0] elapsed_count = 0;
wire inc_packet;
always @ (posedge clk322) begin
    if (fifo_reset_sync) begin
        packet_count <= 0;
        elapsed_count <= 0;
    end
    else begin
        if (inc_packet) packet_count <= packet_count + 1;
        elapsed_count <= elapsed_count + 1;
    end
end
    
//The header ROM needs to be able to be written by the CPU.  Do that
// as a set of 15 32b words
reg [31:0] header_words[14:0];
reg [10:0] timeout_count = 0;
assign header = {packet_count, 5'b0, timeout_count,
                    header_words[14], 
                    header_words[13],
                    header_words[12],
                    header_words[11],
                    header_words[10],
                    header_words[9],
                    header_words[8],
                    header_words[7],
                    header_words[6],
                    header_words[5],
                    header_words[4],
                    header_words[3],
                    header_words[2],
                    header_words[1],
                    header_words[0]};

//We'll arrange the 15 32b words as a shift reg and write them sequentially
wire write_header_word_sync;
reg write_header_word_d1;
wire write_header_word_pulse = write_header_word_sync && !write_header_word_d1;
sync_input WR_HEADER(
    .clk(clk322),
    .data_in(write_header_word),
    .data_out(write_header_word_sync)
    );

integer ii;
always @ (posedge clk322) begin
    write_header_word_d1 <= write_header_word_sync;
    if (write_header_word_pulse) begin
        header_words[0] <= header_data;
        for (ii = 0; ii < 14; ii=ii+1)
            header_words[ii+1] <= header_words[ii];
        end
end    


//A timer to insure a minimum packet output flow
wire elapsed_count_oflow = (elapsed_count == 16'hffff);
//Want about a half second min interval, so need to count to 322e6 * .5
// = 156e6, /65536 = 2380.  Make it 2048
wire timeout_reset;
reg timeout_pending = 0;
always @ (posedge clk322) begin
    if (timeout_reset) begin
        timeout_count <= 0;
        timeout_pending <= 0;
    end
    else if (timeout_count == (COMPILE_FOR_SIM ? 11'h3 : 11'h7ff)) timeout_pending <= 1;
    else if (elapsed_count_oflow) timeout_count <= timeout_count + 1;
end
wire timeout_pending_sync200;
sync_input TIMEOUT(
    .clk(clk200),
    .data_in(timeout_pending),
    .data_out(timeout_pending_sync200)
    );

//***************************************************
//A state machine to control the CC FIFOs
//Select which fifo to read next based on which was read last, and 
// the empty signals.  0 = bot, 1 = top
reg last_side = 0;
assign top_bot_sel = !last_side && dav_top && !dav_bot ||  //wrote bottom last, and top has data
                        !last_side && dav_top && dav_bot || //wrote bottom last, both have data
                        last_side && dav_top && !dav_bot;   //wrote top last, no bottom data, so write top again
                        
//always @ (posedge clk200) if (cc_fifo_rden) last_side <= top_bot_sel;
always @ (posedge clk200) if (cc_fifo_rden && dav_top && dav_bot) last_side <= top_bot_sel;
assign top_rden = cc_fifo_rden && top_bot_sel;
assign bot_rden = cc_fifo_rden && !top_bot_sel;

//State machine to sequence the data through the shift reg
wire step_sm = proc_pixel_tval || sel_packet_source;
   localparam IDLE = 9'b000000001;
   localparam STATE1 = 9'b000000010;
   localparam STATE2 = 9'b000000100;
   localparam STATE3 = 9'b000001000;
   localparam STATE4 = 9'b000010000;
   localparam STATE5 = 9'b000100000;
   localparam STATE6 = 9'b001000000;
   localparam STATE7 = 9'b010000000;
   localparam STATE8 = 9'b100000000;

   reg [8:0] inp_state = IDLE;
   always @(posedge clk200)
      if (fifo_reset_sync)
         inp_state <= IDLE;
      else
         case (inp_state)
            IDLE : begin
               if (step_sm)
                  inp_state <= STATE1;
               else
                  inp_state <= IDLE;
            end
            STATE1 : begin
               if (step_sm || timeout_pending_sync200)
                  inp_state <= STATE2;
               else
                  inp_state <= STATE1;
            end
            STATE2 : begin
               if (step_sm || timeout_pending_sync200)
                  inp_state <= STATE3;
               else
                  inp_state <= STATE2;
            end
            STATE3 : begin
               if (!proc_pixel_tval_width && (step_sm || timeout_pending_sync200) )
                  inp_state <= STATE4;
               else if (proc_pixel_tval_width && timeout_pending_sync200)
                  inp_state <= STATE8;
               else if (proc_pixel_tval_width && step_sm && !timeout_pending_sync200)
                  inp_state <= IDLE;
               else
                  inp_state <= STATE3;
            end
            STATE4 : begin
               if (step_sm || timeout_pending_sync200)
                  inp_state <= STATE5;
               else
                  inp_state <= STATE4;
            end
            STATE5 : begin
               if (step_sm || timeout_pending_sync200)
                  inp_state <= STATE6;
               else
                  inp_state <= STATE5;
            end
            STATE6 : begin
               if (step_sm || timeout_pending_sync200)
                  inp_state <= STATE7;
               else
                  inp_state <= STATE6;
            end
            STATE7 : begin
               if (timeout_pending_sync200)
                  inp_state <= STATE8;
               else if (step_sm && !timeout_pending_sync200)
                  inp_state <= IDLE;
               else
                  inp_state <= STATE7;
            end
            STATE8 : begin
               if (timeout_pending_sync200)
                  inp_state <= STATE8;
               else
                  inp_state <= IDLE;
            end
         endcase

   assign fifo_write = (proc_pixel_tval_width ? (inp_state == STATE3) : (inp_state == STATE7)) && step_sm && !fifo_full;
   assign inp_shift = step_sm;
   assign cc_fifo_rden = inp_dav;
   assign force_SR_in_high = timeout_pending_sync200;
   //Register the fifo_wren for speed
   always @ (posedge clk200) begin
        fifo_write_reg <= fifo_write;
        big_word_reg <= big_word;
   end

//******************************************
//A state machine to control the data output
//Need to sync the almost_full flag to clk322
wire fifo_almost_full_sync;
sync_input FIFO_AF(
    .clk(clk322),
    .data_in(fifo_almost_full),
    .data_out(fifo_almost_full_sync)
    );
wire pause_sync;
sync_input PAUSE(
    .clk(clk322),
    .data_in(pause),
    .data_out(pause_sync)
    );

//A counter to permit counting the words written to the 100Gb MAC
reg [7:0] word_count = 0;
//Register word count to improve timing.  We'll load one extra word as a result
//reg [7:0] word_count_reg=0;
//always @ (posedge clk322) word_count_reg <= word_count;
wire word_count_inc;
wire word_count_res;
//Set this to 1 less for the header word
localparam MAX_WORDS_IN_UDP = 139;
//wire done = (word_count_reg == MAX_WORDS_IN_UDP-1);//140 64B words in a packet = 8960B
wire done = (word_count == MAX_WORDS_IN_UDP-1);//140 64B words in a packet = 8960B
//reg done_reg;
reg timeout_pending_reg;
always @ (posedge clk322) begin
    if (fifo_reset_sync || word_count_res) word_count <= 0;
    else if (word_count_inc) word_count <= word_count + 1;
//    done_reg <= done;
    timeout_pending_reg <= timeout_pending;
end


   localparam IDLE1 = 4'b0001;
   localparam HDR = 4'b0010;
   localparam DATA = 4'b0100;
   localparam WAIT = 4'b1000;

   reg [3:0] out_state = IDLE1;
   always @(posedge clk322)
      if (fifo_reset_sync)
         out_state <= IDLE1;
      else
         case (out_state)
            IDLE1 : begin
               if ((fifo_almost_full_sync || timeout_pending_reg) && !pause_sync)
                  out_state <= HDR;
               else
                  out_state <= IDLE1;
            end
            HDR : begin
               if (tx_tready)
                  out_state <= DATA;
               else
                  out_state <= HDR;
            end
            DATA : begin
               if (done && tx_tready)
                  out_state <= WAIT;
               else
                  out_state <= DATA;
            end
            WAIT : begin
                  out_state <= IDLE1;
            end
         endcase

assign word_count_res = (out_state == HDR);
assign word_count_inc = (out_state == DATA) && tx_tready;
wire tx_tvalid_int = (out_state == HDR) ||
                    (out_state == DATA);
wire tx_tlast_int = (out_state == DATA) && done;                  
assign timeout_reset = done;     
assign sel_header = (out_state == HDR);
assign sel_data = (out_state == DATA) && !fifo_empty;
assign sel_allFFs = (out_state == DATA) && fifo_empty;
assign fifo_read = (out_state == DATA) && tx_tready && !fifo_empty;
assign idle = (inp_state == IDLE);
assign inc_packet = tx_tlast && tx_tready;


assign tx_tdata = data_out;
assign tx_tvalid = tx_tvalid_int;
assign tx_tlast = tx_tlast_int;
//Since we transfer an integral number of 64B (512b) words, we can tkeep to all 1s
assign tx_tkeep = 64'hffffffffffffffff;

endmodule
