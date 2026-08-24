---------------------------------------------------------------------------------------------------------------------------------
-- Copyright (c) Sequent Logic. All Rights Reserved.
-- Distribution and use of this source code is limited to contract 80NSSC20K0496. Contact sales@sequentlogic.com for additional
-- licensing.
---------------------------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.all;
use IEEE.MATH_REAL.all;

-- Takes in pixel hit data and clusters/centroids the data into final sums. It is assumed that the sums will be divided
-- downstream using Xilinx's 'Divider Generator' core (or something similar). The final centroid X and Y values are computed by
-- dividing the X and Y sums by the ToT sum. The sums are provided by the core to allow downstream dividers with different
-- configuration settings.
--
-- Incoming Pixel Format:
-- MSb                         LSb
-- [ X ][ Y ][ ToA ][ ToT ][ PAD ]
--
-- Outgoing Cluster Format:
-- MSb                                                     LSb
-- [ ToT*X Sum ][ ToT*Y Sum ][ ToT Sum ][ Cluster ToA ][ PAD ]
--
-- Outgoing Count Format on the M_AXIS_TUSER bus (for metrics):
-- MSb.             LSb
-- [ Number of Pixels ]
entity AXIS_CENTROIDER is
generic(
	C_SIZE : integer range 3 to 65536 := 128; -- Number of Centroid elements or stages in the chain.
	C_USE_DSP_FOR_TOT_ACC : boolean := true; -- True to use a DSP primitive for the ToT accumulator, false to use logic.
	C_REG_CENTROID_INPUTS : boolean := false; -- Adds an additional register on the inputs of the centroid. Enable this option if timing is hard to meet.
	C_ADD_FANOUT_BUFS : boolean := false; -- Adds fanout buffers for EPS. Can be enabled if timing errors point to high fanout on EPS signal.
	C_FANOUT_LIMIT : integer range 1 to 1024 := 16; -- Number of fanouts allowed on EPS signal. Only valid if C_ADD_FANOUT_BUFS is TRUE.
	C_TIME_WINDOW_WIDTH : integer range 4 to 32 := 16; -- Number of bits in the time window value (TIME_WINDOW).
	C_TOA_WIDTH : integer range 32 to 64 := 48; -- Width of the ToA value in bits.
	C_TOT_WIDTH : integer range 10 to 27 := 18; -- Width of the ToT value in bits.
	C_XY_WIDTH : integer range 9 to 17 := 12; -- Width of the X, Y, and EPS value in bits.
	C_XY_SUM_WIDTH : integer range 23 to 47 := 40; -- Width of the X/Y sum in bits. This should be chosen based on the expected number of points per cluster.
	C_TOT_SUM_WIDTH : integer range 28 to 47 := 28; -- Width of the ToT sum in bits. This should be chosen based on the expected number of points per cluster and expected intensity of ToT values coming from the ASIC.
	C_NUM_PIXELS_WIDTH : integer range 3 to 16 := 10; -- Width of the pixel count register in bits. Should represent the maximum cluster size that should be seen in the incoming data.
	C_PAD_IN_WIDTH : integer range 0 to 512 := 6; -- Number of padding bits addded to the incoming data bus (to make it a multiple of 8 as required by AXI Stream specifications).
	C_PAD_OUT_WIDTH : integer range 0 to 512 := 4 -- Number of padding bits addded to the outgoing data bus (to make it a multiple of 8 as required by AXI Stream specifications).
);
port(
	ACLK : in std_logic;
	ENABLE : in std_logic := '1'; -- When disabled, the remaining clusters will be sent out. Re-enables will be ignored until all the remaining clusters have been sent.
	ARESETN : in std_logic;

	TIME_WINDOW : in std_logic_vector(C_TIME_WINDOW_WIDTH-1 downto 0);
	EPS : in std_logic_vector(C_XY_WIDTH downto 0);

	PIXELS_LOW_THRESH : in std_logic_vector(C_NUM_PIXELS_WIDTH-1 downto 0);
	PIXELS_HIGH_THRESH : in std_logic_vector(C_NUM_PIXELS_WIDTH-1 downto 0);

	EMPTY : out std_logic := '1'; -- Asserted when all the stages in the core are empty.
	FULL : out std_logic := '0'; -- Asserted when all the stages in the core are filled with cluster information.

	S_AXIS_TDATA : in std_logic_vector((2*C_XY_WIDTH)+C_TOA_WIDTH+C_TOT_WIDTH+C_PAD_IN_WIDTH-1 downto 0);
	S_AXIS_TVALID : in std_logic;

	M_AXIS_TUSER : out std_logic_vector(C_NUM_PIXELS_WIDTH-1 downto 0);
	M_AXIS_TDATA : out std_logic_vector((2*C_XY_SUM_WIDTH)+C_TOT_SUM_WIDTH+C_TOA_WIDTH+C_PAD_OUT_WIDTH-1 downto 0);
	M_AXIS_TVALID : out std_logic;

	NUM_STAGES : out std_logic_vector(31 downto 0); -- Outputs the number of stages the core is configured with (so software or other cores can key off this).

	DROP_AFTER_DIS_TOG : out std_logic; -- Toggled when an incoming pixel is dropped because we are still waiting for the pipeline to clear after ENABLE was de-asserted.
	DROP_OVFL_TOG : out std_logic; -- Toggled when the cluster overflowed it's count. This means the cluster contained the maximum value allowed with C_NUM_PIXELS_WIDTH bits.
	DROP_PIXEL_TOG : out std_logic; -- Toggled when a pixel is received at the end of the chain instead of a cluster. This could represent noise or a missed cluster.
	DROP_LOW_TOG : out std_logic; -- Toggled when a cluster pixel count is lower than PIXELS_LOW_THRESH. The cluster was dropped when this occurs.
	DROP_HIGH_TOG : out std_logic; -- Toggled when a cluster pixel count is higher than PIXELS_HIGH_THRESH. The cluster was dropped when this occurs.

	HIT_REC_TOG : out std_logic; -- Toggled each time a hit is received. Used for total hit count or computing the hit rate.
	CLUST_SENT_TOG : out std_logic -- Toggled each time a centroid is sent. Used for total cluster count or computing the cluster rate.
);
end;

architecture RTL of AXIS_CENTROIDER is

constant C_NUM_BUFS : integer := C_SIZE / C_FANOUT_LIMIT;

constant C_CENTROID_BUS_WIDTH : integer := (2*C_XY_SUM_WIDTH)+C_TOT_SUM_WIDTH+C_NUM_PIXELS_WIDTH;
constant C_PIXEL_BUS_WIDTH : integer := (2*C_XY_WIDTH)+C_TOA_WIDTH+C_TOT_WIDTH;

function and_reduce(vect : std_logic_vector) return std_logic is
	variable temp : std_logic := '1';
begin
	for i in vect'RANGE loop
		temp := temp and vect(i);
	end loop;
	return temp;
end;

type EPS_BUF_ARRAY_T is array (0 to C_NUM_BUFS) of std_logic_vector(C_XY_WIDTH downto 0);
type HIT_DATA_ARRAY_T is array (0 to C_SIZE) of std_logic_vector(C_PIXEL_BUS_WIDTH-1 downto 0);
type HIT_USER_ARRAY_T is array (0 to C_SIZE) of std_logic_vector((2*C_TOA_WIDTH)-1 downto 0);
type STATE_DATA_ARRAY_T is array (0 to C_SIZE) of std_logic_vector(C_CENTROID_BUS_WIDTH-1 downto 0);

signal eps_buf : EPS_BUF_ARRAY_T := (others => (others => '0'));

signal hit_data : HIT_DATA_ARRAY_T;
signal hit_user : HIT_USER_ARRAY_T;
signal hit_valid : std_logic_vector(C_SIZE downto 0);

signal state_data : STATE_DATA_ARRAY_T;
signal state_valid : std_logic_vector(C_SIZE downto 0);

signal final_data : std_logic_vector(C_CENTROID_BUS_WIDTH+C_PIXEL_BUS_WIDTH-1 downto 0);

signal full_i : std_logic_vector(C_SIZE-1 downto 0);
signal empty_i : std_logic_vector(C_SIZE-1 downto 0);

signal valid_out : std_logic;

signal pixel, next_pixel : std_logic := '0';
signal dropped_pixel, next_dropped_pixel : std_logic := '0';
signal cluster, next_cluster : std_logic := '0';

begin

M_AXIS_TUSER <= final_data(C_NUM_PIXELS_WIDTH-1 downto 0);
M_AXIS_TVALID <= valid_out;
NUM_STAGES <= std_logic_vector(to_unsigned(C_SIZE, 32));

HIT_REC_TOG <= pixel;
DROP_PIXEL_TOG <= dropped_pixel;
CLUST_SENT_TOG <= cluster;

CLK_SYNC:
process(ACLK)
begin
	if(rising_edge(ACLK)) then
		if(ARESETN = '0') then
			pixel <= '0';
			dropped_pixel <= '0';
			cluster <= '0';
			EMPTY <= '1';
			FULL <= '0';
		else
			pixel <= next_pixel;
			dropped_pixel <= next_dropped_pixel;
			cluster <= next_cluster;
			EMPTY <= and_reduce(empty_i);
			FULL <= and_reduce(full_i);
		end if;
	end if;
end process;

FANOUT_GEN:
if(C_ADD_FANOUT_BUFS = TRUE) generate
	FANOUT_GEN:
	for i in 0 to C_NUM_BUFS generate
		BUF_REG:
		process(ACLK)
		begin
			if(rising_edge(ACLK)) then
				if(ARESETN = '0') then
					eps_buf(i) <= (others => '0');
				else
					eps_buf(i) <= EPS;
				end if;
			end if;
		end process;
	end generate;
end generate;

FANOUT_NO_GEN:
if(C_ADD_FANOUT_BUFS = FALSE) generate
	FANOUT_GEN:
	for i in 0 to C_NUM_BUFS generate
		eps_buf(i) <= EPS;
	end generate;
end generate;

PIXEL_DEC:
process(pixel, S_AXIS_TVALID)
begin
	next_pixel <= pixel;
	if(S_AXIS_TVALID = '1') then
		next_pixel <= not pixel;
	end if;
end process;

DROPPED_PIXEL_DEC:
process(dropped_pixel, hit_valid)
begin
	next_dropped_pixel <= dropped_pixel;
	if(hit_valid(C_SIZE) = '1') then
		next_dropped_pixel <= not dropped_pixel;
	end if;
end process;

CLUSTER_DEC:
process(cluster, valid_out)
begin
	next_cluster <= cluster;
	if(valid_out = '1') then
		next_cluster <= not cluster;
	end if;
end process;

FIRST_EL: entity work.PIXEL_TO_CENTROID
generic map(
	C_TOA_WIDTH => C_TOA_WIDTH,
	C_TOT_WIDTH => C_TOT_WIDTH,
	C_XY_WIDTH => C_XY_WIDTH,
	C_XY_SUM_WIDTH => C_XY_SUM_WIDTH,
	C_TOT_SUM_WIDTH => C_TOT_SUM_WIDTH,
	C_HALF_TIME_WIDTH => C_TIME_WINDOW_WIDTH-1
)
port map(
	ACLK => ACLK,
	ENABLE => ENABLE,
	ARESETN => ARESETN,
	FINAL_FULL => full_i(C_SIZE-1),
	HALF_TIME_WINDOW => TIME_WINDOW(C_TIME_WINDOW_WIDTH-1 downto 1),
	S_AXIS_TDATA => S_AXIS_TDATA(S_AXIS_TDATA'LEFT downto C_PAD_IN_WIDTH),
	S_AXIS_TVALID => S_AXIS_TVALID,
	M_AXIS_TUSER => hit_user(0),
	M_AXIS_TDATA => hit_data(0),
	M_AXIS_TVALID => hit_valid(0),
	DROP_AFTER_DIS_TOG => DROP_AFTER_DIS_TOG
);

state_data(0) <= (others => '0');
state_valid(0) <= '0';

EL_GEN:
for i in 0 to C_SIZE-1 generate

	EL: entity work.CENTROIDER
	generic map(
		C_USE_DSP_FOR_TOT_ACC => C_USE_DSP_FOR_TOT_ACC,
		C_REG_INPUTS => C_REG_CENTROID_INPUTS,
		C_TOA_WIDTH => C_TOA_WIDTH,
		C_TOT_WIDTH => C_TOT_WIDTH,
		C_XY_WIDTH => C_XY_WIDTH,
		C_XY_SUM_WIDTH => C_XY_SUM_WIDTH,
		C_TOT_SUM_WIDTH => C_TOT_SUM_WIDTH,
		C_NUM_PIXELS_WIDTH => C_NUM_PIXELS_WIDTH
	)
	port map(
		ACLK => ACLK,
		ENABLE => ENABLE,
		ARESETN => ARESETN,
		EPS => eps_buf(i / C_FANOUT_LIMIT),
		FULL => full_i(i),
		EMPTY => empty_i(i),
		S_AXIS_PIX_TUSER => hit_user(i),
		S_AXIS_PIX_TDATA => hit_data(i),
		S_AXIS_PIX_TVALID => hit_valid(i),
		M_AXIS_PIX_TUSER => hit_user(i+1),
		M_AXIS_PIX_TDATA => hit_data(i+1),
		M_AXIS_PIX_TVALID => hit_valid(i+1),
		S_AXIS_CL_TDATA => state_data(i),
		S_AXIS_CL_TVALID => state_valid(i),
		M_AXIS_CL_TDATA => state_data(i+1),
		M_AXIS_CL_TVALID => state_valid(i+1)
	);

end generate;

final_data <= hit_data(C_SIZE) & state_data(C_SIZE);

LAST_EL: entity work.CENTROID_TO_CLUSTER
generic map(
	C_TOA_WIDTH => C_TOA_WIDTH,
	C_TOT_WIDTH => C_TOT_WIDTH,
	C_XY_WIDTH => C_XY_WIDTH,
	C_XY_SUM_WIDTH => C_XY_SUM_WIDTH,
	C_TOT_SUM_WIDTH => C_TOT_SUM_WIDTH,
	C_NUM_PIXELS_WIDTH => C_NUM_PIXELS_WIDTH
)
port map(
	ACLK => ACLK,
	ARESETN => ARESETN,
	PIXELS_LOW_THRESH => PIXELS_LOW_THRESH,
	PIXELS_HIGH_THRESH => PIXELS_HIGH_THRESH,
	S_AXIS_TDATA => final_data,
	S_AXIS_TVALID => state_valid(C_SIZE),
	M_AXIS_TDATA => M_AXIS_TDATA(M_AXIS_TDATA'LEFT downto C_PAD_OUT_WIDTH),
	M_AXIS_TVALID => valid_out,
	DROP_OVFL_TOG => DROP_OVFL_TOG,
	DROP_LOW_TOG => DROP_LOW_TOG,
	DROP_HIGH_TOG => DROP_HIGH_TOG
);

end;
