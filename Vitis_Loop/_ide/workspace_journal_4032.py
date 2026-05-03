# 2026-05-03T00:55:59.354641900
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="App")
comp.build()

vitis.dispose()

vitis.dispose()

