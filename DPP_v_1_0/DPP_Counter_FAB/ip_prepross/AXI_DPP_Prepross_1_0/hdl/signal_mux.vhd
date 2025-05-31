----------------------------------------------------------------------------------
-- Company: Universidad de Antioquia
-- Engineer: Fabian Castano
-- Description: This module apply the fir filter to the XADC signal  
--              This filter has 31 taps in the filter
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity creation
entity signal_mux is
    Port ( sel        :  in  std_logic_vector (1 downto 0);
           x0         :  in  std_logic_vector (15 downto 0);
           x1         :  in  std_logic_vector (15 downto 0);
           x2         :  in  std_logic_vector (15 downto 0);
           x3         :  in  std_logic_vector (15 downto 0);
           -- output
           data_out   :  out std_logic_vector (15 downto 0)
         );
end signal_mux;

architecture Behavioral of signal_mux is
begin

    process(sel)
    begin
        case sel is
            when "00" => data_out <= x0;
            when "01" => data_out <= x1;
            when "10" => data_out <= x2;
            when "11" => data_out <= x3;
            when others => data_out <= x0;
        end case;
    end process;

end Behavioral;
