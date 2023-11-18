----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:55:05 10/28/2023 
-- Design Name: 
-- Module Name:    MODN_Counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.math_real.all;


entity MODN_Counter is
generic(n: natural :=25);

port( clock: in std_logic;

clear: in std_logic;

count: in std_logic;

Q: out std_logic_vector(natural(ceil(log2(real(n))))-1 downto 0));
end MODN_Counter;

architecture Behavioral of MODN_Counter is

signal Pre_Q: std_logic_vector(natural(ceil(log2(real(n))))-1 downto 0);

begin

process(clock, count, clear)

begin

if clear = '1' then

Pre_Q <= (others => '0');

elsif (clock='0' and clock'event) then

if (count = '1' and Pre_Q < n-1) then

   Pre_Q <= Pre_Q + 1;
	
elsif (Pre_Q = n-1) then
  Pre_Q <= (others => '0');
   

end if;

end if;

end process;
Q <= Pre_Q;

end Behavioral;
