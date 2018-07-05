--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:24:39 06/30/2018
-- Design Name:   
-- Module Name:   /home/tushar/big_fifo/big_fifo_test_new.vhd
-- Project Name:  big_fifo
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
USE ieee.std_logic_arith.ALL;

use ieee.numeric_std.all;
use ieee.math_real.all; 
library ieee_proposed;
use ieee_proposed.fixed_float_types.all;
use ieee_proposed.fixed_pkg.all;
use ieee_proposed.float_pkg.all; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY big_fifo_test_new IS
END big_fifo_test_new;
 
ARCHITECTURE behavior OF big_fifo_test_new IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bigfifo
    PORT(
         datain : IN  std_ulogic_vector(7 downto 0);
         clock : IN  std_logic;
         pixel_1 : OUT  std_ulogic_vector(7 downto 0);
         pixel_2 : OUT  std_ulogic_vector(7 downto 0);
         pixel_3 : OUT  std_ulogic_vector(7 downto 0);
         pixel_4 : OUT  std_ulogic_vector(7 downto 0);
         pixel_5 : OUT  std_ulogic_vector(7 downto 0);
         pixel_6 : OUT  std_ulogic_vector(7 downto 0);
         pixel_7 : OUT  std_ulogic_vector(7 downto 0);
         pixel_8 : OUT  std_ulogic_vector(7 downto 0);
         pixel_9 : OUT  std_ulogic_vector(7 downto 0);
         filling_buffer : OUT  std_logic;
         emptying_buffer : OUT  std_logic;
			fifo1full : out std_logic;
fifo2full : out std_logic;
fifo3full : out std_logic;
testread1 : out std_logic;
testread2 : out std_logic;
fifo1_to_fifo2 : out std_ulogic_vector(7 downto 0);
fifo2_to_fifo3 : out std_ulogic_vector(7 downto 0);
       reset: in std_logic;
datardy: out std_logic;		
pointer1 : out std_logic_vector( 3 downto 0);
pointer2 : out std_logic_vector( 3 downto 0);
pointer3 : out std_logic_vector( 3 downto 0);
pointer4 : out std_logic_vector( 7 downto 0);
pointer5 : out std_logic_vector( 7 downto 0);
pointer6 : out std_logic_vector( 7 downto 0);
pointer7 : out std_logic_vector( 7 downto 0);
pointer8 : out std_logic_vector( 7 downto 0);
pointer9 : out std_logic_vector( 7 downto 0);
wrpointerf1 : out std_logic_vector( 7 downto 0);
wrpointerf2 : out std_logic_vector( 7 downto 0);
wrpointerf3 : out std_logic_vector( 3 downto 0);
read1ptr : out std_logic_vector( 7 downto 0);
read2ptr :  out std_logic_vector( 7 downto 0)
);
    END COMPONENT;
    
   --Inputs
   signal datain : std_ulogic_vector(7 downto 0) := (others => '0');
   signal clock : std_logic := '0';
    --Outputs
   signal pixel_1 : std_ulogic_vector(7 downto 0);
   signal pixel_2 : std_ulogic_vector(7 downto 0);
   signal pixel_3 : std_ulogic_vector(7 downto 0);
   signal pixel_4 : std_ulogic_vector(7 downto 0);
   signal pixel_5 : std_ulogic_vector(7 downto 0);
   signal pixel_6 : std_ulogic_vector(7 downto 0);
   signal pixel_7 : std_ulogic_vector(7 downto 0);
   signal pixel_8 : std_ulogic_vector(7 downto 0);
   signal pixel_9 : std_ulogic_vector(7 downto 0);
   signal filling_buffer : std_logic;
   signal emptying_buffer : std_logic;
	signal fifo1full :  std_logic;
	signal fifo2full :  std_logic;
	signal fifo3full :  std_logic;
	signal datardy :std_logic;
	signal testread1 : std_logic;
	signal testread2 : std_logic;
	signal fifo1_to_fifo2 : std_ulogic_vector(7 downto 0);
	signal fifo2_to_fifo3 : std_ulogic_vector(7 downto 0);
	signal pointer1 : std_logic_vector( 3 downto 0);
	signal pointer2 : std_logic_vector( 3 downto 0);
	signal pointer3 : std_logic_vector( 3 downto 0);
	signal pointer4 : std_logic_vector( 7 downto 0);
	signal pointer5 : std_logic_vector( 7 downto 0);
	signal pointer6 : std_logic_vector( 7 downto 0);
	signal pointer7 : std_logic_vector( 7 downto 0);
	signal pointer8 : std_logic_vector( 7 downto 0);
	signal pointer9 : std_logic_vector( 7 downto 0);
	signal wrpointerf1 : std_logic_vector( 7 downto 0);
   signal wrpointerf2 : std_logic_vector( 7 downto 0);
   signal wrpointerf3 : std_logic_vector( 3 downto 0);
	signal read1ptr :std_logic_vector( 7 downto 0);
	signal read2ptr :std_logic_vector( 7 downto 0);

    signal i : integer := 0;
   -- Clock period definitions
   constant clock_period : time := 0.01 ns;
 
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
			 fifo3full => fifo3full,
			 testread1 => testread1,
			 testread2 => testread2,
			 fifo1_to_fifo2 => fifo1_to_fifo2,
          fifo2_to_fifo3 => fifo2_to_fifo3,			 
			 reset => '0',
			 datardy => datardy,
			 pointer1 => pointer1,
			 pointer2 => pointer2,
			 pointer3 => pointer3,
			 pointer4 => pointer4,
			 pointer5 => pointer5,
			 pointer6 => pointer6,
			 pointer7 => pointer7,
			 pointer8 => pointer8,
			 pointer9 => pointer9,
			 wrpointerf1 => wrpointerf1 ,
			 wrpointerf2 => wrpointerf2,
			 wrpointerf3 => wrpointerf3,
			 read1ptr => read1ptr,
			 read2ptr => read2ptr
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
      --std_ulogic_vector(to_unsigned(i, datain'length));
		for i in 1 to 9 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 150 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
		
        for i in 1 to 150 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 1 to 240 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
        for i in 241 to 249 loop
            datain <= std_ulogic_vector(to_unsigned(i, datain'length));
            wait for clock_period;
      end loop;
      
      -- insert stimulus here 
      wait;
   end process;
	
END;