vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/dist_mem_gen_v8_0_17
vlib modelsim_lib/msim/axi_traffic_gen_v3_0_21
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap dist_mem_gen_v8_0_17 modelsim_lib/msim/dist_mem_gen_v8_0_17
vmap axi_traffic_gen_v3_0_21 modelsim_lib/msim/axi_traffic_gen_v3_0_21
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip  -incr -mfcu  -sv -L i2s_transmitter_v1_0_10 -L i2s_receiver_v1_0_10 "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L i2s_transmitter_v1_0_10 -L i2s_receiver_v1_0_10 "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_17  -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work axi_traffic_gen_v3_0_21  -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axi_traffic_gen_v3_0_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic/hdl/src/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../test_ex.gen/sources_1/ip/axi_traffic_gen_0/sim/axi_traffic_gen_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

