# 2026-05-03T11:05:27.008398300
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="App")
comp.build()

vitis.dispose()

vitis.dispose()

