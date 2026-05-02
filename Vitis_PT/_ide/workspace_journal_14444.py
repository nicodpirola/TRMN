# 2026-04-28T19:44:23.878631800
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_PT")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

