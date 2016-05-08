`timescale 1ns/10ps

module loop_filter #
(
    parameter signed START_FREQ = 30'h1000_0000
)
(
    input clk,
    input rst,
    input ce,
    input signed [25:0] din,
    output       data_valid,
    output [29:0] dout
);

localparam PERIOD = 13;
reg signed [29:0]  y;
reg signed [25:0]  sum;
reg signed [29:0]  df;
reg [4:0]   cnt;

assign dout = y;
assign data_valid = (cnt == PERIOD);

always @(posedge clk) begin
    if (rst) begin
        y   <= START_FREQ;
        sum <= 26'd0;
        cnt <= 5'd0;
    end else begin
        if (ce) begin
            if (cnt == PERIOD)
                cnt <= 0;
            else
                cnt <= cnt + 1;
        end
        if (cnt == PERIOD - 2) begin
            sum <= sum + (din >>> 14);
        end
        if (cnt == PERIOD - 1) begin
            df <= ((sum[25]) ? {4'b1111, sum } : sum) + ((din[25]) ? {10'h3_FF_FF, din[25:6]} : din[25:6]);
            y <= ((sum[25]) ? {4'b1111, sum } : sum) + ((din[25]) ? {10'h3_FF_FF, din[25:6]} : din[25:6]) + START_FREQ;
        end
    end
end


endmodule // pll_top
