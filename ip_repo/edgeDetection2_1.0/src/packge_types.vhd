library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

package package_types is
    type matrix8 is array(7 downto 0, 7 downto 0) of INTEGER range -255 to 255;
    type matrix3 is array(2 downto 0, 2 downto 0) of INTEGER range -255 to 255;
    type matrix6 is array(5 downto 0, 5 downto 0) of INTEGER range -255 to 255;




end package_types;
