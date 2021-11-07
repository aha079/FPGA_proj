vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/ecc_v2_0_13
vlib modelsim_lib/msim/xil_defaultlib

vmap ecc_v2_0_13 modelsim_lib/msim/ecc_v2_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work ecc_v2_0_13 -64 -incr \
"../../../ipstatic/hdl/ecc_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../../edgeDetection_1.0/src/HECC/sim/HECC.v" \


vlog -work xil_defaultlib \
"glbl.v"

