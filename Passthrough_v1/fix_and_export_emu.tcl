open_project e:/Tesis/Passthrough_v1/Passthrough_v1.xpr
update_compile_order -fileset sources_1

# upgrade IPs to fix the locked IPs issue
set locked_ips [get_ips -filter {IS_LOCKED==1}]
if {[llength $locked_ips] > 0} {
    puts "Upgrading locked IPs: $locked_ips"
    upgrade_ip $locked_ips
}

# Set platform properties
set_property platform.design_intent.embedded true [current_project]
set_property platform.design_intent.server_managed false [current_project]
set_property platform.design_intent.external_host false [current_project]
set_property platform.design_intent.datacenter false [current_project]
set_property platform.default_output_type "sd_card" [current_project]
set_property platform.extensible true [current_project]

# open bd
open_bd_design [get_files e:/Tesis/Passthrough_v1/Passthrough_v1.srcs/sources_1/bd/design_1/design_1.bd]

# Set PFM clock property
set_property PFM.CLOCK { \
  FCLK_CLK0 {id "0" is_default "true" proc_sys_reset "rst_ps7_0_100M" status "fixed"} \
} [get_bd_cells processing_system7_0]

# validate and save
validate_bd_design
save_bd_design

# reset and generate output products properly
reset_target all [get_files e:/Tesis/Passthrough_v1/Passthrough_v1.srcs/sources_1/bd/design_1/design_1.bd]
generate_target all [get_files e:/Tesis/Passthrough_v1/Passthrough_v1.srcs/sources_1/bd/design_1/design_1.bd]

# Create wrapper and set as top
set wrapper_path [make_wrapper -files [get_files e:/Tesis/Passthrough_v1/Passthrough_v1.srcs/sources_1/bd/design_1/design_1.bd] -top]
add_files -norecurse $wrapper_path
set_property top design_1_wrapper [current_fileset]
update_compile_order -fileset sources_1

# Export platform
write_hw_platform -hw_emu -file e:/Tesis/Vitis_Loop/HW_emu.xsa -force
exit
