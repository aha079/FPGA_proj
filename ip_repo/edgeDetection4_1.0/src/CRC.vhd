----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/08/2021 10:20:07 AM
-- Design Name: 
-- Module Name: CRC - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CRC is
 Port ( clk : in std_logic;
        rst: in std_logic;
        pixel : in std_logic_vector(7 downto 0);
        G : in std_logic_vector(7 downto 0);
        enable : in std_logic;
        crc_out : out std_logic_vector(7 downto 0)
 );
end CRC;

architecture Behavioral of CRC is

signal x : std_logic_vector(7 downto 0):=(others => '0');
begin



process(clk)
variable i : integer range 0 to 8 := 0;
variable k : integer range 0 to 9 := 0;
variable din : std_logic;

	begin
		
		if (rising_edge(clk) and enable = '1') then
		  if (rst='1') then
			x <= (others => '0');
			i := 0;
          else
            if(k = 9) then
                crc_out <= x;
                i := 0;
                k := 0;
            else
                if(i < 8) then
                     din := pixel(i);
                     i := i + 1;
                end if;
                
                for j in 7 downto 1 loop
                 x(j) <= (x(7) AND G(j)) XOR x(j-1);
                end loop;
                 x(0) <= (x(7) AND G(0)) XOR din ;
                 k := k + 1;
		end if; 
		end if;
		end if;	
	end process;
                   
end Behavioral;
