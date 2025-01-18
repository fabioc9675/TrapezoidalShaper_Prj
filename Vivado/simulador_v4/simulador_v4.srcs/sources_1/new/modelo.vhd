library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL; -- Números signados
library UNISIM; -- Bloques lógicos
use UNISIM.VComponents.all;


Library UNISIM;
use UNISIM.vcomponents.all;

Library UNIMACRO;
use UNIMACRO.vcomponents.all;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity modelo is
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC; 
          xn : in STD_LOGIC_VECTOR(17 downto 0);
          yn : out STD_LOGIC_VECTOR(63 downto 0));
end modelo;

architecture Behavioral of modelo is
-- Señales _0 inicializadas con 43 bits
signal s1_0, s2_0, s3_0, s4_0, s5_0 : std_logic_vector(42 downto 0) := (others => '0');

-- Señales _1 inicializadas con 48 bits
signal s1_1, s2_1, s3_1, s4_1, s5_1 : std_logic_vector(88 downto 0) := (others => '0');


-- Señales _0 inicializadas con 43 bits
signal s6_0, s7_0, s8_0, s9_0, s10_0 : std_logic_vector(88 downto 0) := (others => '0');

-- Señales _1 inicializadas con 48 bits
signal s6_1, s7_1, s8_1, s9_1, s10_1 : std_logic_vector(88 downto 0) := (others => '0');


signal x_dsp : std_logic_vector(88 downto 0) := (others => '0');
signal y_dsp : std_logic_vector(88 downto 0) := (others => '0');
signal y_aux : std_logic_vector(88 downto 0) := (others => '0');
signal y : std_logic_vector(63 downto 0) := (others => '0');

signal s1_r1, s2_r1, s2_r2, s3_r1, s3_r2, s3_r3: std_logic_vector(88 downto 0) := (others => '0');
signal s4_r1, s4_r2, s4_r3, s4_r4, s5_r1, s5_r2: std_logic_vector(88 downto 0) := (others => '0');
signal s5_r3, s5_r4, s5_r5: std_logic_vector(88 downto 0) := (others => '0');


signal s6_r1, s7_r1, s7_r2, s8_r1, s8_r2, s8_r3: std_logic_vector(88 downto 0) := (others => '0');
signal s9_r1, s9_r2, s9_r3, s9_r4, s10_r1, s10_r2: std_logic_vector(88 downto 0) := (others => '0');
signal s10_r3, s10_r4, s10_r5: std_logic_vector(88 downto 0) := (others => '0');

signal ceros39 : std_logic_vector(38 downto 0) := (others => '0');
signal ceros40 : std_logic_vector(39 downto 0) := (others => '0');
signal ceros41 : std_logic_vector(40 downto 0) := (others => '0');


constant a1: signed(24 downto 0) := to_signed(integer(16516376),25);
constant a2: signed(24 downto 0) := to_signed(integer(-12707820),25);
constant a3: signed(24 downto 0) := to_signed(integer(9529191),25);
constant a4: signed(24 downto 0) := to_signed(integer(-13928156),25);
constant a5: signed(24 downto 0) := to_signed(integer(3997051),25);

constant b1: signed(24 downto 0) := to_signed(integer(-13337227),25);
constant b2: signed(24 downto 0) := to_signed(integer(13610776),25);
constant b3: signed(24 downto 0) := to_signed(integer(-16458145),25);
constant b4: signed(24 downto 0) := to_signed(integer(9201746),25);
constant b5: signed(24 downto 0) := to_signed(integer(-4054104),25);


COMPONENT x_mul
  PORT (
    A : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(42 DOWNTO 0) 
  );
END COMPONENT;


COMPONENT y_mul
  PORT (
    A : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(24 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(88 DOWNTO 0) 
  );
END COMPONENT;



begin

    -- Shift Left
s1_1 <= std_logic_vector(resize(signed(s1_0 & ceros40),89));
s2_1 <= std_logic_vector(resize(signed(s2_0 & ceros41),89));
s3_1 <= std_logic_vector(resize(signed(s3_0 & ceros40),89));
s4_1 <= std_logic_vector(resize(signed(s4_0 & ceros39),89));
s5_1 <= std_logic_vector(resize(signed(s5_0 & ceros39),89));


    -- Shift Right
s6_1 <= std_logic_vector(shift_right(signed(s6_0), 1));
s7_1 <= s7_0;
s8_1 <= s8_0;
s9_1 <= std_logic_vector(shift_right(signed(s9_0), 2));
s10_1 <= std_logic_vector(shift_right(signed(s10_0), 3));


 process (clk)
    begin
        if rising_edge(clk) then
        s1_r1 <= s1_1;
        
        s2_r1 <= s2_1;
        s2_r2 <= s2_r1;
        
        s3_r1 <= s3_1;
        s3_r2 <= s3_r1;
        s3_r3 <= s3_r2;
        
        s4_r1 <= s4_1;
        s4_r2 <= s4_r1;
        s4_r3 <= s4_r2;
        s4_r4 <= s4_r3;
 
        
        s5_r1 <= s5_1;
        s5_r2 <= s5_r1;
        s5_r3 <= s5_r2;
        s5_r4 <= s5_r3;
        s5_r5 <= s5_r4;
        
        x_dsp <= s5_r5 + s4_r4 + s3_r3 + s2_r2 + s1_r1;
        end if;
     
    end process;
 
    process (clk)
    begin
        if rising_edge(clk) then
        s6_r1 <= s6_1;
        
        s7_r1 <= s7_1;
        s7_r2 <= s7_r1;
        
        s8_r1 <= s8_1;
        s8_r2 <= s8_r1;
        s8_r3 <= s8_r2;
        
        s9_r1 <= s9_1;
        s9_r2 <= s9_r1;
        s9_r3 <= s9_r2;
        s9_r4 <= s9_r3;
        
        
        s10_r1 <= s10_1;
        s10_r2 <= s10_r1;
        s10_r3 <= s10_r2;
        s10_r4 <= s10_r3;
        s10_r5 <= s10_r4;
        
        y_dsp <= s10_r4 + s9_r3 + s8_r2 + s7_r1 + s6_1;
        end if;
    end process;   



m1 : x_mul
  PORT MAP (
    A => xn,
    B => STD_LOGIC_VECTOR(b1),
    P => s1_0
  );
  
  m2 : x_mul
  PORT MAP (
    A => xn,
    B => STD_LOGIC_VECTOR(b2),
    P => s2_0
  );
  
  m3 : x_mul
  PORT MAP (
    A => xn,
    B => STD_LOGIC_VECTOR(b3),
    P => s3_0
  );
  
  m4 : x_mul
  PORT MAP (
    A => xn,
    B => STD_LOGIC_VECTOR(b4),
    P => s4_0
  );
  
  m5 : x_mul
  PORT MAP (
    A => xn,
    B => STD_LOGIC_VECTOR(b5),
    P => s5_0
  );
  
m6 : y_mul
  PORT MAP (
    A => y,
    B => STD_LOGIC_VECTOR(a1),
    P => s6_0
  );
  
  m7 : y_mul
  PORT MAP (
    A => y,
    B => STD_LOGIC_VECTOR(a2),
    P => s7_0
  );
  
  m8 : y_mul
  PORT MAP (
    A => y,
    B => STD_LOGIC_VECTOR(a3),
    P => s8_0
  );
  
  m9 : y_mul
  PORT MAP (
    A => y,
    B => STD_LOGIC_VECTOR(a4),
    P => s9_0
  );
  
  m10 : y_mul
  PORT MAP (
    A => y,
    B => STD_LOGIC_VECTOR(a5),
    P => s10_0
  );

y_aux <= x_dsp + y_dsp;
y <= y_aux(84 downto 21);

end Behavioral;









