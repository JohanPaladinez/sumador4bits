library verilog;
use verilog.vl_types.all;
entity Output_ports is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        writen          : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        port_out_01     : out    vl_logic_vector(7 downto 0);
        port_out_00     : out    vl_logic_vector(7 downto 0)
    );
end Output_ports;
