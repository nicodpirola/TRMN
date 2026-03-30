# 2026-03-23T11:41:34.294841500
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform_TEW")
status = platform.build()

comp = client.create_app_component(name="app_component_TEW",platform = "$COMPONENT_LOCATION/../platform_TEW/export/platform_TEW/platform_TEW.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="app_component_TEW")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

vitis.dispose()

