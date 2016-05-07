

vlib work
vmap work work
vlog -reportprogress 300 -work work \
         ./pll_top.v        \
         ./pll_tb.v         \
         ./MyNCO/MyNco.v    \
         MyMulti_8_8/MyMulti_8_8.v  \
         Lpf/lpf.v                  \
         loop_filter.v              \
     $env(XILINX)/verilog/src/glbl.v 

#         Lpf_0_5/lpf_0_5.v               \

vsim -novopt  work.pll_tb  -L secureip \
     -L unisims_ver \
     -L xilinxcorelib_ver \
     -t 10ps    \
      glbl

do pll_tb_wave.do

run 1.3ms

run -all


