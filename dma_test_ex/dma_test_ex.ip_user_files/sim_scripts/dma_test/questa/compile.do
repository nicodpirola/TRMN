vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_datamover_v5_1_37
vlib questa_lib/msim/axi_sg_v4_1_21
vlib questa_lib/msim/axi_dma_v7_1_36
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap axi_datamover_v5_1_37 questa_lib/msim/axi_datamover_v5_1_37
vmap axi_sg_v4_1_21 questa_lib/msim/axi_sg_v4_1_21
vmap axi_dma_v7_1_36 questa_lib/msim/axi_dma_v7_1_36
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_datamover_v5_1_37  -93  \
"../../../ipstatic/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_21  -93  \
"../../../ipstatic/ipshared/b193/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_36  -93  \
"../../../ipstatic/ipshared/cb19/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../dma_test_ex.gen/sources_1/ip/dma_test/sim/dma_test.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

