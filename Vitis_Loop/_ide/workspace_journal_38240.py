# 2026-07-12T22:35:33.308497900
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

comp = client.create_app_component(name="UI_",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

client.delete_component(name="UI_")

platform = client.get_component(name="platform")
domain = platform.add_domain(cpu = "ps7_cortexa9_1",os = "standalone",name = "CORE1",display_name = "CORE1",generate_dtb = False)

comp = client.create_app_component(name="UI_",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "CORE1")

vitis.dispose()

