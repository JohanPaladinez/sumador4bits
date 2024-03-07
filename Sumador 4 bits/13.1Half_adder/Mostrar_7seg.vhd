library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Mostrar_7seg is
    port (
        A    : in  std_logic_vector (3 downto 0);
        B    : in  std_logic_vector (3 downto 0);
        Cin  : in  std_logic;
        DC   : out std_logic_vector (6 downto 0);
        UN   : out std_logic_vector (6 downto 0)
    );
end Mostrar_7seg;

architecture arch_Mostrar_7seg of Mostrar_7seg is

    component Full_adder4bits is
        port (
            A    : in  std_logic_vector (3 downto 0);
            B    : in  std_logic_vector (3 downto 0);
            Cin  : in  std_logic;
            S  : out std_logic_vector (3 downto 0);
				c_out : out std_logic
				
        );
    end component;

    component DecBCD_7seg is
        port (
            IA      : in  std_logic;
            IB      : in  std_logic;
            IC      : in  std_logic;
            ID      : in  std_logic;
            abcdefg : out std_logic_vector (6 downto 0)
        );
    end component;

    component Convertidor is
        port (
            Sum_Cout : in  std_logic_vector (4 downto 0);
			   Dec      : out std_logic_vector (3 downto 0);
            Uni      : out std_logic_vector (3 downto 0)
        );
    end component;

    signal Sum_4Bits   : std_logic_vector (3 downto 0);
    signal BCD_UN      : std_logic_vector (3 downto 0);
    signal BCD_DC      : std_logic_vector (3 downto 0);
	 signal Con_out 	  : std_logic;
	 signal Suma        : std_logic_vector (4 downto 0);
	 

begin
    U1 : Full_adder4bits port map (A => A, B => B, Cin => Cin, S => Sum_4Bits, c_out => Con_out );
	 Suma <= Con_out & Sum_4Bits;
    U3 : Convertidor port map (Sum_Cout => Suma, Dec => BCD_DC, Uni => BCD_UN);
    U4 : DecBCD_7seg port map (IA => BCD_DC(3), IB => BCD_DC(2), IC => BCD_DC(1), ID => BCD_DC(0), abcdefg => DC);
    U5 : DecBCD_7seg port map (IA => BCD_UN(3), IB => BCD_UN(2), IC => BCD_UN(1), ID => BCD_UN(0), abcdefg => UN);


end arch_Mostrar_7seg;
