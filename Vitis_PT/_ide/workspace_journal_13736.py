# 2026-04-27T21:27:09.493785600
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_PT")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

