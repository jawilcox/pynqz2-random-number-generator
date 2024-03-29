onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib design_Uniform_32Bit_opt

do {wave.do}

view wave
view structure
view signals

do {design_Uniform_32Bit.udo}

run -all

quit -force
