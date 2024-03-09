----------------------------------------------------------------------------------
-- Company: Universidad de Antioquia
-- Engineer: Fabian Andres Castaño Usuga
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.NUMERIC_STD.ALL;

-- Entity creation
entity dpp_counter is
    Port ( ap_clk     :  in  std_logic;
           ap_rst     :  in  std_logic;
           -- ap_start   :  in  std_logic;
           x          :  in  std_logic_vector (31 downto 0);
           y          :  out std_logic_vector (31 downto 0)
         );
end dpp_counter;

architecture Behavioral of dpp_counter is
    -- counter variables
    signal en_rissing, en_falling   : std_logic;
    signal counter                  : integer      := 0;
    signal in_sample                : integer      := 0;
    signal out_counter              : std_logic_vector (31 downto 0);
    
    constant comparator    : integer     := 32767;  -- comparator level
    

begin

    -- counter activated    
    process (ap_clk, ap_rst)
    begin
        if (ap_rst = '0') then
            -- reset everything
            en_rissing  <= '0';
            en_falling  <= '1';  -- it is prepared to count
            in_sample   <= 0;
            
            counter     <= 0; 
            out_counter <= conv_std_logic_vector(counter, 32);
        else
            if rising_edge(ap_clk) then
                in_sample <= conv_integer(signed(x)); 
                -- verify if there is a rissing edge
                if (in_sample > comparator) then
                    if (en_rissing = '0') and (en_falling = '1') then
                        en_rissing <= '1';
                        en_falling <= '0';
                        -- increase the counter
                        counter <= counter + 1; 
                        out_counter <= conv_std_logic_vector(counter, 32);
                    end if;
                end if;
                -- verify if there is a falling edge
                if (in_sample <= comparator) then
                    if (en_rissing = '1') and (en_falling = '0') then
                        en_rissing <= '0';
                        en_falling <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- assign the output
    y <= out_counter;

end Behavioral;
