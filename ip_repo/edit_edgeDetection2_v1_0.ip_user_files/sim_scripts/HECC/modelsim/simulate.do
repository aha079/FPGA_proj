onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L ecc_v2_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.HECC xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {HECC.udo}

run -all

quit -force
