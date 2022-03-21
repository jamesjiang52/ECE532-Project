onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fifo_generator_0 -L fifo_generator_v13_2_3 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_generator_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fifo_generator_0.udo}

run -all

endsim

quit -force
