# 2026-05-28T21:25:50.490944091
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../hardware/zb_blinky_block3_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

comp = client.create_app_component(name="app",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app")
comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = [""])

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/inc"])

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = [""])

comp.build()

comp.build()

status = platform.build()

comp.build()

component = client.get_component(name="app")

lscript = component.get_ld_script(path="/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld")

lscript.regenerate()

comp.build()

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = [".././src/lscript.ld"])

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = ["/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/app/src/lscript.ld"])

comp.set_app_config(key = "USER_LINKER_SCRIPT", values = [".././src/lscript.ld"])

comp.build()

lscript.regenerate()

vitis.dispose()

