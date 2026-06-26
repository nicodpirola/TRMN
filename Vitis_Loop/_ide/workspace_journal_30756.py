# 2026-06-22T22:04:16.227822100
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="App")
comp.build()

status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

vitis.dispose()

