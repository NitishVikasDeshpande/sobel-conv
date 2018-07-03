--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:18:02 06/30/2018
-- Design Name:   
-- Module Name:   /home/nitish/Desktop/fifo own/fifo_own/convolution_tb.vhd
-- Project Name:  fifo_own
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: convolution
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
USE ieee.numeric_std.ALL;
 
ENTITY convolution_tb IS
END convolution_tb;
 
ARCHITECTURE behavior OF convolution_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT convolution
    PORT(
         f1 : IN  std_logic_vector(8 downto 0);
         f2 : IN  std_logic_vector(8 downto 0);
         f3 : IN  std_logic_vector(8 downto 0);
         f4 : IN  std_logic_vector(8 downto 0);
         f5 : IN  std_logic_vector(8 downto 0);
         f6 : IN  std_logic_vector(8 downto 0);
         f7 : IN  std_logic_vector(8 downto 0);
         f8 : IN  std_logic_vector(8 downto 0);
         f9 : IN  std_logic_vector(8 downto 0);
         p1 : IN  std_logic_vector(8 downto 0);
         p2 : IN  std_logic_vector(8 downto 0);
         p3 : IN  std_logic_vector(8 downto 0);
         p4 : IN  std_logic_vector(8 downto 0);
         p5 : IN  std_logic_vector(8 downto 0);
         p6 : IN  std_logic_vector(8 downto 0);
         p7 : IN  std_logic_vector(8 downto 0);
         p8 : IN  std_logic_vector(8 downto 0);
         p9 : IN  std_logic_vector(8 downto 0);
         dataout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal f1 : std_logic_vector(8 downto 0) := (others => '0');
   signal f2 : std_logic_vector(8 downto 0) := (others => '0');
   signal f3 : std_logic_vector(8 downto 0) := (others => '0');
   signal f4 : std_logic_vector(8 downto 0) := (others => '0');
   signal f5 : std_logic_vector(8 downto 0) := (others => '0');
   signal f6 : std_logic_vector(8 downto 0) := (others => '0');
   signal f7 : std_logic_vector(8 downto 0) := (others => '0');
   signal f8 : std_logic_vector(8 downto 0) := (others => '0');
   signal f9 : std_logic_vector(8 downto 0) := (others => '0');
   signal p1 : std_logic_vector(8 downto 0) := (others => '0');
   signal p2 : std_logic_vector(8 downto 0) := (others => '0');
   signal p3 : std_logic_vector(8 downto 0) := (others => '0');
   signal p4 : std_logic_vector(8 downto 0) := (others => '0');
   signal p5 : std_logic_vector(8 downto 0) := (others => '0');
   signal p6 : std_logic_vector(8 downto 0) := (others => '0');
   signal p7 : std_logic_vector(8 downto 0) := (others => '0');
   signal p8 : std_logic_vector(8 downto 0) := (others => '0');
   signal p9 : std_logic_vector(8 downto 0) := (others => '0');

 	--Outputs
   signal dataout : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: convolution PORT MAP (
          f1 => f1,
          f2 => f2,
          f3 => f3,
          f4 => f4,
          f5 => f5,
          f6 => f6,
          f7 => f7,
          f8 => f8,
          f9 => f9,
          p1 => p1,
          p2 => p2,
          p3 => p3,
          p4 => p4,
          p5 => p5,
          p6 => p6,
          p7 => p7,
          p8 => p8,
          p9 => p9,
          dataout => dataout
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
p1 <= "00000001";
p2 <= "00000010";
p3 <= "00000011";
p4 <= "00000100";
p5 <= "00000101";
p6 <= "00000110";
p7 <= "00000111";
p8 <= "00001000";
p9 <= "00001001";
--p1 <= 1;
--p2 <= 2;
--p3 <= 3 ;
--p4 <= 4;
--p5 <= 5;
--p6 <= 6;
--p7 <= 7;
--p8 <= 8;
--p9 <= 9;
--f1 <= 1;
--f2 <= -2;
--f3 <= 3;
--f4 <= -4;
--f5 <= 5;
--f6 <= -6;
--f7 <= 7;
--f8 <= -8;
--f9 <= 9;



      wait for period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
