----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.06.2024 11:00:39
-- Design Name: 
-- Module Name: slice_trapz - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity slice_trapz is
    Port ( trap_sig : in STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC_VECTOR (31 downto 0);
           sig_out : out STD_LOGIC_VECTOR (15 downto 0));
end slice_trapz;

architecture Behavioral of slice_trapz is

begin

    process(sel)
    begin
        case sel is
            when X"00000000" => sig_out <= trap_sig(15 downto 0);
            when X"00000001" => sig_out <= trap_sig(16 downto 1);
            when X"00000002" => sig_out <= trap_sig(17 downto 2);
            when X"00000003" => sig_out <= trap_sig(18 downto 3);
            when X"00000004" => sig_out <= trap_sig(19 downto 4);
            when X"00000005" => sig_out <= trap_sig(20 downto 5);
            when X"00000006" => sig_out <= trap_sig(21 downto 6);
            when X"00000007" => sig_out <= trap_sig(22 downto 7);
            when X"00000008" => sig_out <= trap_sig(23 downto 8);
            when X"00000009" => sig_out <= trap_sig(24 downto 9);
            when X"0000000A" => sig_out <= trap_sig(25 downto 10);
            when X"0000000B" => sig_out <= trap_sig(26 downto 11);
            when X"0000000C" => sig_out <= trap_sig(27 downto 12);
            when X"0000000D" => sig_out <= trap_sig(28 downto 13);
            when X"0000000E" => sig_out <= trap_sig(29 downto 14);
            when X"0000000F" => sig_out <= trap_sig(30 downto 15);
            when others      => sig_out <= trap_sig(31 downto 16);
        end case;
    end process;



end Behavioral;
