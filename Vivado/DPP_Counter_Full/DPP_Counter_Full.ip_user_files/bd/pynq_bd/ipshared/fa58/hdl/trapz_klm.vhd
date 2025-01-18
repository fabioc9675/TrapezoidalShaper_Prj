----------------------------------------------------------------------------------
-- Company: Universidad de Antioquia
-- Engineer: Fabian Andres Castaño Usuga
-- Description: This module apply the trapezoidal shaper to the filtered signal 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.NUMERIC_STD.ALL;

-- Entity creation
entity trapz_klm is
    Port ( trap_clk   :  in  std_logic;
           trap_rst   :  in  std_logic;
           -- ap_start   :  in  std_logic;
           trap_in    :  in  std_logic_vector (31 downto 0);
           trap_out   :  out std_logic_vector (31 downto 0)
         );
end trapz_klm;

architecture Behavioral of trapz_klm is
    -- Trapezoidal filter
    signal en_trapz, en_buffx               : std_logic;
    signal in_sample                        : std_logic_vector (15 downto 0);
    signal out_sample                       : std_logic_vector (31 downto 0);
--    constant K     : std_logic_vector (15 downto 0) := X"001D";       -- 29
--    constant L     : std_logic_vector (15 downto 0) := X"0038";       -- 50
--    constant M     : std_logic_vector (15 downto 0) := X"00C8";       -- 200
    constant K     : integer  := 29;       -- 29
    constant L     : integer  := 50;       -- 50
    constant M     : integer  := 20;      -- 200
    
    -- buffer signals instantiation
    type buffer_vector is array (integer range <>) of std_logic_vector(15 downto 0);
    signal buffx        : buffer_vector(0 to conv_integer(K+L));
    
    -- accumulator signals instantiation
    signal acc0    : integer;
    
begin

    -- Init calculus process
    process (trap_clk, trap_rst)
    begin
        if (trap_rst = '0') then
            -- flags reset
            en_trapz     <= '0';
            en_buffx     <= '0';
            -- var reset          
            in_sample    <= X"0000";
        else 
            if rising_edge(trap_clk) then
                -- new sample
                in_sample  <= trap_in(15 downto 0);
                -- flags enable
                en_trapz     <= '1';
                en_buffx     <= '1';       
            end if;
        end if;
    end process;
    
    -- circular buffer
    process(trap_clk)
    begin
        if (trap_rst = '0') then
            -- initialization of buffer
            for i in buffx'high downto 0 loop
                buffx(i) <= X"0000";
            end loop;
        elsif rising_edge(trap_clk) then
            if en_buffx = '1' then
                -- registering buffx
                buffx(0) <= in_sample;
                for i in buffx'high-1 downto 0 loop
                    buffx(i+1) <= buffx(i);
                end loop;            
            else
                for i in buffx'high downto 0 loop
                    buffx(i) <= buffx(i);
                end loop;
            end if;
        end if;
    end process;
    
     -- Perform accumulation
    process (trap_clk)
    variable Acc            : integer;
    variable Acc_1          : integer;
    variable Acc_K          : integer;
    variable Acc_L          : integer;
    variable Acc_KL         : integer;
    variable Bcc            : integer;
    variable Ccc            : integer;
    begin
        if (trap_rst = '0') then 
            -- accumulators initialization
            acc0 <= 0;
            out_sample   <= X"00000000";
        elsif rising_edge(trap_clk) then
            if en_trapz = '1' then      
                -- Calculation of the division in the equation     
                Acc_1          := conv_integer(signed(buffx(0)));
                Acc_K          := conv_integer(signed(buffx(K)));
                Acc_L          := conv_integer(signed(buffx(L)));
                Acc_KL         := conv_integer(signed(buffx(K+L)));
                Acc            := Acc_1 - Acc_K - Acc_L + Acc_KL;
                Bcc            := acc0 + Acc;
                acc0           <= Bcc;
                Ccc            := Bcc + M*Acc;
                
                out_sample <= out_sample + conv_std_logic_vector(Ccc,32);

            else
                -- Initialize the values
                out_sample <= X"00000000"; 
                acc0 <= 0;    
                
            end if;
        end if;
    end process;
    
    -- assign the output
    --trap_out <= B"000000" & out_sample(31 downto 6);
    trap_out <= out_sample;

end Behavioral;