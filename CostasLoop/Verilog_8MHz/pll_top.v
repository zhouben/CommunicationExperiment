`timescale 1ns/10ps

module pll_top
(
    input clk,
    input rst,
     din,
    output dout
);

input [7:0] din;
output [7:0] dout;




wire [27:0] loop_filter_input;
wire [29:0] loop_filter_output;
wire        loop_filter_output_valid;

reg     rst_d;
always @(posedge clk) begin
    rst_d <= rst;
end



assign start_flag = !rst && rst_d;

wire [29:0] nco_phase_out;
wire [7:0]  nco_cosine;
wire [7:0]  nco_sine;
wire        nco_rfd;
wire        nco_rdy;

reg [2:0]   nco_state;
reg [2:0]   nco_next_state;
reg  [29:0] nco_data;
reg         nco_we;
reg         nco_ce;
reg         nco_sclr;
reg         nco_reg_se;

localparam ns_0 = 3'd0;
localparam ns_1 = 3'd1;
localparam ns_2 = 3'd2;
localparam ns_3 = 3'd3;
localparam ns_4 = 3'd4;
localparam ns_5 = 3'd5;
localparam ns_6 = 3'd6;
localparam ns_7 = 3'd7;
localparam FREQ_INITIAL     = 29'h1000_0000;
localparam PHASE_INITIAL    = 29'h0000_0000;

/********************    Programming NCO   *************************/
always @(posedge clk) begin
    if (rst) begin
        nco_state <= 3'b0;
    end
    else begin
        nco_state <= nco_next_state;
    end
end
always @(*) begin
    nco_next_state = 3'bXXX;
    nco_we          = 1'b0;
    nco_reg_se      = 1'b0;
    nco_ce          = 1'b0;
    nco_sclr        = 1'b0;
    case (nco_state)
        ns_0: begin
            if (start_flag)
                nco_next_state = ns_1;
            else
                nco_next_state = ns_0;
        end
        ns_1: begin
            nco_we      = 1'b1;
            nco_reg_se  = 1'b0;
            nco_data    = FREQ_INITIAL;
            nco_next_state  = ns_2;
        end
        ns_2: nco_next_state  = ns_3;
        ns_3: begin
            nco_we      = 1'b1;
            nco_reg_se  = 1'b1;
            nco_data    = PHASE_INITIAL;
            nco_next_state = ns_4;
        end
        ns_4: nco_next_state  = ns_5;
        ns_5: begin
            nco_ce      = 1'b1;
            nco_sclr    = 1'b1;
            nco_next_state  = ns_6;
        end
        ns_6: begin
            nco_ce      = 1'b1;
            nco_next_state  = ns_6;
        end
    endcase
end

wire nco_we_input;
wire [29:0] nco_data_input;
assign nco_we_input = (nco_state == ns_6) ? loop_filter_output_valid : nco_we;
assign nco_data_input = (nco_state == ns_6) ? loop_filter_output : nco_data;

MyNco nco_inst (
  .reg_select(nco_reg_se), // input reg_select
  .ce(nco_ce), // input ce
  .clk(clk), // input clk
  .sclr(nco_sclr), // input sclr
  .we(nco_we_input), // input we
  .data(nco_data_input), // input [29 : 0] data
  .rdy(nco_rdy), // output rdy
  .rfd(nco_rfd), // output rfd
  .cosine(nco_cosine), // output [7 : 0] cosine
  .sine(nco_sine), // output [7 : 0] sine
  .phase_out(nco_phase_out) // output [29 : 0] phase_out
);



/*****************************     Multiple 8 * 8 ****************************/
wire [15:0] multi_i_out;
wire [15:0] multi_q_out;
MyMulti_8_8 multi_i_inst (
  .clk(clk), // input clk
  .a(din), // input [7 : 0] a
  .b(nco_sine), // input [7 : 0] b
  .p(multi_i_out) // output [15 : 0] p
);
MyMulti_8_8 multi_q_inst (
  .clk(clk), // input clk
  .a(din), // input [7 : 0] a
  .b(nco_cosine), // input [7 : 0] b
  .p(multi_q_out) // output [15 : 0] p
);


/********************    FIR lpf   *************************/

wire        lpf_sclr;
wire        lpf_ce;
wire signed [25:0] lpf_i_out;
wire signed [25:0] lpf_q_out;
assign lpf_sclr = rst;
assign lpf_ce   = ~rst && nco_rdy;
assign lpf_nd   = ~rst && nco_rdy;

lpf lpf_i_inst (
	.clk(clk), // input clk
	.nd(lpf_nd), // input nd
	.rfd(lpf_rfd), // output rfd
	.rdy(lpf_rdy), // output rdy
	.din(multi_i_out[14:0]), // input [14 : 0] din
	.dout(lpf_i_out)); // output [25 : 0] dout

lpf lpf_q_inst (
	.clk(clk), // input clk
	.nd(lpf_nd), // input nd
	.rfd(lpf_rfd), // output rfd
	.rdy(lpf_rdy), // output rdy
	.din(multi_q_out[14:0]), // input [14 : 0] din
	.dout(lpf_q_out)); // output [25 : 0] dout

/******************************    sign detector   ***************************/
assign loop_filter_input = lpf_i_out[25] ? -lpf_q_out : lpf_q_out;

reg [7:0] cnt;
always @(posedge clk) begin
    if (rst) cnt <= 6'b0;
    else begin
        if (cnt != 8'b1111_1111) cnt <= cnt + 1;
    end
end
/******************************  loop filter (IIR)  **************************/
loop_filter #(
    .START_FREQ(30'h1001_0000)
) lf_inst (
    .clk(clk),
    .rst(rst),
    .ce(nco_rdy),
    //.ce(cnt == 8'hFF),
    .din(loop_filter_input),
    .data_valid(loop_filter_output_valid),
    .dout(loop_filter_output)
);

endmodule // pll_top
