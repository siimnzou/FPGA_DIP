-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Wed Sep 14 16:45:15 2022
-- Host        : Zou running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_get_gesture_area_0_0_sim_netlist.vhdl
-- Design      : system_get_gesture_area_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_get_gesture_area is
  port (
    gesture_vsync : out STD_LOGIC;
    gesture_clken : out STD_LOGIC;
    gesture_valid : out STD_LOGIC;
    gesture_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rgb_data_syn : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ycbcr_vsync : in STD_LOGIC;
    clk : in STD_LOGIC;
    ycbcr_clken : in STD_LOGIC;
    ycbcr_valid : in STD_LOGIC;
    ycbcr_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_get_gesture_area;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_get_gesture_area is
  signal \gesture_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \gesture_data[23]_i_3_n_0\ : STD_LOGIC;
  signal \gesture_data[23]_i_4_n_0\ : STD_LOGIC;
  signal \gesture_data[23]_i_5_n_0\ : STD_LOGIC;
  signal \gesture_data[23]_i_6_n_0\ : STD_LOGIC;
  signal \gesture_data[23]_i_7_n_0\ : STD_LOGIC;
  signal \gesture_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \gesture_data[9]_i_1_n_0\ : STD_LOGIC;
  signal gesture_vsync_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gesture_data[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gesture_data[10]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gesture_data[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gesture_data[12]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gesture_data[13]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gesture_data[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gesture_data[15]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gesture_data[16]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gesture_data[17]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gesture_data[18]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gesture_data[19]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gesture_data[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gesture_data[20]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gesture_data[21]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gesture_data[22]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gesture_data[23]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gesture_data[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gesture_data[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gesture_data[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gesture_data[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gesture_data[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gesture_data[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gesture_data[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gesture_data[9]_i_1\ : label is "soft_lutpair7";
begin
gesture_clken_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => ycbcr_clken,
      Q => gesture_clken
    );
\gesture_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(0),
      O => \gesture_data[0]_i_1_n_0\
    );
\gesture_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(10),
      O => \gesture_data[10]_i_1_n_0\
    );
\gesture_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(11),
      O => \gesture_data[11]_i_1_n_0\
    );
\gesture_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(12),
      O => \gesture_data[12]_i_1_n_0\
    );
\gesture_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(13),
      O => \gesture_data[13]_i_1_n_0\
    );
\gesture_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(14),
      O => \gesture_data[14]_i_1_n_0\
    );
\gesture_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(15),
      O => \gesture_data[15]_i_1_n_0\
    );
\gesture_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(16),
      O => \gesture_data[16]_i_1_n_0\
    );
\gesture_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(17),
      O => \gesture_data[17]_i_1_n_0\
    );
\gesture_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(18),
      O => \gesture_data[18]_i_1_n_0\
    );
\gesture_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(19),
      O => \gesture_data[19]_i_1_n_0\
    );
\gesture_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(1),
      O => \gesture_data[1]_i_1_n_0\
    );
\gesture_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(20),
      O => \gesture_data[20]_i_1_n_0\
    );
\gesture_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(21),
      O => \gesture_data[21]_i_1_n_0\
    );
\gesture_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(22),
      O => \gesture_data[22]_i_1_n_0\
    );
\gesture_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(23),
      O => \gesture_data[23]_i_1_n_0\
    );
\gesture_data[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A2A2FF"
    )
        port map (
      I0 => ycbcr_data(7),
      I1 => \gesture_data[23]_i_4_n_0\,
      I2 => ycbcr_data(6),
      I3 => \gesture_data[23]_i_5_n_0\,
      I4 => ycbcr_data(15),
      O => \gesture_data[23]_i_2_n_0\
    );
\gesture_data[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFFFFF"
    )
        port map (
      I0 => ycbcr_data(15),
      I1 => \gesture_data[23]_i_6_n_0\,
      I2 => ycbcr_data(8),
      I3 => \gesture_data[23]_i_7_n_0\,
      I4 => ycbcr_data(7),
      O => \gesture_data[23]_i_3_n_0\
    );
\gesture_data[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01555555FFFFFFFF"
    )
        port map (
      I0 => ycbcr_data(4),
      I1 => ycbcr_data(0),
      I2 => ycbcr_data(1),
      I3 => ycbcr_data(3),
      I4 => ycbcr_data(2),
      I5 => ycbcr_data(5),
      O => \gesture_data[23]_i_4_n_0\
    );
\gesture_data[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAA8888888"
    )
        port map (
      I0 => ycbcr_data(14),
      I1 => ycbcr_data(13),
      I2 => ycbcr_data(11),
      I3 => ycbcr_data(9),
      I4 => ycbcr_data(10),
      I5 => ycbcr_data(12),
      O => \gesture_data[23]_i_5_n_0\
    );
\gesture_data[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ycbcr_data(10),
      I1 => ycbcr_data(9),
      I2 => ycbcr_data(13),
      I3 => ycbcr_data(14),
      I4 => ycbcr_data(11),
      I5 => ycbcr_data(12),
      O => \gesture_data[23]_i_6_n_0\
    );
\gesture_data[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => ycbcr_data(3),
      I1 => ycbcr_data(6),
      I2 => ycbcr_data(1),
      I3 => ycbcr_data(2),
      I4 => ycbcr_data(4),
      I5 => ycbcr_data(5),
      O => \gesture_data[23]_i_7_n_0\
    );
\gesture_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(2),
      O => \gesture_data[2]_i_1_n_0\
    );
\gesture_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(3),
      O => \gesture_data[3]_i_1_n_0\
    );
\gesture_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(4),
      O => \gesture_data[4]_i_1_n_0\
    );
\gesture_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(5),
      O => \gesture_data[5]_i_1_n_0\
    );
\gesture_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(6),
      O => \gesture_data[6]_i_1_n_0\
    );
\gesture_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(7),
      O => \gesture_data[7]_i_1_n_0\
    );
\gesture_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(8),
      O => \gesture_data[8]_i_1_n_0\
    );
\gesture_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \gesture_data[23]_i_2_n_0\,
      I1 => \gesture_data[23]_i_3_n_0\,
      I2 => rgb_data_syn(9),
      O => \gesture_data[9]_i_1_n_0\
    );
\gesture_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[0]_i_1_n_0\,
      Q => gesture_data(0)
    );
\gesture_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[10]_i_1_n_0\,
      Q => gesture_data(10)
    );
\gesture_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[11]_i_1_n_0\,
      Q => gesture_data(11)
    );
\gesture_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[12]_i_1_n_0\,
      Q => gesture_data(12)
    );
\gesture_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[13]_i_1_n_0\,
      Q => gesture_data(13)
    );
\gesture_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[14]_i_1_n_0\,
      Q => gesture_data(14)
    );
\gesture_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[15]_i_1_n_0\,
      Q => gesture_data(15)
    );
\gesture_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[16]_i_1_n_0\,
      Q => gesture_data(16)
    );
\gesture_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[17]_i_1_n_0\,
      Q => gesture_data(17)
    );
\gesture_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[18]_i_1_n_0\,
      Q => gesture_data(18)
    );
\gesture_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[19]_i_1_n_0\,
      Q => gesture_data(19)
    );
\gesture_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[1]_i_1_n_0\,
      Q => gesture_data(1)
    );
\gesture_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[20]_i_1_n_0\,
      Q => gesture_data(20)
    );
\gesture_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[21]_i_1_n_0\,
      Q => gesture_data(21)
    );
\gesture_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[22]_i_1_n_0\,
      Q => gesture_data(22)
    );
\gesture_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[23]_i_1_n_0\,
      Q => gesture_data(23)
    );
\gesture_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[2]_i_1_n_0\,
      Q => gesture_data(2)
    );
\gesture_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[3]_i_1_n_0\,
      Q => gesture_data(3)
    );
\gesture_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[4]_i_1_n_0\,
      Q => gesture_data(4)
    );
\gesture_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[5]_i_1_n_0\,
      Q => gesture_data(5)
    );
\gesture_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[6]_i_1_n_0\,
      Q => gesture_data(6)
    );
\gesture_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[7]_i_1_n_0\,
      Q => gesture_data(7)
    );
\gesture_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[8]_i_1_n_0\,
      Q => gesture_data(8)
    );
\gesture_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => \gesture_data[9]_i_1_n_0\,
      Q => gesture_data(9)
    );
gesture_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => ycbcr_valid,
      Q => gesture_valid
    );
gesture_vsync_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => gesture_vsync_i_1_n_0
    );
gesture_vsync_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => gesture_vsync_i_1_n_0,
      D => ycbcr_vsync,
      Q => gesture_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    ycbcr_vsync : in STD_LOGIC;
    ycbcr_clken : in STD_LOGIC;
    ycbcr_valid : in STD_LOGIC;
    ycbcr_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rgb_data_syn : in STD_LOGIC_VECTOR ( 23 downto 0 );
    gesture_vsync : out STD_LOGIC;
    gesture_clken : out STD_LOGIC;
    gesture_valid : out STD_LOGIC;
    gesture_data : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_get_gesture_area_0_0,get_gesture_area,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "get_gesture_area,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of gesture_valid : signal is "xilinx.com:interface:vid_io:1.0 gesture_out ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of gesture_vsync : signal is "xilinx.com:interface:vid_io:1.0 gesture_out VSYNC";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ycbcr_valid : signal is "xilinx.com:interface:vid_io:1.0 ycbcr_in ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of ycbcr_vsync : signal is "xilinx.com:interface:vid_io:1.0 ycbcr_in VSYNC";
  attribute X_INTERFACE_INFO of gesture_data : signal is "xilinx.com:interface:vid_io:1.0 gesture_out DATA";
  attribute X_INTERFACE_INFO of ycbcr_data : signal is "xilinx.com:interface:vid_io:1.0 ycbcr_in DATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_get_gesture_area
     port map (
      clk => clk,
      gesture_clken => gesture_clken,
      gesture_data(23 downto 0) => gesture_data(23 downto 0),
      gesture_valid => gesture_valid,
      gesture_vsync => gesture_vsync,
      rgb_data_syn(23 downto 0) => rgb_data_syn(23 downto 0),
      rst_n => rst_n,
      ycbcr_clken => ycbcr_clken,
      ycbcr_data(15 downto 0) => ycbcr_data(15 downto 0),
      ycbcr_valid => ycbcr_valid,
      ycbcr_vsync => ycbcr_vsync
    );
end STRUCTURE;
