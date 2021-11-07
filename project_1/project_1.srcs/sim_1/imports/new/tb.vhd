use work.package_types.all;
library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

entity tb_filter is
end tb_filter;

architecture Behavioral of tb_filter is
    component filter_px is
 Port (
      clk: in std_logic;
      rst: in std_logic;
      Gx:in matrix3;
      Gy:in matrix3;
      pixels:in matrix3;
      GCRC: in std_logic_vector(7 downto 0);
      pixel:out integer;
      crc_out : out std_logic_vector(7 downto 0):= (others => '0');
      hamming : out std_logic_vector(4 downto 0):= (others => '0')
      );
    end component;


    signal clk : std_logic :='0';
    signal rst: std_logic :='0';
    signal Gx : matrix3 := ((1,1,1),(0,0,0),(-1,-1,-1));
    signal Gy : matrix3 := ((1,0,-1),(2,0,-2),(1,0,-1));
    signal pixels : matrix3 := ((1,4,3),(0,1,0),(3,2,0));
    signal pixel : integer;
    signal GCRC: std_logic_vector(7 downto 0):= "11010101";
    signal crc_out : std_logic_vector(7 downto 0);
    signal hamming : std_logic_vector(4 downto 0);
    signal pixels8 : matrix8;

file inp : text open read_mode is "../../../../input.txt";
file result : text open write_mode is "../../../../result.txt";

begin
    filter : filter_px port map(
        clk => clk,
        rst => rst,
        Gx => Gx,
        Gy => Gy,
        pixels => pixels,
        pixel => pixel,
        GCRC => GCRC,
        crc_out => crc_out,
        hamming => hamming
        );
     clk_process: process
          begin
               clk <= '0';
               wait for 5 ns;
               clk <= '1';
               wait for 5 ns;
      end process;
      
      sim_process: process
        variable L_read: line;
        variable L_write: line;
        variable V1: integer;
        variable i: integer range 0 to 7 := 0;
        variable j: integer range 0 to 7 :=0;
        begin
            while not endfile (inp) loop
                readline (inp, L_read);
                read (L_read, V1);
                pixels8(i,j) <= V1;
                j := j + 1;
                if(j = 8) then
                    j := 0;
                    if (i < 7) then
                        i := i + 1;
                    end if;     
                end if;    
            end loop;
            
            for r in 0 to 5 loop
                for c in 0 to 5 loop
                    pixels(0,0) <= pixels8(0+r,0+c);
                    pixels(0,1) <= pixels8(0+r,1+c);
                    pixels(0,2) <= pixels8(0+r,2+c);
                    pixels(1,0) <= pixels8(1+r,0+c);
                    pixels(1,1) <= pixels8(1+r,1+c);
                    pixels(1,2) <= pixels8(1+r,2+c);
                    pixels(2,0) <= pixels8(2+r,0+c);
                    pixels(2,1) <= pixels8(2+r,1+c);
                    pixels(2,2) <= pixels8(2+r,2+c);
                    wait for 27 ns;
                    if(pixel /= -2147483648) then
                        write(L_write, pixel);
                        write(L_write, string'(" "));
                    end if;    
                end loop;
                writeline(result, L_write);
            end loop;
            
            
            wait;    
      end process;

end Behavioral;