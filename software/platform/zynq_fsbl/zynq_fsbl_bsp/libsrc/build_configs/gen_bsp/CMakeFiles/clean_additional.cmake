# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/include/diskio.h"
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/include/ff.h"
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/include/ffconf.h"
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/include/sleep.h"
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/include/xilffs.h"
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/include/xilffs_config.h"
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/include/xilrsa.h"
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/include/xiltimer.h"
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/include/xtimer_config.h"
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/lib/libxilffs.a"
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/lib/libxilrsa.a"
  "/home/jkelley/Documents/Xilinx/zedboard_blinky_test_step3/software/platform/zynq_fsbl/zynq_fsbl_bsp/lib/libxiltimer.a"
  )
endif()
