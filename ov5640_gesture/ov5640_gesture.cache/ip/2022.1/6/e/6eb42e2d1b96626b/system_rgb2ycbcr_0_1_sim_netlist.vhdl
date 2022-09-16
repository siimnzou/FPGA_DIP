-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Sep 15 10:23:38 2022
-- Host        : Zou running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_rgb2ycbcr_0_1_sim_netlist.vhdl
-- Design      : system_rgb2ycbcr_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2ycbcr is
  port (
    ycbcr_vsync : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    ycbcr_valid : out STD_LOGIC;
    ycbcr_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rgb_data_syn : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rgb_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    clk : in STD_LOGIC;
    rgb_vsync : in STD_LOGIC;
    rgb_clken : in STD_LOGIC;
    rgb_valid : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2ycbcr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2ycbcr is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal img_cb0 : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \img_cb00_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__0_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__0_n_1\ : STD_LOGIC;
  signal \img_cb00_carry__0_n_2\ : STD_LOGIC;
  signal \img_cb00_carry__0_n_3\ : STD_LOGIC;
  signal \img_cb00_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__1_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__1_n_1\ : STD_LOGIC;
  signal \img_cb00_carry__1_n_2\ : STD_LOGIC;
  signal \img_cb00_carry__1_n_3\ : STD_LOGIC;
  signal \img_cb00_carry__1_n_4\ : STD_LOGIC;
  signal \img_cb00_carry__1_n_5\ : STD_LOGIC;
  signal \img_cb00_carry__1_n_6\ : STD_LOGIC;
  signal \img_cb00_carry__1_n_7\ : STD_LOGIC;
  signal \img_cb00_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \img_cb00_carry__2_n_1\ : STD_LOGIC;
  signal \img_cb00_carry__2_n_2\ : STD_LOGIC;
  signal \img_cb00_carry__2_n_3\ : STD_LOGIC;
  signal \img_cb00_carry__2_n_4\ : STD_LOGIC;
  signal \img_cb00_carry__2_n_5\ : STD_LOGIC;
  signal \img_cb00_carry__2_n_6\ : STD_LOGIC;
  signal \img_cb00_carry__2_n_7\ : STD_LOGIC;
  signal img_cb00_carry_i_1_n_0 : STD_LOGIC;
  signal img_cb00_carry_i_2_n_0 : STD_LOGIC;
  signal img_cb00_carry_i_3_n_0 : STD_LOGIC;
  signal img_cb00_carry_i_4_n_0 : STD_LOGIC;
  signal img_cb00_carry_i_5_n_0 : STD_LOGIC;
  signal img_cb00_carry_i_6_n_0 : STD_LOGIC;
  signal img_cb00_carry_i_7_n_0 : STD_LOGIC;
  signal img_cb00_carry_n_0 : STD_LOGIC;
  signal img_cb00_carry_n_1 : STD_LOGIC;
  signal img_cb00_carry_n_2 : STD_LOGIC;
  signal img_cb00_carry_n_3 : STD_LOGIC;
  signal img_cb1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \img_cr00_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__0_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__0_n_1\ : STD_LOGIC;
  signal \img_cr00_carry__0_n_2\ : STD_LOGIC;
  signal \img_cr00_carry__0_n_3\ : STD_LOGIC;
  signal \img_cr00_carry__0_n_4\ : STD_LOGIC;
  signal \img_cr00_carry__0_n_5\ : STD_LOGIC;
  signal \img_cr00_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__1_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__1_n_1\ : STD_LOGIC;
  signal \img_cr00_carry__1_n_2\ : STD_LOGIC;
  signal \img_cr00_carry__1_n_3\ : STD_LOGIC;
  signal \img_cr00_carry__1_n_4\ : STD_LOGIC;
  signal \img_cr00_carry__1_n_5\ : STD_LOGIC;
  signal \img_cr00_carry__1_n_6\ : STD_LOGIC;
  signal \img_cr00_carry__1_n_7\ : STD_LOGIC;
  signal \img_cr00_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \img_cr00_carry__2_n_3\ : STD_LOGIC;
  signal \img_cr00_carry__2_n_6\ : STD_LOGIC;
  signal \img_cr00_carry__2_n_7\ : STD_LOGIC;
  signal img_cr00_carry_i_1_n_0 : STD_LOGIC;
  signal img_cr00_carry_i_2_n_0 : STD_LOGIC;
  signal img_cr00_carry_i_3_n_0 : STD_LOGIC;
  signal img_cr00_carry_i_4_n_0 : STD_LOGIC;
  signal img_cr00_carry_i_5_n_0 : STD_LOGIC;
  signal img_cr00_carry_i_6_n_0 : STD_LOGIC;
  signal img_cr00_carry_i_7_n_0 : STD_LOGIC;
  signal img_cr00_carry_i_8_n_0 : STD_LOGIC;
  signal img_cr00_carry_n_0 : STD_LOGIC;
  signal img_cr00_carry_n_1 : STD_LOGIC;
  signal img_cr00_carry_n_2 : STD_LOGIC;
  signal img_cr00_carry_n_3 : STD_LOGIC;
  signal img_cr1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal img_y0 : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \img_y00__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__0_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__0_n_1\ : STD_LOGIC;
  signal \img_y00__1_carry__0_n_2\ : STD_LOGIC;
  signal \img_y00__1_carry__0_n_3\ : STD_LOGIC;
  signal \img_y00__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__1_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__1_n_1\ : STD_LOGIC;
  signal \img_y00__1_carry__1_n_2\ : STD_LOGIC;
  signal \img_y00__1_carry__1_n_3\ : STD_LOGIC;
  signal \img_y00__1_carry__1_n_4\ : STD_LOGIC;
  signal \img_y00__1_carry__1_n_5\ : STD_LOGIC;
  signal \img_y00__1_carry__1_n_6\ : STD_LOGIC;
  signal \img_y00__1_carry__1_n_7\ : STD_LOGIC;
  signal \img_y00__1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry__2_n_1\ : STD_LOGIC;
  signal \img_y00__1_carry__2_n_2\ : STD_LOGIC;
  signal \img_y00__1_carry__2_n_3\ : STD_LOGIC;
  signal \img_y00__1_carry__2_n_4\ : STD_LOGIC;
  signal \img_y00__1_carry__2_n_5\ : STD_LOGIC;
  signal \img_y00__1_carry__2_n_6\ : STD_LOGIC;
  signal \img_y00__1_carry__2_n_7\ : STD_LOGIC;
  signal \img_y00__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry_i_7_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry_n_0\ : STD_LOGIC;
  signal \img_y00__1_carry_n_1\ : STD_LOGIC;
  signal \img_y00__1_carry_n_2\ : STD_LOGIC;
  signal \img_y00__1_carry_n_3\ : STD_LOGIC;
  signal img_y1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rgb_b_m0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal rgb_b_m00 : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal \rgb_b_m00_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_b_m00_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_b_m00_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_b_m00_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rgb_b_m00_carry__1_n_3\ : STD_LOGIC;
  signal rgb_b_m00_carry_i_1_n_0 : STD_LOGIC;
  signal rgb_b_m00_carry_i_2_n_0 : STD_LOGIC;
  signal rgb_b_m00_carry_i_3_n_0 : STD_LOGIC;
  signal rgb_b_m00_carry_i_4_n_0 : STD_LOGIC;
  signal rgb_b_m00_carry_i_5_n_0 : STD_LOGIC;
  signal rgb_b_m00_carry_i_6_n_0 : STD_LOGIC;
  signal rgb_b_m00_carry_i_7_n_0 : STD_LOGIC;
  signal rgb_b_m00_carry_n_0 : STD_LOGIC;
  signal rgb_b_m00_carry_n_1 : STD_LOGIC;
  signal rgb_b_m00_carry_n_2 : STD_LOGIC;
  signal rgb_b_m00_carry_n_3 : STD_LOGIC;
  signal rgb_b_m1 : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal rgb_b_m10 : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal \rgb_b_m10__25_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry__1_n_3\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry_i_1_n_0\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry_i_2_n_0\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry_i_3_n_0\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry_n_0\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry_n_1\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry_n_2\ : STD_LOGIC;
  signal \rgb_b_m10__25_carry_n_3\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_n_4\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_n_5\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_n_6\ : STD_LOGIC;
  signal \rgb_b_m10_carry__0_n_7\ : STD_LOGIC;
  signal \rgb_b_m10_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_b_m10_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rgb_b_m10_carry__1_n_2\ : STD_LOGIC;
  signal \rgb_b_m10_carry__1_n_3\ : STD_LOGIC;
  signal \rgb_b_m10_carry__1_n_5\ : STD_LOGIC;
  signal \rgb_b_m10_carry__1_n_6\ : STD_LOGIC;
  signal \rgb_b_m10_carry__1_n_7\ : STD_LOGIC;
  signal rgb_b_m10_carry_i_1_n_0 : STD_LOGIC;
  signal rgb_b_m10_carry_i_2_n_0 : STD_LOGIC;
  signal rgb_b_m10_carry_i_3_n_0 : STD_LOGIC;
  signal rgb_b_m10_carry_n_0 : STD_LOGIC;
  signal rgb_b_m10_carry_n_1 : STD_LOGIC;
  signal rgb_b_m10_carry_n_2 : STD_LOGIC;
  signal rgb_b_m10_carry_n_3 : STD_LOGIC;
  signal rgb_b_m10_carry_n_4 : STD_LOGIC;
  signal rgb_b_m10_carry_n_5 : STD_LOGIC;
  signal rgb_b_m10_carry_n_6 : STD_LOGIC;
  signal rgb_b_m2 : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal rgb_b_m20 : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal \rgb_b_m2[10]_i_2_n_0\ : STD_LOGIC;
  signal \rgb_b_m2[10]_i_3_n_0\ : STD_LOGIC;
  signal \rgb_b_m2[6]_i_2_n_0\ : STD_LOGIC;
  signal \rgb_b_m2[6]_i_3_n_0\ : STD_LOGIC;
  signal \rgb_b_m2[6]_i_4_n_0\ : STD_LOGIC;
  signal \rgb_b_m2_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_b_m2_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \rgb_b_m2_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \rgb_b_m2_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \rgb_b_m2_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_b_m2_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \rgb_b_m2_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \rgb_b_m2_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal rgb_clken_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rgb_data_d : STD_LOGIC_VECTOR ( 47 downto 3 );
  signal rgb_g_m0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rgb_g_m00 : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal \rgb_g_m0[9]_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m0_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m0_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \rgb_g_m0_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \rgb_g_m0_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \rgb_g_m0_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m0_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \rgb_g_m0_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \rgb_g_m0_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal rgb_g_m1 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal rgb_g_m10 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \rgb_g_m10__21_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_n_1\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_n_2\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__1_n_3\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry_i_3_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry_n_0\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry_n_1\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry_n_2\ : STD_LOGIC;
  signal \rgb_g_m10__21_carry_n_3\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_n_4\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_n_5\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_n_6\ : STD_LOGIC;
  signal \rgb_g_m10_carry__0_n_7\ : STD_LOGIC;
  signal \rgb_g_m10_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m10_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m10_carry__1_n_1\ : STD_LOGIC;
  signal \rgb_g_m10_carry__1_n_3\ : STD_LOGIC;
  signal \rgb_g_m10_carry__1_n_6\ : STD_LOGIC;
  signal \rgb_g_m10_carry__1_n_7\ : STD_LOGIC;
  signal rgb_g_m10_carry_i_1_n_0 : STD_LOGIC;
  signal rgb_g_m10_carry_i_2_n_0 : STD_LOGIC;
  signal rgb_g_m10_carry_i_3_n_0 : STD_LOGIC;
  signal rgb_g_m10_carry_n_0 : STD_LOGIC;
  signal rgb_g_m10_carry_n_1 : STD_LOGIC;
  signal rgb_g_m10_carry_n_2 : STD_LOGIC;
  signal rgb_g_m10_carry_n_3 : STD_LOGIC;
  signal rgb_g_m10_carry_n_4 : STD_LOGIC;
  signal rgb_g_m10_carry_n_5 : STD_LOGIC;
  signal rgb_g_m2 : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal rgb_g_m20 : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal \rgb_g_m20__19_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__0_n_4\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__0_n_5\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__0_n_6\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__0_n_7\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__1_n_1\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__1_n_3\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__1_n_6\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry__1_n_7\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry_i_3_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry_n_1\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry_n_2\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry_n_3\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry_n_4\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry_n_5\ : STD_LOGIC;
  signal \rgb_g_m20__19_carry_n_6\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__1_n_1\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__1_n_2\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry__1_n_3\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry_i_3_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry_i_4_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry_n_0\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry_n_1\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry_n_2\ : STD_LOGIC;
  signal \rgb_g_m20__41_carry_n_3\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_n_4\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_n_5\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_n_6\ : STD_LOGIC;
  signal \rgb_g_m20_carry__0_n_7\ : STD_LOGIC;
  signal \rgb_g_m20_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_g_m20_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rgb_g_m20_carry__1_n_1\ : STD_LOGIC;
  signal \rgb_g_m20_carry__1_n_3\ : STD_LOGIC;
  signal \rgb_g_m20_carry__1_n_6\ : STD_LOGIC;
  signal \rgb_g_m20_carry__1_n_7\ : STD_LOGIC;
  signal rgb_g_m20_carry_i_1_n_0 : STD_LOGIC;
  signal rgb_g_m20_carry_i_2_n_0 : STD_LOGIC;
  signal rgb_g_m20_carry_i_3_n_0 : STD_LOGIC;
  signal rgb_g_m20_carry_n_0 : STD_LOGIC;
  signal rgb_g_m20_carry_n_1 : STD_LOGIC;
  signal rgb_g_m20_carry_n_2 : STD_LOGIC;
  signal rgb_g_m20_carry_n_3 : STD_LOGIC;
  signal rgb_g_m20_carry_n_4 : STD_LOGIC;
  signal rgb_g_m20_carry_n_5 : STD_LOGIC;
  signal rgb_g_m20_carry_n_7 : STD_LOGIC;
  signal rgb_r_m0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal rgb_r_m00 : STD_LOGIC_VECTOR ( 14 downto 5 );
  signal \rgb_r_m0[8]_i_2_n_0\ : STD_LOGIC;
  signal \rgb_r_m0[8]_i_3_n_0\ : STD_LOGIC;
  signal \rgb_r_m0[8]_i_4_n_0\ : STD_LOGIC;
  signal \rgb_r_m0_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m0_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \rgb_r_m0_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \rgb_r_m0_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \rgb_r_m0_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m0_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rgb_r_m0_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rgb_r_m0_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal rgb_r_m1 : STD_LOGIC_VECTOR ( 13 downto 2 );
  signal rgb_r_m10 : STD_LOGIC_VECTOR ( 13 downto 2 );
  signal \rgb_r_m10__19_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry__1_n_3\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry_i_2_n_0\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry_i_3_n_0\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry_n_0\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry_n_1\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry_n_2\ : STD_LOGIC;
  signal \rgb_r_m10__19_carry_n_3\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_n_4\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_n_5\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_n_6\ : STD_LOGIC;
  signal \rgb_r_m10_carry__0_n_7\ : STD_LOGIC;
  signal \rgb_r_m10_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m10_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rgb_r_m10_carry__1_n_2\ : STD_LOGIC;
  signal \rgb_r_m10_carry__1_n_3\ : STD_LOGIC;
  signal \rgb_r_m10_carry__1_n_5\ : STD_LOGIC;
  signal \rgb_r_m10_carry__1_n_6\ : STD_LOGIC;
  signal \rgb_r_m10_carry__1_n_7\ : STD_LOGIC;
  signal rgb_r_m10_carry_i_1_n_0 : STD_LOGIC;
  signal rgb_r_m10_carry_i_2_n_0 : STD_LOGIC;
  signal rgb_r_m10_carry_i_3_n_0 : STD_LOGIC;
  signal rgb_r_m10_carry_n_0 : STD_LOGIC;
  signal rgb_r_m10_carry_n_1 : STD_LOGIC;
  signal rgb_r_m10_carry_n_2 : STD_LOGIC;
  signal rgb_r_m10_carry_n_3 : STD_LOGIC;
  signal rgb_r_m10_carry_n_4 : STD_LOGIC;
  signal rgb_r_m2 : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal rgb_r_m20 : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal \rgb_r_m20__19_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry__1_n_3\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry_i_2_n_0\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry_i_3_n_0\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry_n_0\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry_n_1\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry_n_2\ : STD_LOGIC;
  signal \rgb_r_m20__19_carry_n_3\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_n_3\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_n_4\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_n_5\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_n_6\ : STD_LOGIC;
  signal \rgb_r_m20_carry__0_n_7\ : STD_LOGIC;
  signal \rgb_r_m20_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rgb_r_m20_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rgb_r_m20_carry__1_n_2\ : STD_LOGIC;
  signal \rgb_r_m20_carry__1_n_3\ : STD_LOGIC;
  signal \rgb_r_m20_carry__1_n_5\ : STD_LOGIC;
  signal \rgb_r_m20_carry__1_n_6\ : STD_LOGIC;
  signal \rgb_r_m20_carry__1_n_7\ : STD_LOGIC;
  signal rgb_r_m20_carry_i_1_n_0 : STD_LOGIC;
  signal rgb_r_m20_carry_i_2_n_0 : STD_LOGIC;
  signal rgb_r_m20_carry_i_3_n_0 : STD_LOGIC;
  signal rgb_r_m20_carry_n_0 : STD_LOGIC;
  signal rgb_r_m20_carry_n_1 : STD_LOGIC;
  signal rgb_r_m20_carry_n_2 : STD_LOGIC;
  signal rgb_r_m20_carry_n_3 : STD_LOGIC;
  signal rgb_r_m20_carry_n_4 : STD_LOGIC;
  signal rgb_r_m20_carry_n_5 : STD_LOGIC;
  signal rgb_r_m20_carry_n_6 : STD_LOGIC;
  signal rgb_valid_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rgb_vsync_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rgb_vsync_d[2]_i_1_n_0\ : STD_LOGIC;
  signal NLW_img_cb00_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_img_cb00_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_img_cb00_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_img_cr00_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_img_cr00_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_img_cr00_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_img_cr00_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_img_y00__1_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_img_y00__1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_img_y00__1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rgb_b_m00_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_b_m00_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_b_m10__25_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_b_m10__25_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_b_m10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_b_m10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rgb_b_m2_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_b_m2_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_g_m0_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_g_m0_reg[15]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_g_m10__21_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_g_m10__21_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_rgb_g_m10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_rgb_g_m10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_g_m10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_g_m20__19_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_rgb_g_m20__19_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_g_m20__19_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_g_m20__41_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rgb_g_m20_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_g_m20_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_r_m0_reg[14]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_r_m0_reg[14]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_r_m10__19_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_r_m10__19_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_rgb_r_m10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_rgb_r_m10_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_r_m10_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rgb_r_m20__19_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rgb_r_m20__19_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_r_m20_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgb_r_m20_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of img_cb00_carry : label is 35;
  attribute ADDER_THRESHOLD of \img_cb00_carry__0\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \img_cb00_carry__0_i_1\ : label is "lutpair30";
  attribute HLUTNM of \img_cb00_carry__0_i_2\ : label is "lutpair29";
  attribute HLUTNM of \img_cb00_carry__0_i_3\ : label is "lutpair28";
  attribute HLUTNM of \img_cb00_carry__0_i_4\ : label is "lutpair38";
  attribute HLUTNM of \img_cb00_carry__0_i_5\ : label is "lutpair31";
  attribute HLUTNM of \img_cb00_carry__0_i_6\ : label is "lutpair30";
  attribute HLUTNM of \img_cb00_carry__0_i_7\ : label is "lutpair29";
  attribute HLUTNM of \img_cb00_carry__0_i_8\ : label is "lutpair28";
  attribute ADDER_THRESHOLD of \img_cb00_carry__1\ : label is 35;
  attribute HLUTNM of \img_cb00_carry__1_i_1\ : label is "lutpair34";
  attribute HLUTNM of \img_cb00_carry__1_i_2\ : label is "lutpair33";
  attribute HLUTNM of \img_cb00_carry__1_i_3\ : label is "lutpair32";
  attribute HLUTNM of \img_cb00_carry__1_i_4\ : label is "lutpair31";
  attribute HLUTNM of \img_cb00_carry__1_i_5\ : label is "lutpair35";
  attribute HLUTNM of \img_cb00_carry__1_i_6\ : label is "lutpair34";
  attribute HLUTNM of \img_cb00_carry__1_i_7\ : label is "lutpair33";
  attribute HLUTNM of \img_cb00_carry__1_i_8\ : label is "lutpair32";
  attribute ADDER_THRESHOLD of \img_cb00_carry__2\ : label is 35;
  attribute HLUTNM of \img_cb00_carry__2_i_2\ : label is "lutpair36";
  attribute HLUTNM of \img_cb00_carry__2_i_3\ : label is "lutpair35";
  attribute HLUTNM of \img_cb00_carry__2_i_7\ : label is "lutpair36";
  attribute HLUTNM of img_cb00_carry_i_4 : label is "lutpair38";
  attribute ADDER_THRESHOLD of img_cr00_carry : label is 35;
  attribute ADDER_THRESHOLD of \img_cr00_carry__0\ : label is 35;
  attribute HLUTNM of \img_cr00_carry__0_i_1\ : label is "lutpair12";
  attribute HLUTNM of \img_cr00_carry__0_i_2\ : label is "lutpair11";
  attribute HLUTNM of \img_cr00_carry__0_i_3\ : label is "lutpair10";
  attribute HLUTNM of \img_cr00_carry__0_i_4\ : label is "lutpair9";
  attribute HLUTNM of \img_cr00_carry__0_i_5\ : label is "lutpair13";
  attribute HLUTNM of \img_cr00_carry__0_i_6\ : label is "lutpair12";
  attribute HLUTNM of \img_cr00_carry__0_i_7\ : label is "lutpair11";
  attribute HLUTNM of \img_cr00_carry__0_i_8\ : label is "lutpair10";
  attribute ADDER_THRESHOLD of \img_cr00_carry__1\ : label is 35;
  attribute HLUTNM of \img_cr00_carry__1_i_2\ : label is "lutpair15";
  attribute HLUTNM of \img_cr00_carry__1_i_3\ : label is "lutpair14";
  attribute HLUTNM of \img_cr00_carry__1_i_4\ : label is "lutpair13";
  attribute HLUTNM of \img_cr00_carry__1_i_7\ : label is "lutpair15";
  attribute HLUTNM of \img_cr00_carry__1_i_8\ : label is "lutpair14";
  attribute ADDER_THRESHOLD of \img_cr00_carry__2\ : label is 35;
  attribute HLUTNM of img_cr00_carry_i_1 : label is "lutpair8";
  attribute HLUTNM of img_cr00_carry_i_2 : label is "lutpair37";
  attribute HLUTNM of img_cr00_carry_i_5 : label is "lutpair9";
  attribute HLUTNM of img_cr00_carry_i_6 : label is "lutpair8";
  attribute HLUTNM of img_cr00_carry_i_7 : label is "lutpair37";
  attribute ADDER_THRESHOLD of \img_y00__1_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \img_y00__1_carry__0\ : label is 35;
  attribute HLUTNM of \img_y00__1_carry__0_i_1\ : label is "lutpair22";
  attribute HLUTNM of \img_y00__1_carry__0_i_2\ : label is "lutpair21";
  attribute HLUTNM of \img_y00__1_carry__0_i_3\ : label is "lutpair20";
  attribute HLUTNM of \img_y00__1_carry__0_i_4\ : label is "lutpair19";
  attribute HLUTNM of \img_y00__1_carry__0_i_5\ : label is "lutpair23";
  attribute HLUTNM of \img_y00__1_carry__0_i_6\ : label is "lutpair22";
  attribute HLUTNM of \img_y00__1_carry__0_i_7\ : label is "lutpair21";
  attribute HLUTNM of \img_y00__1_carry__0_i_8\ : label is "lutpair20";
  attribute ADDER_THRESHOLD of \img_y00__1_carry__1\ : label is 35;
  attribute HLUTNM of \img_y00__1_carry__1_i_1\ : label is "lutpair26";
  attribute HLUTNM of \img_y00__1_carry__1_i_2\ : label is "lutpair25";
  attribute HLUTNM of \img_y00__1_carry__1_i_3\ : label is "lutpair24";
  attribute HLUTNM of \img_y00__1_carry__1_i_4\ : label is "lutpair23";
  attribute HLUTNM of \img_y00__1_carry__1_i_6\ : label is "lutpair26";
  attribute HLUTNM of \img_y00__1_carry__1_i_7\ : label is "lutpair25";
  attribute HLUTNM of \img_y00__1_carry__1_i_8\ : label is "lutpair24";
  attribute ADDER_THRESHOLD of \img_y00__1_carry__2\ : label is 35;
  attribute HLUTNM of \img_y00__1_carry__2_i_1\ : label is "lutpair27";
  attribute HLUTNM of \img_y00__1_carry__2_i_6\ : label is "lutpair27";
  attribute HLUTNM of \img_y00__1_carry_i_1\ : label is "lutpair18";
  attribute HLUTNM of \img_y00__1_carry_i_2\ : label is "lutpair17";
  attribute HLUTNM of \img_y00__1_carry_i_3\ : label is "lutpair16";
  attribute HLUTNM of \img_y00__1_carry_i_4\ : label is "lutpair19";
  attribute HLUTNM of \img_y00__1_carry_i_5\ : label is "lutpair18";
  attribute HLUTNM of \img_y00__1_carry_i_6\ : label is "lutpair17";
  attribute HLUTNM of \img_y00__1_carry_i_7\ : label is "lutpair16";
  attribute ADDER_THRESHOLD of rgb_b_m00_carry : label is 35;
  attribute ADDER_THRESHOLD of \rgb_b_m00_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_b_m00_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_b_m10__25_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_b_m10__25_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_b_m10__25_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_g_m10__21_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_g_m10__21_carry__0\ : label is 35;
  attribute HLUTNM of \rgb_g_m10__21_carry__0_i_1\ : label is "lutpair7";
  attribute HLUTNM of \rgb_g_m10__21_carry__0_i_2\ : label is "lutpair6";
  attribute HLUTNM of \rgb_g_m10__21_carry__0_i_5\ : label is "lutpair7";
  attribute HLUTNM of \rgb_g_m10__21_carry__0_i_6\ : label is "lutpair6";
  attribute ADDER_THRESHOLD of \rgb_g_m10__21_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_g_m10__21_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_g_m20__41_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_g_m20__41_carry__0\ : label is 35;
  attribute HLUTNM of \rgb_g_m20__41_carry__0_i_1\ : label is "lutpair2";
  attribute HLUTNM of \rgb_g_m20__41_carry__0_i_2\ : label is "lutpair1";
  attribute HLUTNM of \rgb_g_m20__41_carry__0_i_3\ : label is "lutpair0";
  attribute HLUTNM of \rgb_g_m20__41_carry__0_i_5\ : label is "lutpair3";
  attribute HLUTNM of \rgb_g_m20__41_carry__0_i_6\ : label is "lutpair2";
  attribute HLUTNM of \rgb_g_m20__41_carry__0_i_7\ : label is "lutpair1";
  attribute HLUTNM of \rgb_g_m20__41_carry__0_i_8\ : label is "lutpair0";
  attribute ADDER_THRESHOLD of \rgb_g_m20__41_carry__1\ : label is 35;
  attribute HLUTNM of \rgb_g_m20__41_carry__1_i_1\ : label is "lutpair5";
  attribute HLUTNM of \rgb_g_m20__41_carry__1_i_2\ : label is "lutpair4";
  attribute HLUTNM of \rgb_g_m20__41_carry__1_i_3\ : label is "lutpair3";
  attribute HLUTNM of \rgb_g_m20__41_carry__1_i_6\ : label is "lutpair5";
  attribute HLUTNM of \rgb_g_m20__41_carry__1_i_7\ : label is "lutpair4";
  attribute ADDER_THRESHOLD of \rgb_r_m10__19_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_r_m10__19_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_r_m10__19_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_r_m20__19_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_r_m20__19_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \rgb_r_m20__19_carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ycbcr_data[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ycbcr_data[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ycbcr_data[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ycbcr_data[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ycbcr_data[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ycbcr_data[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ycbcr_data[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ycbcr_data[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ycbcr_data[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ycbcr_data[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ycbcr_data[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ycbcr_data[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ycbcr_data[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ycbcr_data[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ycbcr_data[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ycbcr_data[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ycbcr_data[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ycbcr_data[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ycbcr_data[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ycbcr_data[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ycbcr_data[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ycbcr_data[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ycbcr_data[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ycbcr_data[9]_INST_0\ : label is "soft_lutpair4";
begin
  Q(0) <= \^q\(0);
img_cb00_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => img_cb00_carry_n_0,
      CO(2) => img_cb00_carry_n_1,
      CO(1) => img_cb00_carry_n_2,
      CO(0) => img_cb00_carry_n_3,
      CYINIT => '1',
      DI(3) => img_cb00_carry_i_1_n_0,
      DI(2) => img_cb00_carry_i_2_n_0,
      DI(1) => img_cb00_carry_i_3_n_0,
      DI(0) => rgb_g_m0(0),
      O(3 downto 0) => NLW_img_cb00_carry_O_UNCONNECTED(3 downto 0),
      S(3) => img_cb00_carry_i_4_n_0,
      S(2) => img_cb00_carry_i_5_n_0,
      S(1) => img_cb00_carry_i_6_n_0,
      S(0) => img_cb00_carry_i_7_n_0
    );
\img_cb00_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => img_cb00_carry_n_0,
      CO(3) => \img_cb00_carry__0_n_0\,
      CO(2) => \img_cb00_carry__0_n_1\,
      CO(1) => \img_cb00_carry__0_n_2\,
      CO(0) => \img_cb00_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \img_cb00_carry__0_i_1_n_0\,
      DI(2) => \img_cb00_carry__0_i_2_n_0\,
      DI(1) => \img_cb00_carry__0_i_3_n_0\,
      DI(0) => \img_cb00_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_img_cb00_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \img_cb00_carry__0_i_5_n_0\,
      S(2) => \img_cb00_carry__0_i_6_n_0\,
      S(1) => \img_cb00_carry__0_i_7_n_0\,
      S(0) => \img_cb00_carry__0_i_8_n_0\
    );
\img_cb00_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_r_m1(6),
      I1 => rgb_g_m1(6),
      I2 => rgb_b_m1(6),
      O => \img_cb00_carry__0_i_1_n_0\
    );
\img_cb00_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_r_m1(5),
      I1 => rgb_g_m1(5),
      I2 => rgb_b_m1(5),
      O => \img_cb00_carry__0_i_2_n_0\
    );
\img_cb00_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_r_m1(4),
      I1 => rgb_g_m1(4),
      I2 => rgb_b_m1(4),
      O => \img_cb00_carry__0_i_3_n_0\
    );
\img_cb00_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_r_m1(3),
      I1 => rgb_g_m1(3),
      O => \img_cb00_carry__0_i_4_n_0\
    );
\img_cb00_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_r_m1(7),
      I1 => rgb_g_m1(7),
      I2 => rgb_b_m1(7),
      I3 => \img_cb00_carry__0_i_1_n_0\,
      O => \img_cb00_carry__0_i_5_n_0\
    );
\img_cb00_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_r_m1(6),
      I1 => rgb_g_m1(6),
      I2 => rgb_b_m1(6),
      I3 => \img_cb00_carry__0_i_2_n_0\,
      O => \img_cb00_carry__0_i_6_n_0\
    );
\img_cb00_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_r_m1(5),
      I1 => rgb_g_m1(5),
      I2 => rgb_b_m1(5),
      I3 => \img_cb00_carry__0_i_3_n_0\,
      O => \img_cb00_carry__0_i_7_n_0\
    );
\img_cb00_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_r_m1(4),
      I1 => rgb_g_m1(4),
      I2 => rgb_b_m1(4),
      I3 => \img_cb00_carry__0_i_4_n_0\,
      O => \img_cb00_carry__0_i_8_n_0\
    );
\img_cb00_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_cb00_carry__0_n_0\,
      CO(3) => \img_cb00_carry__1_n_0\,
      CO(2) => \img_cb00_carry__1_n_1\,
      CO(1) => \img_cb00_carry__1_n_2\,
      CO(0) => \img_cb00_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \img_cb00_carry__1_i_1_n_0\,
      DI(2) => \img_cb00_carry__1_i_2_n_0\,
      DI(1) => \img_cb00_carry__1_i_3_n_0\,
      DI(0) => \img_cb00_carry__1_i_4_n_0\,
      O(3) => \img_cb00_carry__1_n_4\,
      O(2) => \img_cb00_carry__1_n_5\,
      O(1) => \img_cb00_carry__1_n_6\,
      O(0) => \img_cb00_carry__1_n_7\,
      S(3) => \img_cb00_carry__1_i_5_n_0\,
      S(2) => \img_cb00_carry__1_i_6_n_0\,
      S(1) => \img_cb00_carry__1_i_7_n_0\,
      S(0) => \img_cb00_carry__1_i_8_n_0\
    );
\img_cb00_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_r_m1(10),
      I1 => rgb_g_m1(10),
      I2 => rgb_b_m1(10),
      O => \img_cb00_carry__1_i_1_n_0\
    );
\img_cb00_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_r_m1(9),
      I1 => rgb_g_m1(9),
      I2 => rgb_b_m1(9),
      O => \img_cb00_carry__1_i_2_n_0\
    );
\img_cb00_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_r_m1(8),
      I1 => rgb_g_m1(8),
      I2 => rgb_b_m1(8),
      O => \img_cb00_carry__1_i_3_n_0\
    );
\img_cb00_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_r_m1(7),
      I1 => rgb_g_m1(7),
      I2 => rgb_b_m1(7),
      O => \img_cb00_carry__1_i_4_n_0\
    );
\img_cb00_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_r_m1(11),
      I1 => rgb_g_m1(11),
      I2 => rgb_b_m1(11),
      I3 => \img_cb00_carry__1_i_1_n_0\,
      O => \img_cb00_carry__1_i_5_n_0\
    );
\img_cb00_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_r_m1(10),
      I1 => rgb_g_m1(10),
      I2 => rgb_b_m1(10),
      I3 => \img_cb00_carry__1_i_2_n_0\,
      O => \img_cb00_carry__1_i_6_n_0\
    );
\img_cb00_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_r_m1(9),
      I1 => rgb_g_m1(9),
      I2 => rgb_b_m1(9),
      I3 => \img_cb00_carry__1_i_3_n_0\,
      O => \img_cb00_carry__1_i_7_n_0\
    );
\img_cb00_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_r_m1(8),
      I1 => rgb_g_m1(8),
      I2 => rgb_b_m1(8),
      I3 => \img_cb00_carry__1_i_4_n_0\,
      O => \img_cb00_carry__1_i_8_n_0\
    );
\img_cb00_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_cb00_carry__1_n_0\,
      CO(3) => \NLW_img_cb00_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \img_cb00_carry__2_n_1\,
      CO(1) => \img_cb00_carry__2_n_2\,
      CO(0) => \img_cb00_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \img_cb00_carry__2_i_1_n_0\,
      DI(1) => \img_cb00_carry__2_i_2_n_0\,
      DI(0) => \img_cb00_carry__2_i_3_n_0\,
      O(3) => \img_cb00_carry__2_n_4\,
      O(2) => \img_cb00_carry__2_n_5\,
      O(1) => \img_cb00_carry__2_n_6\,
      O(0) => \img_cb00_carry__2_n_7\,
      S(3) => \img_cb00_carry__2_i_4_n_0\,
      S(2) => \img_cb00_carry__2_i_5_n_0\,
      S(1) => \img_cb00_carry__2_i_6_n_0\,
      S(0) => \img_cb00_carry__2_i_7_n_0\
    );
\img_cb00_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_r_m1(13),
      I1 => rgb_g_m1(13),
      I2 => rgb_b_m1(13),
      O => \img_cb00_carry__2_i_1_n_0\
    );
\img_cb00_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_r_m1(12),
      I1 => rgb_g_m1(12),
      I2 => rgb_b_m1(12),
      O => \img_cb00_carry__2_i_2_n_0\
    );
\img_cb00_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_r_m1(11),
      I1 => rgb_g_m1(11),
      I2 => rgb_b_m1(11),
      O => \img_cb00_carry__2_i_3_n_0\
    );
\img_cb00_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rgb_b_m1(14),
      I1 => rgb_g_m1(14),
      O => \img_cb00_carry__2_i_4_n_0\
    );
\img_cb00_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BD4D42B"
    )
        port map (
      I0 => rgb_b_m1(13),
      I1 => rgb_g_m1(13),
      I2 => rgb_r_m1(13),
      I3 => rgb_g_m1(14),
      I4 => rgb_b_m1(14),
      O => \img_cb00_carry__2_i_5_n_0\
    );
\img_cb00_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \img_cb00_carry__2_i_2_n_0\,
      I1 => rgb_g_m1(13),
      I2 => rgb_r_m1(13),
      I3 => rgb_b_m1(13),
      O => \img_cb00_carry__2_i_6_n_0\
    );
\img_cb00_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_r_m1(12),
      I1 => rgb_g_m1(12),
      I2 => rgb_b_m1(12),
      I3 => \img_cb00_carry__2_i_3_n_0\,
      O => \img_cb00_carry__2_i_7_n_0\
    );
img_cb00_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_g_m1(2),
      I1 => rgb_r_m1(2),
      O => img_cb00_carry_i_1_n_0
    );
img_cb00_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_g_m1(1),
      I1 => rgb_r_m0(1),
      O => img_cb00_carry_i_2_n_0
    );
img_cb00_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_g_m0(0),
      O => img_cb00_carry_i_3_n_0
    );
img_cb00_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6669"
    )
        port map (
      I0 => rgb_r_m1(3),
      I1 => rgb_g_m1(3),
      I2 => rgb_g_m1(2),
      I3 => rgb_r_m1(2),
      O => img_cb00_carry_i_4_n_0
    );
img_cb00_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => rgb_g_m1(1),
      I1 => rgb_r_m0(1),
      I2 => rgb_r_m1(2),
      I3 => rgb_g_m1(2),
      O => img_cb00_carry_i_5_n_0
    );
img_cb00_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => rgb_g_m0(0),
      I1 => rgb_r_m0(1),
      I2 => rgb_g_m1(1),
      O => img_cb00_carry_i_6_n_0
    );
img_cb00_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_g_m0(0),
      O => img_cb00_carry_i_7_n_0
    );
\img_cb0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cb00_carry__1_n_5\,
      Q => img_cb0(10)
    );
\img_cb0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cb00_carry__1_n_4\,
      Q => img_cb0(11)
    );
\img_cb0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cb00_carry__2_n_7\,
      Q => img_cb0(12)
    );
\img_cb0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cb00_carry__2_n_6\,
      Q => img_cb0(13)
    );
\img_cb0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cb00_carry__2_n_5\,
      Q => img_cb0(14)
    );
\img_cb0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cb00_carry__2_n_4\,
      Q => img_cb0(15)
    );
\img_cb0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cb00_carry__1_n_7\,
      Q => img_cb0(8)
    );
\img_cb0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cb00_carry__1_n_6\,
      Q => img_cb0(9)
    );
\img_cb1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_cb0(8),
      Q => img_cb1(0)
    );
\img_cb1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_cb0(9),
      Q => img_cb1(1)
    );
\img_cb1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_cb0(10),
      Q => img_cb1(2)
    );
\img_cb1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_cb0(11),
      Q => img_cb1(3)
    );
\img_cb1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_cb0(12),
      Q => img_cb1(4)
    );
\img_cb1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_cb0(13),
      Q => img_cb1(5)
    );
\img_cb1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_cb0(14),
      Q => img_cb1(6)
    );
\img_cb1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_cb0(15),
      Q => img_cb1(7)
    );
img_cr00_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => img_cr00_carry_n_0,
      CO(2) => img_cr00_carry_n_1,
      CO(1) => img_cr00_carry_n_2,
      CO(0) => img_cr00_carry_n_3,
      CYINIT => '1',
      DI(3) => img_cr00_carry_i_1_n_0,
      DI(2) => img_cr00_carry_i_2_n_0,
      DI(1) => img_cr00_carry_i_3_n_0,
      DI(0) => img_cr00_carry_i_4_n_0,
      O(3 downto 0) => NLW_img_cr00_carry_O_UNCONNECTED(3 downto 0),
      S(3) => img_cr00_carry_i_5_n_0,
      S(2) => img_cr00_carry_i_6_n_0,
      S(1) => img_cr00_carry_i_7_n_0,
      S(0) => img_cr00_carry_i_8_n_0
    );
\img_cr00_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => img_cr00_carry_n_0,
      CO(3) => \img_cr00_carry__0_n_0\,
      CO(2) => \img_cr00_carry__0_n_1\,
      CO(1) => \img_cr00_carry__0_n_2\,
      CO(0) => \img_cr00_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \img_cr00_carry__0_i_1_n_0\,
      DI(2) => \img_cr00_carry__0_i_2_n_0\,
      DI(1) => \img_cr00_carry__0_i_3_n_0\,
      DI(0) => \img_cr00_carry__0_i_4_n_0\,
      O(3) => \img_cr00_carry__0_n_4\,
      O(2) => \img_cr00_carry__0_n_5\,
      O(1 downto 0) => \NLW_img_cr00_carry__0_O_UNCONNECTED\(1 downto 0),
      S(3) => \img_cr00_carry__0_i_5_n_0\,
      S(2) => \img_cr00_carry__0_i_6_n_0\,
      S(1) => \img_cr00_carry__0_i_7_n_0\,
      S(0) => \img_cr00_carry__0_i_8_n_0\
    );
\img_cr00_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_g_m2(8),
      I1 => rgb_b_m2(8),
      I2 => rgb_r_m2(8),
      O => \img_cr00_carry__0_i_1_n_0\
    );
\img_cr00_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_g_m2(7),
      I1 => rgb_b_m2(7),
      I2 => rgb_r_m2(7),
      O => \img_cr00_carry__0_i_2_n_0\
    );
\img_cr00_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_g_m2(6),
      I1 => rgb_b_m2(6),
      I2 => rgb_r_m2(6),
      O => \img_cr00_carry__0_i_3_n_0\
    );
\img_cr00_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_g_m2(5),
      I1 => rgb_b_m2(5),
      I2 => rgb_r_m2(5),
      O => \img_cr00_carry__0_i_4_n_0\
    );
\img_cr00_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m2(9),
      I1 => rgb_b_m2(9),
      I2 => rgb_r_m2(9),
      I3 => \img_cr00_carry__0_i_1_n_0\,
      O => \img_cr00_carry__0_i_5_n_0\
    );
\img_cr00_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m2(8),
      I1 => rgb_b_m2(8),
      I2 => rgb_r_m2(8),
      I3 => \img_cr00_carry__0_i_2_n_0\,
      O => \img_cr00_carry__0_i_6_n_0\
    );
\img_cr00_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m2(7),
      I1 => rgb_b_m2(7),
      I2 => rgb_r_m2(7),
      I3 => \img_cr00_carry__0_i_3_n_0\,
      O => \img_cr00_carry__0_i_7_n_0\
    );
\img_cr00_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m2(6),
      I1 => rgb_b_m2(6),
      I2 => rgb_r_m2(6),
      I3 => \img_cr00_carry__0_i_4_n_0\,
      O => \img_cr00_carry__0_i_8_n_0\
    );
\img_cr00_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_cr00_carry__0_n_0\,
      CO(3) => \img_cr00_carry__1_n_0\,
      CO(2) => \img_cr00_carry__1_n_1\,
      CO(1) => \img_cr00_carry__1_n_2\,
      CO(0) => \img_cr00_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \img_cr00_carry__1_i_1_n_0\,
      DI(2) => \img_cr00_carry__1_i_2_n_0\,
      DI(1) => \img_cr00_carry__1_i_3_n_0\,
      DI(0) => \img_cr00_carry__1_i_4_n_0\,
      O(3) => \img_cr00_carry__1_n_4\,
      O(2) => \img_cr00_carry__1_n_5\,
      O(1) => \img_cr00_carry__1_n_6\,
      O(0) => \img_cr00_carry__1_n_7\,
      S(3) => \img_cr00_carry__1_i_5_n_0\,
      S(2) => \img_cr00_carry__1_i_6_n_0\,
      S(1) => \img_cr00_carry__1_i_7_n_0\,
      S(0) => \img_cr00_carry__1_i_8_n_0\
    );
\img_cr00_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_g_m2(12),
      I1 => rgb_b_m2(12),
      I2 => rgb_r_m2(12),
      O => \img_cr00_carry__1_i_1_n_0\
    );
\img_cr00_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_g_m2(11),
      I1 => rgb_b_m2(11),
      I2 => rgb_r_m2(11),
      O => \img_cr00_carry__1_i_2_n_0\
    );
\img_cr00_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_g_m2(10),
      I1 => rgb_b_m2(10),
      I2 => rgb_r_m2(10),
      O => \img_cr00_carry__1_i_3_n_0\
    );
\img_cr00_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_g_m2(9),
      I1 => rgb_b_m2(9),
      I2 => rgb_r_m2(9),
      O => \img_cr00_carry__1_i_4_n_0\
    );
\img_cr00_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BD4D42B"
    )
        port map (
      I0 => rgb_r_m2(12),
      I1 => rgb_b_m2(12),
      I2 => rgb_g_m2(12),
      I3 => rgb_g_m2(13),
      I4 => rgb_r_m2(13),
      O => \img_cr00_carry__1_i_5_n_0\
    );
\img_cr00_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \img_cr00_carry__1_i_2_n_0\,
      I1 => rgb_b_m2(12),
      I2 => rgb_g_m2(12),
      I3 => rgb_r_m2(12),
      O => \img_cr00_carry__1_i_6_n_0\
    );
\img_cr00_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m2(11),
      I1 => rgb_b_m2(11),
      I2 => rgb_r_m2(11),
      I3 => \img_cr00_carry__1_i_3_n_0\,
      O => \img_cr00_carry__1_i_7_n_0\
    );
\img_cr00_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m2(10),
      I1 => rgb_b_m2(10),
      I2 => rgb_r_m2(10),
      I3 => \img_cr00_carry__1_i_4_n_0\,
      O => \img_cr00_carry__1_i_8_n_0\
    );
\img_cr00_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_cr00_carry__1_n_0\,
      CO(3 downto 1) => \NLW_img_cr00_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \img_cr00_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \img_cr00_carry__2_i_1_n_0\,
      O(3 downto 2) => \NLW_img_cr00_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => \img_cr00_carry__2_n_6\,
      O(0) => \img_cr00_carry__2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \img_cr00_carry__2_i_2_n_0\,
      S(0) => \img_cr00_carry__2_i_3_n_0\
    );
\img_cr00_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => rgb_g_m2(13),
      I1 => rgb_r_m2(13),
      O => \img_cr00_carry__2_i_1_n_0\
    );
\img_cr00_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_g_m2(14),
      I1 => rgb_r_m2(14),
      O => \img_cr00_carry__2_i_2_n_0\
    );
\img_cr00_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => rgb_r_m2(13),
      I1 => rgb_g_m2(13),
      I2 => rgb_g_m2(14),
      I3 => rgb_r_m2(14),
      O => \img_cr00_carry__2_i_3_n_0\
    );
img_cr00_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"71"
    )
        port map (
      I0 => rgb_g_m2(4),
      I1 => rgb_b_m2(4),
      I2 => rgb_r_m2(4),
      O => img_cr00_carry_i_1_n_0
    );
img_cr00_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_g_m2(3),
      I1 => rgb_b_m2(3),
      O => img_cr00_carry_i_2_n_0
    );
img_cr00_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_b_m0(1),
      I1 => rgb_g_m2(2),
      O => img_cr00_carry_i_3_n_0
    );
img_cr00_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_b_m0(0),
      I1 => rgb_g_m0(0),
      O => img_cr00_carry_i_4_n_0
    );
img_cr00_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m2(5),
      I1 => rgb_b_m2(5),
      I2 => rgb_r_m2(5),
      I3 => img_cr00_carry_i_1_n_0,
      O => img_cr00_carry_i_5_n_0
    );
img_cr00_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m2(4),
      I1 => rgb_b_m2(4),
      I2 => rgb_r_m2(4),
      I3 => img_cr00_carry_i_2_n_0,
      O => img_cr00_carry_i_6_n_0
    );
img_cr00_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6669"
    )
        port map (
      I0 => rgb_g_m2(3),
      I1 => rgb_b_m2(3),
      I2 => rgb_b_m0(1),
      I3 => rgb_g_m2(2),
      O => img_cr00_carry_i_7_n_0
    );
img_cr00_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => rgb_b_m0(0),
      I1 => rgb_g_m0(0),
      I2 => rgb_g_m2(2),
      I3 => rgb_b_m0(1),
      O => img_cr00_carry_i_8_n_0
    );
\img_cr0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cr00_carry__1_n_7\,
      Q => p_0_in(2)
    );
\img_cr0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cr00_carry__1_n_6\,
      Q => p_0_in(3)
    );
\img_cr0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cr00_carry__1_n_5\,
      Q => p_0_in(4)
    );
\img_cr0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cr00_carry__1_n_4\,
      Q => p_0_in(5)
    );
\img_cr0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cr00_carry__2_n_7\,
      Q => p_0_in(6)
    );
\img_cr0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cr00_carry__2_n_6\,
      Q => p_0_in(7)
    );
\img_cr0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cr00_carry__0_n_5\,
      Q => p_0_in(0)
    );
\img_cr0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_cr00_carry__0_n_4\,
      Q => p_0_in(1)
    );
\img_cr1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => p_0_in(0),
      Q => img_cr1(0)
    );
\img_cr1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => p_0_in(1),
      Q => img_cr1(1)
    );
\img_cr1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => p_0_in(2),
      Q => img_cr1(2)
    );
\img_cr1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => p_0_in(3),
      Q => img_cr1(3)
    );
\img_cr1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => p_0_in(4),
      Q => img_cr1(4)
    );
\img_cr1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => p_0_in(5),
      Q => img_cr1(5)
    );
\img_cr1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => p_0_in(6),
      Q => img_cr1(6)
    );
\img_cr1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => p_0_in(7),
      Q => img_cr1(7)
    );
\img_y00__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \img_y00__1_carry_n_0\,
      CO(2) => \img_y00__1_carry_n_1\,
      CO(1) => \img_y00__1_carry_n_2\,
      CO(0) => \img_y00__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \img_y00__1_carry_i_1_n_0\,
      DI(2) => \img_y00__1_carry_i_2_n_0\,
      DI(1) => \img_y00__1_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_img_y00__1_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \img_y00__1_carry_i_4_n_0\,
      S(2) => \img_y00__1_carry_i_5_n_0\,
      S(1) => \img_y00__1_carry_i_6_n_0\,
      S(0) => \img_y00__1_carry_i_7_n_0\
    );
\img_y00__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_y00__1_carry_n_0\,
      CO(3) => \img_y00__1_carry__0_n_0\,
      CO(2) => \img_y00__1_carry__0_n_1\,
      CO(1) => \img_y00__1_carry__0_n_2\,
      CO(0) => \img_y00__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \img_y00__1_carry__0_i_1_n_0\,
      DI(2) => \img_y00__1_carry__0_i_2_n_0\,
      DI(1) => \img_y00__1_carry__0_i_3_n_0\,
      DI(0) => \img_y00__1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_img_y00__1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \img_y00__1_carry__0_i_5_n_0\,
      S(2) => \img_y00__1_carry__0_i_6_n_0\,
      S(1) => \img_y00__1_carry__0_i_7_n_0\,
      S(0) => \img_y00__1_carry__0_i_8_n_0\
    );
\img_y00__1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_g_m0(6),
      I1 => rgb_b_m0(6),
      I2 => rgb_r_m0(6),
      O => \img_y00__1_carry__0_i_1_n_0\
    );
\img_y00__1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_data_d(13),
      I1 => rgb_b_m0(5),
      I2 => rgb_r_m0(5),
      O => \img_y00__1_carry__0_i_2_n_0\
    );
\img_y00__1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_data_d(12),
      I1 => rgb_b_m0(4),
      I2 => rgb_data_d(19),
      O => \img_y00__1_carry__0_i_3_n_0\
    );
\img_y00__1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_data_d(11),
      I1 => rgb_b_m0(3),
      I2 => rgb_r_m0(3),
      O => \img_y00__1_carry__0_i_4_n_0\
    );
\img_y00__1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m0(7),
      I1 => rgb_b_m0(7),
      I2 => rgb_r_m0(7),
      I3 => \img_y00__1_carry__0_i_1_n_0\,
      O => \img_y00__1_carry__0_i_5_n_0\
    );
\img_y00__1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m0(6),
      I1 => rgb_b_m0(6),
      I2 => rgb_r_m0(6),
      I3 => \img_y00__1_carry__0_i_2_n_0\,
      O => \img_y00__1_carry__0_i_6_n_0\
    );
\img_y00__1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_data_d(13),
      I1 => rgb_b_m0(5),
      I2 => rgb_r_m0(5),
      I3 => \img_y00__1_carry__0_i_3_n_0\,
      O => \img_y00__1_carry__0_i_7_n_0\
    );
\img_y00__1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_data_d(12),
      I1 => rgb_b_m0(4),
      I2 => rgb_data_d(19),
      I3 => \img_y00__1_carry__0_i_4_n_0\,
      O => \img_y00__1_carry__0_i_8_n_0\
    );
\img_y00__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_y00__1_carry__0_n_0\,
      CO(3) => \img_y00__1_carry__1_n_0\,
      CO(2) => \img_y00__1_carry__1_n_1\,
      CO(1) => \img_y00__1_carry__1_n_2\,
      CO(0) => \img_y00__1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \img_y00__1_carry__1_i_1_n_0\,
      DI(2) => \img_y00__1_carry__1_i_2_n_0\,
      DI(1) => \img_y00__1_carry__1_i_3_n_0\,
      DI(0) => \img_y00__1_carry__1_i_4_n_0\,
      O(3) => \img_y00__1_carry__1_n_4\,
      O(2) => \img_y00__1_carry__1_n_5\,
      O(1) => \img_y00__1_carry__1_n_6\,
      O(0) => \img_y00__1_carry__1_n_7\,
      S(3) => \img_y00__1_carry__1_i_5_n_0\,
      S(2) => \img_y00__1_carry__1_i_6_n_0\,
      S(1) => \img_y00__1_carry__1_i_7_n_0\,
      S(0) => \img_y00__1_carry__1_i_8_n_0\
    );
\img_y00__1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_g_m0(10),
      I1 => rgb_b_m0(10),
      I2 => rgb_r_m0(10),
      O => \img_y00__1_carry__1_i_1_n_0\
    );
\img_y00__1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_g_m0(9),
      I1 => rgb_b_m0(9),
      I2 => rgb_r_m0(9),
      O => \img_y00__1_carry__1_i_2_n_0\
    );
\img_y00__1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_g_m0(8),
      I1 => rgb_b_m0(8),
      I2 => rgb_r_m0(8),
      O => \img_y00__1_carry__1_i_3_n_0\
    );
\img_y00__1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_g_m0(7),
      I1 => rgb_b_m0(7),
      I2 => rgb_r_m0(7),
      O => \img_y00__1_carry__1_i_4_n_0\
    );
\img_y00__1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \img_y00__1_carry__1_i_1_n_0\,
      I1 => rgb_b_m0(11),
      I2 => rgb_g_m0(11),
      I3 => rgb_r_m0(11),
      O => \img_y00__1_carry__1_i_5_n_0\
    );
\img_y00__1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m0(10),
      I1 => rgb_b_m0(10),
      I2 => rgb_r_m0(10),
      I3 => \img_y00__1_carry__1_i_2_n_0\,
      O => \img_y00__1_carry__1_i_6_n_0\
    );
\img_y00__1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m0(9),
      I1 => rgb_b_m0(9),
      I2 => rgb_r_m0(9),
      I3 => \img_y00__1_carry__1_i_3_n_0\,
      O => \img_y00__1_carry__1_i_7_n_0\
    );
\img_y00__1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_g_m0(8),
      I1 => rgb_b_m0(8),
      I2 => rgb_r_m0(8),
      I3 => \img_y00__1_carry__1_i_4_n_0\,
      O => \img_y00__1_carry__1_i_8_n_0\
    );
\img_y00__1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \img_y00__1_carry__1_n_0\,
      CO(3) => \NLW_img_y00__1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \img_y00__1_carry__2_n_1\,
      CO(1) => \img_y00__1_carry__2_n_2\,
      CO(0) => \img_y00__1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \img_y00__1_carry__2_i_1_n_0\,
      DI(1) => \img_y00__1_carry__2_i_2_n_0\,
      DI(0) => \img_y00__1_carry__2_i_3_n_0\,
      O(3) => \img_y00__1_carry__2_n_4\,
      O(2) => \img_y00__1_carry__2_n_5\,
      O(1) => \img_y00__1_carry__2_n_6\,
      O(0) => \img_y00__1_carry__2_n_7\,
      S(3) => \img_y00__1_carry__2_i_4_n_0\,
      S(2) => \img_y00__1_carry__2_i_5_n_0\,
      S(1) => \img_y00__1_carry__2_i_6_n_0\,
      S(0) => \img_y00__1_carry__2_i_7_n_0\
    );
\img_y00__1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6660"
    )
        port map (
      I0 => rgb_g_m0(13),
      I1 => rgb_r_m0(13),
      I2 => rgb_g_m0(12),
      I3 => rgb_b_m0(12),
      O => \img_y00__1_carry__2_i_1_n_0\
    );
\img_y00__1_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => rgb_r_m0(12),
      I1 => rgb_g_m0(12),
      I2 => rgb_b_m0(12),
      O => \img_y00__1_carry__2_i_2_n_0\
    );
\img_y00__1_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => rgb_g_m0(12),
      I1 => rgb_b_m0(12),
      I2 => rgb_r_m0(12),
      O => \img_y00__1_carry__2_i_3_n_0\
    );
\img_y00__1_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F7878F0"
    )
        port map (
      I0 => rgb_g_m0(13),
      I1 => rgb_r_m0(13),
      I2 => rgb_g_m0(15),
      I3 => rgb_g_m0(14),
      I4 => rgb_r_m0(14),
      O => \img_y00__1_carry__2_i_4_n_0\
    );
\img_y00__1_carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \img_y00__1_carry__2_i_1_n_0\,
      I1 => rgb_r_m0(14),
      I2 => rgb_g_m0(14),
      I3 => rgb_g_m0(13),
      I4 => rgb_r_m0(13),
      O => \img_y00__1_carry__2_i_5_n_0\
    );
\img_y00__1_carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66699996"
    )
        port map (
      I0 => rgb_g_m0(13),
      I1 => rgb_r_m0(13),
      I2 => rgb_g_m0(12),
      I3 => rgb_b_m0(12),
      I4 => \img_y00__1_carry__2_i_2_n_0\,
      O => \img_y00__1_carry__2_i_6_n_0\
    );
\img_y00__1_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => rgb_r_m0(12),
      I1 => rgb_b_m0(12),
      I2 => rgb_g_m0(12),
      I3 => rgb_r_m0(11),
      I4 => rgb_b_m0(11),
      I5 => rgb_g_m0(11),
      O => \img_y00__1_carry__2_i_7_n_0\
    );
\img_y00__1_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_data_d(10),
      I1 => rgb_b_m0(2),
      I2 => rgb_r_m0(2),
      O => \img_y00__1_carry_i_1_n_0\
    );
\img_y00__1_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_data_d(9),
      I1 => rgb_b_m0(1),
      I2 => rgb_r_m0(1),
      O => \img_y00__1_carry_i_2_n_0\
    );
\img_y00__1_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_g_m0(0),
      I1 => rgb_b_m0(0),
      O => \img_y00__1_carry_i_3_n_0\
    );
\img_y00__1_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_data_d(11),
      I1 => rgb_b_m0(3),
      I2 => rgb_r_m0(3),
      I3 => \img_y00__1_carry_i_1_n_0\,
      O => \img_y00__1_carry_i_4_n_0\
    );
\img_y00__1_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_data_d(10),
      I1 => rgb_b_m0(2),
      I2 => rgb_r_m0(2),
      I3 => \img_y00__1_carry_i_2_n_0\,
      O => \img_y00__1_carry_i_5_n_0\
    );
\img_y00__1_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_data_d(9),
      I1 => rgb_b_m0(1),
      I2 => rgb_r_m0(1),
      I3 => \img_y00__1_carry_i_3_n_0\,
      O => \img_y00__1_carry_i_6_n_0\
    );
\img_y00__1_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_g_m0(0),
      I1 => rgb_b_m0(0),
      O => \img_y00__1_carry_i_7_n_0\
    );
\img_y0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_y00__1_carry__1_n_5\,
      Q => img_y0(10)
    );
\img_y0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_y00__1_carry__1_n_4\,
      Q => img_y0(11)
    );
\img_y0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_y00__1_carry__2_n_7\,
      Q => img_y0(12)
    );
\img_y0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_y00__1_carry__2_n_6\,
      Q => img_y0(13)
    );
\img_y0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_y00__1_carry__2_n_5\,
      Q => img_y0(14)
    );
\img_y0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_y00__1_carry__2_n_4\,
      Q => img_y0(15)
    );
\img_y0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_y00__1_carry__1_n_7\,
      Q => img_y0(8)
    );
\img_y0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => \img_y00__1_carry__1_n_6\,
      Q => img_y0(9)
    );
\img_y1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_y0(8),
      Q => img_y1(0)
    );
\img_y1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_y0(9),
      Q => img_y1(1)
    );
\img_y1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_y0(10),
      Q => img_y1(2)
    );
\img_y1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_y0(11),
      Q => img_y1(3)
    );
\img_y1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_y0(12),
      Q => img_y1(4)
    );
\img_y1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_y0(13),
      Q => img_y1(5)
    );
\img_y1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_y0(14),
      Q => img_y1(6)
    );
\img_y1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => img_y0(15),
      Q => img_y1(7)
    );
rgb_b_m00_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rgb_b_m00_carry_n_0,
      CO(2) => rgb_b_m00_carry_n_1,
      CO(1) => rgb_b_m00_carry_n_2,
      CO(0) => rgb_b_m00_carry_n_3,
      CYINIT => '0',
      DI(3) => rgb_b_m00_carry_i_1_n_0,
      DI(2) => rgb_b_m00_carry_i_2_n_0,
      DI(1) => rgb_b_m00_carry_i_3_n_0,
      DI(0) => '0',
      O(3 downto 0) => rgb_b_m00(6 downto 3),
      S(3) => rgb_b_m00_carry_i_4_n_0,
      S(2) => rgb_b_m00_carry_i_5_n_0,
      S(1) => rgb_b_m00_carry_i_6_n_0,
      S(0) => rgb_b_m00_carry_i_7_n_0
    );
\rgb_b_m00_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rgb_b_m00_carry_n_0,
      CO(3) => \rgb_b_m00_carry__0_n_0\,
      CO(2) => \rgb_b_m00_carry__0_n_1\,
      CO(1) => \rgb_b_m00_carry__0_n_2\,
      CO(0) => \rgb_b_m00_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_b_m00_carry__0_i_1_n_0\,
      DI(2) => \rgb_b_m00_carry__0_i_2_n_0\,
      DI(1) => \rgb_b_m00_carry__0_i_3_n_0\,
      DI(0) => \rgb_b_m00_carry__0_i_4_n_0\,
      O(3 downto 0) => rgb_b_m00(10 downto 7),
      S(3) => \rgb_b_m00_carry__0_i_5_n_0\,
      S(2) => \rgb_b_m00_carry__0_i_6_n_0\,
      S(1) => \rgb_b_m00_carry__0_i_7_n_0\,
      S(0) => \rgb_b_m00_carry__0_i_8_n_0\
    );
\rgb_b_m00_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_data(4),
      I1 => rgb_data(6),
      O => \rgb_b_m00_carry__0_i_1_n_0\
    );
\rgb_b_m00_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_data(3),
      I1 => rgb_data(5),
      O => \rgb_b_m00_carry__0_i_2_n_0\
    );
\rgb_b_m00_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_data(4),
      I1 => rgb_data(7),
      I2 => rgb_data(2),
      O => \rgb_b_m00_carry__0_i_3_n_0\
    );
\rgb_b_m00_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_data(3),
      I1 => rgb_data(6),
      I2 => rgb_data(1),
      O => \rgb_b_m00_carry__0_i_4_n_0\
    );
\rgb_b_m00_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => rgb_data(6),
      I1 => rgb_data(4),
      I2 => rgb_data(7),
      I3 => rgb_data(5),
      O => \rgb_b_m00_carry__0_i_5_n_0\
    );
\rgb_b_m00_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => rgb_data(5),
      I1 => rgb_data(3),
      I2 => rgb_data(6),
      I3 => rgb_data(4),
      O => \rgb_b_m00_carry__0_i_6_n_0\
    );
\rgb_b_m00_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => rgb_data(2),
      I1 => rgb_data(7),
      I2 => rgb_data(4),
      I3 => rgb_data(5),
      I4 => rgb_data(3),
      O => \rgb_b_m00_carry__0_i_7_n_0\
    );
\rgb_b_m00_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_data(1),
      I1 => rgb_data(6),
      I2 => rgb_data(3),
      I3 => rgb_data(4),
      I4 => rgb_data(7),
      I5 => rgb_data(2),
      O => \rgb_b_m00_carry__0_i_8_n_0\
    );
\rgb_b_m00_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_b_m00_carry__0_n_0\,
      CO(3 downto 1) => \NLW_rgb_b_m00_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \rgb_b_m00_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \rgb_b_m00_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_rgb_b_m00_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => rgb_b_m00(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \rgb_b_m00_carry__1_i_2_n_0\,
      S(0) => \rgb_b_m00_carry__1_i_3_n_0\
    );
\rgb_b_m00_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_data(5),
      I1 => rgb_data(7),
      O => \rgb_b_m00_carry__1_i_1_n_0\
    );
\rgb_b_m00_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(6),
      I1 => rgb_data(7),
      O => \rgb_b_m00_carry__1_i_2_n_0\
    );
\rgb_b_m00_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => rgb_data(7),
      I1 => rgb_data(5),
      I2 => rgb_data(6),
      O => \rgb_b_m00_carry__1_i_3_n_0\
    );
rgb_b_m00_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => rgb_data(2),
      I1 => rgb_data(5),
      I2 => rgb_data(0),
      O => rgb_b_m00_carry_i_1_n_0
    );
rgb_b_m00_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => rgb_data(2),
      I1 => rgb_data(5),
      I2 => rgb_data(0),
      O => rgb_b_m00_carry_i_2_n_0
    );
rgb_b_m00_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rgb_data(3),
      I1 => rgb_data(0),
      O => rgb_b_m00_carry_i_3_n_0
    );
rgb_b_m00_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => rgb_data(0),
      I1 => rgb_data(5),
      I2 => rgb_data(2),
      I3 => rgb_data(3),
      I4 => rgb_data(6),
      I5 => rgb_data(1),
      O => rgb_b_m00_carry_i_4_n_0
    );
rgb_b_m00_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => rgb_data(2),
      I1 => rgb_data(5),
      I2 => rgb_data(0),
      I3 => rgb_data(1),
      I4 => rgb_data(4),
      O => rgb_b_m00_carry_i_5_n_0
    );
rgb_b_m00_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => rgb_data(0),
      I1 => rgb_data(3),
      I2 => rgb_data(4),
      I3 => rgb_data(1),
      O => rgb_b_m00_carry_i_6_n_0
    );
rgb_b_m00_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(0),
      I1 => rgb_data(3),
      O => rgb_b_m00_carry_i_7_n_0
    );
\rgb_b_m0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(0),
      Q => rgb_b_m0(0)
    );
\rgb_b_m0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m00(10),
      Q => rgb_b_m0(10)
    );
\rgb_b_m0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m00(11),
      Q => rgb_b_m0(11)
    );
\rgb_b_m0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m00(12),
      Q => rgb_b_m0(12)
    );
\rgb_b_m0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(1),
      Q => rgb_b_m0(1)
    );
\rgb_b_m0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(2),
      Q => rgb_b_m0(2)
    );
\rgb_b_m0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m00(3),
      Q => rgb_b_m0(3)
    );
\rgb_b_m0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m00(4),
      Q => rgb_b_m0(4)
    );
\rgb_b_m0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m00(5),
      Q => rgb_b_m0(5)
    );
\rgb_b_m0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m00(6),
      Q => rgb_b_m0(6)
    );
\rgb_b_m0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m00(7),
      Q => rgb_b_m0(7)
    );
\rgb_b_m0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m00(8),
      Q => rgb_b_m0(8)
    );
\rgb_b_m0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m00(9),
      Q => rgb_b_m0(9)
    );
\rgb_b_m10__25_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_b_m10__25_carry_n_0\,
      CO(2) => \rgb_b_m10__25_carry_n_1\,
      CO(1) => \rgb_b_m10__25_carry_n_2\,
      CO(0) => \rgb_b_m10__25_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => rgb_data(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => rgb_b_m10(8 downto 5),
      S(3) => \rgb_b_m10__25_carry_i_1_n_0\,
      S(2) => \rgb_b_m10__25_carry_i_2_n_0\,
      S(1) => \rgb_b_m10__25_carry_i_3_n_0\,
      S(0) => rgb_b_m10_carry_n_6
    );
\rgb_b_m10__25_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_b_m10__25_carry_n_0\,
      CO(3) => \rgb_b_m10__25_carry__0_n_0\,
      CO(2) => \rgb_b_m10__25_carry__0_n_1\,
      CO(1) => \rgb_b_m10__25_carry__0_n_2\,
      CO(0) => \rgb_b_m10__25_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_data(6 downto 3),
      O(3 downto 0) => rgb_b_m10(12 downto 9),
      S(3) => \rgb_b_m10__25_carry__0_i_1_n_0\,
      S(2) => \rgb_b_m10__25_carry__0_i_2_n_0\,
      S(1) => \rgb_b_m10__25_carry__0_i_3_n_0\,
      S(0) => \rgb_b_m10__25_carry__0_i_4_n_0\
    );
\rgb_b_m10__25_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(6),
      I1 => \rgb_b_m10_carry__1_n_7\,
      O => \rgb_b_m10__25_carry__0_i_1_n_0\
    );
\rgb_b_m10__25_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(5),
      I1 => \rgb_b_m10_carry__0_n_4\,
      O => \rgb_b_m10__25_carry__0_i_2_n_0\
    );
\rgb_b_m10__25_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(4),
      I1 => \rgb_b_m10_carry__0_n_5\,
      O => \rgb_b_m10__25_carry__0_i_3_n_0\
    );
\rgb_b_m10__25_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(3),
      I1 => \rgb_b_m10_carry__0_n_6\,
      O => \rgb_b_m10__25_carry__0_i_4_n_0\
    );
\rgb_b_m10__25_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_b_m10__25_carry__0_n_0\,
      CO(3 downto 1) => \NLW_rgb_b_m10__25_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \rgb_b_m10__25_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => rgb_data(7),
      O(3 downto 2) => \NLW_rgb_b_m10__25_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => rgb_b_m10(14 downto 13),
      S(3 downto 2) => B"00",
      S(1) => \rgb_b_m10_carry__1_n_5\,
      S(0) => \rgb_b_m10__25_carry__1_i_1_n_0\
    );
\rgb_b_m10__25_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(7),
      I1 => \rgb_b_m10_carry__1_n_6\,
      O => \rgb_b_m10__25_carry__1_i_1_n_0\
    );
\rgb_b_m10__25_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(2),
      I1 => \rgb_b_m10_carry__0_n_7\,
      O => \rgb_b_m10__25_carry_i_1_n_0\
    );
\rgb_b_m10__25_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(1),
      I1 => rgb_b_m10_carry_n_4,
      O => \rgb_b_m10__25_carry_i_2_n_0\
    );
\rgb_b_m10__25_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(0),
      I1 => rgb_b_m10_carry_n_5,
      O => \rgb_b_m10__25_carry_i_3_n_0\
    );
rgb_b_m10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rgb_b_m10_carry_n_0,
      CO(2) => rgb_b_m10_carry_n_1,
      CO(1) => rgb_b_m10_carry_n_2,
      CO(0) => rgb_b_m10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => rgb_data(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3) => rgb_b_m10_carry_n_4,
      O(2) => rgb_b_m10_carry_n_5,
      O(1) => rgb_b_m10_carry_n_6,
      O(0) => rgb_b_m10(4),
      S(3) => rgb_b_m10_carry_i_1_n_0,
      S(2) => rgb_b_m10_carry_i_2_n_0,
      S(1) => rgb_b_m10_carry_i_3_n_0,
      S(0) => rgb_data(0)
    );
\rgb_b_m10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rgb_b_m10_carry_n_0,
      CO(3) => \rgb_b_m10_carry__0_n_0\,
      CO(2) => \rgb_b_m10_carry__0_n_1\,
      CO(1) => \rgb_b_m10_carry__0_n_2\,
      CO(0) => \rgb_b_m10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_data(5 downto 2),
      O(3) => \rgb_b_m10_carry__0_n_4\,
      O(2) => \rgb_b_m10_carry__0_n_5\,
      O(1) => \rgb_b_m10_carry__0_n_6\,
      O(0) => \rgb_b_m10_carry__0_n_7\,
      S(3) => \rgb_b_m10_carry__0_i_1_n_0\,
      S(2) => \rgb_b_m10_carry__0_i_2_n_0\,
      S(1) => \rgb_b_m10_carry__0_i_3_n_0\,
      S(0) => \rgb_b_m10_carry__0_i_4_n_0\
    );
\rgb_b_m10_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(7),
      I1 => rgb_data(5),
      O => \rgb_b_m10_carry__0_i_1_n_0\
    );
\rgb_b_m10_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(6),
      I1 => rgb_data(4),
      O => \rgb_b_m10_carry__0_i_2_n_0\
    );
\rgb_b_m10_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(5),
      I1 => rgb_data(3),
      O => \rgb_b_m10_carry__0_i_3_n_0\
    );
\rgb_b_m10_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(2),
      I1 => rgb_data(4),
      O => \rgb_b_m10_carry__0_i_4_n_0\
    );
\rgb_b_m10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_b_m10_carry__0_n_0\,
      CO(3 downto 2) => \NLW_rgb_b_m10_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rgb_b_m10_carry__1_n_2\,
      CO(0) => \rgb_b_m10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_data(7 downto 6),
      O(3) => \NLW_rgb_b_m10_carry__1_O_UNCONNECTED\(3),
      O(2) => \rgb_b_m10_carry__1_n_5\,
      O(1) => \rgb_b_m10_carry__1_n_6\,
      O(0) => \rgb_b_m10_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \rgb_b_m10_carry__1_i_1_n_0\,
      S(0) => \rgb_b_m10_carry__1_i_2_n_0\
    );
\rgb_b_m10_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(7),
      O => \rgb_b_m10_carry__1_i_1_n_0\
    );
\rgb_b_m10_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(6),
      O => \rgb_b_m10_carry__1_i_2_n_0\
    );
rgb_b_m10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(1),
      I1 => rgb_data(3),
      O => rgb_b_m10_carry_i_1_n_0
    );
rgb_b_m10_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(0),
      I1 => rgb_data(2),
      O => rgb_b_m10_carry_i_2_n_0
    );
rgb_b_m10_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(1),
      O => rgb_b_m10_carry_i_3_n_0
    );
\rgb_b_m1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m10(10),
      Q => rgb_b_m1(10)
    );
\rgb_b_m1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m10(11),
      Q => rgb_b_m1(11)
    );
\rgb_b_m1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m10(12),
      Q => rgb_b_m1(12)
    );
\rgb_b_m1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m10(13),
      Q => rgb_b_m1(13)
    );
\rgb_b_m1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m10(14),
      Q => rgb_b_m1(14)
    );
\rgb_b_m1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m10(4),
      Q => rgb_b_m1(4)
    );
\rgb_b_m1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m10(5),
      Q => rgb_b_m1(5)
    );
\rgb_b_m1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m10(6),
      Q => rgb_b_m1(6)
    );
\rgb_b_m1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m10(7),
      Q => rgb_b_m1(7)
    );
\rgb_b_m1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m10(8),
      Q => rgb_b_m1(8)
    );
\rgb_b_m1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m10(9),
      Q => rgb_b_m1(9)
    );
\rgb_b_m2[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(4),
      I1 => rgb_data(7),
      O => \rgb_b_m2[10]_i_2_n_0\
    );
\rgb_b_m2[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(3),
      I1 => rgb_data(6),
      O => \rgb_b_m2[10]_i_3_n_0\
    );
\rgb_b_m2[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(2),
      I1 => rgb_data(5),
      O => \rgb_b_m2[6]_i_2_n_0\
    );
\rgb_b_m2[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(1),
      I1 => rgb_data(4),
      O => \rgb_b_m2[6]_i_3_n_0\
    );
\rgb_b_m2[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(0),
      I1 => rgb_data(3),
      O => \rgb_b_m2[6]_i_4_n_0\
    );
\rgb_b_m2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m20(10),
      Q => rgb_b_m2(10)
    );
\rgb_b_m2_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_b_m2_reg[6]_i_1_n_0\,
      CO(3) => \rgb_b_m2_reg[10]_i_1_n_0\,
      CO(2) => \rgb_b_m2_reg[10]_i_1_n_1\,
      CO(1) => \rgb_b_m2_reg[10]_i_1_n_2\,
      CO(0) => \rgb_b_m2_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_data(4 downto 3),
      O(3 downto 0) => rgb_b_m20(10 downto 7),
      S(3 downto 2) => rgb_data(6 downto 5),
      S(1) => \rgb_b_m2[10]_i_2_n_0\,
      S(0) => \rgb_b_m2[10]_i_3_n_0\
    );
\rgb_b_m2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m20(11),
      Q => rgb_b_m2(11)
    );
\rgb_b_m2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m20(12),
      Q => rgb_b_m2(12)
    );
\rgb_b_m2_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_b_m2_reg[10]_i_1_n_0\,
      CO(3 downto 2) => \NLW_rgb_b_m2_reg[12]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => rgb_b_m20(12),
      CO(0) => \NLW_rgb_b_m2_reg[12]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_rgb_b_m2_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => rgb_b_m20(11),
      S(3 downto 1) => B"001",
      S(0) => rgb_data(7)
    );
\rgb_b_m2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m20(3),
      Q => rgb_b_m2(3)
    );
\rgb_b_m2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m20(4),
      Q => rgb_b_m2(4)
    );
\rgb_b_m2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m20(5),
      Q => rgb_b_m2(5)
    );
\rgb_b_m2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m20(6),
      Q => rgb_b_m2(6)
    );
\rgb_b_m2_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_b_m2_reg[6]_i_1_n_0\,
      CO(2) => \rgb_b_m2_reg[6]_i_1_n_1\,
      CO(1) => \rgb_b_m2_reg[6]_i_1_n_2\,
      CO(0) => \rgb_b_m2_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => rgb_data(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => rgb_b_m20(6 downto 3),
      S(3) => \rgb_b_m2[6]_i_2_n_0\,
      S(2) => \rgb_b_m2[6]_i_3_n_0\,
      S(1) => \rgb_b_m2[6]_i_4_n_0\,
      S(0) => rgb_data(2)
    );
\rgb_b_m2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m20(7),
      Q => rgb_b_m2(7)
    );
\rgb_b_m2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m20(8),
      Q => rgb_b_m2(8)
    );
\rgb_b_m2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m20(9),
      Q => rgb_b_m2(9)
    );
\rgb_clken_d_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_clken,
      Q => rgb_clken_d(0)
    );
\rgb_clken_d_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_clken_d(0),
      Q => rgb_clken_d(1)
    );
\rgb_clken_d_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_clken_d(1),
      Q => \^q\(0)
    );
\rgb_data_d_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(10),
      Q => rgb_data_d(10)
    );
\rgb_data_d_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(11),
      Q => rgb_data_d(11)
    );
\rgb_data_d_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(12),
      Q => rgb_data_d(12)
    );
\rgb_data_d_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(13),
      Q => rgb_data_d(13)
    );
\rgb_data_d_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(14),
      Q => rgb_data_d(14)
    );
\rgb_data_d_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(15),
      Q => rgb_data_d(15)
    );
\rgb_data_d_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(19),
      Q => rgb_data_d(19)
    );
\rgb_data_d_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(20),
      Q => rgb_data_d(20)
    );
\rgb_data_d_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(21),
      Q => rgb_data_d(21)
    );
\rgb_data_d_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(22),
      Q => rgb_data_d(22)
    );
\rgb_data_d_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(23),
      Q => rgb_data_d(23)
    );
\rgb_data_d_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m0(0),
      Q => rgb_data_d(24)
    );
\rgb_data_d_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m0(1),
      Q => rgb_data_d(25)
    );
\rgb_data_d_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_b_m0(2),
      Q => rgb_data_d(26)
    );
\rgb_data_d_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(3),
      Q => rgb_data_d(27)
    );
\rgb_data_d_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(4),
      Q => rgb_data_d(28)
    );
\rgb_data_d_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(5),
      Q => rgb_data_d(29)
    );
\rgb_data_d_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(6),
      Q => rgb_data_d(30)
    );
\rgb_data_d_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(7),
      Q => rgb_data_d(31)
    );
\rgb_data_d_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m0(0),
      Q => rgb_data_d(32)
    );
\rgb_data_d_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(9),
      Q => rgb_data_d(33)
    );
\rgb_data_d_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(10),
      Q => rgb_data_d(34)
    );
\rgb_data_d_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(11),
      Q => rgb_data_d(35)
    );
\rgb_data_d_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(12),
      Q => rgb_data_d(36)
    );
\rgb_data_d_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(13),
      Q => rgb_data_d(37)
    );
\rgb_data_d_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(14),
      Q => rgb_data_d(38)
    );
\rgb_data_d_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(15),
      Q => rgb_data_d(39)
    );
\rgb_data_d_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(3),
      Q => rgb_data_d(3)
    );
\rgb_data_d_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m0(1),
      Q => rgb_data_d(40)
    );
\rgb_data_d_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m0(2),
      Q => rgb_data_d(41)
    );
\rgb_data_d_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m0(3),
      Q => rgb_data_d(42)
    );
\rgb_data_d_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(19),
      Q => rgb_data_d(43)
    );
\rgb_data_d_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(20),
      Q => rgb_data_d(44)
    );
\rgb_data_d_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(21),
      Q => rgb_data_d(45)
    );
\rgb_data_d_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(22),
      Q => rgb_data_d(46)
    );
\rgb_data_d_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(23),
      Q => rgb_data_d(47)
    );
\rgb_data_d_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(24),
      Q => rgb_data_syn(0)
    );
\rgb_data_d_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(25),
      Q => rgb_data_syn(1)
    );
\rgb_data_d_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(4),
      Q => rgb_data_d(4)
    );
\rgb_data_d_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(26),
      Q => rgb_data_syn(2)
    );
\rgb_data_d_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(27),
      Q => rgb_data_syn(3)
    );
\rgb_data_d_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(28),
      Q => rgb_data_syn(4)
    );
\rgb_data_d_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(29),
      Q => rgb_data_syn(5)
    );
\rgb_data_d_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(30),
      Q => rgb_data_syn(6)
    );
\rgb_data_d_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(31),
      Q => rgb_data_syn(7)
    );
\rgb_data_d_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(32),
      Q => rgb_data_syn(8)
    );
\rgb_data_d_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(33),
      Q => rgb_data_syn(9)
    );
\rgb_data_d_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(34),
      Q => rgb_data_syn(10)
    );
\rgb_data_d_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(35),
      Q => rgb_data_syn(11)
    );
\rgb_data_d_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(5),
      Q => rgb_data_d(5)
    );
\rgb_data_d_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(36),
      Q => rgb_data_syn(12)
    );
\rgb_data_d_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(37),
      Q => rgb_data_syn(13)
    );
\rgb_data_d_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(38),
      Q => rgb_data_syn(14)
    );
\rgb_data_d_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(39),
      Q => rgb_data_syn(15)
    );
\rgb_data_d_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(40),
      Q => rgb_data_syn(16)
    );
\rgb_data_d_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(41),
      Q => rgb_data_syn(17)
    );
\rgb_data_d_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(42),
      Q => rgb_data_syn(18)
    );
\rgb_data_d_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(43),
      Q => rgb_data_syn(19)
    );
\rgb_data_d_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(44),
      Q => rgb_data_syn(20)
    );
\rgb_data_d_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(45),
      Q => rgb_data_syn(21)
    );
\rgb_data_d_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(6),
      Q => rgb_data_d(6)
    );
\rgb_data_d_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(46),
      Q => rgb_data_syn(22)
    );
\rgb_data_d_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data_d(47),
      Q => rgb_data_syn(23)
    );
\rgb_data_d_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(7),
      Q => rgb_data_d(7)
    );
\rgb_data_d_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(9),
      Q => rgb_data_d(9)
    );
\rgb_g_m0[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(8),
      I1 => rgb_data(15),
      O => \rgb_g_m0[9]_i_2_n_0\
    );
\rgb_g_m0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(8),
      Q => rgb_g_m0(0)
    );
\rgb_g_m0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m00(10),
      Q => rgb_g_m0(10)
    );
\rgb_g_m0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m00(11),
      Q => rgb_g_m0(11)
    );
\rgb_g_m0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m00(12),
      Q => rgb_g_m0(12)
    );
\rgb_g_m0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m00(13),
      Q => rgb_g_m0(13)
    );
\rgb_g_m0_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_g_m0_reg[9]_i_1_n_0\,
      CO(3) => \rgb_g_m0_reg[13]_i_1_n_0\,
      CO(2) => \rgb_g_m0_reg[13]_i_1_n_1\,
      CO(1) => \rgb_g_m0_reg[13]_i_1_n_2\,
      CO(0) => \rgb_g_m0_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rgb_g_m00(13 downto 10),
      S(3 downto 0) => rgb_data(14 downto 11)
    );
\rgb_g_m0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m00(14),
      Q => rgb_g_m0(14)
    );
\rgb_g_m0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m00(15),
      Q => rgb_g_m0(15)
    );
\rgb_g_m0_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_g_m0_reg[13]_i_1_n_0\,
      CO(3 downto 2) => \NLW_rgb_g_m0_reg[15]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => rgb_g_m00(15),
      CO(0) => \NLW_rgb_g_m0_reg[15]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_rgb_g_m0_reg[15]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => rgb_g_m00(14),
      S(3 downto 1) => B"001",
      S(0) => rgb_data(15)
    );
\rgb_g_m0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m00(6),
      Q => rgb_g_m0(6)
    );
\rgb_g_m0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m00(7),
      Q => rgb_g_m0(7)
    );
\rgb_g_m0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m00(8),
      Q => rgb_g_m0(8)
    );
\rgb_g_m0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m00(9),
      Q => rgb_g_m0(9)
    );
\rgb_g_m0_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_g_m0_reg[9]_i_1_n_0\,
      CO(2) => \rgb_g_m0_reg[9]_i_1_n_1\,
      CO(1) => \rgb_g_m0_reg[9]_i_1_n_2\,
      CO(0) => \rgb_g_m0_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => rgb_data(8),
      DI(0) => '0',
      O(3 downto 0) => rgb_g_m00(9 downto 6),
      S(3 downto 2) => rgb_data(10 downto 9),
      S(1) => \rgb_g_m0[9]_i_2_n_0\,
      S(0) => rgb_data(14)
    );
\rgb_g_m10__21_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_g_m10__21_carry_n_0\,
      CO(2) => \rgb_g_m10__21_carry_n_1\,
      CO(1) => \rgb_g_m10__21_carry_n_2\,
      CO(0) => \rgb_g_m10__21_carry_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_g_m10_carry__0_n_6\,
      DI(2) => \rgb_g_m10_carry__0_n_7\,
      DI(1) => rgb_g_m10_carry_n_4,
      DI(0) => '0',
      O(3 downto 0) => rgb_g_m10(5 downto 2),
      S(3) => \rgb_g_m10__21_carry_i_1_n_0\,
      S(2) => \rgb_g_m10__21_carry_i_2_n_0\,
      S(1) => \rgb_g_m10__21_carry_i_3_n_0\,
      S(0) => rgb_g_m10_carry_n_5
    );
\rgb_g_m10__21_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_g_m10__21_carry_n_0\,
      CO(3) => \rgb_g_m10__21_carry__0_n_0\,
      CO(2) => \rgb_g_m10__21_carry__0_n_1\,
      CO(1) => \rgb_g_m10__21_carry__0_n_2\,
      CO(0) => \rgb_g_m10__21_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_g_m10__21_carry__0_i_1_n_0\,
      DI(2) => \rgb_g_m10__21_carry__0_i_2_n_0\,
      DI(1) => \rgb_g_m10__21_carry__0_i_3_n_0\,
      DI(0) => rgb_data(8),
      O(3 downto 0) => rgb_g_m10(9 downto 6),
      S(3) => \rgb_g_m10__21_carry__0_i_4_n_0\,
      S(2) => \rgb_g_m10__21_carry__0_i_5_n_0\,
      S(1) => \rgb_g_m10__21_carry__0_i_6_n_0\,
      S(0) => \rgb_g_m10__21_carry__0_i_7_n_0\
    );
\rgb_g_m10__21_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_data(13),
      I1 => \rgb_g_m10_carry__1_n_7\,
      I2 => rgb_data(10),
      O => \rgb_g_m10__21_carry__0_i_1_n_0\
    );
\rgb_g_m10__21_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_data(12),
      I1 => \rgb_g_m10_carry__0_n_4\,
      I2 => rgb_data(9),
      O => \rgb_g_m10__21_carry__0_i_2_n_0\
    );
\rgb_g_m10__21_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_data(9),
      I1 => rgb_data(12),
      I2 => \rgb_g_m10_carry__0_n_4\,
      O => \rgb_g_m10__21_carry__0_i_3_n_0\
    );
\rgb_g_m10__21_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_data(14),
      I1 => \rgb_g_m10_carry__1_n_6\,
      I2 => rgb_data(11),
      I3 => \rgb_g_m10__21_carry__0_i_1_n_0\,
      O => \rgb_g_m10__21_carry__0_i_4_n_0\
    );
\rgb_g_m10__21_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_data(13),
      I1 => \rgb_g_m10_carry__1_n_7\,
      I2 => rgb_data(10),
      I3 => \rgb_g_m10__21_carry__0_i_2_n_0\,
      O => \rgb_g_m10__21_carry__0_i_5_n_0\
    );
\rgb_g_m10__21_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => rgb_data(12),
      I1 => \rgb_g_m10_carry__0_n_4\,
      I2 => rgb_data(9),
      I3 => \rgb_g_m10_carry__0_n_5\,
      I4 => rgb_data(11),
      O => \rgb_g_m10__21_carry__0_i_6_n_0\
    );
\rgb_g_m10__21_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_data(11),
      I1 => \rgb_g_m10_carry__0_n_5\,
      I2 => rgb_data(8),
      O => \rgb_g_m10__21_carry__0_i_7_n_0\
    );
\rgb_g_m10__21_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_g_m10__21_carry__0_n_0\,
      CO(3) => \rgb_g_m10__21_carry__1_n_0\,
      CO(2) => \rgb_g_m10__21_carry__1_n_1\,
      CO(1) => \rgb_g_m10__21_carry__1_n_2\,
      CO(0) => \rgb_g_m10__21_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_g_m10__21_carry__1_i_1_n_0\,
      DI(2) => \rgb_g_m10__21_carry__1_i_2_n_0\,
      DI(1) => \rgb_g_m10__21_carry__1_i_3_n_0\,
      DI(0) => \rgb_g_m10__21_carry__1_i_4_n_0\,
      O(3 downto 0) => rgb_g_m10(13 downto 10),
      S(3) => \rgb_g_m10__21_carry__1_i_5_n_0\,
      S(2) => \rgb_g_m10__21_carry__1_i_6_n_0\,
      S(1) => \rgb_g_m10__21_carry__1_i_7_n_0\,
      S(0) => \rgb_g_m10__21_carry__1_i_8_n_0\
    );
\rgb_g_m10__21_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_data(14),
      I1 => \rgb_g_m10_carry__1_n_1\,
      O => \rgb_g_m10__21_carry__1_i_1_n_0\
    );
\rgb_g_m10__21_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rgb_data(13),
      I1 => \rgb_g_m10_carry__1_n_1\,
      O => \rgb_g_m10__21_carry__1_i_2_n_0\
    );
\rgb_g_m10__21_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \rgb_g_m10_carry__1_n_1\,
      I1 => rgb_data(15),
      I2 => rgb_data(12),
      O => \rgb_g_m10__21_carry__1_i_3_n_0\
    );
\rgb_g_m10__21_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_data(14),
      I1 => \rgb_g_m10_carry__1_n_6\,
      I2 => rgb_data(11),
      O => \rgb_g_m10__21_carry__1_i_4_n_0\
    );
\rgb_g_m10__21_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb_data(14),
      I1 => \rgb_g_m10_carry__1_n_1\,
      I2 => rgb_data(15),
      O => \rgb_g_m10__21_carry__1_i_5_n_0\
    );
\rgb_g_m10__21_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => rgb_data(13),
      I1 => \rgb_g_m10_carry__1_n_1\,
      I2 => rgb_data(14),
      O => \rgb_g_m10__21_carry__1_i_6_n_0\
    );
\rgb_g_m10__21_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => rgb_data(12),
      I1 => rgb_data(15),
      I2 => \rgb_g_m10_carry__1_n_1\,
      I3 => rgb_data(13),
      O => \rgb_g_m10__21_carry__1_i_7_n_0\
    );
\rgb_g_m10__21_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \rgb_g_m10__21_carry__1_i_4_n_0\,
      I1 => \rgb_g_m10_carry__1_n_1\,
      I2 => rgb_data(15),
      I3 => rgb_data(12),
      O => \rgb_g_m10__21_carry__1_i_8_n_0\
    );
\rgb_g_m10__21_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_g_m10__21_carry__1_n_0\,
      CO(3 downto 0) => \NLW_rgb_g_m10__21_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_rgb_g_m10__21_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => rgb_g_m10(14),
      S(3 downto 1) => B"000",
      S(0) => \rgb_g_m10__21_carry__2_i_1_n_0\
    );
\rgb_g_m10__21_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(15),
      I1 => \rgb_g_m10_carry__1_n_1\,
      O => \rgb_g_m10__21_carry__2_i_1_n_0\
    );
\rgb_g_m10__21_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rgb_g_m10_carry__0_n_6\,
      I1 => rgb_data(10),
      O => \rgb_g_m10__21_carry_i_1_n_0\
    );
\rgb_g_m10__21_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rgb_g_m10_carry__0_n_7\,
      I1 => rgb_data(9),
      O => \rgb_g_m10__21_carry_i_2_n_0\
    );
\rgb_g_m10__21_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_g_m10_carry_n_4,
      I1 => rgb_data(8),
      O => \rgb_g_m10__21_carry_i_3_n_0\
    );
rgb_g_m10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rgb_g_m10_carry_n_0,
      CO(2) => rgb_g_m10_carry_n_1,
      CO(1) => rgb_g_m10_carry_n_2,
      CO(0) => rgb_g_m10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => rgb_data(9 downto 8),
      DI(1 downto 0) => B"01",
      O(3) => rgb_g_m10_carry_n_4,
      O(2) => rgb_g_m10_carry_n_5,
      O(1) => rgb_g_m10(1),
      O(0) => NLW_rgb_g_m10_carry_O_UNCONNECTED(0),
      S(3) => rgb_g_m10_carry_i_1_n_0,
      S(2) => rgb_g_m10_carry_i_2_n_0,
      S(1) => rgb_g_m10_carry_i_3_n_0,
      S(0) => rgb_data(8)
    );
\rgb_g_m10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rgb_g_m10_carry_n_0,
      CO(3) => \rgb_g_m10_carry__0_n_0\,
      CO(2) => \rgb_g_m10_carry__0_n_1\,
      CO(1) => \rgb_g_m10_carry__0_n_2\,
      CO(0) => \rgb_g_m10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_data(13 downto 10),
      O(3) => \rgb_g_m10_carry__0_n_4\,
      O(2) => \rgb_g_m10_carry__0_n_5\,
      O(1) => \rgb_g_m10_carry__0_n_6\,
      O(0) => \rgb_g_m10_carry__0_n_7\,
      S(3) => \rgb_g_m10_carry__0_i_1_n_0\,
      S(2) => \rgb_g_m10_carry__0_i_2_n_0\,
      S(1) => \rgb_g_m10_carry__0_i_3_n_0\,
      S(0) => \rgb_g_m10_carry__0_i_4_n_0\
    );
\rgb_g_m10_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(13),
      I1 => rgb_data(15),
      O => \rgb_g_m10_carry__0_i_1_n_0\
    );
\rgb_g_m10_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(12),
      I1 => rgb_data(14),
      O => \rgb_g_m10_carry__0_i_2_n_0\
    );
\rgb_g_m10_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(11),
      I1 => rgb_data(13),
      O => \rgb_g_m10_carry__0_i_3_n_0\
    );
\rgb_g_m10_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(10),
      I1 => rgb_data(12),
      O => \rgb_g_m10_carry__0_i_4_n_0\
    );
\rgb_g_m10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_g_m10_carry__0_n_0\,
      CO(3) => \NLW_rgb_g_m10_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \rgb_g_m10_carry__1_n_1\,
      CO(1) => \NLW_rgb_g_m10_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \rgb_g_m10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_data(15 downto 14),
      O(3 downto 2) => \NLW_rgb_g_m10_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \rgb_g_m10_carry__1_n_6\,
      O(0) => \rgb_g_m10_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \rgb_g_m10_carry__1_i_1_n_0\,
      S(0) => \rgb_g_m10_carry__1_i_2_n_0\
    );
\rgb_g_m10_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(15),
      O => \rgb_g_m10_carry__1_i_1_n_0\
    );
\rgb_g_m10_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(14),
      O => \rgb_g_m10_carry__1_i_2_n_0\
    );
rgb_g_m10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(9),
      I1 => rgb_data(11),
      O => rgb_g_m10_carry_i_1_n_0
    );
rgb_g_m10_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(8),
      I1 => rgb_data(10),
      O => rgb_g_m10_carry_i_2_n_0
    );
rgb_g_m10_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(9),
      O => rgb_g_m10_carry_i_3_n_0
    );
\rgb_g_m1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(10),
      Q => rgb_g_m1(10)
    );
\rgb_g_m1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(11),
      Q => rgb_g_m1(11)
    );
\rgb_g_m1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(12),
      Q => rgb_g_m1(12)
    );
\rgb_g_m1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(13),
      Q => rgb_g_m1(13)
    );
\rgb_g_m1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(14),
      Q => rgb_g_m1(14)
    );
\rgb_g_m1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(1),
      Q => rgb_g_m1(1)
    );
\rgb_g_m1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(2),
      Q => rgb_g_m1(2)
    );
\rgb_g_m1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(3),
      Q => rgb_g_m1(3)
    );
\rgb_g_m1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(4),
      Q => rgb_g_m1(4)
    );
\rgb_g_m1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(5),
      Q => rgb_g_m1(5)
    );
\rgb_g_m1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(6),
      Q => rgb_g_m1(6)
    );
\rgb_g_m1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(7),
      Q => rgb_g_m1(7)
    );
\rgb_g_m1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(8),
      Q => rgb_g_m1(8)
    );
\rgb_g_m1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m10(9),
      Q => rgb_g_m1(9)
    );
\rgb_g_m20__19_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_g_m20__19_carry_n_0\,
      CO(2) => \rgb_g_m20__19_carry_n_1\,
      CO(1) => \rgb_g_m20__19_carry_n_2\,
      CO(0) => \rgb_g_m20__19_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => rgb_data(9 downto 8),
      DI(1 downto 0) => B"01",
      O(3) => \rgb_g_m20__19_carry_n_4\,
      O(2) => \rgb_g_m20__19_carry_n_5\,
      O(1) => \rgb_g_m20__19_carry_n_6\,
      O(0) => \NLW_rgb_g_m20__19_carry_O_UNCONNECTED\(0),
      S(3) => \rgb_g_m20__19_carry_i_1_n_0\,
      S(2) => \rgb_g_m20__19_carry_i_2_n_0\,
      S(1) => \rgb_g_m20__19_carry_i_3_n_0\,
      S(0) => rgb_data(8)
    );
\rgb_g_m20__19_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_g_m20__19_carry_n_0\,
      CO(3) => \rgb_g_m20__19_carry__0_n_0\,
      CO(2) => \rgb_g_m20__19_carry__0_n_1\,
      CO(1) => \rgb_g_m20__19_carry__0_n_2\,
      CO(0) => \rgb_g_m20__19_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_data(13 downto 10),
      O(3) => \rgb_g_m20__19_carry__0_n_4\,
      O(2) => \rgb_g_m20__19_carry__0_n_5\,
      O(1) => \rgb_g_m20__19_carry__0_n_6\,
      O(0) => \rgb_g_m20__19_carry__0_n_7\,
      S(3) => \rgb_g_m20__19_carry__0_i_1_n_0\,
      S(2) => \rgb_g_m20__19_carry__0_i_2_n_0\,
      S(1) => \rgb_g_m20__19_carry__0_i_3_n_0\,
      S(0) => \rgb_g_m20__19_carry__0_i_4_n_0\
    );
\rgb_g_m20__19_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(13),
      I1 => rgb_data(15),
      O => \rgb_g_m20__19_carry__0_i_1_n_0\
    );
\rgb_g_m20__19_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(12),
      I1 => rgb_data(14),
      O => \rgb_g_m20__19_carry__0_i_2_n_0\
    );
\rgb_g_m20__19_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(11),
      I1 => rgb_data(13),
      O => \rgb_g_m20__19_carry__0_i_3_n_0\
    );
\rgb_g_m20__19_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(10),
      I1 => rgb_data(12),
      O => \rgb_g_m20__19_carry__0_i_4_n_0\
    );
\rgb_g_m20__19_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_g_m20__19_carry__0_n_0\,
      CO(3) => \NLW_rgb_g_m20__19_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \rgb_g_m20__19_carry__1_n_1\,
      CO(1) => \NLW_rgb_g_m20__19_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \rgb_g_m20__19_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_data(15 downto 14),
      O(3 downto 2) => \NLW_rgb_g_m20__19_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \rgb_g_m20__19_carry__1_n_6\,
      O(0) => \rgb_g_m20__19_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \rgb_g_m20__19_carry__1_i_1_n_0\,
      S(0) => \rgb_g_m20__19_carry__1_i_2_n_0\
    );
\rgb_g_m20__19_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(15),
      O => \rgb_g_m20__19_carry__1_i_1_n_0\
    );
\rgb_g_m20__19_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(14),
      O => \rgb_g_m20__19_carry__1_i_2_n_0\
    );
\rgb_g_m20__19_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(9),
      I1 => rgb_data(11),
      O => \rgb_g_m20__19_carry_i_1_n_0\
    );
\rgb_g_m20__19_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(8),
      I1 => rgb_data(10),
      O => \rgb_g_m20__19_carry_i_2_n_0\
    );
\rgb_g_m20__19_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(9),
      O => \rgb_g_m20__19_carry_i_3_n_0\
    );
\rgb_g_m20__41_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_g_m20__41_carry_n_0\,
      CO(2) => \rgb_g_m20__41_carry_n_1\,
      CO(1) => \rgb_g_m20__41_carry_n_2\,
      CO(0) => \rgb_g_m20__41_carry_n_3\,
      CYINIT => '0',
      DI(3) => rgb_data(8),
      DI(2) => \rgb_g_m20_carry__0_n_7\,
      DI(1) => rgb_g_m20_carry_n_4,
      DI(0) => rgb_g_m20_carry_n_5,
      O(3 downto 0) => rgb_g_m20(6 downto 3),
      S(3) => \rgb_g_m20__41_carry_i_1_n_0\,
      S(2) => \rgb_g_m20__41_carry_i_2_n_0\,
      S(1) => \rgb_g_m20__41_carry_i_3_n_0\,
      S(0) => \rgb_g_m20__41_carry_i_4_n_0\
    );
\rgb_g_m20__41_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_g_m20__41_carry_n_0\,
      CO(3) => \rgb_g_m20__41_carry__0_n_0\,
      CO(2) => \rgb_g_m20__41_carry__0_n_1\,
      CO(1) => \rgb_g_m20__41_carry__0_n_2\,
      CO(0) => \rgb_g_m20__41_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rgb_g_m20__41_carry__0_i_1_n_0\,
      DI(2) => \rgb_g_m20__41_carry__0_i_2_n_0\,
      DI(1) => \rgb_g_m20__41_carry__0_i_3_n_0\,
      DI(0) => \rgb_g_m20__41_carry__0_i_4_n_0\,
      O(3 downto 0) => rgb_g_m20(10 downto 7),
      S(3) => \rgb_g_m20__41_carry__0_i_5_n_0\,
      S(2) => \rgb_g_m20__41_carry__0_i_6_n_0\,
      S(1) => \rgb_g_m20__41_carry__0_i_7_n_0\,
      S(0) => \rgb_g_m20__41_carry__0_i_8_n_0\
    );
\rgb_g_m20__41_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \rgb_g_m20__19_carry__0_n_5\,
      I1 => \rgb_g_m20_carry__1_n_7\,
      I2 => rgb_data(11),
      O => \rgb_g_m20__41_carry__0_i_1_n_0\
    );
\rgb_g_m20__41_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \rgb_g_m20__19_carry__0_n_6\,
      I1 => \rgb_g_m20_carry__0_n_4\,
      I2 => rgb_data(10),
      O => \rgb_g_m20__41_carry__0_i_2_n_0\
    );
\rgb_g_m20__41_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \rgb_g_m20__19_carry__0_n_7\,
      I1 => \rgb_g_m20_carry__0_n_5\,
      I2 => rgb_data(9),
      O => \rgb_g_m20__41_carry__0_i_3_n_0\
    );
\rgb_g_m20__41_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_data(9),
      I1 => \rgb_g_m20__19_carry__0_n_7\,
      I2 => \rgb_g_m20_carry__0_n_5\,
      O => \rgb_g_m20__41_carry__0_i_4_n_0\
    );
\rgb_g_m20__41_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \rgb_g_m20__19_carry__0_n_4\,
      I1 => \rgb_g_m20_carry__1_n_6\,
      I2 => rgb_data(12),
      I3 => \rgb_g_m20__41_carry__0_i_1_n_0\,
      O => \rgb_g_m20__41_carry__0_i_5_n_0\
    );
\rgb_g_m20__41_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \rgb_g_m20__19_carry__0_n_5\,
      I1 => \rgb_g_m20_carry__1_n_7\,
      I2 => rgb_data(11),
      I3 => \rgb_g_m20__41_carry__0_i_2_n_0\,
      O => \rgb_g_m20__41_carry__0_i_6_n_0\
    );
\rgb_g_m20__41_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \rgb_g_m20__19_carry__0_n_6\,
      I1 => \rgb_g_m20_carry__0_n_4\,
      I2 => rgb_data(10),
      I3 => \rgb_g_m20__41_carry__0_i_3_n_0\,
      O => \rgb_g_m20__41_carry__0_i_7_n_0\
    );
\rgb_g_m20__41_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \rgb_g_m20__19_carry__0_n_7\,
      I1 => \rgb_g_m20_carry__0_n_5\,
      I2 => rgb_data(9),
      I3 => \rgb_g_m20_carry__0_n_6\,
      I4 => \rgb_g_m20__19_carry_n_4\,
      O => \rgb_g_m20__41_carry__0_i_8_n_0\
    );
\rgb_g_m20__41_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_g_m20__41_carry__0_n_0\,
      CO(3) => \NLW_rgb_g_m20__41_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \rgb_g_m20__41_carry__1_n_1\,
      CO(1) => \rgb_g_m20__41_carry__1_n_2\,
      CO(0) => \rgb_g_m20__41_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \rgb_g_m20__41_carry__1_i_1_n_0\,
      DI(1) => \rgb_g_m20__41_carry__1_i_2_n_0\,
      DI(0) => \rgb_g_m20__41_carry__1_i_3_n_0\,
      O(3 downto 0) => rgb_g_m20(14 downto 11),
      S(3) => \rgb_g_m20__41_carry__1_i_4_n_0\,
      S(2) => \rgb_g_m20__41_carry__1_i_5_n_0\,
      S(1) => \rgb_g_m20__41_carry__1_i_6_n_0\,
      S(0) => \rgb_g_m20__41_carry__1_i_7_n_0\
    );
\rgb_g_m20__41_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \rgb_g_m20_carry__1_n_1\,
      I1 => \rgb_g_m20__19_carry__1_n_6\,
      I2 => rgb_data(14),
      O => \rgb_g_m20__41_carry__1_i_1_n_0\
    );
\rgb_g_m20__41_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \rgb_g_m20_carry__1_n_1\,
      I1 => \rgb_g_m20__19_carry__1_n_7\,
      I2 => rgb_data(13),
      O => \rgb_g_m20__41_carry__1_i_2_n_0\
    );
\rgb_g_m20__41_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \rgb_g_m20__19_carry__0_n_4\,
      I1 => \rgb_g_m20_carry__1_n_6\,
      I2 => rgb_data(12),
      O => \rgb_g_m20__41_carry__1_i_3_n_0\
    );
\rgb_g_m20__41_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => rgb_data(15),
      I1 => \rgb_g_m20__19_carry__1_n_1\,
      I2 => \rgb_g_m20_carry__1_n_1\,
      O => \rgb_g_m20__41_carry__1_i_4_n_0\
    );
\rgb_g_m20__41_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \rgb_g_m20__41_carry__1_i_1_n_0\,
      I1 => \rgb_g_m20_carry__1_n_1\,
      I2 => \rgb_g_m20__19_carry__1_n_1\,
      I3 => rgb_data(15),
      O => \rgb_g_m20__41_carry__1_i_5_n_0\
    );
\rgb_g_m20__41_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \rgb_g_m20_carry__1_n_1\,
      I1 => \rgb_g_m20__19_carry__1_n_6\,
      I2 => rgb_data(14),
      I3 => \rgb_g_m20__41_carry__1_i_2_n_0\,
      O => \rgb_g_m20__41_carry__1_i_6_n_0\
    );
\rgb_g_m20__41_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \rgb_g_m20_carry__1_n_1\,
      I1 => \rgb_g_m20__19_carry__1_n_7\,
      I2 => rgb_data(13),
      I3 => \rgb_g_m20__41_carry__1_i_3_n_0\,
      O => \rgb_g_m20__41_carry__1_i_7_n_0\
    );
\rgb_g_m20__41_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \rgb_g_m20__19_carry_n_4\,
      I1 => \rgb_g_m20_carry__0_n_6\,
      I2 => rgb_data(8),
      O => \rgb_g_m20__41_carry_i_1_n_0\
    );
\rgb_g_m20__41_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rgb_g_m20_carry__0_n_7\,
      I1 => \rgb_g_m20__19_carry_n_5\,
      O => \rgb_g_m20__41_carry_i_2_n_0\
    );
\rgb_g_m20__41_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_g_m20_carry_n_4,
      I1 => \rgb_g_m20__19_carry_n_6\,
      O => \rgb_g_m20__41_carry_i_3_n_0\
    );
\rgb_g_m20__41_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_g_m20_carry_n_5,
      I1 => rgb_g_m20_carry_n_7,
      O => \rgb_g_m20__41_carry_i_4_n_0\
    );
rgb_g_m20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rgb_g_m20_carry_n_0,
      CO(2) => rgb_g_m20_carry_n_1,
      CO(1) => rgb_g_m20_carry_n_2,
      CO(0) => rgb_g_m20_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => rgb_data(9 downto 8),
      DI(1 downto 0) => B"01",
      O(3) => rgb_g_m20_carry_n_4,
      O(2) => rgb_g_m20_carry_n_5,
      O(1) => rgb_g_m20(2),
      O(0) => rgb_g_m20_carry_n_7,
      S(3) => rgb_g_m20_carry_i_1_n_0,
      S(2) => rgb_g_m20_carry_i_2_n_0,
      S(1) => rgb_g_m20_carry_i_3_n_0,
      S(0) => rgb_data(8)
    );
\rgb_g_m20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rgb_g_m20_carry_n_0,
      CO(3) => \rgb_g_m20_carry__0_n_0\,
      CO(2) => \rgb_g_m20_carry__0_n_1\,
      CO(1) => \rgb_g_m20_carry__0_n_2\,
      CO(0) => \rgb_g_m20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_data(13 downto 10),
      O(3) => \rgb_g_m20_carry__0_n_4\,
      O(2) => \rgb_g_m20_carry__0_n_5\,
      O(1) => \rgb_g_m20_carry__0_n_6\,
      O(0) => \rgb_g_m20_carry__0_n_7\,
      S(3) => \rgb_g_m20_carry__0_i_1_n_0\,
      S(2) => \rgb_g_m20_carry__0_i_2_n_0\,
      S(1) => \rgb_g_m20_carry__0_i_3_n_0\,
      S(0) => \rgb_g_m20_carry__0_i_4_n_0\
    );
\rgb_g_m20_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(13),
      I1 => rgb_data(15),
      O => \rgb_g_m20_carry__0_i_1_n_0\
    );
\rgb_g_m20_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(12),
      I1 => rgb_data(14),
      O => \rgb_g_m20_carry__0_i_2_n_0\
    );
\rgb_g_m20_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(11),
      I1 => rgb_data(13),
      O => \rgb_g_m20_carry__0_i_3_n_0\
    );
\rgb_g_m20_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(10),
      I1 => rgb_data(12),
      O => \rgb_g_m20_carry__0_i_4_n_0\
    );
\rgb_g_m20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_g_m20_carry__0_n_0\,
      CO(3) => \NLW_rgb_g_m20_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \rgb_g_m20_carry__1_n_1\,
      CO(1) => \NLW_rgb_g_m20_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \rgb_g_m20_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_data(15 downto 14),
      O(3 downto 2) => \NLW_rgb_g_m20_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \rgb_g_m20_carry__1_n_6\,
      O(0) => \rgb_g_m20_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \rgb_g_m20_carry__1_i_1_n_0\,
      S(0) => \rgb_g_m20_carry__1_i_2_n_0\
    );
\rgb_g_m20_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(15),
      O => \rgb_g_m20_carry__1_i_1_n_0\
    );
\rgb_g_m20_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(14),
      O => \rgb_g_m20_carry__1_i_2_n_0\
    );
rgb_g_m20_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(9),
      I1 => rgb_data(11),
      O => rgb_g_m20_carry_i_1_n_0
    );
rgb_g_m20_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(8),
      I1 => rgb_data(10),
      O => rgb_g_m20_carry_i_2_n_0
    );
rgb_g_m20_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(9),
      O => rgb_g_m20_carry_i_3_n_0
    );
\rgb_g_m2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(10),
      Q => rgb_g_m2(10)
    );
\rgb_g_m2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(11),
      Q => rgb_g_m2(11)
    );
\rgb_g_m2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(12),
      Q => rgb_g_m2(12)
    );
\rgb_g_m2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(13),
      Q => rgb_g_m2(13)
    );
\rgb_g_m2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(14),
      Q => rgb_g_m2(14)
    );
\rgb_g_m2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(2),
      Q => rgb_g_m2(2)
    );
\rgb_g_m2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(3),
      Q => rgb_g_m2(3)
    );
\rgb_g_m2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(4),
      Q => rgb_g_m2(4)
    );
\rgb_g_m2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(5),
      Q => rgb_g_m2(5)
    );
\rgb_g_m2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(6),
      Q => rgb_g_m2(6)
    );
\rgb_g_m2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(7),
      Q => rgb_g_m2(7)
    );
\rgb_g_m2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(8),
      Q => rgb_g_m2(8)
    );
\rgb_g_m2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_g_m20(9),
      Q => rgb_g_m2(9)
    );
\rgb_r_m0[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(18),
      I1 => rgb_data(23),
      O => \rgb_r_m0[8]_i_2_n_0\
    );
\rgb_r_m0[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(17),
      I1 => rgb_data(22),
      O => \rgb_r_m0[8]_i_3_n_0\
    );
\rgb_r_m0[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(16),
      I1 => rgb_data(21),
      O => \rgb_r_m0[8]_i_4_n_0\
    );
\rgb_r_m0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m00(10),
      Q => rgb_r_m0(10)
    );
\rgb_r_m0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m00(11),
      Q => rgb_r_m0(11)
    );
\rgb_r_m0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m00(12),
      Q => rgb_r_m0(12)
    );
\rgb_r_m0_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_r_m0_reg[8]_i_1_n_0\,
      CO(3) => \rgb_r_m0_reg[12]_i_1_n_0\,
      CO(2) => \rgb_r_m0_reg[12]_i_1_n_1\,
      CO(1) => \rgb_r_m0_reg[12]_i_1_n_2\,
      CO(0) => \rgb_r_m0_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rgb_r_m00(12 downto 9),
      S(3 downto 0) => rgb_data(22 downto 19)
    );
\rgb_r_m0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m00(13),
      Q => rgb_r_m0(13)
    );
\rgb_r_m0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m00(14),
      Q => rgb_r_m0(14)
    );
\rgb_r_m0_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_r_m0_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_rgb_r_m0_reg[14]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => rgb_r_m00(14),
      CO(0) => \NLW_rgb_r_m0_reg[14]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_rgb_r_m0_reg[14]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => rgb_r_m00(13),
      S(3 downto 1) => B"001",
      S(0) => rgb_data(23)
    );
\rgb_r_m0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(16),
      Q => rgb_r_m0(1)
    );
\rgb_r_m0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(17),
      Q => rgb_r_m0(2)
    );
\rgb_r_m0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_data(18),
      Q => rgb_r_m0(3)
    );
\rgb_r_m0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m00(5),
      Q => rgb_r_m0(5)
    );
\rgb_r_m0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m00(6),
      Q => rgb_r_m0(6)
    );
\rgb_r_m0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m00(7),
      Q => rgb_r_m0(7)
    );
\rgb_r_m0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m00(8),
      Q => rgb_r_m0(8)
    );
\rgb_r_m0_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_r_m0_reg[8]_i_1_n_0\,
      CO(2) => \rgb_r_m0_reg[8]_i_1_n_1\,
      CO(1) => \rgb_r_m0_reg[8]_i_1_n_2\,
      CO(0) => \rgb_r_m0_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => rgb_data(18 downto 16),
      DI(0) => '0',
      O(3 downto 0) => rgb_r_m00(8 downto 5),
      S(3) => \rgb_r_m0[8]_i_2_n_0\,
      S(2) => \rgb_r_m0[8]_i_3_n_0\,
      S(1) => \rgb_r_m0[8]_i_4_n_0\,
      S(0) => rgb_data(20)
    );
\rgb_r_m0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m00(9),
      Q => rgb_r_m0(9)
    );
\rgb_r_m10__19_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_r_m10__19_carry_n_0\,
      CO(2) => \rgb_r_m10__19_carry_n_1\,
      CO(1) => \rgb_r_m10__19_carry_n_2\,
      CO(0) => \rgb_r_m10__19_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => rgb_data(18 downto 16),
      DI(0) => '0',
      O(3 downto 0) => rgb_r_m10(7 downto 4),
      S(3) => \rgb_r_m10__19_carry_i_1_n_0\,
      S(2) => \rgb_r_m10__19_carry_i_2_n_0\,
      S(1) => \rgb_r_m10__19_carry_i_3_n_0\,
      S(0) => rgb_r_m10_carry_n_4
    );
\rgb_r_m10__19_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_r_m10__19_carry_n_0\,
      CO(3) => \rgb_r_m10__19_carry__0_n_0\,
      CO(2) => \rgb_r_m10__19_carry__0_n_1\,
      CO(1) => \rgb_r_m10__19_carry__0_n_2\,
      CO(0) => \rgb_r_m10__19_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_data(22 downto 19),
      O(3 downto 0) => rgb_r_m10(11 downto 8),
      S(3) => \rgb_r_m10__19_carry__0_i_1_n_0\,
      S(2) => \rgb_r_m10__19_carry__0_i_2_n_0\,
      S(1) => \rgb_r_m10__19_carry__0_i_3_n_0\,
      S(0) => \rgb_r_m10__19_carry__0_i_4_n_0\
    );
\rgb_r_m10__19_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(22),
      I1 => \rgb_r_m10_carry__1_n_5\,
      O => \rgb_r_m10__19_carry__0_i_1_n_0\
    );
\rgb_r_m10__19_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(21),
      I1 => \rgb_r_m10_carry__1_n_6\,
      O => \rgb_r_m10__19_carry__0_i_2_n_0\
    );
\rgb_r_m10__19_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(20),
      I1 => \rgb_r_m10_carry__1_n_7\,
      O => \rgb_r_m10__19_carry__0_i_3_n_0\
    );
\rgb_r_m10__19_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(19),
      I1 => \rgb_r_m10_carry__0_n_4\,
      O => \rgb_r_m10__19_carry__0_i_4_n_0\
    );
\rgb_r_m10__19_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_r_m10__19_carry__0_n_0\,
      CO(3 downto 1) => \NLW_rgb_r_m10__19_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \rgb_r_m10__19_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => rgb_data(23),
      O(3 downto 2) => \NLW_rgb_r_m10__19_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => rgb_r_m10(13 downto 12),
      S(3 downto 2) => B"00",
      S(1) => \rgb_r_m10_carry__1_n_5\,
      S(0) => \rgb_r_m10__19_carry__1_i_1_n_0\
    );
\rgb_r_m10__19_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(23),
      I1 => \rgb_r_m10_carry__1_n_5\,
      O => \rgb_r_m10__19_carry__1_i_1_n_0\
    );
\rgb_r_m10__19_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(18),
      I1 => \rgb_r_m10_carry__0_n_5\,
      O => \rgb_r_m10__19_carry_i_1_n_0\
    );
\rgb_r_m10__19_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(17),
      I1 => \rgb_r_m10_carry__0_n_6\,
      O => \rgb_r_m10__19_carry_i_2_n_0\
    );
\rgb_r_m10__19_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(16),
      I1 => \rgb_r_m10_carry__0_n_7\,
      O => \rgb_r_m10__19_carry_i_3_n_0\
    );
rgb_r_m10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rgb_r_m10_carry_n_0,
      CO(2) => rgb_r_m10_carry_n_1,
      CO(1) => rgb_r_m10_carry_n_2,
      CO(0) => rgb_r_m10_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => rgb_data(17 downto 16),
      DI(1 downto 0) => B"01",
      O(3) => rgb_r_m10_carry_n_4,
      O(2 downto 1) => rgb_r_m10(3 downto 2),
      O(0) => NLW_rgb_r_m10_carry_O_UNCONNECTED(0),
      S(3) => rgb_r_m10_carry_i_1_n_0,
      S(2) => rgb_r_m10_carry_i_2_n_0,
      S(1) => rgb_r_m10_carry_i_3_n_0,
      S(0) => rgb_data(16)
    );
\rgb_r_m10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rgb_r_m10_carry_n_0,
      CO(3) => \rgb_r_m10_carry__0_n_0\,
      CO(2) => \rgb_r_m10_carry__0_n_1\,
      CO(1) => \rgb_r_m10_carry__0_n_2\,
      CO(0) => \rgb_r_m10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_data(21 downto 18),
      O(3) => \rgb_r_m10_carry__0_n_4\,
      O(2) => \rgb_r_m10_carry__0_n_5\,
      O(1) => \rgb_r_m10_carry__0_n_6\,
      O(0) => \rgb_r_m10_carry__0_n_7\,
      S(3) => \rgb_r_m10_carry__0_i_1_n_0\,
      S(2) => \rgb_r_m10_carry__0_i_2_n_0\,
      S(1) => \rgb_r_m10_carry__0_i_3_n_0\,
      S(0) => \rgb_r_m10_carry__0_i_4_n_0\
    );
\rgb_r_m10_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(21),
      I1 => rgb_data(23),
      O => \rgb_r_m10_carry__0_i_1_n_0\
    );
\rgb_r_m10_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(20),
      I1 => rgb_data(22),
      O => \rgb_r_m10_carry__0_i_2_n_0\
    );
\rgb_r_m10_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(19),
      I1 => rgb_data(21),
      O => \rgb_r_m10_carry__0_i_3_n_0\
    );
\rgb_r_m10_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(18),
      I1 => rgb_data(20),
      O => \rgb_r_m10_carry__0_i_4_n_0\
    );
\rgb_r_m10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_r_m10_carry__0_n_0\,
      CO(3 downto 2) => \NLW_rgb_r_m10_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rgb_r_m10_carry__1_n_2\,
      CO(0) => \rgb_r_m10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_data(23 downto 22),
      O(3) => \NLW_rgb_r_m10_carry__1_O_UNCONNECTED\(3),
      O(2) => \rgb_r_m10_carry__1_n_5\,
      O(1) => \rgb_r_m10_carry__1_n_6\,
      O(0) => \rgb_r_m10_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \rgb_r_m10_carry__1_i_1_n_0\,
      S(0) => \rgb_r_m10_carry__1_i_2_n_0\
    );
\rgb_r_m10_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(23),
      O => \rgb_r_m10_carry__1_i_1_n_0\
    );
\rgb_r_m10_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(22),
      O => \rgb_r_m10_carry__1_i_2_n_0\
    );
rgb_r_m10_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(17),
      I1 => rgb_data(19),
      O => rgb_r_m10_carry_i_1_n_0
    );
rgb_r_m10_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(16),
      I1 => rgb_data(18),
      O => rgb_r_m10_carry_i_2_n_0
    );
rgb_r_m10_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(17),
      O => rgb_r_m10_carry_i_3_n_0
    );
\rgb_r_m1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(10),
      Q => rgb_r_m1(10)
    );
\rgb_r_m1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(11),
      Q => rgb_r_m1(11)
    );
\rgb_r_m1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(12),
      Q => rgb_r_m1(12)
    );
\rgb_r_m1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(13),
      Q => rgb_r_m1(13)
    );
\rgb_r_m1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(2),
      Q => rgb_r_m1(2)
    );
\rgb_r_m1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(3),
      Q => rgb_r_m1(3)
    );
\rgb_r_m1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(4),
      Q => rgb_r_m1(4)
    );
\rgb_r_m1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(5),
      Q => rgb_r_m1(5)
    );
\rgb_r_m1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(6),
      Q => rgb_r_m1(6)
    );
\rgb_r_m1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(7),
      Q => rgb_r_m1(7)
    );
\rgb_r_m1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(8),
      Q => rgb_r_m1(8)
    );
\rgb_r_m1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m10(9),
      Q => rgb_r_m1(9)
    );
\rgb_r_m20__19_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rgb_r_m20__19_carry_n_0\,
      CO(2) => \rgb_r_m20__19_carry_n_1\,
      CO(1) => \rgb_r_m20__19_carry_n_2\,
      CO(0) => \rgb_r_m20__19_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => rgb_data(18 downto 16),
      DI(0) => '0',
      O(3 downto 0) => rgb_r_m20(8 downto 5),
      S(3) => \rgb_r_m20__19_carry_i_1_n_0\,
      S(2) => \rgb_r_m20__19_carry_i_2_n_0\,
      S(1) => \rgb_r_m20__19_carry_i_3_n_0\,
      S(0) => rgb_r_m20_carry_n_6
    );
\rgb_r_m20__19_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_r_m20__19_carry_n_0\,
      CO(3) => \rgb_r_m20__19_carry__0_n_0\,
      CO(2) => \rgb_r_m20__19_carry__0_n_1\,
      CO(1) => \rgb_r_m20__19_carry__0_n_2\,
      CO(0) => \rgb_r_m20__19_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_data(22 downto 19),
      O(3 downto 0) => rgb_r_m20(12 downto 9),
      S(3) => \rgb_r_m20__19_carry__0_i_1_n_0\,
      S(2) => \rgb_r_m20__19_carry__0_i_2_n_0\,
      S(1) => \rgb_r_m20__19_carry__0_i_3_n_0\,
      S(0) => \rgb_r_m20__19_carry__0_i_4_n_0\
    );
\rgb_r_m20__19_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(22),
      I1 => \rgb_r_m20_carry__1_n_7\,
      O => \rgb_r_m20__19_carry__0_i_1_n_0\
    );
\rgb_r_m20__19_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(21),
      I1 => \rgb_r_m20_carry__0_n_4\,
      O => \rgb_r_m20__19_carry__0_i_2_n_0\
    );
\rgb_r_m20__19_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(20),
      I1 => \rgb_r_m20_carry__0_n_5\,
      O => \rgb_r_m20__19_carry__0_i_3_n_0\
    );
\rgb_r_m20__19_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(19),
      I1 => \rgb_r_m20_carry__0_n_6\,
      O => \rgb_r_m20__19_carry__0_i_4_n_0\
    );
\rgb_r_m20__19_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_r_m20__19_carry__0_n_0\,
      CO(3 downto 1) => \NLW_rgb_r_m20__19_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \rgb_r_m20__19_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => rgb_data(23),
      O(3 downto 2) => \NLW_rgb_r_m20__19_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => rgb_r_m20(14 downto 13),
      S(3 downto 2) => B"00",
      S(1) => \rgb_r_m20_carry__1_n_5\,
      S(0) => \rgb_r_m20__19_carry__1_i_1_n_0\
    );
\rgb_r_m20__19_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(23),
      I1 => \rgb_r_m20_carry__1_n_6\,
      O => \rgb_r_m20__19_carry__1_i_1_n_0\
    );
\rgb_r_m20__19_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(18),
      I1 => \rgb_r_m20_carry__0_n_7\,
      O => \rgb_r_m20__19_carry_i_1_n_0\
    );
\rgb_r_m20__19_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(17),
      I1 => rgb_r_m20_carry_n_4,
      O => \rgb_r_m20__19_carry_i_2_n_0\
    );
\rgb_r_m20__19_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rgb_data(16),
      I1 => rgb_r_m20_carry_n_5,
      O => \rgb_r_m20__19_carry_i_3_n_0\
    );
rgb_r_m20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rgb_r_m20_carry_n_0,
      CO(2) => rgb_r_m20_carry_n_1,
      CO(1) => rgb_r_m20_carry_n_2,
      CO(0) => rgb_r_m20_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => rgb_data(17 downto 16),
      DI(1 downto 0) => B"01",
      O(3) => rgb_r_m20_carry_n_4,
      O(2) => rgb_r_m20_carry_n_5,
      O(1) => rgb_r_m20_carry_n_6,
      O(0) => rgb_r_m20(4),
      S(3) => rgb_r_m20_carry_i_1_n_0,
      S(2) => rgb_r_m20_carry_i_2_n_0,
      S(1) => rgb_r_m20_carry_i_3_n_0,
      S(0) => rgb_data(16)
    );
\rgb_r_m20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rgb_r_m20_carry_n_0,
      CO(3) => \rgb_r_m20_carry__0_n_0\,
      CO(2) => \rgb_r_m20_carry__0_n_1\,
      CO(1) => \rgb_r_m20_carry__0_n_2\,
      CO(0) => \rgb_r_m20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rgb_data(21 downto 18),
      O(3) => \rgb_r_m20_carry__0_n_4\,
      O(2) => \rgb_r_m20_carry__0_n_5\,
      O(1) => \rgb_r_m20_carry__0_n_6\,
      O(0) => \rgb_r_m20_carry__0_n_7\,
      S(3) => \rgb_r_m20_carry__0_i_1_n_0\,
      S(2) => \rgb_r_m20_carry__0_i_2_n_0\,
      S(1) => \rgb_r_m20_carry__0_i_3_n_0\,
      S(0) => \rgb_r_m20_carry__0_i_4_n_0\
    );
\rgb_r_m20_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(21),
      I1 => rgb_data(23),
      O => \rgb_r_m20_carry__0_i_1_n_0\
    );
\rgb_r_m20_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(20),
      I1 => rgb_data(22),
      O => \rgb_r_m20_carry__0_i_2_n_0\
    );
\rgb_r_m20_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(19),
      I1 => rgb_data(21),
      O => \rgb_r_m20_carry__0_i_3_n_0\
    );
\rgb_r_m20_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(18),
      I1 => rgb_data(20),
      O => \rgb_r_m20_carry__0_i_4_n_0\
    );
\rgb_r_m20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rgb_r_m20_carry__0_n_0\,
      CO(3 downto 2) => \NLW_rgb_r_m20_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rgb_r_m20_carry__1_n_2\,
      CO(0) => \rgb_r_m20_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => rgb_data(23 downto 22),
      O(3) => \NLW_rgb_r_m20_carry__1_O_UNCONNECTED\(3),
      O(2) => \rgb_r_m20_carry__1_n_5\,
      O(1) => \rgb_r_m20_carry__1_n_6\,
      O(0) => \rgb_r_m20_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \rgb_r_m20_carry__1_i_1_n_0\,
      S(0) => \rgb_r_m20_carry__1_i_2_n_0\
    );
\rgb_r_m20_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(23),
      O => \rgb_r_m20_carry__1_i_1_n_0\
    );
\rgb_r_m20_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(22),
      O => \rgb_r_m20_carry__1_i_2_n_0\
    );
rgb_r_m20_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(17),
      I1 => rgb_data(19),
      O => rgb_r_m20_carry_i_1_n_0
    );
rgb_r_m20_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rgb_data(16),
      I1 => rgb_data(18),
      O => rgb_r_m20_carry_i_2_n_0
    );
rgb_r_m20_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rgb_data(17),
      O => rgb_r_m20_carry_i_3_n_0
    );
\rgb_r_m2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m20(10),
      Q => rgb_r_m2(10)
    );
\rgb_r_m2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m20(11),
      Q => rgb_r_m2(11)
    );
\rgb_r_m2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m20(12),
      Q => rgb_r_m2(12)
    );
\rgb_r_m2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m20(13),
      Q => rgb_r_m2(13)
    );
\rgb_r_m2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m20(14),
      Q => rgb_r_m2(14)
    );
\rgb_r_m2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m20(4),
      Q => rgb_r_m2(4)
    );
\rgb_r_m2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m20(5),
      Q => rgb_r_m2(5)
    );
\rgb_r_m2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m20(6),
      Q => rgb_r_m2(6)
    );
\rgb_r_m2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m20(7),
      Q => rgb_r_m2(7)
    );
\rgb_r_m2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m20(8),
      Q => rgb_r_m2(8)
    );
\rgb_r_m2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_r_m20(9),
      Q => rgb_r_m2(9)
    );
\rgb_valid_d_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_valid,
      Q => rgb_valid_d(0)
    );
\rgb_valid_d_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_valid_d(0),
      Q => rgb_valid_d(1)
    );
\rgb_valid_d_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_valid_d(1),
      Q => ycbcr_valid
    );
\rgb_vsync_d[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \rgb_vsync_d[2]_i_1_n_0\
    );
\rgb_vsync_d_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_vsync,
      Q => rgb_vsync_d(0)
    );
\rgb_vsync_d_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_vsync_d(0),
      Q => rgb_vsync_d(1)
    );
\rgb_vsync_d_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \rgb_vsync_d[2]_i_1_n_0\,
      D => rgb_vsync_d(1),
      Q => ycbcr_vsync
    );
\ycbcr_data[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cr1(0),
      O => ycbcr_data(0)
    );
\ycbcr_data[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cb1(2),
      O => ycbcr_data(10)
    );
\ycbcr_data[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cb1(3),
      O => ycbcr_data(11)
    );
\ycbcr_data[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cb1(4),
      O => ycbcr_data(12)
    );
\ycbcr_data[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cb1(5),
      O => ycbcr_data(13)
    );
\ycbcr_data[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cb1(6),
      O => ycbcr_data(14)
    );
\ycbcr_data[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cb1(7),
      O => ycbcr_data(15)
    );
\ycbcr_data[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_y1(0),
      O => ycbcr_data(16)
    );
\ycbcr_data[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_y1(1),
      O => ycbcr_data(17)
    );
\ycbcr_data[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_y1(2),
      O => ycbcr_data(18)
    );
\ycbcr_data[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_y1(3),
      O => ycbcr_data(19)
    );
\ycbcr_data[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cr1(1),
      O => ycbcr_data(1)
    );
\ycbcr_data[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_y1(4),
      O => ycbcr_data(20)
    );
\ycbcr_data[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_y1(5),
      O => ycbcr_data(21)
    );
\ycbcr_data[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_y1(6),
      O => ycbcr_data(22)
    );
\ycbcr_data[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_y1(7),
      O => ycbcr_data(23)
    );
\ycbcr_data[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cr1(2),
      O => ycbcr_data(2)
    );
\ycbcr_data[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cr1(3),
      O => ycbcr_data(3)
    );
\ycbcr_data[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cr1(4),
      O => ycbcr_data(4)
    );
\ycbcr_data[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cr1(5),
      O => ycbcr_data(5)
    );
\ycbcr_data[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cr1(6),
      O => ycbcr_data(6)
    );
\ycbcr_data[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cr1(7),
      O => ycbcr_data(7)
    );
\ycbcr_data[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cb1(0),
      O => ycbcr_data(8)
    );
\ycbcr_data[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => img_cb1(1),
      O => ycbcr_data(9)
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
    rgb_vsync : in STD_LOGIC;
    rgb_clken : in STD_LOGIC;
    rgb_valid : in STD_LOGIC;
    rgb_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ycbcr_vsync : out STD_LOGIC;
    ycbcr_clken : out STD_LOGIC;
    ycbcr_valid : out STD_LOGIC;
    ycbcr_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rgb_data_syn : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_rgb2ycbcr_0_1,rgb2ycbcr,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "rgb2ycbcr,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rgb_valid : signal is "xilinx.com:interface:vid_io:1.0 rgb_in ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of rgb_vsync : signal is "xilinx.com:interface:vid_io:1.0 rgb_in VSYNC";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ycbcr_valid : signal is "xilinx.com:interface:vid_io:1.0 ycbcr ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of ycbcr_vsync : signal is "xilinx.com:interface:vid_io:1.0 ycbcr VSYNC";
  attribute X_INTERFACE_INFO of rgb_data : signal is "xilinx.com:interface:vid_io:1.0 rgb_in DATA";
  attribute X_INTERFACE_INFO of ycbcr_data : signal is "xilinx.com:interface:vid_io:1.0 ycbcr DATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2ycbcr
     port map (
      Q(0) => ycbcr_clken,
      clk => clk,
      rgb_clken => rgb_clken,
      rgb_data(23 downto 0) => rgb_data(23 downto 0),
      rgb_data_syn(23 downto 0) => rgb_data_syn(23 downto 0),
      rgb_valid => rgb_valid,
      rgb_vsync => rgb_vsync,
      rst_n => rst_n,
      ycbcr_data(23 downto 0) => ycbcr_data(23 downto 0),
      ycbcr_valid => ycbcr_valid,
      ycbcr_vsync => ycbcr_vsync
    );
end STRUCTURE;
