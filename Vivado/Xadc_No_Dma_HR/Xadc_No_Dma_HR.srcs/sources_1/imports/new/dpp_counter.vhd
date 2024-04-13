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
    generic ( 
           fifo_len   : integer := 400
        );
    Port ( ap_clk     :  in  std_logic;
           ap_rst     :  in  std_logic;
           -- ap_start   :  in  std_logic;
           x          :  in  std_logic_vector (31 downto 0);
           y          :  out std_logic_vector (31 downto 0);
           led        :  out std_logic;
           led_rst    :  out std_logic;
           fifo_en    :  in  std_logic;
           fifo_o     :  out std_logic_vector (31 downto 0)
         );
end dpp_counter;

architecture Behavioral of dpp_counter is
    -- counter variables
    signal en_rissing, en_falling   : std_logic;
    signal counted                  : std_logic;
    signal counter                  : integer      := 0;
    signal in_sample                : integer      := 0;
    signal out_counter              : std_logic_vector (31 downto 0);
    signal diff                     : integer      := 0;
    
    signal led_s                    : std_logic;
    signal led_r                    : std_logic;
    
    -- buffer fifo
    type buffer_fifo is array (integer range <>) of integer;
    signal fifoy           : buffer_fifo(0 to fifo_len);
    signal comp_buff       : buffer_fifo(0 to fifo_len);
    constant comparator    : integer     := 50000; -- 32767;  -- comparator level
    constant comp_high     : integer     := 1500000;  -- comparator level
    

begin

    process (ap_clk, ap_rst)
    variable comp_diff     : integer    :=  (comp_high - comparator) / fifo_len;
    begin 
        if (ap_rst = '0') then
            led_r <= '0';
            for i in 0 to comp_buff'high loop
                comp_buff(i) <= 0;
            end loop;
        else
            led_r <= '1';
            for i in 0 to comp_buff'high loop
                comp_buff(i) <= i*comp_diff + comparator;
            end loop;
        end if;
    end process;

    -- counter activated    
    process (ap_clk, ap_rst)
    begin
        if (ap_rst = '0') then
            -- reset everything
            en_rissing  <= '0';
            en_falling  <= '1';  -- it is prepared to count
            in_sample   <= 0;
            diff <= 0;
            
            led_s <= '0';
            
            for i in 0 to fifoy'high loop
                fifoy(i) <= 0;
            end loop;
            
            counter     <= 0; 
            out_counter <= conv_std_logic_vector(counter, 32);
        else
            if rising_edge(ap_clk) then
                in_sample <= conv_integer(signed(x)); 
                diff <= conv_integer(signed(x)) - in_sample;
                -- verify if there is a rissing edge
                if (in_sample > comparator) then
                    if (en_rissing = '0') and (en_falling = '1') then
                        en_rissing <= '1';
                        en_falling <= '0';
                        counted <= '0';
                        -- increase the counter
                        counter <= counter + 1; 
                        out_counter <= conv_std_logic_vector(counter, 32);
                        
                        led_s <= not led_s;
                        
                    end if;
                end if;
                -- verify if there is a falling edge
                if (in_sample <= comparator) then
                    if (en_rissing = '1') and (en_falling = '0') then
                        en_rissing <= '0';
                        en_falling <= '1';
                    end if;
                end if;
                
                -- discriminator
                if (in_sample > comparator) and (diff < 0) then 
                    for i in 0 to comp_buff'high-1 loop
                        if (in_sample > comp_buff(i)) and (in_sample < comp_buff(i+1)) and counted = '0' then
                            fifoy(i) <= fifoy(i) + 1;
                        end if;
                    end loop;
                    counted <= '1';                
                end if;                
            end if;
        end if;
    end process;
    
    process (ap_clk, fifo_en)
    variable pos : integer := 0;
    begin
        if (fifo_en = '0') then
            fifo_o <= X"00000000";
            pos := 0;
        else
            if rising_edge(ap_clk) then
                if (pos < fifo_len) then
                    if pos = 0 or pos = fifo_len-1 then 
                        fifo_o <= X"0000000A";
                    else
                        fifo_o <= conv_std_logic_vector(fifoy(pos),32);
                    end if;
                    pos := pos + 1;
                end if;                  
            end if;
        end if;
    
    end process;
        

    -- assign the output
    y <= out_counter;
    led <= led_s;
    led_rst <= led_r;

end Behavioral;
