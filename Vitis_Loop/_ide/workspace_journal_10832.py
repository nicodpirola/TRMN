# 2026-05-02T22:02:47.987194200
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="App")
comp.build()

vitis.dispose()

