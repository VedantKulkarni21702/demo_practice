--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:24:03 10/28/2023
-- Design Name:   
-- Module Name:   D:/VLSI Practical/lcd/tb_lcd.vhd
-- Project Name:  lcd
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lcd
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_lcd IS
END tb_lcd;
 
ARCHITECTURE behavior OF tb_lcd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lcd
    PORT(
         clk : IN  std_logic;
         lcd_rw : OUT  std_logic;
         lcd_e : OUT  std_logic;
         lcd_rs : OUT  std_logic;
         data : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal lcd_rw : std_logic;
   signal lcd_e : std_logic;
   signal lcd_rs : std_logic;
   signal data : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lcd PORT MAP (
          clk => clk,
          lcd_rw => lcd_rw,
          lcd_e => lcd_e,
          lcd_rs => lcd_rs,
          data => data
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
