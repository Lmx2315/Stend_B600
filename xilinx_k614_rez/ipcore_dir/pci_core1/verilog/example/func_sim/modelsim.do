vlib work
vlog -f ping_tb.f
vsim -novopt ping_tb glbl
view signals structure wave

add wave -logic /CLK
add wave -logic /RST_N
add wave -literal -hex /AD
add wave -literal -hex /CBE
add wave -logic /PAR
add wave -logic /FRAME_N
add wave -logic /IRDY_N
add wave -logic /TRDY_N
add wave -logic /STOP_N
add wave -logic /DEVSEL_N
add wave -logic /REQ_N
add wave -logic /GNT_N
add wave -logic /SERR_N
add wave -logic /PERR_N
add wave -logic /IDSEL
add wave -logic /INTR_A

run -all
