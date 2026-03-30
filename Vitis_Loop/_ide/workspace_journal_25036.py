# 2026-03-21T15:13:25.057873600
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform_TEW",hw_design = "$COMPONENT_LOCATION/../HW.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="platform_TEW")
status = platform.update_desc(desc="")

status = platform.update_desc(desc="Parte PS Theremin")

vitis.dispose()

