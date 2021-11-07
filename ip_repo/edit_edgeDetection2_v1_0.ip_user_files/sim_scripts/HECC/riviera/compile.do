vlib work
vlib riviera

vlib riviera/ecc_v2_0_13
vlib riviera/xil_defaultlib

vmap ecc_v2_0_13 riviera/ecc_v2_0_13
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work ecc_v2_0_13  -v2k5 \
"../../../ipstatic/hdl/ecc_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../edgeDetection2_1.0/src/HECC/sim/HECC.v" \


vlog -work xil_defaultlib \
"glbl.v"

