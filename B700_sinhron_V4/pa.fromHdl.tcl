
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name B610_sinhron -dir "C:/SOFT_project/FPGA/Xilinx_project/Sinhron_B600/B700_sinhron_V2/planAhead_run_4" -part xc3s500epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "list1.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {dcm2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {uart_all.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {time_1us_2us.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {tick_tack.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {test_led.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {spi32p2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {reset_init.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {read_and_work.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ppi_rcv.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ctrl_tno_tnc.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clk_dcm_blok.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MainPage1.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files [list {MainPage1_cs.ngc}]
set_property top MainPage1 $srcset
add_files [list {list1.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/fifo1.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/mem8x8_v2.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/mem_32x16_v2.ncf}] -fileset [get_property constrset [current_run]]
add_files [list {ipcore_dir/ram32x256v1.ncf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500epq208-5
