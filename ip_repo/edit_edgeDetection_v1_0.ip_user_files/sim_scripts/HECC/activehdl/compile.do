vlib work
vlib activehdl

vlib activehdl/ecc_v2_0_13
vlib activehdl/xil_defaultlib

vmap ecc_v2_0_13 activehdl/ecc_v2_0_13
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work ecc_v2_0_13  -v2k5 \
"../../../ipstatic/hdl/ecc_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../edgeDetection_1.0/src/HECC/sim/HECC.v" \


vlog -work xil_defaultlib \
"glbl.v"

