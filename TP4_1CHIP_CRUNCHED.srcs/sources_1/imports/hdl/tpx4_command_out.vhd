------------------------------------------------
--
-- Last modified: Fri Apr 29, 2022  03:57PM
-- Filename : tpx4_command_out.vhd
-- Author   : R. Abiad
-- Project  : TIMEPIX4
-- 
-- Send serial commands to the Timepix4, transmitting serial data_out.
-- The processor will write into a FIFO to set up the command, then trigger output. This sends whatever is
-- on the FIFO out.
-- To facilitate shutter timing, some commands go out in response to a trigger and the shutter signal.
--
------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.numeric_std_unsigned.all;
library xil_defaultlib;
use xil_defaultlib.all;
library unisim;
use unisim.vcomponents.all;

entity tpx4_command_out is
  port(
      clk40           : in std_logic;     -- Timepix interface clock (40 MHz)
      s_axi_aclk      : in std_logic;     -- AXI interface clock (100 MHz)
      s_axi_aresetn   : in std_logic;
      fifo_din        : in std_logic_vector(31 downto 0);
      tpx_reset_n     : in std_logic;                       -- reset to the Timepix
      poll_packets    : in std_logic;                       -- poll the packet register
      pause_time      : in std_logic_vector(31 downto 0);   -- time between polling packet register
      wr_fifo         : in std_logic;
      trigger         : in std_logic;
--        hw_trig44       : in std_logic;
--        hw_trig46       : in std_logic;
      hw_trig_enable  : in std_logic;
--      ser_clk_out     : out std_logic;    -- this is a clock out of this but driven on SC_clk_in of Timepix
--        refclk_40       : out std_logic;    -- 40 MHz to Timepix
      serial_data_out : out std_logic     -- this is data out but driven on SC_data_in of Timepix                    
      );
end tpx4_command_out;

architecture arch of tpx4_command_out  is


  component cmdfifo_1024x32
    port (
      srst          : in std_logic;
      wr_clk        : in std_logic;
      rd_clk        : in std_logic;
      din           : in std_logic_vector(31 downto 0);
      wr_en         : in std_logic;
      rd_en         : in std_logic;
      dout          : out std_logic_vector(31 downto 0);
      full          : out std_logic;
      empty         : out std_logic;
      wr_rst_busy   : out std_logic;
      rd_rst_busy   : out std_logic
    );
  end component;

  -- Not allowed in HDL for some reason, must be in the block diagram
--  -- Clocking wizard to produce clock at -90 (leading) phase shift
--  component clk_wiz_0
--    port (  
--      clk_out1      : out std_logic;
--      reset         : in std_logic;
--      locked        : out std_logic;
--      clk_in1       : in std_logic
--  );

  signal rd_fifo        : std_logic := '0';
  signal wr_rst_busy    : std_logic;
  signal rd_rst_busy    : std_logic;
  signal fifo_empty     : std_logic;
  signal fifo_full      : std_logic;
  signal fifo_dout      : std_logic_vector(31 downto 0);
  signal cmd_sr         : std_logic_vector(31 downto 0) := (others => '0');
  signal next_cmd       : std_logic_vector(31 downto 0) := (others => '0');
--  signal clk40_90deg    : std_logic;


  type CMD_St_TYPE is (st_idle, st_rd_fifo, st_store_fifo, st_send, st_send_poll, st_last);
  signal cmd_st         : CMD_ST_TYPE := st_idle;
  signal trigger_sync   : std_logic := '0';
  signal trigger_clr    : std_logic := '0';
--  signal hw_trig44_sync : std_logic := '0';
--  signal hw_trig46_sync : std_logic := '0';
  signal word_cnt       : std_logic := '0';
  signal clk_cnt        : unsigned(4 downto 0) := (others => '0');
  signal fifo_rst       : std_logic;
  signal pause          : std_logic_vector(31 downto 0) := (others => '0');  -- time between polling event register

begin

  fifo_rst <= not (s_axi_aresetn and tpx_reset_n);

  -- Writing to FIFO happens directly from the processor through the AXI interface
  -- This FIFO is a standard FIFO
  fifo: cmdfifo_1024x32 
    port map(
      srst          => fifo_rst,
      wr_clk        => s_axi_aclk,
      rd_clk        => clk40,
      din           => fifo_din,
      wr_en         => wr_fifo,
      rd_en         => rd_fifo,
      dout          => fifo_dout,
      full          => fifo_full,
      empty         => fifo_empty,
      wr_rst_busy   => wr_rst_busy,
      rd_rst_busy   => rd_rst_busy
    );

--  -- The clock at the Timepix should arrive before the data changes, so produce a clock 90 degrees ahead of
--  -- the serial data
--  CLKDEL: clk_wiz_0
--    port map (
--      clk_in1       => clk40,
--      reset         => s_axi_aresetn,
--      clk_out1      => ser_clk_out        -- 90 degrees ahead of clk40
--    );

  -- Read commands from the FIFO and send them to the DCB
  -- Use the falling edge so that data is stable at the rising edge (hopefully)
  FSM: process(clk40)
  begin
    if falling_edge(clk40) then
      case cmd_st is
        when st_idle =>
          word_cnt <= '0';
          rd_fifo <= '0';
          trigger_clr <= '0';
          clk_cnt <= (others => '0');
          cmd_sr <= (others => '0');
          pause <= pause + 1;
          if (trigger_sync = '1') then       -- signal to start transmitting
            cmd_st <= st_rd_fifo;
            rd_fifo <= '1';
          end if;
          if (poll_packets = '1') and (pause > pause_time) then
            cmd_sr <= x"AA000142";
            next_cmd <= x"03000000";        -- command payload
            cmd_st <= st_send_poll;
          end if;
--          if (hw_trig_enable and hw_trig44) = '1' then
--            cmd_sr <= x"AA000000";
--            next_cmd <= x"00000044";        -- command payload
--            cmd_st <= st_send;
--          end if;
--          if (hw_trig_enable and hw_trig46) = '1' then
--            cmd_sr <= x"AA000000";
--            next_cmd <= x"00000046";        -- command payload
--            cmd_st <= st_send;
--          end if;
        when st_rd_fifo =>
          rd_fifo <= '0';
          cmd_st <= st_store_fifo;
        when st_store_fifo =>
          cmd_st <= st_send;
          cmd_sr <= fifo_dout;              -- load shift register with FIFO output
        when st_send =>                     -- transmit bits
          rd_fifo <= '0';                   -- always deassert
          trigger_clr <= '1';
          clk_cnt <= clk_cnt + 1;
          cmd_sr <= cmd_sr(30 downto 0) & '0';
          if (fifo_empty = '0') then        -- not empty
            if (clk_cnt = 5x"1A") then      -- time to read next word from FIFO
              rd_fifo <= '1';
            elsif (clk_cnt = 5x"1F") then   -- time to change value on SR
              clk_cnt <= (others => '0');
              cmd_sr <= fifo_dout;
            end if;
          elsif (hw_trig_enable = '0') then -- fifo empty, not shutter initiated
            if (clk_cnt = 5x"1F") then      -- end of word, transmit last word
              cmd_st <= st_last;
              cmd_sr <= fifo_dout;
            end if;
          else                              -- hw triggered
            if (clk_cnt = 5x"1F") then      -- ready for next 32 bits
              if (word_cnt = '0') then      -- transmitting sync
                word_cnt <= '1';
                cmd_sr <= next_cmd;
              else
                cmd_st <= st_idle;          -- done
              end if;
            end if;
          end if;
        when st_send_poll =>                -- transmit read of event register (4203)
          clk_cnt <= clk_cnt + 1;
          cmd_sr <= cmd_sr(30 downto 0) & '0';
          if (clk_cnt = 5x"1F") then      -- ready for next 32 bits
            cmd_sr <= next_cmd;
            cmd_st <= st_last;
          end if;
        when st_last =>                     -- transmit bits
          clk_cnt <= clk_cnt + 1;
          cmd_sr <= cmd_sr(30 downto 0) & '0';
          if (clk_cnt = 5x"1F") then      -- end of transmission
            cmd_st <= st_idle;
            pause <= (others => '0');
          end if;
        when others =>
          cmd_st <= st_idle;
      end case;
    end if;
  end process;
  serial_data_out <= cmd_sr(31);

  -- Synchronize signals from the AXI bus to the 40 MHz domain
  sync_trig: process(clk40, trigger, trigger_sync)
    variable trigger_stage1 : std_logic := '0';
    variable trigger_stage2 : std_logic := '0';
    variable trigger_stage3 : std_logic := '0';
  begin
    if (trigger_clr = '1') then
      trigger_stage1 := '0';
--    elsif rising_edge(trigger) then
    elsif falling_edge(trigger) then
      trigger_stage1 := '1';
    end if;

--    if rising_edge(clk40) then
    if falling_edge(clk40) then
      trigger_sync   <= trigger_stage3;         -- stable
      trigger_stage3 := trigger_stage2;         -- less metastable
      trigger_stage2 := trigger_stage1;         -- metastable
    end if;
  end process;

--  sync_hwtrig44: process(clk40, hw_trig44)
--    variable hw_trig44_stage1 : std_logic := '0';
--    variable hw_trig44_stage2 : std_logic := '0';
--    variable hw_trig44_stage3 : std_logic := '0';
--  begin
--    if rising_edge(hw_trig44) then
--      hw_trig44_stage1 := '1';
--    end if;
--    if rising_edge(clk40) then
--      hw_trig44_sync   <= hw_trig44_stage3;         -- stable
--      hw_trig44_stage3 := hw_trig44_stage2;         -- less metastable
--      hw_trig44_stage2 := hw_trig44_stage1;         -- metastable
--    end if;
--  end process;
--
--  sync_hwtrig46: process(clk40, hw_trig46)
--    variable hw_trig46_stage1 : std_logic := '0';
--    variable hw_trig46_stage2 : std_logic := '0';
--    variable hw_trig46_stage3 : std_logic := '0';
--  begin
--    if rising_edge(hw_trig46) then
--      hw_trig46_stage1 := '1';
--    end if;
--    if rising_edge(clk40) then
--      hw_trig46_sync   <= hw_trig46_stage3;         -- stable
--      hw_trig46_stage3 := hw_trig46_stage2;         -- less metastable
--      hw_trig46_stage2 := hw_trig46_stage1;         -- metastable
--    end if;
--  end process;


--  -- ODDR Instination: Output ser_clk and data_out
--   u_oddre1_serclk : ODDRE1
--   generic map (
--      IS_C_INVERTED  =>   '1',
--      IS_D1_INVERTED =>   '0',
--      IS_D2_INVERTED =>   '0',
--      SIM_DEVICE     =>   "ULTRASCALE_PLUS",
--      SRVAL          =>   '0' 
--   )
--   port map (
--      Q  => ser_clk_out,   
--      C  => clk40,       
--      D1 => '0',       
--      D2 => '1',       
--      SR => '0'   
--   );
--
--   u_oddre1_refclk : ODDRE1
--   generic map (
--      IS_C_INVERTED  =>   '1',
--      IS_D1_INVERTED =>   '0',
--      IS_D2_INVERTED =>   '0',
--      SIM_DEVICE     =>   "ULTRASCALE_PLUS",
--      SRVAL          =>   '0' 
--   )
--   port map (
--      Q  => refclk_40,   
--      C  => clk40,       
--      D1 => '0',       
--      D2 => '1',       
--      SR => '0'   
--   );


end architecture;
      
