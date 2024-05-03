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
entity steplike is
    Port ( ap_clk     :  in  std_logic;
           ap_rst     :  in  std_logic;
           -- ap_start   :  in  std_logic;
           x          :  in  std_logic_vector (31 downto 0);
           y          :  out std_logic_vector (31 downto 0)
         );
end steplike;

architecture Behavioral of steplike is
    -- Steplike shaper
    signal en_step, en_buffx                : std_logic;
    signal in_sample                        : std_logic_vector (15 downto 0);
    signal out_sample                       : std_logic_vector (31 downto 0);
    constant beta     : integer   :=  96357; -- beta = np.floor(np.exp(-T/td)*100); td = 2.69540167e-05
    constant divisor  : integer   := 100000;
    
    -- buffer signals instantiation
    -- type buffer_vector is array (integer range <>) of std_logic_vector(15 downto 0);
    signal buffx      : std_logic_vector(15 downto 0); -- : buffer_vector(0 to 1);
    
    

begin

    -- Init calculus process
    process (ap_clk, ap_rst)
    begin
        if (ap_rst = '0') then
            -- flags reset
            en_step      <= '0';
            en_buffx     <= '0';
            -- var reset          
            in_sample    <= X"0000";
            buffx        <= in_sample;
        else 
            if rising_edge(ap_clk) then
                -- new sample
                --if x(15 downto 0) > 30 then
                    in_sample  <= x(15 downto 0);
                --else
                --   in_sample  <= X"0000";
                -- end if;
                   
                buffx      <= in_sample;
                   
                -- flags enable
                en_step      <= '1';
                en_buffx     <= '1';       
            end if;
        end if;
    end process;
    
    -- Perform accumulation
    process (ap_clk)
    variable Acc            : integer;    
    begin
        if (ap_rst = '0') then 
            -- accumulators initialization
            out_sample   <= X"00000000";
        elsif rising_edge(ap_clk) then
            if en_step = '1' then      
                -- Calculation of the division in the equation     
                Acc         := (divisor*conv_integer(signed(in_sample)) - beta*conv_integer(signed(buffx)))/divisor;
                out_sample  <= out_sample + conv_std_logic_vector(Acc,32);

            else
                -- Initialize the values
                out_sample <= X"00000000";   
                
            end if;
        end if;
    end process;
    
    -- assign the output
    y <= out_sample;
    
end Behavioral;
