library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity convertidor is
	port
	(
		
		Sum_Cout : in integer range 0 to 31;
		Dec	: out integer range 0 to 9;
		Uni	: out integer range 0 to 9
	);
end convertidor;



architecture arch_Convertidor of Convertidor is

	
begin

	Dec <= Sum_Cout / 10;
	Uni <= Sum_Cout mod 10;
	
end arch_Convertidor;

