----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.06.2024 11:35:17
-- Design Name: 
-- Module Name: greaterthan - Behavioral
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

entity greaterthan is
    Port (in_adc  : in  std_logic_vector(15 downto 0);
          in_com  : in  std_logic_vector(15 downto 0);
          out_trg : out std_logic);
end greaterthan;

architecture Behavioral of greaterthan is

begin
    process(in_adc, in_com)
    begin
        if (in_adc >= in_com) then
            out_trg <= '1';
        else
            out_trg <= '0';
        end if;
    end process;

end Behavioral;
