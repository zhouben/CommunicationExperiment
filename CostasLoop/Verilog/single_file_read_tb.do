

vlib work
vmap work work
vlog -reportprogress 300 -work work \
         ./single_file_read_tb.v       \
     $env(XILINX)/verilog/src/glbl.v 

vsim -novopt  work.simple_read_file_tb  -L secureip \
     -L unisims_ver \
     -L xilinxcorelib_ver \
      glbl

do single_file_read_tb_wave.do

run -all


