# 2026-04-10T19:02:29.849423700
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform_TEW")
status = platform.update_desc(desc="Parte PS Theremin")

status = platform.build()

vitis.dispose()

