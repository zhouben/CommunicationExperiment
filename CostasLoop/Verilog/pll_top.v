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

reg     rst_d;
always @(posedge clk) begin
    rst_d <= rst;
end



assign start_flag = !rst && rst_d;

wire [31:0] nco_phase_out;
wire [7:0]  nco_cosine;
wire [7:0]  nco_sine;
wire        nco_rfd;
wire        nco_rdy;

reg [2:0]   nco_state;
reg [2:0]   nco_next_state;
reg  [31:0] nco_data;
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
localparam FREQ_INITIAL     = 32'h2000_0000;
localparam PHASE_INITIAL    = 32'h9000_0000;

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


MyNco nco_inst (
  .reg_select(nco_reg_se), // input reg_select
  .ce(nco_ce), // input ce
  .clk(clk), // input clk
  .sclr(nco_sclr), // input sclr
  .we(nco_we), // input we
  .data(nco_data), // input [31 : 0] data
  .rdy(nco_rdy), // output rdy
  .rfd(nco_rfd), // output rfd
  .cosine(nco_cosine), // output [7 : 0] cosine
  .sine(nco_sine), // output [7 : 0] sine
  .phase_out(nco_phase_out) // output [31 : 0] phase_out
);



/********************    Multiple 8 * 8   *************************/
wire [15:0] multi_out;
MyMulti_8_8 multi_inst (
  .clk(clk), // input clk
  .a(din), // input [7 : 0] a
  .b(nco_cosine), // input [7 : 0] b
  .p(multi_out) // output [15 : 0] p
);


/********************    FIR lpf   *************************/

wire        lpf_sclr;
wire        lpf_ce;
wire [27:0] lpf_out;
assign lpf_sclr = rst;
assign lpf_ce   = ~rst && nco_rdy;
assign lpf_nd   = ~rst && nco_rdy;

lpf lpf_inst (
	.sclr(lpf_sclr), // input sclr
	.clk(clk), // input clk
	.ce(lpf_ce), // input ce
	.nd(lpf_nd), // input nd
	.rfd(lpf_rfd), // output rfd
	.rdy(lpf_rdy), // output rdy
	.din(multi_out[14:0]), // input [14 : 0] din
	.dout(lpf_out)); // output [25 : 0] dout

endmodule // pll_top
