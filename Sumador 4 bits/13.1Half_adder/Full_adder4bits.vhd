library IEEE;
use IEEE.std_logic_1164.all;

entity Full_adder4bits is
	port
	(
		-- Input ports
		A	: in  std_logic_vector (3 downto 0);
		B	: in  std_logic_vector (3 downto 0);
		Cin : in std_logic;
		-- Output ports
		S : out std_logic_vector (3 downto 0);
		c_out : out std_logic
	);
end Full_adder4bits;


architecture arch_Full_adder4bits of Full_adder4bits is

	signal C1 : std_logic;
	signal C2 : std_logic;
	signal C3 : std_logic;
	
component Full_adder is
	port
	(
		-- Input ports
		A, B, Cin	: in  std_logic;
		-- Output ports
		Sum	: out std_logic;
		Cout	: out std_logic
	);
	end component;



begin

	U1 : Full_adder port map (A=>A(0), B=>B(0), Cin=> '0', Sum=>S(0), Cout=>C1);
	U2 : Full_adder port map (A=>A(1), B=>B(1), Cin=>C1, Sum=>S(1), Cout=>C2);
	U3 : Full_adder port map (A=>A(2), B=>B(2), Cin=>C2, Sum=>S(2), Cout=>C3);
	U4 : Full_adder port map (A=>A(3), B=>B(3), Cin=>C3, Sum=>S(3), Cout=>c_out);

end arch_Full_adder4bits;

