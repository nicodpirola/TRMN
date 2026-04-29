# 2026-04-27T15:21:35.528643200
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_PT")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

vitis.dispose()

