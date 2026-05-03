# 2026-05-03T00:12:21.301430400
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="App")
comp.build()

status = platform.build()

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

