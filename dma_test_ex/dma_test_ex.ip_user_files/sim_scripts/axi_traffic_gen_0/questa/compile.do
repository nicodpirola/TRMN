vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/dist_mem_gen_v8_0_17
vlib questa_lib/msim/axi_traffic_gen_v3_0_21
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap dist_mem_gen_v8_0_17 questa_lib/msim/dist_mem_gen_v8_0_17
vmap axi_traffic_gen_v3_0_21 questa_lib/msim/axi_traffic_gen_v3_0_21
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_17  -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work axi_traffic_gen_v3_0_21  -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" \
"../../../ipstatic/hdl/axi_traffic_gen_v3_0_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" \
"../../../../dma_test_ex.gen/sources_1/ip/axi_traffic_gen_0/sim/axi_traffic_gen_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

