# 2026-06-02T17:42:06.662945432
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="app")
comp.build()

comp.build()

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/zb_blinky_block3_wrapper.xsa")

status = platform.build()

component = client.get_component(name="app")

lscript = component.get_ld_script(path="/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld")

lscript.regenerate()

comp.build()

comp.build()

comp.set_app_config(key = "USER_COMPILE_DEFINITIONS", values = ["DEBUG"])

comp.build()

comp.set_app_config(key = "USER_COMPILE_DEFINITIONS", values = ["DEBUG=1"])

comp.build()

comp.set_app_config(key = "USER_COMPILE_DEFINITIONS", values = [""])

comp.set_app_config(key = "USER_COMPILE_DEFINITIONS", values = ["DEBUG"])

comp.build()

comp.set_app_config(key = "USER_COMPILE_DEFINITIONS", values = ["-DDEBUG"])

comp.build()

comp.set_app_config(key = "USER_COMPILE_DEFINITIONS", values = [""])

comp = client.get_component(name="platform")
comp.set_app_config(key = "USER_COMPILE_DEFINITIONS", values = ["DEBUG"])

comp.set_app_config(key = "USER_COMPILE_DEFINITIONS", values = ["DEBUG=1"])

status = platform.build()

comp = client.get_component(name="app")
comp.build()

comp = client.get_component(name="platform")
comp.set_app_config(key = "USER_COMPILE_DEFINITIONS", values = ["-DDEBUG=1"])

status = platform.build()

comp = client.get_component(name="app")
comp.build()

comp = client.get_component(name="platform")
comp.set_app_config(key = "USER_COMPILE_DEFINITIONS", values = [""])

status = platform.build()

comp = client.get_component(name="app")
comp.build()

status = platform.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/zb_blinky_block3_wrapper.xsa")

status = platform.build()

comp.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/zb_blinky_block3_wrapper.xsa")

status = platform.build()

lscript.regenerate()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/zb_blinky_block3_wrapper2.xsa")

lscript.regenerate()

status = platform.build()

lscript.regenerate()

comp.build()

comp.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/zb_blinky_block3_wrapper.xsa")

status = platform.build()

lscript.regenerate()

comp.build()

comp.build()

comp.build()

