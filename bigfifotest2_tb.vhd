--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:19:00 07/01/2018
-- Design Name:   
-- Module Name:   /home/nitish/Desktop/fifo own/fifo_own/bigfifotest2_tb.vhd
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
 use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
ENTITY bigfifotest2_tb IS
END bigfifotest2_tb;
 
ARCHITECTURE behavior OF bigfifotest2_tb IS 
 
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
   signal flagout : std_logic :='0';
   -- Clock period definitions
   constant clock_period : time := 0.01 ns;
	
	--files
	file file_VECTORS : text;
	file pipe1 : text;
	file pipe2 : text;
	file pipe3 : text;
	file pipe4 : text;
	file pipe5 : text;
	file pipe6 : text;
	file pipe7 : text;
	file pipe8 : text;
	file pipe9 : text;
	
 
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
   reading: process
	 variable v_ILINE     : line;
	 variable v_vector : std_logic_vector( 7 downto 0);
	 variable flag : std_logic :='0';
	 variable vspace : character;
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;
		file_open(file_VECTORS, "a.txt",  read_mode);
		
		   while not endfile( file_VECTORS) loop
         readline(file_VECTORS, v_ILINE);
			while not (v_ILINE'length = 0) loop
         read(v_ILINE,v_vector);
			read(v_ILINE,vspace);
			datain <= v_vector;
			wait for clock_period;
			end loop;
			end loop;
      -- insert stimulus here 
      file_close(file_VECTORS);
		flag :='1';
		flagout <= flag;
      wait;
   end process;
	
	writing : process
	variable p1: line;
	-- variable p2: line;
	-- variable p3: line;
	 --variable p4: line;
	 --variable p5: line;
	 --variable p6: line;
	 --variable p7: line;
	 --variable p8: line;
	 --variable p9: line;
	 
	 
	 begin
	   file_open( pipe1 ,"b.txt" ,write_mode);
		--file_open( pipe2 ,"p2.txt" ,write_mode);
		--file_open( pipe3 ,"p3.txt" ,write_mode);
		--file_open( pipe4 ,"p4.txt" ,write_mode);
		--file_open( pipe5 ,"p5.txt" ,write_mode);
		--file_open( pipe6 ,"p6.txt" ,write_mode);
		--file_open( pipe7 ,"p7.txt" ,write_mode);
		--file_open( pipe8 ,"p8.txt" ,write_mode);
		--file_open( pipe9 ,"p9.txt" ,write_mode);
		
		while ( fifo3full = '0') loop
		end loop;
		while ( flagout = '0') loop
		write(p1,pixel_1);
      writeline(pipe1, p1);
		--write(p2,pixel_2);
      --writeline(pipe2, p2);
		--write(p3,pixel_3);
      --writeline(pipe3, p3);
		--write(p4,pixel_4);
      --writeline(pipe4, p4);
		--write(p5,pixel_5);
      --writeline(pipe5, p5);
		--write(p6,pixel_6);
      --writeline(pipe6, p6);
		--write(p7,pixel_7);
      --writeline(pipe7, p7);
		--write(p8,pixel_8);
      --writeline(pipe8, p8);
		--write(p9,pixel_9);
      --writeline(pipe9, p9);
		end loop;
		
		file_close(pipe1);
		--file_close(pipe2);
		--file_close(pipe3);
		--file_close(pipe4);
		--file_close(pipe5);
		--file_close(pipe6);
		--file_close(pipe7);
		--file_close(pipe8);
		--file_close(pipe9);
		wait;
		end process;
		

END;
