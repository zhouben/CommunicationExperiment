`timescale 1ns/10ps

module loop_filter #
(
    parameter signed START_FREQ = 32'h2000_0000
)
(
    input clk,
    input rst,
    input ce,
    input signed [27:0] din,
    output       data_valid,
    output [31:0] dout
);

localparam PERIOD = 13;
reg signed [31:0]  y;
reg signed [27:0]  sum;
reg [4:0]   cnt;

assign dout = y;
assign data_valid = (cnt == PERIOD);

always @(posedge clk) begin
    if (rst) begin
        y   <= START_FREQ;
        sum <= 27'd0;
        cnt <= 5'd0;
    end else begin
        if (ce) begin
            if (cnt == PERIOD)
                cnt <= 0;
            else
                cnt <= cnt + 1;
        end
        if (cnt == PERIOD - 2) begin
            sum = sum + din >>> 13;
        end
        if (cnt == PERIOD - 1) begin
            y = ((sum[27]) ? {4'b1111, sum } : sum) + ((din[27]) ? {10'h3_FF_FF, din[27:6]} : din[27:6]) + START_FREQ;
        end
    end
end


endmodule // pll_top
