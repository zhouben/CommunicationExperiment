

vlib work
vmap work work
vlog -reportprogress 300 -work work \
         ./pll_top.v        \
         ./pll_tb.v         \
         ./MyNCO/MyNco.v    \
     $env(XILINX)/verilog/src/glbl.v 

vsim -novopt  work.pll_tb  -L secureip \
     -L unisims_ver \
     -L xilinxcorelib_ver \
      glbl

do pll_tb_wave.do

run -all


