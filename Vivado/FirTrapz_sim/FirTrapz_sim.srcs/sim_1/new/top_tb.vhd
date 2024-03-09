----------------------------------------------------------------------------------
-- Company: Universidad de Antioquia
-- Engineer: Fabian Castano
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library std;
use std.textio.all;


entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is

   signal clk      : std_logic;
   signal clk_au   : std_logic;
   signal rst      : std_logic;
   signal n_rst    : std_logic;
   --signal valid    : std_logic:='0';
   --signal ena      : std_logic:='0';
   signal cha      : std_logic_vector(15 downto 0):= (others=>'0');
   signal datai    : std_logic_vector(31 downto 0):= (others=>'0');
   signal datao    : std_logic_vector(31 downto 0):= (others=>'0');
   signal stop     : boolean := FALSE;
   signal start    : std_logic := '1';
   constant N_SAMPL: integer := 1; 
   type t_int_array is array( integer range <> ) of integer;

   --signal data_in        : std_logic_vector (15 downto 0):= (others=>'0');
   --signal threshold_high : std_logic_vector (15 downto 0):= (others=>'0');
   --signal op_mode        : std_logic_vector (1 downto 0):= "00";
   --signal data_to_fifo   : std_logic_vector (15 downto 0);

-------				
   --signal fifo_wr_en_mux_out :  std_logic;

begin
    
   do_clock : entity work.Clock
   port map(
      clk_a  => clk_au,
      clk_o  => clk,
      -- rst_o  => rst,
      stop_i => stop
   );
   n_rst <= not(rst);
   
   dut : entity work.pynq_fir_wrapper
   port map (
        x_0 => datai,
        y_0 => datao, 
        -- ap_start => start,
        ap_clk => clk,
        ap_rst => rst
   );
   
   test_dut : process
        file cha_file   : text open read_mode is "data.csv";
        variable a_row  : line;
        variable a_read : t_int_array(1 to N_SAMPL);    
   begin
        rst <= '0';
        wait for 1000 ns;
        rst <= '1';
        wait for 2000 ns;
        rst <= '0';
        wait for 1000 ns;
        rst <= '1';
        wait for 2000 ns;
        file_open(cha_file, "data.csv", READ_MODE);
        
        -- signal read form FILE
        while not endfile(cha_file) loop
            readline(cha_file, a_row);
            for i in 1 to N_SAMPL loop
                read(a_row, a_read(i));
                cha <= std_logic_vector(to_unsigned(a_read(i), 16));
                wait for 1 ns;
                datai <= X"0000" & cha;
                report "The value of adcA_" & integer'image(i) &" is: " & integer'image(a_read(i));
                wait until rising_edge(clk_au);
                
            end loop;
        end loop;
        
        wait for 20 us;
        rst <= '1';
        wait for 20 us;
        rst <= '0';
        wait for 20 us;
        
        file_close(cha_file);
        wait;
   
   end process test_dut;

end Behavioral;
