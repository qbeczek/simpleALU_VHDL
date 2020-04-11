library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity simpleALU is
	port(
		opcode	 : in std_logic_vector (2 downto 0);
		arg1,arg2 : in std_logic_vector (7 downto 0);
		result	 : out std_logic_vector (7 downto 0);
		result_9bit: out std_logic_vector (8 downto 0);
		Carryout	 : out std_logic
	);
end simpleALU;

architecture behaviuor of simpleALU is
	signal arg1_sign, arg2_sign, arg1_int	: signed (7 downto 0);
	signal tmp : std_logic_vector (8 downto 0);
begin
	arg1_sign <= signed (arg1);
	arg2_sign <= signed (arg2);
	

	process_ALU:
	process(opcode, arg1, arg2, arg1_sign, arg2_sign)
	begin 
		Carryout <= tmp (8);
		result <= (others => '0');
		result_9bit <= (others => '0');
		tmp <= (others => '0');
		case opcode is 
			when "000" | "001" | "010" | "011" =>
			result <= arg1;
			when "100" =>
			tmp <= std_logic_vector (resize(signed (arg1_sign), 9) + resize(signed (arg2_sign), 9));
			
			if(tmp(8) = '1') then
				result_9bit <= std_logic_vector(tmp);
			elsif(tmp(8) = '0') then
				result <= tmp (7 downto 0);
			end if;
			
			when "101" =>
			result <= std_logic_vector (arg1_sign - arg2_sign);
			when "110" =>
			result <= std_logic_vector (arg1 and arg2);
			when "111" =>
			result <= std_logic_vector (arg1 or arg2);
		end case;
	end process process_ALU;
	
 
end behaviuor;