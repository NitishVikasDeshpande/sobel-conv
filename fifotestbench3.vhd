--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:52:34 07/01/2018
-- Design Name:   
-- Module Name:   /home/nitish/Desktop/fifo own/fifo_own/fifotestbench3.vhd
-- Project Name:  fifo_own
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bigfifo
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
 
ENTITY fifotestbench3 IS
END fifotestbench3;
 
ARCHITECTURE behavior OF fifotestbench3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bigfifo
    PORT(
         datain : IN  std_logic_vector(7 downto 0);
         clock : IN  std_logic;
         pixel_1 : OUT  std_logic_vector(8 downto 0);
         pixel_2 : OUT  std_logic_vector(8 downto 0);
         pixel_3 : OUT  std_logic_vector(8 downto 0);
         pixel_4 : OUT  std_logic_vector(8 downto 0);
         pixel_5 : OUT  std_logic_vector(8 downto 0);
         pixel_6 : OUT  std_logic_vector(8 downto 0);
         pixel_7 : OUT  std_logic_vector(8 downto 0);
         pixel_8 : OUT  std_logic_vector(8 downto 0);
         pixel_9 : OUT  std_logic_vector(8 downto 0);
         filling_buffer : OUT  std_logic;
         emptying_buffer : OUT  std_logic;
         fifo1full : OUT  std_logic;
         fifo2full : OUT  std_logic;
         fifo3full : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal datain : std_logic_vector(7 downto 0) := (others => '0');
   signal clock : std_logic := '0';

 	--Outputs
   signal pixel_1 : std_logic_vector(8 downto 0);
   signal pixel_2 : std_logic_vector(8 downto 0);
   signal pixel_3 : std_logic_vector(8 downto 0);
   signal pixel_4 : std_logic_vector(8 downto 0);
   signal pixel_5 : std_logic_vector(8 downto 0);
   signal pixel_6 : std_logic_vector(8 downto 0);
   signal pixel_7 : std_logic_vector(8 downto 0);
   signal pixel_8 : std_logic_vector(8 downto 0);
   signal pixel_9 : std_logic_vector(8 downto 0);
   signal filling_buffer : std_logic;
   signal emptying_buffer : std_logic;
   signal fifo1full : std_logic;
   signal fifo2full : std_logic;
   signal fifo3full : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bigfifo PORT MAP (
          datain => datain,
          clock => clock,
          pixel_1 => pixel_1,
          pixel_2 => pixel_2,
          pixel_3 => pixel_3,
          pixel_4 => pixel_4,
          pixel_5 => pixel_5,
          pixel_6 => pixel_6,
          pixel_7 => pixel_7,
          pixel_8 => pixel_8,
          pixel_9 => pixel_9,
          filling_buffer => filling_buffer,
          emptying_buffer => emptying_buffer,
          fifo1full => fifo1full,
          fifo2full => fifo2full,
          fifo3full => fifo3full
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
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
