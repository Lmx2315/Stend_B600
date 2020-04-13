
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name stend_b600 -dir "C:/Work/Stend_B600/stend_b600/planAhead_run_4" -part xc3s500epq208-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Work/Stend_B600/stend_b600/top_list.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Work/Stend_B600/stend_b600} }
set_property target_constrs_file "top_list.ucf" [current_fileset -constrset]
add_files [list {top_list.ucf}] -fileset [get_property constrset [current_run]]
link_design
