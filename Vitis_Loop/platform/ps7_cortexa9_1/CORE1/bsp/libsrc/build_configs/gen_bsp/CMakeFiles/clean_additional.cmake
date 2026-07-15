# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "X:\\Tesis\\Vitis_Loop\\platform\\ps7_cortexa9_1\\CORE1\\bsp\\include\\diskio.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\ps7_cortexa9_1\\CORE1\\bsp\\include\\ff.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\ps7_cortexa9_1\\CORE1\\bsp\\include\\ffconf.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\ps7_cortexa9_1\\CORE1\\bsp\\include\\sleep.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\ps7_cortexa9_1\\CORE1\\bsp\\include\\xilffs.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\ps7_cortexa9_1\\CORE1\\bsp\\include\\xilffs_config.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\ps7_cortexa9_1\\CORE1\\bsp\\include\\xiltimer.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\ps7_cortexa9_1\\CORE1\\bsp\\include\\xtimer_config.h"
  "X:\\Tesis\\Vitis_Loop\\platform\\ps7_cortexa9_1\\CORE1\\bsp\\lib\\libxilffs.a"
  "X:\\Tesis\\Vitis_Loop\\platform\\ps7_cortexa9_1\\CORE1\\bsp\\lib\\libxiltimer.a"
  )
endif()
