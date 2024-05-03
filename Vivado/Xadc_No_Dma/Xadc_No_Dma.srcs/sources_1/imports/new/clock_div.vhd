----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.02.2024 16:55:12
-- Design Name: 
-- Module Name: clock_div - Behavioral
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

entity clock_div is
    Port ( clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end clock_div;

architecture Behavioral of clock_div is

    signal counter : integer := 0;
    signal clk     : std_logic:='1';
    

    

begin

    process (clk_in)
    begin
        if rising_edge(clk_in) then
            if counter = 50 then
                clk <= not clk;
                counter <= 0;
            else 
                counter <= counter + 1;
            end if;
        end if;
            
    end process;
    
    clk_out <= clk;


end Behavioral;
