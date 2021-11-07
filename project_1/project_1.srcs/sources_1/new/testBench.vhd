----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/11/2021 02:38:12 PM
-- Design Name: 
-- Module Name: testbench - Behavioral
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

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is
signal diff_clock_rtl_0_clk_n: STD_LOGIC := '0';
signal diff_clock_rtl_0_clk_p : STD_LOGIC := '1';
signal reset_rtl_0 : STD_LOGIC := '1';

component design_1_wrapper is
  port (
    diff_clock_rtl_0_clk_n : in STD_LOGIC;
    diff_clock_rtl_0_clk_p : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC
  );
end component;
begin

design: design_1_wrapper port map(
            diff_clock_rtl_0_clk_n => diff_clock_rtl_0_clk_n,
            diff_clock_rtl_0_clk_p => diff_clock_rtl_0_clk_p,
            reset_rtl_0 => reset_rtl_0
        );


diff_clock_rtl_0_clk_n <= not diff_clock_rtl_0_clk_n after 10 ns;
diff_clock_rtl_0_clk_p <= not diff_clock_rtl_0_clk_p after 10 ns;

end Behavioral;
