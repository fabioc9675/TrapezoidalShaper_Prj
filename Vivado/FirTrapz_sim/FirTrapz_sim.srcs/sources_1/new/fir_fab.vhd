----------------------------------------------------------------------------------
-- Company: Universidad de Antioquia
-- Engineer: Fabian Castano
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity creation
entity fir_fab is
    Port ( ap_clk     :  in  std_logic;
           ap_rst     :  in  std_logic;
           -- ap_start   :  in  std_logic;
           x          :  in  std_logic_vector (31 downto 0);
           y          :  out std_logic_vector (31 downto 0)
         );
end fir_fab;

architecture Behavioral of fir_fab is
    -- 100 taps filter
    signal en_fir, en_buff        : std_logic;
    signal in_sample              : std_logic_vector (15 downto 0);
    signal out_sample             : std_logic_vector (31 downto 0);
    -- Constants
    constant N            : integer   := 31;

    -- buffer signals initialization
    type buffer_vector is array (integer range <>) of std_logic_vector(15 downto 0);
    type accum_vector  is array (integer range <>) of std_logic_vector(31 downto 0);
    signal buff         : buffer_vector(0 to conv_integer(N));  -- buffer memory initialization
    signal tap          : buffer_vector(0 to conv_integer(N));  -- taps memory initialization
    signal acc          : accum_vector (0 to conv_integer(N));  -- accumulator memory initialization
    
-- Initialization of structure
begin

    -- Taps for fir filter running
    tap(0)  <= X"0000";
    tap(1)  <= X"0001";
    tap(2)  <= X"0003";
    tap(3)  <= X"0007";
    tap(4)  <= X"000C";
    tap(5)  <= X"0012";
    tap(6)  <= X"001A";
    tap(7)  <= X"0021";
    tap(8)  <= X"0029";
    tap(9)  <= X"0031";
    tap(10) <= X"0038";
    tap(11) <= X"003E";
    tap(12) <= X"0043";
    tap(13) <= X"0046";
    tap(14) <= X"0048";
    tap(15) <= X"0048";
    tap(16) <= X"0046";
    tap(17) <= X"0043";
    tap(18) <= X"003E";
    tap(19) <= X"0038";
    tap(20) <= X"0031";
    tap(21) <= X"0029";
    tap(22) <= X"0021";
    tap(23) <= X"001A";
    tap(24) <= X"0012";
    tap(25) <= X"000C";
    tap(26) <= X"0007";
    tap(27) <= X"0003";
    tap(28) <= X"0001";
    tap(29) <= X"0000";
    tap(30) <= X"0000";

    
    -- Init calculus process
    process (ap_clk, ap_rst)
    begin
        if (ap_rst = '0') then
            en_fir    <= '0';
            en_buff   <= '0';
            in_sample <= X"0000";
        else
            if rising_edge(ap_clk) then
                in_sample <= x(15 downto 0);
                en_fir    <= '1';
                en_buff   <= '1';
            end if;
        end if;            
    end process;
    
    -- Circular buffer
    process(ap_clk)
    begin
        if (ap_rst = '0') then
            -- initialization of buffer
            for i in buff'high downto 0 loop
                buff(i) <= X"0000";
            end loop;
        elsif rising_edge(ap_clk) then
            if en_buff = '1' then
                buff(0) <= in_sample;
                for i in buff'high-1 downto 0 loop
                    buff(i+1) <= buff(i);
                end loop;
            else
                for i in buff'high downto 0 loop
                    buff(i) <= buff(i);
                end loop;
            end if;
        end if;
    end process;
    
    -- Multiply stage of FIR
    process(ap_clk) 
    begin
        if (ap_rst = '0') then
            -- initialization of buffer
            for i in acc'high downto 0 loop
                acc(i) <= X"00000000";
            end loop;
        elsif rising_edge(ap_clk) then
            if en_fir = '1' then
                for i in acc'high downto 0 loop
                    acc(i) <= conv_std_logic_vector(signed(tap(i)) * signed(buff(i)), 32);
                end loop;
            end if;
        end if;
    end process;
    
    -- Perform accumulation
    process(ap_clk)
    begin
        if (ap_rst = '0') then
            out_sample <= X"00000000";  
        elsif rising_edge(ap_clk) then
            if en_fir = '1' then
                out_sample <= acc(0) + acc(1) + acc(2) + acc(3) + acc(4) + acc(5) + acc(6) + acc(7) + acc(8) + acc(9) +
                     acc(10) + acc(11) + acc(12) + acc(13) + acc(14) + acc(15) + acc(16) + acc(17) + acc(18) + acc(19) +
                     acc(20) + acc(21) + acc(22) + acc(23) + acc(24) + acc(25) + acc(26) + acc(27) + acc(28) + acc(29) +
                     acc(30);    
            else
                out_sample <= X"00000000";        
            end if;
        end if;
    end process;
    
    y <= B"0000000000000" & out_sample(31 downto 13);
    -- y <= out_sample;

end Behavioral;
