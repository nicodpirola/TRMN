open_project e:/Tesis/Passthrough_v1/Passthrough_v1.xpr

# Ensure top is set correctly
update_compile_order -fileset sources_1

# Open BD
open_bd_design [get_files e:/Tesis/Passthrough_v1/Passthrough_v1.srcs/sources_1/bd/design_1/design_1.bd]

# Set required properties for Extensible Platform
set_property platform.design_intent.embedded true [current_project]
set_property platform.design_intent.server_managed false [current_project]
set_property platform.design_intent.external_host false [current_project]
set_property platform.design_intent.datacenter false [current_project]
set_property platform.default_output_type "sd_card" [current_project]

# Mark project as extensible
set_property platform.extensible true [current_project]

# Enable PFM Clock interface on processing_system7_0
set_property PFM.CLOCK { \
  FCLK_CLK0 {id "0" is_default "true" proc_sys_reset "rst_ps7_0_100M" status "fixed"} \
} [get_bd_cells processing_system7_0]

# Validate and save
validate_bd_design
save_bd_design

# Generate targets including simulation (this is crucial for hw_emu)
generate_target all [get_files e:/Tesis/Passthrough_v1/Passthrough_v1.srcs/sources_1/bd/design_1/design_1.bd]

# Export Hardware Emulation Platform
write_hw_platform -hw_emu -file e:/Tesis/Vitis_Loop/HW_emu.xsa -force

exit
