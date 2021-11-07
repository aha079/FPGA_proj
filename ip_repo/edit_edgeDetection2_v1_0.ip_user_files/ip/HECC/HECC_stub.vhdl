-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jul 11 16:36:23 2021
-- Host        : Nick running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/asus/Desktop/finalFPGA/ip_repo/edgeDetection2_1.0/src/HECC/HECC_stub.vhdl
-- Design      : HECC
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HECC is
  Port ( 
    ecc_clk : in STD_LOGIC;
    ecc_reset : in STD_LOGIC;
    ecc_clken : in STD_LOGIC;
    ecc_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ecc_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ecc_chkbits_out : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end HECC;

architecture stub of HECC is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ecc_clk,ecc_reset,ecc_clken,ecc_data_in[7:0],ecc_data_out[7:0],ecc_chkbits_out[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ecc_v2_0_13,Vivado 2019.1";
begin
end;
