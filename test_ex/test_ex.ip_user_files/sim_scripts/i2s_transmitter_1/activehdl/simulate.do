transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+i2s_transmitter_1  -L xil_defaultlib -L xilinx_vip -L xpm -L i2s_transmitter_v1_0_10 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.i2s_transmitter_1 xil_defaultlib.glbl

do {i2s_transmitter_1.udo}

run 1000ns

endsim

quit -force
