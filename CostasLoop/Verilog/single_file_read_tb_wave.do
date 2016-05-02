onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /simple_read_file_tb/clk
add wave -noupdate /simple_read_file_tb/demod_rst
add wave -noupdate -format Analog-Step -height 74 -max 127.0 -min -127.0 -radix decimal /simple_read_file_tb/din
add wave -noupdate -format Analog-Step -height 74 -max 127.0 -min -127.0 -radix decimal /simple_read_file_tb/din_doppler
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {626765 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 232
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
WaveRestoreZoom {0 ps} {2563782 ps}
