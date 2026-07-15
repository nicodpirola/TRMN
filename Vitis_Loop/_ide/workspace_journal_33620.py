# 2026-07-13T21:47:40.638652100
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

comp = client.get_component(name="Loop_y_SD")
status = comp.clean()

status = comp.clean()

platform = client.get_component(name="platform")
status = platform.build()

comp.build()

proj = client.get_sys_project(name="theremin_dual_core")

status = proj.clean()

proj.build(comp_name = ["App"],build_comps = False)

status = comp.clean()

status = platform.build()

comp.build()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

status = proj.clean()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

comp = client.get_component(name="App")
status = comp.clean()

status = comp.clean()

status = platform.build()

comp.build()

comp = client.get_component(name="Loop_y_SD")
status = comp.clean()

status = comp.clean()

status = platform.build()

comp.build()

status = proj.clean()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="App")
comp.build()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

status = platform.build()

comp = client.get_component(name="Loop_y_SD")
comp.build()

status = platform.build()

comp = client.get_component(name="App")
comp.build()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

status = platform.build()

comp = client.get_component(name="Loop_y_SD")
comp.build()

status = platform.build()

comp.build()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

status = platform.build()

comp.build()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

status = platform.build()

comp.build()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

status = platform.build()

comp.build()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

status = platform.build()

comp.build()

proj.build(comp_name = ["App", "Loop_y_SD"],build_comps = False)

vitis.dispose()

