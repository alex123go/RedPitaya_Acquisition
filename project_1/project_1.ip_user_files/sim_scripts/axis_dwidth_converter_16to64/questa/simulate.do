onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib axis_dwidth_converter_16to64_opt

do {wave.do}

view wave
view structure
view signals

do {axis_dwidth_converter_16to64.udo}

run -all

quit -force
