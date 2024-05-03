----------------------------------------------------------------------------------
-- Company: Universidad de Antioquia
-- Engineer: Fabian Castano
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity creation
entity xadc_buffer is
    Port ( ap_clk     :  in  std_logic;
           ap_rst     :  in  std_logic;
           -- ap_start   :  in  std_logic;
           x          :  in  std_logic_vector (15 downto 0);
           y          :  out std_logic_vector (31 downto 0)
         );
end xadc_buffer;

architecture Behavioral of xadc_buffer is

    signal buf_xadc  :   std_logic_vector (31 downto 0);

begin

    BUFFER_PROCESS: process (ap_clk, ap_rst)
    begin
         if (ap_rst = '0') then
            buf_xadc   <= X"00000000";
        else
            if rising_edge(ap_clk) then
                buf_xadc <= X"0000" & x;
            end if;
        end if;     
    end process;
    
    y <= buf_xadc;
    
    

end Behavioral;
