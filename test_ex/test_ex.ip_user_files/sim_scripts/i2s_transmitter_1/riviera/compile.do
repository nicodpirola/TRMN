transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/i2s_transmitter_v1_0_10
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap i2s_transmitter_v1_0_10 riviera/i2s_transmitter_v1_0_10
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xilinx_vip  -incr -l i2s_receiver_v1_0_10 "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l i2s_transmitter_v1_0_10 -l xil_defaultlib \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l i2s_receiver_v1_0_10 "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l i2s_transmitter_v1_0_10 -l xil_defaultlib \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work i2s_transmitter_v1_0_10  -incr -l i2s_receiver_v1_0_10 "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l i2s_transmitter_v1_0_10 -l xil_defaultlib \
"../../../ipstatic/hdl/i2s_transmitter_v1_0_rfs.sv" \

vlog -work xil_defaultlib  -incr -l i2s_receiver_v1_0_10 "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l i2s_transmitter_v1_0_10 -l xil_defaultlib \
"../../../../test_ex.gen/sources_1/ip/i2s_transmitter_1/sim/i2s_transmitter_1.sv" \

vlog -work xil_defaultlib \
"glbl.v"

