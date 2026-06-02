# 2026-06-01T19:55:56.184981780
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../hardware/zb_blinky_block3_wrapper.xsa")

status = platform.build()

component = client.get_component(name="app")

lscript = component.get_ld_script(path="/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld")

lscript.regenerate()

comp = client.get_component(name="app")
comp.build()

comp.build()

comp.build()

