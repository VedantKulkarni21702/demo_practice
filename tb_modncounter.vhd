--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:56:51 10/28/2023
-- Design Name:   
-- Module Name:   D:/VLSI Practical/MODN_Counter/tb_modncounter.vhd
-- Project Name:  MODN_Counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MODN_Counter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.math_real.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_modncounter IS
END tb_modncounter;
 
ARCHITECTURE behavior OF tb_modncounter IS 
     signal n: natural := 25 ;
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MODN_Counter
    PORT(
         clock : IN  std_logic;
         clear : IN  std_logic;
         count : IN  std_logic;
         Q : OUT  std_logic_vector(natural(ceil(log2(real(n))))-1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal clear : std_logic := '0';
   signal count : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(natural(ceil(log2(real(n))))-1 downto 0);
	

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MODN_Counter PORT MAP (
          clock => clock,
          clear => clear,
          count => count,
          Q => Q
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     clear<='1';

      wait for clock_period*10;
		
		clear<='0';
		count<='1';
		

      -- insert stimulus here 

      wait;
   end process;

END;