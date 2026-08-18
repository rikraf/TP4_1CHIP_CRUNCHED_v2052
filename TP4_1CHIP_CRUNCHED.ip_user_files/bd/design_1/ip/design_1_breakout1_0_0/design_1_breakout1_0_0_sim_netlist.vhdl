-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Mon Mar  2 13:52:02 2026
-- Host        : richardraffanti running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/richardraffanti/xilproj/TP4_1CHIP_RAW_V20252/TP4_1CHIP_RAW_V20252.gen/sources_1/bd/design_1/ip/design_1_breakout1_0_0/design_1_breakout1_0_0_sim_netlist.vhdl
-- Design      : design_1_breakout1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu37p-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_breakout1_0_0 is
  port (
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    do_0 : out STD_LOGIC;
    do_1 : out STD_LOGIC;
    do_2 : out STD_LOGIC;
    do_3 : out STD_LOGIC;
    do_4 : out STD_LOGIC;
    do_5 : out STD_LOGIC;
    do_6 : out STD_LOGIC;
    do_7 : out STD_LOGIC;
    do_8 : out STD_LOGIC;
    do_9 : out STD_LOGIC;
    do_10 : out STD_LOGIC;
    do_11 : out STD_LOGIC;
    do_12 : out STD_LOGIC;
    do_13 : out STD_LOGIC;
    do_14 : out STD_LOGIC;
    do_15 : out STD_LOGIC;
    do_16 : out STD_LOGIC;
    do_17 : out STD_LOGIC;
    do_18 : out STD_LOGIC;
    do_19 : out STD_LOGIC;
    do_31_20 : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_breakout1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_breakout1_0_0 : entity is "design_1_breakout1_0_0,breakout1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_breakout1_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_breakout1_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_breakout1_0_0 : entity is "breakout1,Vivado 2025.2";
end design_1_breakout1_0_0;

architecture STRUCTURE of design_1_breakout1_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^din\(31 downto 0) <= din(31 downto 0);
  do_0 <= \^din\(0);
  do_1 <= \^din\(1);
  do_10 <= \^din\(10);
  do_11 <= \^din\(11);
  do_12 <= \^din\(12);
  do_13 <= \^din\(13);
  do_14 <= \^din\(14);
  do_15 <= \^din\(15);
  do_16 <= \^din\(16);
  do_17 <= \^din\(17);
  do_18 <= \^din\(18);
  do_19 <= \^din\(19);
  do_2 <= \^din\(2);
  do_3 <= \^din\(3);
  do_31_20(11 downto 0) <= \^din\(31 downto 20);
  do_4 <= \^din\(4);
  do_5 <= \^din\(5);
  do_6 <= \^din\(6);
  do_7 <= \^din\(7);
  do_8 <= \^din\(8);
  do_9 <= \^din\(9);
end STRUCTURE;
