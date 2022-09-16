-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Thu Sep 15 10:23:38 2022
-- Host        : Zou running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/xilinx_FPGA_prj/my_fpga_prj/ov5640_gesture/ov5640_gesture.gen/sources_1/bd/system/ip/system_rgb2ycbcr_0_1/system_rgb2ycbcr_0_1_stub.vhdl
-- Design      : system_rgb2ycbcr_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_rgb2ycbcr_0_1 is
  Port ( 
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

end system_rgb2ycbcr_0_1;

architecture stub of system_rgb2ycbcr_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,rgb_vsync,rgb_clken,rgb_valid,rgb_data[23:0],ycbcr_vsync,ycbcr_clken,ycbcr_valid,ycbcr_data[23:0],rgb_data_syn[23:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rgb2ycbcr,Vivado 2022.1";
begin
end;
