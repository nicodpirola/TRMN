# 2026-03-22T14:55:50.071632600
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform_TEW")
status = platform.build()

