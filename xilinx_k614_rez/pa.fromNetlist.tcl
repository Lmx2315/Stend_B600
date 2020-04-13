
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name B610_sinhron -dir "C:/B610_sinhron/planAhead_run_2" -part xc3s500epq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/B610_sinhron/MainPage1.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/B610_sinhron} }
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "list1.ucf"
add_files "list1.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
