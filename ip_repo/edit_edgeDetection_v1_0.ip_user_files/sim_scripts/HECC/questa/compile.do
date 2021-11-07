vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/ecc_v2_0_13
vlib questa_lib/msim/xil_defaultlib

vmap ecc_v2_0_13 questa_lib/msim/ecc_v2_0_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work ecc_v2_0_13 -64 \
"../../../ipstatic/hdl/ecc_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../../edgeDetection_1.0/src/HECC/sim/HECC.v" \


vlog -work xil_defaultlib \
"glbl.v"

