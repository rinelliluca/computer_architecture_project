----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Fanti Andrea
-- 
-- Create Date: 05/27/2018 10:41:26 PM
-- Design Name: Very ignorant deserializer
-- Module Name: deserializer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
--  puts data in a shift register one bit at a time, transmit out when register is full
--  NOTE: data is written out **only** when the register is filled, there isn't a force flush command
-- Dependencies: 
-- 
-- Revision 0.95 : working, but without reset
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity deserializer is
    Generic(
        WIDTH : natural := 32   -- data width
    );
    Port (
        d_in : in std_logic;
        d_out : out std_logic_vector(WIDTH-1 downto 0);
        d_out_valid : out std_logic := '0';
        reset : in std_logic;
        pixel_clock : in std_logic;
        d_in_valid : in std_logic   -- basically an enable
    );
end deserializer;

architecture Behavioral of deserializer is
    constant fill_level_init : std_logic_vector (WIDTH-1 downto 0) := std_logic_vector(to_unsigned(1, WIDTH)); -- "000...01"
    
    signal internal: std_logic_vector (WIDTH-2 downto 0) := (others => '0'); -- -2  and not -1 because actually the msb is never needed
    signal fill_level : std_logic_vector (WIDTH-1 downto 0) := fill_level_init; -- bit=1 in position that is currently being filled
    signal fill_level_next : std_logic_vector (WIDTH-1 downto 0) := fill_level_init;
begin
    process(pixel_clock, d_in_valid, reset)
    begin
        if reset = '0' then
            if rising_edge(pixel_clock) then
                if d_in_valid='1' then
                    if fill_level(WIDTH-1) = '1' then   -- this bit has to be written out together with the others
                        d_out <= internal(WIDTH-2 downto 0) & d_in;
                    else
                        internal <= internal(WIDTH-3 downto 0) & d_in;
                    end if;
                    fill_level_next <= fill_level(WIDTH-2 downto 0) & fill_level(WIDTH-1);
                else
                    fill_level_next <= fill_level_init;  -- d_in not valid, reset fill level
                end if;
            end if;
        else    -- reset = 1
            fill_level_next <= fill_level_init;
        end if;
    end process;
    
--    process (reset)
--    begin
--        if reset ='1' then
--            --fill_level_next <= fill_level_init;
--            report "you should really write some code here";
--        end if;
--    end process;
    
    process (pixel_clock)
    begin
        if falling_edge(pixel_clock) then
            fill_level <= fill_level_next;
            d_out_valid <= fill_level(WIDTH-1);
        end if;
    end process;
    
end Behavioral;