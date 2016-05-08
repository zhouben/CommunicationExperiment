`timescale 1ns/10ps

module pll_tb;

reg     clk;
reg     rst;
wire signed [14 : 0] mod_dout;
wire    demod_dout;
wire    raw_data;
integer cnt;
integer flag;
reg [7:0] din;
integer fp_r;

parameter        offset = 0;
parameter        period = 125; // 8MHz
parameter        reset_completion_time = 500;
parameter        duration_time = 82000 * period;


initial begin
  clk = 0;
  forever #(period/2) clk = ~clk;
end

initial begin
    $display("[%t] : Demod System Reset Asserted...", $realtime);
    rst = 1'b1;

    #(reset_completion_time);
    $display("[%t] : Demod System Reset Prepare De-asserted, Reset will complete at next posedge...", $time);

    @(posedge clk );

    $display("[%t] : Demod System Reset De-asserted...", $realtime);
    rst = 1'b0;

    //fp_r = $fopen("..//Data//single_freq_out.txt", "r");
    //fp_r = $fopen("..//Data//single_freq_doppler.txt", "r");
    fp_r = $fopen("..//Data//Dpsk_signal_8M.txt", "r");
    //fp_doppler = $fopen("..\\Data\\single_freq_doppler.txt", "r");

    flag = 1'b0;

    while( !$feof(fp_r)) begin
        @(posedge clk );
        cnt <= $fscanf( fp_r, "%b", din );

        #(1);
    end
    $display("[%t] : Demod System close file...", $realtime);
    $fclose( fp_r );
    $stop;
end

integer print_cnt = 0;
initial begin
    print_cnt = 0;
    while ( print_cnt < 100) begin
        @(posedge clk);
        if (pll_inst.lpf_ce) begin
            $display("[%t] : multi_out %d  lpf_out %d", $realtime, $signed(pll_inst.multi_i_out), $signed(pll_inst.lpf_i_out));
            print_cnt = print_cnt + 1;
        end
        #1;
    end
end


pll_top pll_inst
(
    .clk(clk),
    .rst(rst),
    .din(din),
    .dout()
);
endmodule // simple_read_file_tb

