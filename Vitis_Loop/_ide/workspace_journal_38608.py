# 2026-07-13T18:04:17.926991500
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

proj = client.get_sys_project(name="theremin_dual_core")

proj.build(comp_name = ["App"],build_comps = False)

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="Loop_y_SD")
comp.build()

status = comp.clean()

status = comp.clean()

status = comp.clean()

status = comp.clean()

status = platform.build()

comp.build()

proj.build(comp_name = ["App"],build_comps = False)

proj.build(comp_name = ["App"],build_comps = False)

status = platform.build()

comp.build()

status = platform.build()

proj.build(comp_name = ["App"],build_comps = False)

vitis.dispose()

