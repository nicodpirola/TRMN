# 2026-07-13T16:19:58.714450
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="App")
comp.build()

status = platform.build()

comp = client.get_component(name="Loop_y_SD")
comp.build()

domain = platform.get_domain(name="CORE1")

status = domain.set_lib(lib_name="xilffs", path="X:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilffs_v5_4")

domain = platform.get_domain(name="zynq_fsbl")

status = domain.remove_lib(lib_name="xilffs")

status = platform.build()

status = platform.build()

status = domain.set_lib(lib_name="xilffs", path="X:\Xilinx\2025.1\Vitis\data\embeddedsw\lib\sw_services\xilffs_v5_4")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="App")
comp.build()

proj = client.create_sys_project(name="theremin_dual_core", platform="$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm", template="empty_accelerated_application" , build_output_type="xsa")

proj = client.get_sys_project(name="theremin_dual_core")

proj = proj.add_component(name="App")

proj = proj.add_component(name="Loop_y_SD")

proj = client.get_sys_project(name="theremin_dual_core")

proj.build(comp_name = ["App"],build_comps = False)

proj.build(comp_name = ["App"],build_comps = False)

vitis.dispose()

