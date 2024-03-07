library IEEE;
use IEEE.std_logic_1164.ALL;

entity DecBCD_7seg is
	port(	
	IA : in std_logic;
	IB : in std_logic;
	IC : in std_logic;
	ID : in std_logic;
	abcdefg : out std_logic_vector (6 downto 0)
);
end DecBCD_7seg;

architecture march_2 of DecBCD_7seg is

 signal IAIBICID : std_logic_vector (3 downto 0);
 
begin

IAIBICID <= IA & IB & IC & ID ;

 with (IAIBICID) select
	abcdefg<= "0000001" when "0000",
	"1001111" when "0001",
	"0010010" when "0010",
	"0000110" when "0011",
	"1001100" when "0100",
	"0100100" when "0101",
	"0100000" when "0110",
	"0001111" when "0111",
	"0000000" when "1000",
	"0001100" when "1001",
	"1111111" when others;

	end march_2;