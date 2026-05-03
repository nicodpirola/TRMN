transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_21
vlib activehdl/processing_system7_vip_v1_0_23
vlib activehdl/xil_defaultlib
vlib activehdl/i2s_receiver_v1_0_10
vlib activehdl/i2s_transmitter_v1_0_10
vlib activehdl/xlconstant_v1_1_10
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_register_slice_v2_1_35

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 activehdl/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 activehdl/processing_system7_vip_v1_0_23
vmap xil_defaultlib activehdl/xil_defaultlib
vmap i2s_receiver_v1_0_10 activehdl/i2s_receiver_v1_0_10
vmap i2s_transmitter_v1_0_10 activehdl/i2s_transmitter_v1_0_10
vmap xlconstant_v1_1_10 activehdl/xlconstant_v1_1_10
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_register_slice_v2_1_35 activehdl/axi_register_slice_v2_1_35

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work i2s_receiver_v1_0_10  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/5826/hdl/i2s_receiver_v1_0_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_i2s_receiver_0_0/sim/design_1_i2s_receiver_0_0.sv" \

vlog -work i2s_transmitter_v1_0_10  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/b58c/hdl/i2s_transmitter_v1_0_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_i2s_transmitter_0_0/sim/design_1_i2s_transmitter_0_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/sim/bd_6e42.v" \

vlog -work xlconstant_v1_1_10  -v2k5 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_0/sim/bd_6e42_one_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_1/sim/bd_6e42_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_2/sim/bd_6e42_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_3/sim/bd_6e42_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_4/sim/bd_6e42_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_5/sim/bd_6e42_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_6/sim/bd_6e42_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_7/sim/bd_6e42_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_8/sim/bd_6e42_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_9/sim/bd_6e42_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_10/sim/bd_6e42_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_11/sim/bd_6e42_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_12/sim/bd_6e42_arni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_13/sim/bd_6e42_rni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_14/sim/bd_6e42_awni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_15/sim/bd_6e42_wni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_16/sim/bd_6e42_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_17/sim/bd_6e42_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_18/sim/bd_6e42_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_19/sim/bd_6e42_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_20/sim/bd_6e42_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_21/sim/bd_6e42_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_22/sim/bd_6e42_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_23/sim/bd_6e42_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_24/sim/bd_6e42_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_25/sim/bd_6e42_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_26/sim/bd_6e42_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_27/sim/bd_6e42_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_28/sim/bd_6e42_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_29/sim/bd_6e42_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_30/sim/bd_6e42_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_31/sim/bd_6e42_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_32/sim/bd_6e42_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_33/sim/bd_6e42_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_34/sim/bd_6e42_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_35/sim/bd_6e42_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_36/sim/bd_6e42_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_37/sim/bd_6e42_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_38/sim/bd_6e42_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2/bd_0/ip/ip_39/sim/bd_6e42_m01e_0.sv" \

vlog -work axi_register_slice_v2_1_35  -v2k5 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/ip/design_1_axi_smc_2/sim/design_1_axi_smc_2.sv" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_2/sim/design_1_rst_ps7_0_100M_2.vhd" \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/6cfa/hdl" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a9be" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Passthrough_v1.gen/sources_1/bd/design_1/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l xil_defaultlib -l i2s_receiver_v1_0_10 -l i2s_transmitter_v1_0_10 -l xlconstant_v1_1_10 -l proc_sys_reset_v5_0_17 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

