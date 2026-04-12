# 2026-04-11T11:08:36.319950500
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

proj = client.create_sys_project(name="system_project", platform="$COMPONENT_LOCATION/../platform_TEW/export/platform_TEW/platform_TEW.xpfm", template="empty_accelerated_application" , build_output_type="xsa")

proj = client.get_sys_project(name="system_project")

proj = proj.add_component(name="app_component_TEW")

proj = client.get_sys_project(name="system_project")

proj.build(comp_name = ["app_component_TEW"],build_comps = False)

platform = client.get_component(name="platform_TEW")
status = platform.build()

comp = client.get_component(name="app_component_TEW")
comp.build()

vitis.dispose()

