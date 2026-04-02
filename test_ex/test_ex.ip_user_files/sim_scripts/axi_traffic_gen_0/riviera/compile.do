transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/dist_mem_gen_v8_0_17
vlib riviera/axi_traffic_gen_v3_0_21
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap dist_mem_gen_v8_0_17 riviera/dist_mem_gen_v8_0_17
vmap axi_traffic_gen_v3_0_21 riviera/axi_traffic_gen_v3_0_21
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l i2s_transmitter_v1_0_10 -l i2s_receiver_v1_0_10 "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l dist_mem_gen_v8_0_17 -l axi_traffic_gen_v3_0_21 -l xil_defaultlib \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l i2s_transmitter_v1_0_10 -l i2s_receiver_v1_0_10 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l dist_mem_gen_v8_0_17 -l axi_traffic_gen_v3_0_21 -l xil_defaultlib \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_17  -incr -v2k5 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l dist_mem_gen_v8_0_17 -l axi_traffic_gen_v3_0_21 -l xil_defaultlib \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work axi_traffic_gen_v3_0_21  -incr -v2k5 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l dist_mem_gen_v8_0_17 -l axi_traffic_gen_v3_0_21 -l xil_defaultlib \
"../../../ipstatic/hdl/axi_traffic_gen_v3_0_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l dist_mem_gen_v8_0_17 -l axi_traffic_gen_v3_0_21 -l xil_defaultlib \
"../../../../test_ex.gen/sources_1/ip/axi_traffic_gen_0/sim/axi_traffic_gen_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

