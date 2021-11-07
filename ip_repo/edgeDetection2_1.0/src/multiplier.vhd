
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity multiplier is
  Port ( 
    m       : in integer;
    enable   : in std_logic;
    clk   : in std_logic;
    mm       : out integer 
  );
end multiplier;

architecture Behavioral of multiplier is

begin

    process(clk)
    begin
        if (rising_edge(clk) and enable = '1') then
                mm <= m*m;
        end if;
    end process;

end Behavioral;