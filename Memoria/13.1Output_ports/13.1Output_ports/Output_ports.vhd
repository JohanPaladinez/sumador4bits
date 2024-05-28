library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Output_ports is
    Port (
        address    : in  std_logic_vector(7 downto 0);
        data_in    : in  std_logic_vector(7 downto 0);
        writen      : in  std_logic;
        clock      : in  std_logic;
        reset      : in  std_logic;
        port_out_01: out std_logic_vector(7 downto 0);
        port_out_00: out std_logic_vector(7 downto 0)
    );
end Output_Ports;

architecture Output_ports_arch of Output_ports is
begin
    -- port_out_00 description : ADDRESS x"E0"
    U3 : process (clock, reset)
    begin
        if (reset = '0') then
            port_out_00 <= x"00";
        elsif (clock'EVENT and clock = '1') then
            if (address = x"E0" and writen = '1') then
                port_out_00 <= data_in;
            end if;
        end if;
    end process;


	U4 : process (clock, reset)
	begin
		if (reset ='0') then
			port_out_01 <= x"00";
		elsif (clock'event and clock='1') then
			if (address = x"E1" and writen = '1') then
				port_out_01 <= data_in;
			end if;
		end if;
	end process;

end Output_ports_arch;
