-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: sequentlogic.com:Common:AXIS_GAIN_OFFS:1.0
-- IP Revision: 9

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY xil_defaultlib;
USE xil_defaultlib.AXIS_GAIN_OFFS;

ENTITY design_1_AXIS_GAIN_OFFS_0_0 IS
  PORT (
    ACLK : IN STD_LOGIC;
    ARESETN : IN STD_LOGIC;
    S_AXIS_TUSER : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXIS_TDATA : IN STD_LOGIC_VECTOR(95 DOWNTO 0);
    S_AXIS_TVALID : IN STD_LOGIC;
    M_AXIS_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M_AXIS_TDATA : OUT STD_LOGIC_VECTOR(95 DOWNTO 0);
    M_AXIS_TVALID : OUT STD_LOGIC;
    NEG_VAL_TOG : OUT STD_LOGIC;
    OVERFLOW_TOG : OUT STD_LOGIC
  );
END design_1_AXIS_GAIN_OFFS_0_0;

ARCHITECTURE design_1_AXIS_GAIN_OFFS_0_0_arch OF design_1_AXIS_GAIN_OFFS_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_AXIS_GAIN_OFFS_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT AXIS_GAIN_OFFS IS
    GENERIC (
      C_AXIS_USER_WIDTH : INTEGER;
      C_AXIS_DATA_WIDTH : INTEGER;
      C_FIELD_START : INTEGER;
      C_FIELD_WIDTH : INTEGER;
      C_GAIN_WIDTH : INTEGER;
      C_OFFSET_WIDTH : INTEGER;
      C_FRACT_WIDTH : INTEGER
    );
    PORT (
      ACLK : IN STD_LOGIC;
      ARESETN : IN STD_LOGIC;
      S_AXIS_TUSER : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXIS_TDATA : IN STD_LOGIC_VECTOR(95 DOWNTO 0);
      S_AXIS_TVALID : IN STD_LOGIC;
      M_AXIS_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M_AXIS_TDATA : OUT STD_LOGIC_VECTOR(95 DOWNTO 0);
      M_AXIS_TVALID : OUT STD_LOGIC;
      NEG_VAL_TOG : OUT STD_LOGIC;
      OVERFLOW_TOG : OUT STD_LOGIC
    );
  END COMPONENT AXIS_GAIN_OFFS;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 ACLK CLK";
  ATTRIBUTE X_INTERFACE_MODE OF ACLK: SIGNAL IS "slave ACLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ACLK: SIGNAL IS "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET ARESETN, FREQ_HZ 160000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_100, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ARESETN: SIGNAL IS "xilinx.com:signal:reset:1.0 ARESETN RST";
  ATTRIBUTE X_INTERFACE_MODE OF ARESETN: SIGNAL IS "slave ARESETN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ARESETN: SIGNAL IS "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  ATTRIBUTE X_INTERFACE_MODE OF M_AXIS_TUSER: SIGNAL IS "master M_AXIS";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M_AXIS_TUSER: SIGNAL IS "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 160000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_100, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TUSER";
  ATTRIBUTE X_INTERFACE_MODE OF S_AXIS_TUSER: SIGNAL IS "slave S_AXIS";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S_AXIS_TUSER: SIGNAL IS "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 12, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 32, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 160000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_100, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
BEGIN
  U0 : AXIS_GAIN_OFFS
    GENERIC MAP (
      C_AXIS_USER_WIDTH => 32,
      C_AXIS_DATA_WIDTH => 96,
      C_FIELD_START => 0,
      C_FIELD_WIDTH => 17,
      C_GAIN_WIDTH => 16,
      C_OFFSET_WIDTH => 16,
      C_FRACT_WIDTH => 8
    )
    PORT MAP (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S_AXIS_TUSER => S_AXIS_TUSER,
      S_AXIS_TDATA => S_AXIS_TDATA,
      S_AXIS_TVALID => S_AXIS_TVALID,
      M_AXIS_TUSER => M_AXIS_TUSER,
      M_AXIS_TDATA => M_AXIS_TDATA,
      M_AXIS_TVALID => M_AXIS_TVALID,
      NEG_VAL_TOG => NEG_VAL_TOG,
      OVERFLOW_TOG => OVERFLOW_TOG
    );
END design_1_AXIS_GAIN_OFFS_0_0_arch;
