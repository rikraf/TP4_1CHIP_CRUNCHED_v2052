---------------------------------------------------------------------------------------------------------------------------------
-- Copyright (c) Sequent Logic. All Rights Reserved.
---------------------------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.all;
use IEEE.MATH_REAL.all;

-- Takes in AXIS Stream data and applies a gain and offset to a portion of it using values pulled from TUSER.
--
-- Gain and Offset values are assumed to be signed fixed point data. The sizes can be different, but the fractional
-- portion must be the same. The format is below:
--
-- Gain:
-- |<- Sign Bit
-- |--------C_GAIN_WIDTH--------|
--            |--C_FRACT_WIDTH--|
-- MSb       .                LSb
--
-- Offset:
-- |<- Sign Bit
-- |--------C_OFFSET_WIDTH--------|
--            |---C_FRACT_WIDTH---|
-- MSb       .                  LSb
--
--
-- The incoming data on S_AXIS_TUSER can be larger than the gain and offset (additional data) which will be passed
-- through. The gain and offset are removed from TUSER in this module. The format for the data on TUSER is the
-- following:
--
-- [ Gain ][ Offset ][ Additional Data (optional) ]
-- MSb                                          LSb
entity AXIS_GAIN_OFFS is
generic(
	C_AXIS_USER_WIDTH : integer range 0 to 1024 := 32;	-- Width of the user bus. Must be at least C_GAIN_WIDTH+C_OFFSET_WIDTH.
	C_AXIS_DATA_WIDTH : integer range 8 to 1024 := 32; -- Width of the data bus.
	C_FIELD_START : integer range 0 to 1023 := 0; -- Starting index of the field to be modified.
	C_FIELD_WIDTH : integer range 3 to 17 := 16; -- Bit width of the field to be modified.
	C_GAIN_WIDTH : integer range 3 to 27 := 16; -- Bit width of the signed, fixed point gain value.
	C_OFFSET_WIDTH : integer range 3 to 48 := 16; -- Bit width of the signed, fixed point offset value.
	C_FRACT_WIDTH : integer range 1 to 26 := 8 -- Bit width of the fractional part of the GAIN and OFFSET fixed point values.
);
port(
	ACLK : in std_logic;
	ARESETN : in std_logic;

	S_AXIS_TUSER : in std_logic_vector(C_AXIS_USER_WIDTH-1 downto 0);
	S_AXIS_TDATA : in std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0);
	S_AXIS_TVALID : in std_logic;

	M_AXIS_TUSER : out std_logic_vector(C_AXIS_USER_WIDTH-C_GAIN_WIDTH-C_OFFSET_WIDTH-1 downto 0);
	M_AXIS_TDATA : out std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0) := (others => '0');
	M_AXIS_TVALID : out std_logic := '0';

	NEG_VAL_TOG : out std_logic; -- Toggled when a value is dropped because the computed value was negative.
	OVERFLOW_TOG : out std_logic -- Toggled when a value is dropped because it overflowed the number of bits in the field.
);
end;

architecture RTL of AXIS_GAIN_OFFS is

signal data_c : std_logic_vector(C_FIELD_WIDTH-1 downto 0); -- New computed value.
signal user_d : std_logic_vector(C_AXIS_USER_WIDTH-C_GAIN_WIDTH-C_OFFSET_WIDTH-1 downto 0); -- Remaining user data delayed.
signal data_d : std_logic_vector(C_AXIS_DATA_WIDTH-1 downto 0); -- Data delayed by two clock cycles (pass through).
signal valid_d : std_logic; -- Valid delayed by two clock cycles (pass through).

signal neg : std_logic;
signal overflow : std_logic;

signal next_valid : std_logic; -- next value of M_AXIS_TVALID;

signal neg_tog, next_neg_tog : std_logic := '0';
signal ovr_tog, next_ovr_tog : std_logic := '0';

begin

NEG_VAL_TOG <= neg_tog;
OVERFLOW_TOG <= ovr_tog;

CLK_SYNC:
process(ACLK)
begin
	if(rising_edge(ACLK)) then
		if(ARESETN = '0') then
			M_AXIS_TUSER <= (others => '0');
			M_AXIS_TDATA <= (others => '0');
			M_AXIS_TVALID <= '0';
			neg_tog <= '0';
			ovr_tog <= '0';
		else
			if(C_AXIS_USER_WIDTH > C_GAIN_WIDTH+C_OFFSET_WIDTH) then
				M_AXIS_TUSER <= user_d;
			end if;
			if(C_AXIS_DATA_WIDTH > C_FIELD_START+C_FIELD_WIDTH) then
				M_AXIS_TDATA(C_AXIS_DATA_WIDTH-1 downto C_FIELD_START+C_FIELD_WIDTH) <= data_d(C_AXIS_DATA_WIDTH-1 downto C_FIELD_START+C_FIELD_WIDTH);
			end if;
			if(C_FIELD_START > 0) then
				M_AXIS_TDATA(C_FIELD_START-1 downto 0) <= data_d(C_FIELD_START-1 downto 0);
			end if;
			M_AXIS_TDATA(C_FIELD_START+C_FIELD_WIDTH-1 downto C_FIELD_START) <= data_c;
			M_AXIS_TVALID <= next_valid;
			neg_tog <= next_neg_tog;
			ovr_tog <= next_ovr_tog;
		end if;
	end if;
end process;

VALID_DEC:
process(valid_d, neg, overflow)
begin
	next_valid <= '0';
	if(valid_d = '1' and neg = '0' and overflow = '0') then
		next_valid <= '1';
	end if;
end process;

NEG_DEC:
process(neg_tog, valid_d, neg)
begin
	next_neg_tog <= neg_tog;
	if(valid_d = '1' and neg = '1') then
		next_neg_tog <= not neg_tog;
	end if;
end process;

OVR_DEC:
process(ovr_tog, valid_d, overflow)
begin
	next_ovr_tog <= ovr_tog;
	if(valid_d = '1' and overflow = '1') then
		next_ovr_tog <= not ovr_tog;
	end if;
end process;

-- Delay the bus for two clock cycles why we compute the value.
DELAY: entity work.AXIS_UNI_BUFFER
generic map(
	C_AXIS_DATA_WIDTH => C_AXIS_DATA_WIDTH,
	C_AXIS_USER_WIDTH => C_AXIS_USER_WIDTH-C_GAIN_WIDTH-C_OFFSET_WIDTH,
	C_NUM_STAGES => 2
)
port map(
	ACLK => ACLK,
	ARESETN => ARESETN,
	S_AXIS_TUSER => S_AXIS_TUSER(C_AXIS_USER_WIDTH-C_GAIN_WIDTH-C_OFFSET_WIDTH-1 downto 0),
	S_AXIS_TDATA => S_AXIS_TDATA,
	S_AXIS_TVALID => S_AXIS_TVALID,
	M_AXIS_TUSER => user_d,
	M_AXIS_TDATA => data_d,
	M_AXIS_TVALID => valid_d
);

-- Compute the new value and replace it.
COMPUTE: entity work.VAL_COMPUTE
generic map(
	C_VAL_WIDTH => C_FIELD_WIDTH,
	C_GAIN_WIDTH => C_GAIN_WIDTH,
	C_OFFSET_WIDTH => C_OFFSET_WIDTH,
	C_FRACT_WIDTH => C_FRACT_WIDTH
)
port map(
	CLK => ACLK,
	RESETN => ARESETN,
	VAL => S_AXIS_TDATA(C_FIELD_WIDTH+C_FIELD_START-1 downto C_FIELD_START),
	GAIN => S_AXIS_TUSER(C_AXIS_USER_WIDTH-1 downto C_AXIS_USER_WIDTH-C_GAIN_WIDTH),
	OFFSET => S_AXIS_TUSER(C_AXIS_USER_WIDTH-C_GAIN_WIDTH-1 downto C_AXIS_USER_WIDTH-C_GAIN_WIDTH-C_OFFSET_WIDTH),
	RESULT => data_c,
	NEG => neg,
	OVERFLOW => overflow
);

end;