--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:33:48 10/28/2023
-- Design Name:   
-- Module Name:   D:/VLSI Practical/first_exp/alu_tb.vhd
-- Project Name:  first_exp
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_module
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
USE ieee.std_logic_unsigned.ALL;
ENTITY ALU_4bit_tb IS
END ALU_4bit_tb;
ARCHITECTURE behavior OF ALU_4bit_tb IS 
 -- Component Declaration for the Unit Under Test (UUT)
 COMPONENT alu_module
 PORT(
 A : IN std_logic_vector(3 downto 0);
 B : IN std_logic_vector(3 downto 0);
 F : IN std_logic_vector(2 downto 0);
 Y : OUT std_logic_vector(3 downto 0);
C_B : OUT std_logic
 );
 END COMPONENT;
 
 --Inputs
 signal A : std_logic_vector(3 downto 0) := "0010";
 signal B : std_logic_vector(3 downto 0) := "1111";
 signal F : std_logic_vector(2 downto 0) := (others => '1');
--Outputs
 signal Y : std_logic_vector(3 downto 0);
 signal C_B : std_logic;
 -- No clocks detected in port list. Replace <clock> below with 
 -- appropriate port name 
 
BEGIN
-- Instantiate the Unit Under Test (UUT)
 uut: alu_module PORT MAP (
 A => A,
 B => B,
 F => F,
 Y => Y,
 C_B => C_B
 );
 -- Stimulus process
 stim_proc_F: process
 begin
 F <= F + 1;
 wait for 25 ns;
 end process;
END;
