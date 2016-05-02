onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /pll_tb/rst
add wave -noupdate /pll_tb/clk
add wave -noupdate -format Analog-Step -height 74 -max 127.0 -min -127.0 -radix decimal /pll_tb/din
add wave -noupdate -format Analog-Step -height 74 -max 127.0 -min -127.0 -radix decimal /pll_tb/din_doppler
add wave -noupdate -format Analog-Step -height 74 -max 126.0 -min -126.0 -radix decimal /pll_tb/pll_inst/nco_cosine
add wave -noupdate -format Analog-Step -height 74 -max 16002.000000000002 -min -180.0 -radix decimal /pll_tb/pll_inst/multi_out
add wave -noupdate -format Analog-Step -height 74 -max 126.0 -min -126.0 -radix decimal /pll_tb/pll_inst/nco_sine
add wave -noupdate /pll_tb/pll_inst/nco_rfd
add wave -noupdate /pll_tb/pll_inst/nco_rdy
add wave -noupdate /pll_tb/pll_inst/start_flag
add wave -noupdate /pll_tb/pll_inst/nco_state
add wave -noupdate -radix hexadecimal -childformat {{{/pll_tb/pll_inst/nco_phase_out[31]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[30]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[29]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[28]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[27]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[26]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[25]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[24]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[23]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[22]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[21]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[20]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[19]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[18]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[17]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[16]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[15]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[14]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[13]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[12]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[11]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[10]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[9]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[8]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[7]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[6]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[5]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[4]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[3]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[2]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[1]} -radix hexadecimal} {{/pll_tb/pll_inst/nco_phase_out[0]} -radix hexadecimal}} -subitemconfig {{/pll_tb/pll_inst/nco_phase_out[31]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[30]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[29]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[28]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[27]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[26]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[25]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[24]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[23]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[22]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[21]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[20]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[19]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[18]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[17]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[16]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[15]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[14]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[13]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[12]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[11]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[10]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[9]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[8]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[7]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[6]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[5]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[4]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[3]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[2]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[1]} {-height 15 -radix hexadecimal} {/pll_tb/pll_inst/nco_phase_out[0]} {-height 15 -radix hexadecimal}} /pll_tb/pll_inst/nco_phase_out
add wave -noupdate /pll_tb/pll_inst/nco_next_state
add wave -noupdate -radix hexadecimal /pll_tb/pll_inst/nco_data
add wave -noupdate /pll_tb/pll_inst/nco_we
add wave -noupdate /pll_tb/pll_inst/nco_ce
add wave -noupdate /pll_tb/pll_inst/nco_sclr
add wave -noupdate /pll_tb/pll_inst/nco_reg_se
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1698063 ps} 0} {{Cursor 2} {313297007 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 188
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
WaveRestoreZoom {311588108 ps} {321846894 ps}
