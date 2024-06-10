----------------------------------------------------------------------------------
-- Company: Universidad de Antioquia
-- Engineer: Fabian Castano
-- Description: This modules convert the 16 bits data from XADC in 
--              32 bits data, also syncronize with clock
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity creation
entity xadc_buffer is
    Port ( adc_clk    :  in  std_logic;
           adc_rst    :  in  std_logic;
           adc_in     :  in  std_logic_vector (15 downto 0);
           adc_out    :  out std_logic_vector (31 downto 0)
         );
end xadc_buffer;

architecture Behavioral of xadc_buffer is

    signal buf_xadc  :   std_logic_vector (31 downto 0);

begin

    BUFFER_PROCESS: process (adc_clk, adc_rst)
    begin
         if (adc_rst = '0') then
            buf_xadc   <= X"00000000";
        else
            if rising_edge(adc_clk) then
                buf_xadc <= X"0000" & adc_in;
            end if;
        end if;     
    end process;
    
    adc_out <= buf_xadc;    
    

end Behavioral;
