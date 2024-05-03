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
entity trapz_rm is
    Port ( ap_clk     :  in  std_logic;
           ap_rst     :  in  std_logic;
           -- ap_start   :  in  std_logic;
           x          :  in  std_logic_vector (31 downto 0);
           y          :  out std_logic_vector (31 downto 0)
         );
end trapz_rm;

architecture Behavioral of trapz_rm is
    -- Trapezoidal filter
    signal en_trapz, en_buffx               : std_logic;
    signal in_sample                        : std_logic_vector (15 downto 0);
    signal out_sample                       : std_logic_vector (31 downto 0);
    
    constant R     : integer  := 50;       -- 29
    constant M     : integer  := 100;      -- 200
    
    -- buffer signals instantiation
    type buffer_vector is array (integer range <>) of std_logic_vector(15 downto 0);
    signal buffx        : buffer_vector(0 to conv_integer(R+M+R));
    
    
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
            if rising_edge(ap_clk) then
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
        elsif rising_edge(ap_clk) then
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
    variable Acc_R          : integer;
    variable Acc_M          : integer;
    variable Acc_RR         : integer;
    variable Ccc            : integer;
    begin
        if (ap_rst = '0') then 
            -- accumulators initialization
            out_sample   <= X"00000000";
        elsif rising_edge(ap_clk) then
            if en_trapz = '1' then      
                -- Calculation of the division in the equation     
                Acc_1          := conv_integer(signed(buffx(0)));
                Acc_R          := conv_integer(signed(buffx(R)));
                Acc_M          := conv_integer(signed(buffx(R+M)));
                Acc_RR         := conv_integer(signed(buffx(R+M+R)));
                Acc            := Acc_1 - Acc_R - Acc_M + Acc_RR;
                Ccc            := (Acc - conv_integer(signed(out_sample)));--/R; 
                if Ccc > 32767 or Ccc < -32768 then
                    Ccc := 0;
                end if;
                out_sample     <=  conv_std_logic_vector(Ccc,32);

            else
                -- Initialize the values
                out_sample <= X"00000000"; 
                
            end if;
        end if;
    end process;
    
    -- assign the output
    y <= out_sample(27 downto 0) & B"0000";

end Behavioral;