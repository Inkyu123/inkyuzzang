library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity CRC_Checker2 is port(
	clk		: in std_logic;
	output	: out std_logic_vector(31 downto 0)); -- conduit_out
end CRC_Checker2;

architecture st of CRC_checker2 is

	function TOtal_Data_save (data_1byte : std_logic_vector(7 downto 0); Total_Data : std_logic_vector(31 downto 0))
		return std_logic_vector is
			variable Total_Data_out : std_logic_vector(31 downto 0);
		begin
			
			Total_Data_out(7 downto 0) := data_1byte;
			return std_logic_vector(unsigned(Total_Data_out) sll 8 );  -- shift left 8
	end Total_Data_save;
		
	signal Totla_Data : std_logic_vector(31 downto 0);

begin	
	process (clk)
	begin
		Totla_Data <= Total_Data_save("11001111","00000000000000000000000000000000");
		output <= Totla_Data;
	
	end process;
end st;