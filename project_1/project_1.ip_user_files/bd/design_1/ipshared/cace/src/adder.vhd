
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity adder is
  Port ( 
    x       : in integer;
    y       : in integer;
    clk   : in std_logic;
    enable   : in std_logic;
    xy       : out integer 
  );
end adder;

architecture Behavioral of adder is

begin

    process(clk)
    begin
        if (rising_edge(clk) and enable = '1') then
                xy <= x+y;
        end if;
    end process;

end Behavioral;