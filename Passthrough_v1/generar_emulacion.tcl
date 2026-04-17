# ==============================================================================
# Script Tcl para exportar plataforma de Co-Simulacion (Hardware Emulation)
# Para Vivado 2024.x / 2025.x - Proyecto Arty Z7-20
# ==============================================================================
# se ejecuta con "source generar_emulacion.tcl"
# 1. Asegurarnos de que el proyecto tiene asignada la FPGA correcta
#    (Evita el error de "Board part not found" si faltan los archivos de Digilent)
set_property part xc7z020clg400-1 [current_project]

# 2. Configurar el proyecto como una Plataforma Extensible (Platform)
#    Esto es obligatorio para que Vitis pueda inyectar QEMU y conectar los buses AXI.
set_property platform.design_intent.embedded true [current_project]
set_property platform.design_intent.server_managed false [current_project]
set_property platform.design_intent.external_host false [current_project]
set_property platform.design_intent.datacenter false [current_project]
set_property platform.default_output_type "sd_card" [current_project]
set_property platform.extensible true [current_project]

# 3. Abrir el Block Design
open_bd_design [get_files *.bd]

# 4. Configurar las interfaces de la plataforma (PFM)
#    Vitis necesita saber qué reloj usar para la emulación.
#    Aquí exponemos el FCLK_CLK0 del procesador Zynq.
set_property PFM.CLOCK { \
  FCLK_CLK0 {id "0" is_default "true" proc_sys_reset "rst_ps7_0_100M" status "fixed"} \
} [get_bd_cells processing_system7_0]

# 5. Forzar un nombre de plataforma personalizado
#    Esto engaña a Vivado para que no busque metadatos de la placa física
#    que podrían estar faltando, evitando el error "Empty hpfm string passed in".
set_property pfm_name "xilinx.com:custom_board:passthrough:1.0" [get_files *.bd]

# 6. Validar y guardar el diseño
validate_bd_design
save_bd_design

# 7. Regenerar los Output Products (CRÍTICO)
#    Este paso es el que realmente genera los archivos Verilog/VHDL
#    necesarios para la simulación (sim/design_1.v).
reset_target all [get_files *.bd]
generate_target all [get_files *.bd]

# 8. Asegurar que el Wrapper de HDL esté actualizado y configurado como Top
update_compile_order -fileset sources_1
set_property top design_1_wrapper [current_fileset]

# 9. Exportar la plataforma de emulación (-hw_emu)
#    El archivo se guardará en la carpeta Vitis_Loop.
write_hw_platform -hw -hw_emu -file E:/Tesis/Vitis_Loop/HW_emu.xsa -force

puts "=============================================================================="
puts "¡Plataforma de emulación (HW_emu.xsa) generada con éxito!"
puts "=============================================================================="
