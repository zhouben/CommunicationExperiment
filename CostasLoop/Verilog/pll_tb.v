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
reg [7:0] din_doppler;
integer fp_r;
integer fp_doppler;

parameter        offset = 0;
parameter        period = 62.5; // 16MHz
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

    fp_r = $fopen("..//Data//single_freq_out.txt", "r");
    fp_doppler = $fopen("..\\Data\\single_freq_doppler.txt", "r");

    flag = 1'b0;

    while( !$feof(fp_r)) begin
        @(posedge clk );
        cnt <= $fscanf( fp_r, "%b", din );
        $fscanf( fp_doppler,"%b", din_doppler);
        if ( flag == 0 && din != din_doppler ) begin
            $display("[%t]: doppler start", $time);
            flag = 1;
        end

        #(1);
    end
    $display("[%t] : Demod System close file...", $realtime);
    $fclose( fp_r );
    $fclose( fp_doppler);
    $stop;
end


pll_top pll_inst
(
    .clk(clk),
    .rst(rst),
    .din(din_doppler),
    .dout()
);
endmodule // simple_read_file_tb

