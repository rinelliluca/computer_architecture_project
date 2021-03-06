----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2018 10:18:38 PM
-- Design Name: 
-- Module Name: clk_divider - Behavioral
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

entity clk_divider is
    Generic(
        freq_in : natural := 297;
        freq_out : natural := 1
    );
    Port ( clk_i : in STD_LOGIC;
           clk_o : out STD_LOGIC);
end clk_divider;

architecture Behavioral of clk_divider is

signal o : std_logic := '0';
constant ratio : natural :=  freq_in/freq_out;
signal cnt : integer range 0 to ratio:= 0;

begin
    process(clk_i)
    begin
        if(clk_i'EVENT and clk_i='1') then
            cnt <= cnt + 1;
            if(cnt=ratio-1) then
                o<= not o;
                cnt<=0;
            end if;
            clk_o <= o;
        end if;
    end process;

end Behavioral;
