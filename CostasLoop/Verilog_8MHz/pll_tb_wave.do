onerror {resume}
quietly virtual signal -install /pll_tb/pll_inst { /pll_tb/pll_inst/loop_filter_input[27:6]} x
quietly virtual signal -install /pll_tb/pll_inst { /pll_tb/pll_inst/loop_filter_input[27:13]} xx
quietly WaveActivateNextPane {} 0
add wave -noupdate /pll_tb/rst
add wave -noupdate /pll_tb/clk
add wave -noupdate -radix decimal /pll_tb/pll_inst/din
add wave -noupdate -format Analog-Step -height 74 -max 127.0 -min -127.0 -radix decimal /pll_tb/din
add wave -noupdate -format Analog-Step -height 74 -max 126.0 -min -126.0 -radix decimal /pll_tb/pll_inst/nco_sine
add wave -noupdate -format Analog-Step -height 74 -max 126.0 -min -126.0 -radix decimal /pll_tb/pll_inst/nco_cosine
add wave -noupdate -format Analog-Step -height 74 -max 16002.0 -min -16002.0 -radix decimal /pll_tb/pll_inst/multi_i_out
add wave -noupdate -format Analog-Step -height 74 -max 16002.0 -min -16002.0 -radix decimal /pll_tb/pll_inst/multi_q_out
add wave -noupdate /pll_tb/pll_inst/nco_rfd
add wave -noupdate /pll_tb/pll_inst/nco_rdy
add wave -noupdate /pll_tb/pll_inst/start_flag
add wave -noupdate /pll_tb/pll_inst/nco_state
add wave -noupdate -radix hexadecimal -childformat {{{/pll_tb/pll_inst/nco_phase_out[29]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[28]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[27]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[26]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[25]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[24]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[23]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[22]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[21]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[20]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[19]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[18]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[17]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[16]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[15]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[14]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[13]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[12]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[11]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[10]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[9]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[8]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[7]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[6]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[5]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[4]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[3]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[2]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[1]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[0]} -radix hexadecimal}} -subitemconfig {{/pll_tb/pll_inst/nco_phase_out[29]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[28]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[27]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[26]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[25]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[24]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[23]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[22]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[21]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[20]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[19]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[18]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[17]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[16]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[15]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[14]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[13]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[12]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[11]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[10]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[9]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[8]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[7]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[6]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[5]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[4]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[3]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[2]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[1]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[0]} {-height 15 -radix hexadecimal}} /pll_tb/pll_inst/nco_phase_out
add wave -noupdate /pll_tb/pll_inst/nco_next_state
add wave -noupdate /pll_tb/pll_inst/nco_we_input
add wave -noupdate -format Analog-Step -height 74 -max 268438148.0 -radix hexadecimal /pll_tb/pll_inst/nco_data_input
add wave -noupdate -radix hexadecimal /pll_tb/pll_inst/nco_data
add wave -noupdate /pll_tb/pll_inst/nco_we
add wave -noupdate /pll_tb/pll_inst/nco_ce
add wave -noupdate /pll_tb/pll_inst/nco_sclr
add wave -noupdate /pll_tb/pll_inst/nco_reg_se
add wave -noupdate /pll_tb/pll_inst/lpf_sclr
add wave -noupdate /pll_tb/pll_inst/lpf_ce
add wave -noupdate /pll_tb/pll_inst/lpf_nd
add wave -noupdate /pll_tb/pll_inst/lpf_rfd
add wave -noupdate /pll_tb/pll_inst/lpf_rdy
add wave -noupdate /pll_tb/pll_inst/lf_inst/data_valid
add wave -noupdate -format Analog-Step -height 74 -max 268438000.0 -min 268433000.0 -radix hexadecimal /pll_tb/pll_inst/lf_inst/dout
add wave -noupdate -format Analog-Step -height 74 -max 268438000.0 -min 268433000.0 -radix hexadecimal /pll_tb/pll_inst/lf_inst/y
add wave -noupdate -format Analog-Step -height 74 -max 2551850.0 -radix decimal /pll_tb/pll_inst/lf_inst/sum
add wave -noupdate -radix hexadecimal /pll_tb/pll_inst/lf_inst/cnt
add wave -noupdate -format Analog-Step -height 74 -max 8931510.0 -min -8931510.0 -radix decimal /pll_tb/pll_inst/lpf_i_out
add wave -noupdate -format Analog-Step -height 74 -max 172790.00000000003 -min -388002.0 -radix decimal /pll_tb/pll_inst/lpf_q_out
add wave -noupdate -label {x[n](-6)
} -radix decimal /pll_tb/pll_inst/x
add wave -noupdate -label {x[n-1](-13)} -radix decimal /pll_tb/pll_inst/xx
add wave -noupdate -format Analog-Step -height 74 -max 385286.0 -min -388002.0 -radix decimal -childformat {{{/pll_tb/pll_inst/loop_filter_input[27]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[26]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[25]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[24]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[23]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[22]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[21]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[20]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[19]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[18]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[17]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[16]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[15]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[14]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[13]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[12]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[11]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[10]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[9]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[8]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[7]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[6]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[5]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[4]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[3]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[2]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[1]} -radix decimal} {{/pll_tb/pll_inst/loop_filter_input[0]} -radix decimal}} -subitemconfig {{/pll_tb/pll_inst/loop_filter_input[27]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[26]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[25]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[24]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[23]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[22]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[21]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[20]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[19]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[18]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[17]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[16]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[15]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[14]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[13]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[12]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[11]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[10]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[9]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[8]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[7]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[6]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[5]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[4]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[3]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[2]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[1]} {-height 15 -radix decimal} {/pll_tb/pll_inst/loop_filter_input[0]} {-height 15 -radix decimal}} /pll_tb/pll_inst/loop_filter_input
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2656250 ps} 1} {{Cursor 2} {1399154100 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 208
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {2084047350 ps}
