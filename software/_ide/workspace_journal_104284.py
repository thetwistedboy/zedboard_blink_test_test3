# 2026-05-29T18:17:06.296510103
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="app")
status = comp.clean()

comp.build()

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/zb_blinky_block3_wrapper.xsa")

status = platform.build()

component = client.get_component(name="app")

lscript = component.get_ld_script(path="/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld")

lscript.regenerate()

status = platform.build()

comp.build()

status = platform.build()

lscript.regenerate()

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld"])

comp.build()

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld"])

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld"])

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld"])

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld"])

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld"])

comp.build()

comp.build()

lscript.regenerate()

status = platform.build()

lscript.regenerate()

vitis.dispose()

