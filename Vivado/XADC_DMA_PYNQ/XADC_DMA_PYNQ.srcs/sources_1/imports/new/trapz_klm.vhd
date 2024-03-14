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
entity trapz_klm is
    Port ( ap_clk     :  in  std_logic;
           ap_rst     :  in  std_logic;
           -- ap_start   :  in  std_logic;
           x          :  in  std_logic_vector (31 downto 0);
           y          :  out std_logic_vector (31 downto 0)
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
    process (ap_clk, ap_rst)
    begin
        if (ap_rst = '0') then
            -- flags reset
            en_trapz     <= '0';
            en_buffx     <= '0';
            -- var reset          
            in_sample    <= X"0000";
        else 
            if falling_edge(ap_clk) then
                -- new sample
                in_sample  <= x(15 downto 0);
                -- flags enable
                en_trapz     <= '1';
                en_buffx     <= '1';       
            end if;
        end if;
    end process;
    
    -- circular buffer
    process(ap_clk)
    begin
        if (ap_rst = '0') then
            -- initialization of buffer
            for i in buffx'high downto 0 loop
                buffx(i) <= X"0000";
            end loop;
        elsif falling_edge(ap_clk) then
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
    process (ap_clk)
    variable Acc            : integer;
    variable Acc_1          : integer;
    variable Acc_K          : integer;
    variable Acc_L          : integer;
    variable Acc_KL         : integer;
    variable Bcc            : integer;
    variable Ccc            : integer;
    begin
        if (ap_rst = '0') then 
            -- accumulators initialization
            acc0 <= 0;
            out_sample   <= X"00000000";
        elsif falling_edge(ap_clk) then
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
    --y <= B"000000" & out_sample(31 downto 6);
    y <= out_sample;

end Behavioral;