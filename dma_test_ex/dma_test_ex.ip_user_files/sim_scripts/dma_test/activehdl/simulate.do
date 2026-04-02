transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+dma_test  -L xil_defaultlib -L xpm -L axi_datamover_v5_1_37 -L axi_sg_v4_1_21 -L axi_dma_v7_1_36 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dma_test xil_defaultlib.glbl

do {dma_test.udo}

run 1000ns

endsim

quit -force
