# 2026-07-14T10:07:54.958170100
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper1.xsa")

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper1.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="Loop_y_SD")
comp.build()

status = platform.build()

comp = client.get_component(name="App")
comp.build()

proj = client.get_sys_project(name="theremin_dual_core")

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

status = platform.build()

comp = client.get_component(name="Loop_y_SD")
comp.build()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

status = platform.build()

comp.build()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

status = platform.build()

comp.build()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

vitis.dispose()

