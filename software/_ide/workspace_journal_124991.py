# 2026-05-29T18:37:07.074644672
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="app")
comp.build()

component = client.get_component(name="app")

lscript = component.get_ld_script(path="/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld")

lscript.regenerate()

lscript.regenerate()

platform = client.get_component(name="platform")
status = platform.build()

lscript.regenerate()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/zb_blinky_block3_wrapper.xsa")

lscript.regenerate()

domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.regenerate()

lscript.regenerate()

status = domain.regenerate()

lscript.regenerate()

comp = client.create_app_component(name="app2",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

client.delete_component(name="app")

client.delete_component(name="app2")

comp = client.create_app_component(name="app",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

status = comp.import_files(from_loc="", files=["/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/srcs"], is_skip_copy_sources = False)

lscript.regenerate()

status = platform.build()

comp.build()

comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["../app_src/main.c"])

lscript.regenerate()

vitis.dispose()

