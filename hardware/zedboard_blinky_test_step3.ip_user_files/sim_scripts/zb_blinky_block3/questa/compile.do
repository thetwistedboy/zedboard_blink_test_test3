vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_22
vlib questa_lib/msim/processing_system7_vip_v1_0_24
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_uartlite_v2_0_39
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_37
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_36
vlib questa_lib/msim/axi_iic_v2_1_11
vlib questa_lib/msim/xlconstant_v1_1_10

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 questa_lib/msim/axi_vip_v1_1_22
vmap processing_system7_vip_v1_0_24 questa_lib/msim/processing_system7_vip_v1_0_24
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_uartlite_v2_0_39 questa_lib/msim/axi_uartlite_v2_0_39
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 questa_lib/msim/axi_gpio_v2_0_37
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_36 questa_lib/msim/axi_register_slice_v2_1_36
vmap axi_iic_v2_1_11 questa_lib/msim/axi_iic_v2_1_11
vmap xlconstant_v1_1_10 questa_lib/msim/xlconstant_v1_1_10

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_24 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_processing_system7_0_0/sim/zb_blinky_block3_processing_system7_0_0.v" \
"../../../bd/zb_blinky_block3/ipshared/ea01/00ce/top.v" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_zedboard_blinky_test_0_0/sim/zb_blinky_block3_zedboard_blinky_test_0_0.v" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/ipshared/ff0e/src/pmod_concat.v" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/src/PmodESP32_pmod_bridge_0_0/sim/PmodESP32_pmod_bridge_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_uartlite_v2_0_39 -64 -93  \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/ipshared/eab1/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/src/PmodESP32_axi_uartlite_0_0/sim/PmodESP32_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -64 -93  \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/src/PmodESP32_axi_gpio_0_0/sim/PmodESP32_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ipshared/e695/src/PmodESP32.v" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/sim/zb_blinky_block3_PmodESP32_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_gpio_0_0/sim/zb_blinky_block3_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/sim/bd_0970.v" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_1/sim/bd_0970_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/0848/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_2/sim/bd_0970_arinsw_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_3/sim/bd_0970_rinsw_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_4/sim/bd_0970_awinsw_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_5/sim/bd_0970_winsw_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_6/sim/bd_0970_binsw_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_7/sim/bd_0970_aroutsw_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_8/sim/bd_0970_routsw_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_9/sim/bd_0970_awoutsw_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_10/sim/bd_0970_woutsw_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_11/sim/bd_0970_boutsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_12/sim/bd_0970_arni_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_13/sim/bd_0970_rni_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_14/sim/bd_0970_awni_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_15/sim/bd_0970_wni_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_16/sim/bd_0970_bni_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/3d9a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_17/sim/bd_0970_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/7785/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_18/sim/bd_0970_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/3051/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_19/sim/bd_0970_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/852f/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_20/sim/bd_0970_s00a2s_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_21/sim/bd_0970_sarn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_22/sim/bd_0970_srn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_23/sim/bd_0970_sawn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_24/sim/bd_0970_swn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_25/sim/bd_0970_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/fca9/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_26/sim/bd_0970_m00s2a_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_27/sim/bd_0970_m00arn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_28/sim/bd_0970_m00rn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_29/sim/bd_0970_m00awn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_30/sim/bd_0970_m00wn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_31/sim/bd_0970_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/e44a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_32/sim/bd_0970_m00e_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_33/sim/bd_0970_m01s2a_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_34/sim/bd_0970_m01arn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_35/sim/bd_0970_m01rn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_36/sim/bd_0970_m01awn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_37/sim/bd_0970_m01wn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_38/sim/bd_0970_m01bn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_39/sim/bd_0970_m01e_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_40/sim/bd_0970_m02s2a_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_41/sim/bd_0970_m02arn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_42/sim/bd_0970_m02rn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_43/sim/bd_0970_m02awn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_44/sim/bd_0970_m02wn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_45/sim/bd_0970_m02bn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_46/sim/bd_0970_m02e_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_47/sim/bd_0970_m03s2a_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_48/sim/bd_0970_m03arn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_49/sim/bd_0970_m03rn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_50/sim/bd_0970_m03awn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_51/sim/bd_0970_m03wn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_52/sim/bd_0970_m03bn_0.sv" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/bd_0/ip/ip_53/sim/bd_0970_m03e_0.sv" \

vcom -work smartconnect_v1_0 -64 -93  \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/cb42/hdl/sc_ultralite_v1_0_rfs.sv" \

vlog -work axi_register_slice_v2_1_36 -64 -incr -mfcu  "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L smartconnect_v1_0 -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_axi_smc_0/sim/zb_blinky_block3_axi_smc_0.sv" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_rst_ps7_0_100M_0/sim/zb_blinky_block3_rst_ps7_0_100M_0.vhd" \

vcom -work axi_iic_v2_1_11 -64 -93  \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/src/PmodCMPS2_axi_iic_0_0/hdl/axi_iic_v2_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/src/PmodCMPS2_axi_iic_0_0/sim/PmodCMPS2_axi_iic_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/src/PmodCMPS2_pmod_bridge_0_0/sim/PmodCMPS2_pmod_bridge_0_0.v" \

vlog -work xlconstant_v1_1_10 -64 -incr -mfcu  "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/src/PmodCMPS2_xlconstant_0_0/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/ec67/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/9a25/hdl" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/f0b6/hdl/verilog" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/00fe/hdl/verilog" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodESP32_0_0/drivers/PmodESP32_v1_0/src" "+incdir+../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/drivers/PmodCMPS2_v1_0/src" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/src/PmodCMPS2_xlconstant_0_0/sim/PmodCMPS2_xlconstant_0_0.v" \
"../../../../zedboard_blinky_test_step3.gen/sources_1/bd/zb_blinky_block3/ipshared/8b00/src/PmodCMPS2.v" \
"../../../bd/zb_blinky_block3/ip/zb_blinky_block3_PmodCMPS2_0_1/sim/zb_blinky_block3_PmodCMPS2_0_1.v" \
"../../../bd/zb_blinky_block3/sim/zb_blinky_block3.v" \

vlog -work xil_defaultlib \
"glbl.v"

