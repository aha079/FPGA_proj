
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity reg is
  Port ( 
    d       : in integer;
    clk     : in std_logic;
    q       : out integer
  );
end reg;

architecture Behavioral of reg is

begin

    process(clk)
    begin
        if rising_edge(clk) then
                q <= d;
        end if;
    end process;

end Behavioral;