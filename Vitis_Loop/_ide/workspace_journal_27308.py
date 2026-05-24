# 2026-05-19T21:55:47.689123100
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="App")
comp.build()

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="platform_1")

client.delete_component(name="platform_1")

domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.set_lib(lib_name="xilffs", path="E:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilffs_v5_4")

status = domain.regenerate()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

