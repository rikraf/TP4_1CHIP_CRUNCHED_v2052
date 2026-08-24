---------------------------------------------------------------------------------------------------------------------------------
-- Copyright (c) Sequent Logic. All Rights Reserved.
---------------------------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.MATH_REAL.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.all;

-- Uses a portion of the input data stream to pull a value from a lookup table located in BRAM. the
-- value is then passed out of the module as an appendage to the USER bits (added MSB).
entity AXIS_LUT is
generic(
	C_CTRL_ADDR_WIDTH : integer range 12 to 32 := 12; -- Width of the BRAM controllers address bus.
	C_AXIS_DATA_WIDTH : integer range 8 to 1024 := 32; -- Width of the data buses.
	C_AXIS_USER_WIDTH : integer range 0 to 1024 := 0; -- Width of the incoming user bus.
	C_INDEX_START : integer range 0 to 1023 := 0; -- Starting bit in S_AXIS_TDATA of the index (BRAM item address).
	C_INDEX_WIDTH : integer range 3 to 64 := 16; -- Width (in bits) of the index (BRAM item address).
	C_VALUE_WIDTH : integer range 3 to 32 := 16 -- Width (in bits) of the value to pull from the table.
);
port(
	ACLK : in std_logic;
	ARESETN : in std_logic;

	-- BRAM Gain Lookup Interface
	BRAM_ADDR : in std_logic_vector(C_CTRL_ADDR_WIDTH-1 downto 0);
	BRAM_CLK : in std_logic;
	BRAM_WRDATA : in std_logic_vector(31 downto 0);
	BRAM_RDDATA : out std_logic_vector(31 downto 0);
	BRAM_EN : in std_logic;
	BRAM_RST : in std_logic;
	BRAM_WE : in std_logic_vector(3 downto 0);

	S_AXIS_TUSER : in std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
	S_AXIS_TDATA : in std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
	S_AXIS_TVALID : in std_logic;

	M_AXIS_TUSER : out std_logic_vector(C_AXIS_USER_WIDTH+C_VALUE_WIDTH-1 downto 0);
	M_AXIS_TDATA : out std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0) := (others => '0');
	M_AXIS_TVALID : out std_logic := '0'
);
end;

architecture RTL of AXIS_LUT is

constant C_BRAM_ADDR_WIDTH : integer := integer(ceil(log2(real(((2**C_INDEX_WIDTH)*C_VALUE_WIDTH)/32))));

signal lu_addr : std_logic_vector(C_INDEX_WIDTH-1 downto 0);

begin

lu_addr <= S_AXIS_TDATA(C_INDEX_START+C_INDEX_WIDTH-1 downto C_INDEX_START);

-- Delay the bus for two clock cycles why we lookup the values.
FIRST_DELAY: entity work.AXIS_UNI_BUFFER
generic map(
	C_AXIS_DATA_WIDTH => C_AXIS_DATA_WIDTH,
	C_AXIS_USER_WIDTH => C_AXIS_USER_WIDTH,
	C_NUM_STAGES => 2
)
port map(
	ACLK => ACLK,
	ARESETN => ARESETN,
	S_AXIS_TUSER => S_AXIS_TUSER,
	S_AXIS_TDATA => S_AXIS_TDATA,
	S_AXIS_TVALID => S_AXIS_TVALID,
	M_AXIS_TUSER => M_AXIS_TUSER(C_AXIS_USER_WIDTH-1 downto 0),
	M_AXIS_TDATA => M_AXIS_TDATA,
	M_AXIS_TVALID => M_AXIS_TVALID
);

-- Looks up the value.
LOOKUP: entity work.VAL_LOOKUP
generic map(
	C_ADDR_WIDTH => C_INDEX_WIDTH,
	C_VAL_WIDTH => C_VALUE_WIDTH
)
port map(
	CLK => ACLK,
	RESETN => ARESETN,
	BRAM_ADDR => BRAM_ADDR(C_BRAM_ADDR_WIDTH+1 downto 2),
	BRAM_CLK => BRAM_CLK,
	BRAM_WRDATA => BRAM_WRDATA,
	BRAM_RDDATA => BRAM_RDDATA,
	BRAM_EN => BRAM_EN,
	BRAM_RST => BRAM_RST,
	BRAM_WE => BRAM_WE,
	ADDR => lu_addr,
	VAL => M_AXIS_TUSER(C_AXIS_USER_WIDTH+C_VALUE_WIDTH-1 downto C_AXIS_USER_WIDTH)
);

end;