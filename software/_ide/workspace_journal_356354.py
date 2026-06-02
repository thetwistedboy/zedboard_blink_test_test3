# 2026-05-30T10:47:56.739144538
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="app")
comp.build()

comp.build()

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["app.c", "main.c", "../app_src/main.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["app.c", "main.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["main.c"])

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = [""])

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

vitis.dispose()

