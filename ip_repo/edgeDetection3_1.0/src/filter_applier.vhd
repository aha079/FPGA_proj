use work.package_types.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity filter_applier is
port (
      clk: in std_logic;
      enable: in std_logic;
      G:in matrix3;
      pixels:in matrix3;
      f:out integer := 0);
end filter_applier;

architecture Behavioral of filter_applier is

begin
    process (clk)
    variable sum :integer;
    begin
      if (rising_edge(clk) and enable = '1') then
          sum:=0;
          for n in 2 downto 0 loop
             for k in 2 downto 0 loop
                sum:=sum + (G(n,k)*pixels(n,k));
              end loop;
          end loop;
          if sum < 0 then
            f <= (-1)*sum;
          else
            f <= sum;
          end if;
      end if;
    end process;
end Behavioral;