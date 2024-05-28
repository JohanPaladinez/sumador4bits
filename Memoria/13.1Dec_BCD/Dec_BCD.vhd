library IEEE;
use IEEE.std_logic_1164.all;

entity Dec_BCD is
	port
	(
		numero : in std_logic_vector (3 downto 0);
		segmentos : out std_logic_vector (6 downto 0)
	);
end Dec_BCD;


architecture arch_Dec_BCD of Dec_BCD is

begin

	segmentos	<= "0000001" when numero = "0000" else
						"1001111" when numero = "0001" else
						"0010010" when numero = "0010" else
						"0000110" when numero = "0011" else
						"1001100" when numero = "0100" else
						"0100100" when numero = "0101" else
						"0100000" when numero = "0110" else
						"0001111" when numero = "0111" else
						"0000000" when numero = "1000" else
						"0001100" when numero = "1001" else
						--"0001100" when numero = "1001" else
						"0001000" when numero = "1010" else
						"1100000" when numero = "1011" else
						"0110001" when numero = "1100" else
						"1000010" when numero = "1101" else
						"0110000" when numero = "1110" else
						"0111000" when numero = "1111" else
						"1111111";

end arch_Dec_BCD;
