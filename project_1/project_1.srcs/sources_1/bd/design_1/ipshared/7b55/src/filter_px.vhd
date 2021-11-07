
use work.package_types.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity filter_px is
 Port (
      clk: in std_logic;
      rst: in std_logic;
      Gx:in matrix3;
      Gy:in matrix3;
      pixels:in matrix3;
      GCRC: in std_logic_vector(7 downto 0);
      pixel:out integer;
      crc_out : out std_logic_vector(7 downto 0):= (others => '0');
      hamming : out std_logic_vector(4 downto 0):= (others => '0');
      done : out std_logic := '0'
      );
end filter_px;

architecture Behavioral of filter_px is

component filter_applier is
port (
      clk: in std_logic;
      enable: in std_logic;
      G:in matrix3;
      pixels:in matrix3;
      f:out integer := 0);
end component;

component reg is
      Port ( 
        d       : in integer;
        clk     : in std_logic;
        q       : out integer
      );
end component;

component adder is
  Port ( 
    x       : in integer;
    y       : in integer;
    clk   : in std_logic;
    enable   : in std_logic;
    xy       : out integer 
  );
end component;

component multiplier is
  Port ( 
    m       : in integer;
    enable   : in std_logic;
    clk   : in std_logic;
    mm       : out integer 
  );
end component;


component cordic_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aclken : IN STD_LOGIC;
    s_axis_cartesian_tvalid : IN STD_LOGIC;
    s_axis_cartesian_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_dout_tvalid : OUT STD_LOGIC;
    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
  
 end component;
 
 component CRC is
 Port ( clk : in std_logic;
        rst: in std_logic;
        pixel : in std_logic_vector(7 downto 0);
        G : in std_logic_vector(7 downto 0);
        enable : in std_logic;
        crc_out : out std_logic_vector(7 downto 0)
 );
end component;

component HECC is
port (
 ecc_clk : in std_logic;
  ecc_reset : in std_logic;
  ecc_clken : in std_logic;
  ecc_data_in : in std_logic_vector(7 downto 0);
  ecc_data_out : out std_logic_vector(7 downto 0);
  ecc_chkbits_out : out std_logic_vector(4 downto 0)
);
end component;


signal m: integer := -1000;
signal n: integer := -1000;

signal mr: integer := -1000;
signal nr: integer := -1000;

signal mm: integer := -1000;
signal nn: integer := -1000;

signal mmr: integer := -1000;
signal nnr: integer := -1000;

signal px: integer := -1000;
signal pxr: integer := -1000;

signal pxr_vector: STD_LOGIC_VECTOR(15 DOWNTO 0);
signal pixel_vector: STD_LOGIC_VECTOR(7 DOWNTO 0);

signal enables: STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');

type STATE_TYPE is (initiate, s1, s2, s3, s4, finish);
signal STATE: STATE_TYPE := initiate;
begin
    f1: filter_applier port map(
        clk => clk,
        enable => enables(0),
        G => Gx,
        pixels => pixels,
        f => m
    );
    
    f2: filter_applier port map(
        clk => clk,
        enable => enables(1),
        G => Gy,
        pixels => pixels,
        f => n
    );

    reg1: reg port map(
        d => m,
        clk => clk,
        q => mr
    );
    
    reg2: reg port map(
        d => n,
        clk => clk,
        q => nr
    );
    
    multiplier1: multiplier port map(
        m => mr,
        clk => clk,
        enable => enables(2),
        mm => mm
    );
    
    multiplier2: multiplier port map(
        m => nr,
        clk => clk,
        enable => enables(3),
        mm => nn
    );

    reg3: reg port map(
        d => mm,
        clk => clk,
        q => mmr
    );
    
    reg4: reg port map(
        d => nn,
        clk => clk,
        q => nnr
    );

    add: adder port map(
        x => mmr,
        y => nnr,
        clk => clk,
        enable => enables(4),
        xy => px
    );
    
    reg5: reg port map(
        d => px,
        clk => clk,
        q => pxr
    );
    
    pxr_vector <= std_logic_vector(to_unsigned(pxr, 16));
    
    square: cordic_0 port map(
         aclk => clk,
          aclken => enables(5),
         s_axis_cartesian_tvalid => '1',
         s_axis_cartesian_tdata =>  pxr_vector,
         m_axis_dout_tdata => pixel_vector
    );
    
    
     crc_encoder: crc port map(
     clk => clk,
     rst => rst,
     pixel => pixel_vector,
     G => GCRC,
     enable => enables(6),
     crc_out => crc_out
     );
     
     ecc_gen: HECC port map(
      ecc_clk => clk,
      ecc_reset => rst,
      ecc_clken => enables(7),
      ecc_data_in => pixel_vector,
      ecc_data_out=> open,
      ecc_chkbits_out => hamming
     );
    
    control_unit: 
    process(clk)
        begin
            if (rising_edge(clk)) then
                if (rst = '1') then
                    enables <= (others => '0');
                    STATE <= initiate;
                else
                     case STATE is
                         when initiate =>
                             STATE <= s1;
                             enables(0) <= '1';
                             enables(1) <= '1';
                         when s1 =>
                            if(mr /= -1000 and nr /= -1000) then
                                STATE <= s2;
                                enables(2) <= '1';
                                enables(3) <= '1';
                             else
                                STATE <= s1;   
                            end if;
                         when s2 =>
                            if(mmr /= -1000 and nnr /= -1000) then
                                STATE <= s3;
                                enables(4) <= '1';
                             else
                                STATE <= s2;   
                            end if;
                          when s3 =>
                            if(pxr /= -1000) then
                                STATE <= s4;
                                enables(5) <= '1';
                             else
                                STATE <= s3;   
                            end if;
                          when s4 =>
                            if(pixel_vector /= "00000000") then
                                STATE <= finish;
                                enables(6) <= '1';
                                enables(7) <= '1';
                             else
                                STATE <= s4;   
                            end if;
                           when finish =>
                                pixel <= to_integer(unsigned(pixel_vector));
                                done <= '1';
                    end case;
                  end if;
               end if;   
    end process;


end Behavioral;
