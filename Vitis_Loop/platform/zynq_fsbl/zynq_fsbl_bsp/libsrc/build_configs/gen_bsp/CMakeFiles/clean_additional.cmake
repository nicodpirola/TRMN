# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\diskio.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ff.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ffconf.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\sleep.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs_config.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilrsa.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xiltimer.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xtimer_config.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilffs.a"
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilrsa.a"
  "X:\\Tesis\\Vitis_Loop\\platform\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxiltimer.a"
  )
endif()
