# IPython log file

import vitis

# 1. Apuntar al workspace (asegúrate de que la ruta es correcta)
client = vitis.create_client()
client.set_workspace(path="E:/Tesis/Vitis_Loop/workspace")

# 2. Crear la plataforma con un nombre nuevo y limpio
platform = client.create_platform_component(
    name="platform_for_emu", 
    hw_design="E:/Tesis/Vitis_Loop/HW_emu.xsa", 
    os="standalone", 
    cpu="ps7_cortexa9_0"
)

# 3. Compilar la plataforma
platform.build()

print("¡Plataforma 'platform_for_emu' creada y compilada!")
