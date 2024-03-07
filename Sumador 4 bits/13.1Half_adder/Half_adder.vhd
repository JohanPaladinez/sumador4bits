library IEEE;
use IEEE.std_logic_1164.all;

entity Half_adder is
	port
	(
		-- Input ports
		A	: in  std_logic;
		B	: in  std_logic;

		-- Output ports
		Sum	: out std_logic;
		Cout	: out std_logic
	);
end Half_adder;


architecture arch_Half_adder of Half_adder is

	

begin

	Sum <= A xor B after 1 ns;
	Cout <= A and B after 1 ns;
	
end arch_Half_adder;
