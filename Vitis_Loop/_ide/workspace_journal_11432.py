# 2026-05-03T13:13:58.048117300
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Loop")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="App")
comp.build()

vitis.dispose()

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="App")
comp.build()

