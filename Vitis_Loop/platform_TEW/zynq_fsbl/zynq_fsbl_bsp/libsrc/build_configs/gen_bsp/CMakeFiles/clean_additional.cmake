# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\include\\diskio.h"
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ff.h"
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\include\\ffconf.h"
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\include\\sleep.h"
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs.h"
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilffs_config.h"
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xilrsa.h"
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xiltimer.h"
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\include\\xtimer_config.h"
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilffs.a"
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxilrsa.a"
  "E:\\Tesis\\Vitis_Loop\\platform_TEW\\zynq_fsbl\\zynq_fsbl_bsp\\lib\\libxiltimer.a"
  )
endif()
