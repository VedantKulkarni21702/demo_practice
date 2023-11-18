----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:19 10/29/2023 
-- Design Name: 
-- Module Name:    UNI_shift_register - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity UNI_shift_register is
 Port ( rst : in STD_LOGIC;
 clk : in STD_LOGIC;
 Sin : in STD_LOGIC;
 mode : in STD_LOGIC_VECTOR (1 downto 0);
 Pin : in STD_LOGIC_VECTOR (3 downto 0);
 Sout : out STD_LOGIC;
 Pout : out STD_LOGIC_VECTOR (3 downto 0)
 );
end UNI_shift_register;
architecture UNI_Shift_Register_arch of UNI_shift_register is
SIGNAL i : NATURAL := 0;
SIGNAL temp : STD_LOGIC_VECTOR (3 downto 0):="0000";
begin
PROCESS(rst, clk, mode, Sin, Pin,i)
BEGIN
IF rst = '1' THEN
Pout <= "0000";
Sout <= '0';
ELSIF FALLING_EDGE(clk) THEN
CASE mode IS 
WHEN "00" =>
temp(3 downto 1) <= temp(2 downto 0);
temp(0) <= Sin;
Sout <= temp(3);
Pout <= "0000";
WHEN "01" =>
temp(3 downto 1) <= temp(2 downto 0);
temp(0) <= Sin;
Pout <= temp;
Sout <= '0';
WHEN "10" =>
temp(3 downto 0) <= Pin(3 downto 0);
if i=4 then
--Sout<='0';
i<=0;
end if;
if i<4 then 
Sout<=temp(3-i);
i<=i+1;
end if;
--temp <= Pin;
--Sout <= temp(3);
--temp(3 downto 1) <= temp(2 downto 0);
--Pout <= "0000";
WHEN OTHERS =>
Pout <= Pin;
Sout <= '0';
END CASE;
END IF;
END PROCESS;
end UNI_Shift_Register_arch;