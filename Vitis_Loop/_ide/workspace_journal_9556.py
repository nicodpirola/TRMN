# 2026-07-12T22:43:13.663547800
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

comp = client.create_app_component(name="Loop_y_SD",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "CORE1")

client.delete_component(name="UI_")

client.delete_component(name="componentName")

vitis.dispose()

