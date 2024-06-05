----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2024 21:16:05
-- Design Name: 
-- Module Name: leds - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity leds is
    Port ( x        : in  STD_LOGIC_VECTOR (15 downto 0);
           sw       : in  std_logic_vector (1 downto 0);
           ap_clk   : in  std_logic;
           led      : out STD_LOGIC_VECTOR (3 downto 0);
           addr     : out STD_LOGIC_VECTOR (6 downto 0);
           d_in     : out STD_LOGIC_VECTOR (15 downto 0);
           --x_con_o  : out std_logic;
           --x_con_i  : in  std_logic;
           d_we_en  : out std_logic);
end leds;

architecture Behavioral of leds is

begin

process (ap_clk)
begin
    if rising_edge(ap_clk) then
        if unsigned(x) < 256 then
            led <= B"0000";
        elsif unsigned(x) < 4096 then
            led <= B"0001";
        elsif unsigned(x) < 16500 then
            led <= B"0011";
        elsif unsigned(x) < 60000 then
            led <= B"0111";
        else
            led <= B"1111";
        end if;
        --led <= x(5 downto 2);
    end if;
end process;

process (ap_clk)
begin
    if rising_edge(ap_clk) then
        d_in <= X"0000";
        d_we_en <= '0';
        -- x_r_o <= '0';
        --x_con_o <= x_con_i and (sw(0) or sw(1));
    end if;
end process;


process (ap_clk)
begin
    if rising_edge(ap_clk) then
        case sw is
          when B"00" =>
            addr <= B"0010001"; -- Asigna '1' a la salida cuando la entrada es '0'
          when B"01" =>
            addr <= B"0011001"; -- Asigna '0' a la salida cuando la entrada es '1'
          when B"10" =>
            addr <= B"0010110"; -- Asigna '0' a la salida cuando la entrada es '1'
          when others =>
            addr <= B"0011111"; -- Asigna 'Z' a la salida para otros valores de entrada
        end case;
    end if;
end process;
        



end Behavioral;
