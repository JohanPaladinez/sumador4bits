library IEEE;
use IEEE.std_logic_1164.all;


entity Full_adder is
	port
	(
		-- Input ports
		A	: in  std_logic;
		B	: in  std_logic;
		Cin	: in  std_logic;

		-- Output ports
		Sum	: out std_logic;
		Cout	: out std_logic
	);
end Full_adder;


architecture arch_Full_adder of Full_adder is

	signal HA1_SUM : std_logic;
	signal HA1_Cout : std_logic;
	signal HA2_Cout : std_logic;
	
	
component Half_adder is
	port
	(
		-- Input ports
		A	: in  std_logic;
		B	: in  std_logic;

		-- Output ports
		Sum	: out std_logic;
		Cout	: out std_logic
	);
end component;


begin

	U1 : Half_adder port map (A=>A, B=>B, Sum=>HA1_SUM, Cout=>HA1_Cout);
	U2 : Half_adder port map (A=>HA1_SUM, B=>Cin, Sum=>Sum, Cout=>HA2_Cout);
	
	Cout <= HA1_Cout or HA2_Cout;

end arch_Full_adder;

