open_project e:/Tesis/Passthrough_v1/Passthrough_v1.xpr

# Ensure correct board part is set (Digilent Arty Z7-20)
set_property board_part digilentinc.com:arty-z7-20:part0:1.1 [current_project]

# Ensure we have the proper properties
set_property platform.design_intent.embedded true [current_project]
set_property platform.design_intent.server_managed false [current_project]
set_property platform.design_intent.external_host false [current_project]
set_property platform.design_intent.datacenter false [current_project]
set_property platform.default_output_type "sd_card" [current_project]
set_property platform.extensible true [current_project]

open_bd_design [get_files e:/Tesis/Passthrough_v1/Passthrough_v1.srcs/sources_1/bd/design_1/design_1.bd]

# Explicitly set the PFM properties
set_property PFM.CLOCK { \
  FCLK_CLK0 {id "0" is_default "true" proc_sys_reset "rst_ps7_0_100M" status "fixed"} \
} [get_bd_cells processing_system7_0]

set_property pfm_name "xilinx.com:arty_z7_20:passthrough:1.0" [get_files e:/Tesis/Passthrough_v1/Passthrough_v1.srcs/sources_1/bd/design_1/design_1.bd]

validate_bd_design
save_bd_design

reset_target all [get_files e:/Tesis/Passthrough_v1/Passthrough_v1.srcs/sources_1/bd/design_1/design_1.bd]
generate_target all [get_files e:/Tesis/Passthrough_v1/Passthrough_v1.srcs/sources_1/bd/design_1/design_1.bd]

update_compile_order -fileset sources_1
set_property top design_1_wrapper [current_fileset]

write_hw_platform -hw_emu -file e:/Tesis/Vitis_Loop/HW_emu.xsa -force
exit