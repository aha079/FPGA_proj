vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_1
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_16
vlib questa_lib/msim/blk_mem_gen_v8_4_3
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_19
vlib questa_lib/msim/fifo_generator_v13_2_4
vlib questa_lib/msim/axi_data_fifo_v2_1_18
vlib questa_lib/msim/axi_crossbar_v2_1_20
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_v3_2_16
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/c_reg_fd_v12_0_6
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_addsub_v3_0_6
vlib questa_lib/msim/c_addsub_v12_0_13
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_15
vlib questa_lib/msim/axi_utils_v2_0_6
vlib questa_lib/msim/cordic_v6_0_15
vlib questa_lib/msim/ecc_v2_0_13

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_1 questa_lib/msim/microblaze_v11_0_1
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_16 questa_lib/msim/lmb_bram_if_cntlr_v4_0_16
vmap blk_mem_gen_v8_4_3 questa_lib/msim/blk_mem_gen_v8_4_3
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_19 questa_lib/msim/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 questa_lib/msim/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 questa_lib/msim/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 questa_lib/msim/axi_crossbar_v2_1_20
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_16 questa_lib/msim/mdm_v3_2_16
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 questa_lib/msim/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 questa_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_13 questa_lib/msim/c_addsub_v12_0_13
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_15 questa_lib/msim/mult_gen_v12_0_15
vmap axi_utils_v2_0_6 questa_lib/msim/axi_utils_v2_0_6
vmap cordic_v6_0_15 questa_lib/msim/cordic_v6_0_15
vmap ecc_v2_0_13 questa_lib/msim/ecc_v2_0_13

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"D:/Massive-Programs/Vivado/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Massive-Programs/Vivado/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Massive-Programs/Vivado/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_1 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_16 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_3 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_16 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_13 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_15 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_15 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_edgeDetection_0_1/src/cordic_0/sim/cordic_0.vhd" \

vlog -work ecc_v2_0_13 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_edgeDetection_0_1/src/HECC/hdl/ecc_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../bd/design_1/ip/design_1_edgeDetection_0_1/src/HECC/sim/HECC.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ipshared/f525/src/CRC.vhd" \
"../../../bd/design_1/ipshared/f525/src/adder.vhd" \
"../../../bd/design_1/ipshared/f525/src/packge_types.vhd" \
"../../../bd/design_1/ipshared/f525/hdl/edgeDetection_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/f525/src/filter_applier.vhd" \
"../../../bd/design_1/ipshared/f525/src/filter_px.vhd" \
"../../../bd/design_1/ipshared/f525/src/multiplier.vhd" \
"../../../bd/design_1/ipshared/f525/src/reg.vhd" \
"../../../bd/design_1/ipshared/f525/hdl/edgeDetection_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_edgeDetection_0_1/sim/design_1_edgeDetection_0_1.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \
"../../../bd/design_1/ipshared/cace/hdl/edgeDetection2_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/cace/hdl/edgeDetection2_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_edgeDetection2_0_0/sim/design_1_edgeDetection2_0_0.vhd" \
"../../../bd/design_1/ipshared/0f10/hdl/edgeDetection3_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/0f10/hdl/edgeDetection3_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_edgeDetection3_0_0/sim/design_1_edgeDetection3_0_0.vhd" \
"../../../bd/design_1/ipshared/b343/hdl/edgeDetection4_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/b343/hdl/edgeDetection4_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_edgeDetection4_0_0/sim/design_1_edgeDetection4_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

