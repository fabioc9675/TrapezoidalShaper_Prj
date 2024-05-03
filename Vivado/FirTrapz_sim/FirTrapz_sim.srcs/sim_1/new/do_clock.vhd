----------------------------------------------------------------------------------
-- Company: Universidad de Antioquia
-- Engineer: Fabian Castano
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity clock is
    generic(
        FREQUENCY       : positive := 1000000;
        PERIOD          : time := 0 sec;
        RESET_CLKS      : real := 1.5; 
        LATENCY         : positive := 31
    );
    port(
        clk_a   : out std_logic;
        clk_o   : out std_logic;
        -- rst_o   : out std_logic;
        stop_i  :  in boolean := FALSE
    );
end clock;

architecture Simulator of clock is
    

    function get_clock_time(per: time; freq: positive) return time is
    begin
        if per > 0 sec then
            return per;
        end if;
        return 1 sec/(real(FREQUENCY));
    end function get_clock_time;
    
    signal counter : integer := 0;
    signal clk_aux : std_logic:='1';
    signal clk : std_logic:='1';
    constant CLOCK_TIME: time:=get_clock_time(PERIOD, FREQUENCY);
    constant RESET_TIME: time:=CLOCK_TIME*RESET_CLKS;

begin

    do_clock: process
    begin
        while not stop_i loop
            wait for CLOCK_TIME/2;
            clk <= not clk;
            counter <= counter + 1;
            if counter = LATENCY then
                counter <= 0;
                clk_aux <= not clk_aux;
            end if;
        end loop;
        wait;
    end process do_clock;
    
    clk_a <= clk; -- clk_aux;
    clk_o <= clk;
    -- rst_o <= '1', '0' after RESET_TIME;

end architecture Simulator;
