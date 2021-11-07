// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jul 11 16:45:58 2021
// Host        : Nick running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ HECC_stub.v
// Design      : HECC
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ecc_v2_0_13,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ecc_clk, ecc_reset, ecc_clken, ecc_data_in, 
  ecc_data_out, ecc_chkbits_out)
/* synthesis syn_black_box black_box_pad_pin="ecc_clk,ecc_reset,ecc_clken,ecc_data_in[7:0],ecc_data_out[7:0],ecc_chkbits_out[4:0]" */;
  input ecc_clk;
  input ecc_reset;
  input ecc_clken;
  input [7:0]ecc_data_in;
  output [7:0]ecc_data_out;
  output [4:0]ecc_chkbits_out;
endmodule
