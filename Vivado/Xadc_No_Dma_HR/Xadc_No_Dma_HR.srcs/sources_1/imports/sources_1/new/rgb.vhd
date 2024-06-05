----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2024 21:46:12
-- Design Name: 
-- Module Name: rgb - Behavioral
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

entity rgb is
    Port ( ap_clk   :  in  std_logic;
           sw       : in  std_logic_vector (1 downto 0);
           rgb_led  : out std_logic_vector (5 downto 0));
end rgb;

architecture Behavioral of rgb is

begin

    process (ap_clk)
    begin
        if rising_edge(ap_clk) then
            case sw is
              when B"00" =>
                rgb_led <= B"000000"; -- Asigna '1' a la salida cuando la entrada es '0'
              when B"01" =>
                rgb_led <= B"001001"; -- Asigna '0' a la salida cuando la entrada es '1'
              when B"10" =>
                rgb_led <= B"010010"; -- Asigna '0' a la salida cuando la entrada es '1'
              when others =>
                rgb_led <= B"100100"; -- Asigna 'Z' a la salida para otros valores de entrada
            end case;
        end if;
    end process;
    


end Behavioral;
