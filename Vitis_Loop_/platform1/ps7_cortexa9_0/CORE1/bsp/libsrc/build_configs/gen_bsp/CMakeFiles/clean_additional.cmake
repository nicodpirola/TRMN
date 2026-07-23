# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "X:\\Tesis\\Vitis_Loop_\\platform1\\ps7_cortexa9_0\\CORE1\\bsp\\include\\sleep.h"
  "X:\\Tesis\\Vitis_Loop_\\platform1\\ps7_cortexa9_0\\CORE1\\bsp\\include\\xiltimer.h"
  "X:\\Tesis\\Vitis_Loop_\\platform1\\ps7_cortexa9_0\\CORE1\\bsp\\include\\xtimer_config.h"
  "X:\\Tesis\\Vitis_Loop_\\platform1\\ps7_cortexa9_0\\CORE1\\bsp\\lib\\libxiltimer.a"
  )
endif()
