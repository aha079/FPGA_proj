-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jul 11 14:00:03 2021
-- Host        : Nick running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ HECC_sim_netlist.vhdl
-- Design      : HECC
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1157-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ecc_reset : in STD_LOGIC;
    ecc_clken : in STD_LOGIC;
    ecc_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ecc_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_out[12]_i_2_n_0\ : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\data_out[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(7),
      I3 => \^q\(3),
      O => D(2)
    );
\data_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(4),
      O => D(3)
    );
\data_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(2),
      I2 => \^q\(7),
      I3 => \data_out[12]_i_2_n_0\,
      O => D(4)
    );
\data_out[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(5),
      O => \data_out[12]_i_2_n_0\
    );
\data_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(3),
      O => D(0)
    );
\data_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => D(1)
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => ecc_data_in(0),
      Q => \^q\(0),
      R => ecc_reset
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => ecc_data_in(1),
      Q => \^q\(1),
      R => ecc_reset
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => ecc_data_in(2),
      Q => \^q\(2),
      R => ecc_reset
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => ecc_data_in(3),
      Q => \^q\(3),
      R => ecc_reset
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => ecc_data_in(4),
      Q => \^q\(4),
      R => ecc_reset
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => ecc_data_in(5),
      Q => \^q\(5),
      R => ecc_reset
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => ecc_data_in(6),
      Q => \^q\(6),
      R => ecc_reset
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => ecc_data_in(7),
      Q => \^q\(7),
      R => ecc_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ecc_reset : in STD_LOGIC;
    ecc_clken : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 12 downto 0 );
    ecc_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage__parameterized0\ : entity is "ecc_v2_0_13_reg_stage";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage__parameterized0\ is
begin
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(0),
      Q => Q(0),
      R => ecc_reset
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(10),
      Q => Q(10),
      R => ecc_reset
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(11),
      Q => Q(11),
      R => ecc_reset
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(12),
      Q => Q(12),
      R => ecc_reset
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(1),
      Q => Q(1),
      R => ecc_reset
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(2),
      Q => Q(2),
      R => ecc_reset
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(3),
      Q => Q(3),
      R => ecc_reset
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(4),
      Q => Q(4),
      R => ecc_reset
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(5),
      Q => Q(5),
      R => ecc_reset
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(6),
      Q => Q(6),
      R => ecc_reset
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(7),
      Q => Q(7),
      R => ecc_reset
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(8),
      Q => Q(8),
      R => ecc_reset
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(9),
      Q => Q(9),
      R => ecc_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage__parameterized0_0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ecc_reset : in STD_LOGIC;
    ecc_clken : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 12 downto 0 );
    ecc_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage__parameterized0_0\ : entity is "ecc_v2_0_13_reg_stage";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage__parameterized0_0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage__parameterized0_0\ is
begin
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(0),
      Q => Q(0),
      R => ecc_reset
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(10),
      Q => Q(10),
      R => ecc_reset
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(11),
      Q => Q(11),
      R => ecc_reset
    );
\data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(12),
      Q => Q(12),
      R => ecc_reset
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(1),
      Q => Q(1),
      R => ecc_reset
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(2),
      Q => Q(2),
      R => ecc_reset
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(3),
      Q => Q(3),
      R => ecc_reset
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(4),
      Q => Q(4),
      R => ecc_reset
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(5),
      Q => Q(5),
      R => ecc_reset
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(6),
      Q => Q(6),
      R => ecc_reset
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(7),
      Q => Q(7),
      R => ecc_reset
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(8),
      Q => Q(8),
      R => ecc_reset
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ecc_clk,
      CE => ecc_clken,
      D => D(9),
      Q => Q(9),
      R => ecc_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_hamming_enc is
  port (
    Q : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ecc_reset : in STD_LOGIC;
    ecc_clken : in STD_LOGIC;
    ecc_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ecc_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_hamming_enc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_hamming_enc is
  signal \enc_chkbits_pipe0__0\ : STD_LOGIC;
  signal enc_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal enc_pipe_reg_stage_inst_n_10 : STD_LOGIC;
  signal enc_pipe_reg_stage_inst_n_11 : STD_LOGIC;
  signal enc_pipe_reg_stage_inst_n_12 : STD_LOGIC;
  signal enc_pipe_reg_stage_inst_n_5 : STD_LOGIC;
  signal enc_pipe_reg_stage_inst_n_6 : STD_LOGIC;
  signal enc_pipe_reg_stage_inst_n_7 : STD_LOGIC;
  signal enc_pipe_reg_stage_inst_n_8 : STD_LOGIC;
  signal enc_pipe_reg_stage_inst_n_9 : STD_LOGIC;
  signal p_25_out : STD_LOGIC_VECTOR ( 12 downto 8 );
  signal p_4_in : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xor_bits_0_25_pipe : STD_LOGIC;
begin
enc_chkbits_pipe0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_4_in(8),
      I1 => p_4_in(10),
      I2 => xor_bits_0_25_pipe,
      I3 => p_4_in(9),
      I4 => p_4_in(11),
      O => \enc_chkbits_pipe0__0\
    );
enc_input_reg_stage_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage
     port map (
      D(4 downto 0) => p_25_out(12 downto 8),
      Q(7 downto 0) => enc_din(7 downto 0),
      ecc_clk => ecc_clk,
      ecc_clken => ecc_clken,
      ecc_data_in(7 downto 0) => ecc_data_in(7 downto 0),
      ecc_reset => ecc_reset
    );
enc_output_reg_stage_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage__parameterized0\
     port map (
      D(12 downto 9) => p_4_in(11 downto 8),
      D(8) => \enc_chkbits_pipe0__0\,
      D(7) => enc_pipe_reg_stage_inst_n_5,
      D(6) => enc_pipe_reg_stage_inst_n_6,
      D(5) => enc_pipe_reg_stage_inst_n_7,
      D(4) => enc_pipe_reg_stage_inst_n_8,
      D(3) => enc_pipe_reg_stage_inst_n_9,
      D(2) => enc_pipe_reg_stage_inst_n_10,
      D(1) => enc_pipe_reg_stage_inst_n_11,
      D(0) => enc_pipe_reg_stage_inst_n_12,
      Q(12 downto 0) => Q(12 downto 0),
      ecc_clk => ecc_clk,
      ecc_clken => ecc_clken,
      ecc_reset => ecc_reset
    );
enc_pipe_reg_stage_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_reg_stage__parameterized0_0\
     port map (
      D(12 downto 8) => p_25_out(12 downto 8),
      D(7 downto 0) => enc_din(7 downto 0),
      Q(12) => xor_bits_0_25_pipe,
      Q(11 downto 8) => p_4_in(11 downto 8),
      Q(7) => enc_pipe_reg_stage_inst_n_5,
      Q(6) => enc_pipe_reg_stage_inst_n_6,
      Q(5) => enc_pipe_reg_stage_inst_n_7,
      Q(4) => enc_pipe_reg_stage_inst_n_8,
      Q(3) => enc_pipe_reg_stage_inst_n_9,
      Q(2) => enc_pipe_reg_stage_inst_n_10,
      Q(1) => enc_pipe_reg_stage_inst_n_11,
      Q(0) => enc_pipe_reg_stage_inst_n_12,
      ecc_clk => ecc_clk,
      ecc_clken => ecc_clken,
      ecc_reset => ecc_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 is
  port (
    ecc_clk : in STD_LOGIC;
    ecc_reset : in STD_LOGIC;
    ecc_encode : in STD_LOGIC;
    ecc_correct_n : in STD_LOGIC;
    ecc_clken : in STD_LOGIC;
    ecc_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ecc_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ecc_chkbits_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ecc_chkbits_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ecc_sbit_err : out STD_LOGIC;
    ecc_dbit_err : out STD_LOGIC
  );
  attribute C_CHK_BIT_WIDTH : integer;
  attribute C_CHK_BIT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 : entity is 5;
  attribute C_COMPONENT_NAME : string;
  attribute C_COMPONENT_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 : entity is "HECC";
  attribute C_DATA_WIDTH : integer;
  attribute C_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 : entity is 8;
  attribute C_ECC_MODE : integer;
  attribute C_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 : entity is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 : entity is "virtex7";
  attribute C_PIPELINE : integer;
  attribute C_PIPELINE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 : entity is 1;
  attribute C_REG_INPUT : integer;
  attribute C_REG_INPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 : entity is 1;
  attribute C_REG_OUTPUT : integer;
  attribute C_REG_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 : entity is 1;
  attribute C_USE_CLK_ENABLE : integer;
  attribute C_USE_CLK_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 : entity is 1;
  attribute TCQ : integer;
  attribute TCQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 : entity is 100;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13 is
  signal \<const0>\ : STD_LOGIC;
begin
  ecc_dbit_err <= \<const0>\;
  ecc_sbit_err <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\hamming_ecc_enc_gen.hamming_enc_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13_hamming_enc
     port map (
      Q(12 downto 8) => ecc_chkbits_out(4 downto 0),
      Q(7 downto 0) => ecc_data_out(7 downto 0),
      ecc_clk => ecc_clk,
      ecc_clken => ecc_clken,
      ecc_data_in(7 downto 0) => ecc_data_in(7 downto 0),
      ecc_reset => ecc_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ecc_clk : in STD_LOGIC;
    ecc_reset : in STD_LOGIC;
    ecc_clken : in STD_LOGIC;
    ecc_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ecc_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ecc_chkbits_out : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HECC,ecc_v2_0_13,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ecc_v2_0_13,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_inst_ecc_dbit_err_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ecc_sbit_err_UNCONNECTED : STD_LOGIC;
  attribute C_CHK_BIT_WIDTH : integer;
  attribute C_CHK_BIT_WIDTH of inst : label is 5;
  attribute C_COMPONENT_NAME : string;
  attribute C_COMPONENT_NAME of inst : label is "HECC";
  attribute C_DATA_WIDTH : integer;
  attribute C_DATA_WIDTH of inst : label is 8;
  attribute C_ECC_MODE : integer;
  attribute C_ECC_MODE of inst : label is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtex7";
  attribute C_PIPELINE : integer;
  attribute C_PIPELINE of inst : label is 1;
  attribute C_REG_INPUT : integer;
  attribute C_REG_INPUT of inst : label is 1;
  attribute C_REG_OUTPUT : integer;
  attribute C_REG_OUTPUT of inst : label is 1;
  attribute C_USE_CLK_ENABLE : integer;
  attribute C_USE_CLK_ENABLE of inst : label is 1;
  attribute TCQ : integer;
  attribute TCQ of inst : label is 100;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ecc_clk : signal is "xilinx.com:signal:clock:1.0 ecc_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ecc_clk : signal is "XIL_INTERFACENAME ecc_clk, ASSOCIATED_BUSIF ECC_DATA_IN:ECC_DATA_OUT:ECC_CHKBITS_OUT:ECC_CHKBITS_IN, ASSOCIATED_RESET ecc_reset, FREQ_HZ 100000000, ASSOCIATED_CLKEN ecc_clken, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ecc_clken : signal is "xilinx.com:signal:clockenable:1.0 ecc_clken CE";
  attribute X_INTERFACE_PARAMETER of ecc_clken : signal is "XIL_INTERFACENAME ecc_clken, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of ecc_reset : signal is "xilinx.com:signal:reset:1.0 ecc_reset RST";
  attribute X_INTERFACE_PARAMETER of ecc_reset : signal is "XIL_INTERFACENAME ecc_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ecc_chkbits_out : signal is "xilinx.com:signal:data:1.0 ECC_CHKBITS_OUT DATA";
  attribute X_INTERFACE_PARAMETER of ecc_chkbits_out : signal is "XIL_INTERFACENAME ECC_CHKBITS_OUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ecc_data_in : signal is "xilinx.com:signal:data:1.0 ECC_DATA_IN DATA";
  attribute X_INTERFACE_PARAMETER of ecc_data_in : signal is "XIL_INTERFACENAME ECC_DATA_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ecc_data_out : signal is "xilinx.com:signal:data:1.0 ECC_DATA_OUT DATA";
  attribute X_INTERFACE_PARAMETER of ecc_data_out : signal is "XIL_INTERFACENAME ECC_DATA_OUT, LAYERED_METADATA undef";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ecc_v2_0_13
     port map (
      ecc_chkbits_in(4 downto 0) => B"00000",
      ecc_chkbits_out(4 downto 0) => ecc_chkbits_out(4 downto 0),
      ecc_clk => ecc_clk,
      ecc_clken => ecc_clken,
      ecc_correct_n => '0',
      ecc_data_in(7 downto 0) => ecc_data_in(7 downto 0),
      ecc_data_out(7 downto 0) => ecc_data_out(7 downto 0),
      ecc_dbit_err => NLW_inst_ecc_dbit_err_UNCONNECTED,
      ecc_encode => '0',
      ecc_reset => ecc_reset,
      ecc_sbit_err => NLW_inst_ecc_sbit_err_UNCONNECTED
    );
end STRUCTURE;
