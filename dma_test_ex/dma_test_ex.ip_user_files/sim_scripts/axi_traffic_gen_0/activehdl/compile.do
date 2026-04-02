transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/dist_mem_gen_v8_0_17
vlib activehdl/axi_traffic_gen_v3_0_21
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap dist_mem_gen_v8_0_17 activehdl/dist_mem_gen_v8_0_17
vmap axi_traffic_gen_v3_0_21 activehdl/axi_traffic_gen_v3_0_21
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l dist_mem_gen_v8_0_17 -l axi_traffic_gen_v3_0_21 -l xil_defaultlib \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_17  -v2k5 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l dist_mem_gen_v8_0_17 -l axi_traffic_gen_v3_0_21 -l xil_defaultlib \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work axi_traffic_gen_v3_0_21  -v2k5 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l dist_mem_gen_v8_0_17 -l axi_traffic_gen_v3_0_21 -l xil_defaultlib \
"../../../ipstatic/hdl/axi_traffic_gen_v3_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" -l xpm -l dist_mem_gen_v8_0_17 -l axi_traffic_gen_v3_0_21 -l xil_defaultlib \
"../../../../dma_test_ex.gen/sources_1/ip/axi_traffic_gen_0/sim/axi_traffic_gen_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

