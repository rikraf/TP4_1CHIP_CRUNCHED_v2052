------------------------------------------------
--
-- Last modified: Wed May 25, 2022  07:31PM
-- Filename : tpx4_sc_in.vhd
-- Author   : R. Abiad
-- Project  : TIMEPIX4
-- 
-- Receive command and pixel data from the Timepix4 chip over the slow control interface
--
-- Write response (from Timepix4):
--Field Name      Size (bits) Description
--sync_header     8           Input header (A2 or AA)
--chip id         15          not used (15�b0)
--R/W             1           1: read, 0: write
--reg address     16          register address
--status          8           contains possible error information
--
-- Read Response  (from Timepix4):
--Field Name      Size (bits) Description
--sync_header     8           Input header (A2 or AA)
--chip id         15          not used (15�b0)
--R/W             1           1: read, 0: write
--reg address     16          register address
--status          8           contains possible error information
--payload         16 to 4096  output data payload
------------------------------------------------

-------------------------------
-- Data into the FIFO has to be interpreted appropriately
--
-- The sync and R/W bit are written to the bottom 24 bits of the FIFO (upper 8 bits 0)
-- The register address and status are 24 bits written to the next FIFO address (upper 8 bits 0)
--
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--library xil_defaultlib;
--use xil_defaultlib.all;
--library unisim;
--use unisim.vcomponents.all;

entity tpx4_sc_in is
  port(
    s_axi_aclk      : in std_logic;     -- AXI interface clock (100 MHz)
    s_axi_aresetn   : in std_logic;
    rd_fifo         : in std_logic;
    rd_pack_fifo    : in std_logic;
    sc_clk_out      : in std_logic;
    sc_data_out     : in std_logic;
    ena_irq         : in std_logic;     -- enable IRQs
    tpx_reset_n     : in std_logic;     -- reset to the Timepix
    sc_irq          : out std_logic;
    fifo_count      : out std_logic_vector(10 downto 0);
    fifo_dout       : out std_logic_vector(31 downto 0);
    fifo_empty      : out std_logic;
    pack_fifo_count : out std_logic_vector(10 downto 0);
    pack_fifo_dout  : out std_logic_vector(31 downto 0);
    pack_fifo_empty : out std_logic
  );
end tpx4_sc_in;

architecture arch of tpx4_sc_in  is


  component sc_fifo_1024x32
    port (
      rst           : in std_logic;
      wr_clk        : in std_logic;
      rd_clk        : in std_logic;
      din           : in std_logic_vector(31 downto 0);
      wr_en         : in std_logic;
      rd_en         : in std_logic;
      dout          : out std_logic_vector(31 downto 0);
      full          : out std_logic;
      empty         : out std_logic;
      rd_data_count : out std_logic_vector(10 downto 0);
      wr_data_count : out std_logic_vector(10 downto 0);
      wr_rst_busy   : out std_logic;
      rd_rst_busy   : out std_logic
    );
  end component;

  signal sc_data          : std_logic;
  signal wr_fifo          : std_logic := '0';
  signal wr_rst_busy      : std_logic;
  signal rd_rst_busy      : std_logic;
  signal fifo_full        : std_logic;
  signal wr_pack_fifo     : std_logic := '0';
  signal pack_wr_rst_busy  : std_logic;
  signal pack_rd_rst_busy  : std_logic;
  signal pack_fifo_full    : std_logic;
  signal cmd_sr           : std_logic_vector(31 downto 0) := (others => '0'); -- input shift register
  signal read             : std_logic := '0';
  signal irq              : std_logic := '0';
  signal fifo_din         : std_logic_vector(31 downto 0) := (others => '0');
  signal invalid_pixel    : std_logic := '0';       -- marker for invalid pixels that have x"FFFFFFFF00000000" data
  signal packet_data      : std_logic;



  type CMD_St_TYPE is (st_idle, st_rd_sync, st_get_reg_status, st_read);
  signal cmd_st         : CMD_ST_TYPE := st_idle;
  signal word_cnt       : unsigned(7 downto 0) := (others => '0');
  signal clk_cnt        : unsigned(4 downto 0) := (others => '0');
  signal fifo_rst       : std_logic;

begin

  fifo_rst <= not (s_axi_aresetn and tpx_reset_n);

  -- Reading from the FIFO happens directly from the processor through the AXI interface
  -- This FIFO is first word follow through so the output is ready before the first read
  fifo: sc_fifo_1024x32 
    port map(
      rst           => fifo_rst,
      wr_clk        => sc_clk_out,
      rd_clk        => s_axi_aclk,
      din           => fifo_din,
      wr_en         => wr_fifo,
      rd_en         => rd_fifo,
      dout          => fifo_dout,
      full          => fifo_full,
      empty         => fifo_empty,
      rd_data_count => fifo_count,
      wr_rst_busy   => wr_rst_busy,
      rd_rst_busy   => rd_rst_busy
    );

  -- 2nd holding FIFO for packet data that come through registers 4203 and C203
  -- This FIFO only holds data from those registers
  pack_fifo: sc_fifo_1024x32 
    port map(
      rst           => fifo_rst,
      wr_clk        => sc_clk_out,
      rd_clk        => s_axi_aclk,
      din           => fifo_din,
      wr_en         => wr_pack_fifo,
      rd_en         => rd_pack_fifo,
      dout          => pack_fifo_dout,
      full          => pack_fifo_full,
      empty         => pack_fifo_empty,
      rd_data_count => pack_fifo_count,
      wr_rst_busy   => pack_wr_rst_busy,
      rd_rst_busy   => pack_rd_rst_busy
    );


  -- Capture data on the falling edge of the clock since it transitions on the rising edge
  DFIN: process(sc_clk_out)
  begin
    if falling_edge(sc_clk_out) then
      sc_data <= sc_data_out;
    end if;
  end process;


  -- Read data sent out of the Timepix4 over the slow control
  -- Look for a high bit as the start bit, then determine which readback this is.
  -- Collect 32 bit values and write them to the FIFO, ending when expected words have transmitted
  FSM: process(sc_clk_out)
  begin
    if rising_edge(sc_clk_out) then
      case cmd_st is
        when st_idle =>
          word_cnt <= (others => '0');
          wr_fifo <= '0';
          wr_pack_fifo <= '0';
          packet_data <= '0';
          read <= '0';
          irq <= '0';
          invalid_pixel <= '0';
          clk_cnt <= (others => '0');
          cmd_sr <= (others => '0');
          if (sc_data = '1') then         -- look at serial out from TPX4
            cmd_st <= st_rd_sync;
            cmd_sr <= 32x"1";
          end if;
        when st_rd_sync =>
          clk_cnt <= clk_cnt + 1;
          cmd_sr <= cmd_sr(30 downto 0) & sc_data;
          if (clk_cnt = 5x"17") then          -- 24 bits sync header, chip ID, and R/W bit
            if (cmd_sr(0) = '1') then
              read <= '1';
            end if;
            if (cmd_sr(23 downto 16) = x"AA") or (cmd_sr(23 downto 16) = x"A2") then
              cmd_st <= st_get_reg_status;
              clk_cnt <= (others => '0');
              cmd_sr <= 31x"0" & sc_data;
              wr_fifo <= '1';
              fifo_din <= cmd_sr;
            else
              cmd_st <= st_idle;
            end if;
          end if;
        when st_get_reg_status =>
          wr_fifo <= '0';
          wr_pack_fifo <= '0';
          clk_cnt <= clk_cnt + 1;
          cmd_sr <= cmd_sr(30 downto 0) & sc_data;
          if (clk_cnt = 5x"17") then          -- 24 bits, 16 register, 8 status
            wr_fifo <= '1';                   -- write readback to FIFO, cancelleable later
            if (read = '1') then
              cmd_st <= st_read;
              clk_cnt <= (others => '0');
              word_cnt <= x"00";
              -- Determine how long the message should be based on the register address
--              case cmd_sr(23 downto 16) is
              -- F/7XXX and AFFE
              if (cmd_sr(23 downto 8) = x"AFFE") or (cmd_sr(22 downto 20) = "111") then
                word_cnt <= x"0B";                      -- 384 bits
              end if;
              -- EXXX and 6XXX
              if (cmd_sr(22 downto 20) = "110") then
                if (cmd_sr(19 downto 16) = x"0") then   -- E/6000
                  word_cnt <= x"7F";                    -- bits <= 4096;
                else                                    -- E/6
                  word_cnt <= x"07";                    -- bits <= 256;
                end if;
              end if;
              -- AFFF and C203 and 4203
              if (cmd_sr(23 downto 8) = x"AFFF") or 
                 (cmd_sr(22 downto 8) = 15x"4203") then
                word_cnt <= x"07";     -- bits <= 256;
              end if;
              -- NO!  Just save all to the same fifo  RJR 6/8/26
              -- C203 and 4203 data saved to different FIFO
              -- if (cmd_sr(22 downto 8) = 15x"4203") then
                --packet_data <= '1';
              --end if;
            else
              cmd_st <= st_idle;
              irq <= '1';
            end if;
            clk_cnt <= (others => '0');
            cmd_sr <= 31x"0" & sc_data;
            fifo_din <= cmd_sr;
          end if;
        when st_read =>
          wr_fifo <= '0';
          wr_pack_fifo <= '0';
          clk_cnt <= clk_cnt + 1;
          cmd_sr <= cmd_sr(30 downto 0) & sc_data;
          if (clk_cnt = 5x"1F") then
            word_cnt <= word_cnt - 1;
            if (packet_data = '0') then
              wr_fifo <= '1';
            else
              if (cmd_sr(31 downto 0) = x"FFFFFFFF") or    -- only save valid data
                 (cmd_sr(31 downto 0) = x"00000000") then    -- only save valid data
                invalid_pixel <= '1';
              else
                wr_pack_fifo <= '1';
                invalid_pixel <= '0';
              end if;
--              if (word_cnt(0) = '1') then           -- odd count, MSWord
--                if (cmd_sr(31 downto 0) = x"FFFFFFFF") then    -- only save valid data
--                  invalid_pixel <= '1';
--                else
--                  wr_pack_fifo <= '1';
--                  invalid_pixel <= '0';
--                end if;
--              elsif (word_cnt(0) = '0') then
--                if (invalid_pixel <= '0') then
--                  wr_pack_fifo <= '1';
--                end if;
--                invalid_pixel <= '0';
--              end if;
            end if;
            fifo_din <= cmd_sr;
            if (word_cnt = 0) then
              cmd_st <= st_idle;
              irq <= '1';
            end if;
          end if;
        when others =>
          cmd_st <= st_idle;
      end case;
    end if;
  end process;


  -- Generate an interrupt for the processor
  IRQREG: process(sc_clk_out,rd_fifo,rd_pack_fifo,s_axi_aresetn)
  begin
    if ((rd_fifo or rd_pack_fifo) = '1' or s_axi_aresetn = '0') then
      sc_irq <= '0';
    elsif rising_edge(sc_clk_out) then
      if (irq = '1' and ena_irq = '1') then
        sc_irq <= '1';
      end if;
    end if;
  end process;


end architecture;
