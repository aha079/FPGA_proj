onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib HECC_opt

do {wave.do}

view wave
view structure
view signals

do {HECC.udo}

run -all

quit -force
