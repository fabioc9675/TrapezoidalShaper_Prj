--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Sat Mar  2 21:36:53 2024
--Host        : fabiancastano running 64-bit major release  (build 9200)
--Command     : generate_target pynq_fir_wrapper.bd
--Design      : pynq_fir_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pynq_fir_wrapper is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    x_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y_0 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end pynq_fir_wrapper;

architecture STRUCTURE of pynq_fir_wrapper is
  component pynq_fir is
  port (
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    x_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y_0 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component pynq_fir;
begin
pynq_fir_i: component pynq_fir
     port map (
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      x_0(31 downto 0) => x_0(31 downto 0),
      y_0(31 downto 0) => y_0(31 downto 0)
    );
end STRUCTURE;
