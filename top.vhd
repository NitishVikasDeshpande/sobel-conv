----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:33:13 07/03/2018 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
port(
 datain: IN STD_uLOGIC_VECTOR(7 downto 0);
 dataout: out STD_uLOGIC_VECTOR(7 downto 0);
 clock: in STD_LOGIC;
 dat_rdy : out STD_LOGIC;
 reset : in STD_LOGIC
 );
end top;

architecture Behavioral of top is
component bigfifo is
port(datain :in std_ulogic_vector(7 downto 0);
clock : in std_logic ;
pixel_1 : out std_ulogic_vector(7 downto 0);-- to add a signed bit as filter kernel are signed nos
pixel_2 : out std_ulogic_vector(7 downto 0);
pixel_3 : out std_ulogic_vector(7 downto 0);
pixel_4 : out std_ulogic_vector(7 downto 0);
pixel_5 : out std_ulogic_vector(7 downto 0);
pixel_6 : out std_ulogic_vector(7 downto 0);
pixel_7 : out std_ulogic_vector(7 downto 0);
pixel_8 : out std_ulogic_vector(7 downto 0);
pixel_9 : out std_ulogic_vector(7 downto 0);
filling_buffer : out std_logic;
emptying_buffer :out std_logic;
-- for debugging purposes
fifo1full : out std_logic;
fifo2full : out std_logic;
fifo3full : out std_logic;
datardy : out std_logic;
reset : in std_logic
);
end component;
 component matrix_multiply_top is
 port (
			  clock: in STD_LOGIC ;
				 nd_sig : in std_logic;
				 rdy :out std_logic;
           pixel_1 : in  STD_ULOGIC_VECTOR(7 downto 0);
           pixel_2 : in  STD_ULOGIC_VECTOR(7 downto 0);
           pixel_3 : in  STD_ULOGIC_VECTOR(7 downto 0);
           pixel_4 : in  STD_ULOGIC_VECTOR(7 downto 0);
           pixel_5 : in  STD_ULOGIC_VECTOR(7 downto 0);
           pixel_6 : in  STD_ULOGIC_VECTOR(7 downto 0);
           pixel_7 : in  STD_ULOGIC_VECTOR(7 downto 0);
           pixel_8 : in  STD_ULOGIC_VECTOR(7 downto 0);
           pixel_9 : in  STD_ULOGIC_VECTOR(7 downto 0);
--           kc_1 : in  float32;
--            kc_2 : in  float32;
--            kc_3 : in  float32;
--            kc_4 : in  float32;
--            kc_5 : in  float32;
--            kc_6 : in  float32;
--            kc_7 : in  float32;
--            kc_8 : in  float32;
--            kc_9 : in  float32;
           data_out : out STD_ULOGIC_VECTOR(7 downto 0)--output
               );
			end component;
signal filling_buffer :STD_LOGIC;
signal empty_buffer :STD_LOGIC;
signal fifo1_full: STD_LOGIC;
signal fifo2_full: STD_LOGIC;
signal fifo3_full: STD_LOGIC;
--signal clk : STD_LOGIC;
signal pixel_1 :   STD_ULOGIC_VECTOR(7 downto 0);
signal pixel_2 :   STD_ULOGIC_VECTOR(7 downto 0);
signal pixel_3 :   STD_ULOGIC_VECTOR(7 downto 0);
signal pixel_4 :   STD_ULOGIC_VECTOR(7 downto 0);
signal pixel_5 :   STD_ULOGIC_VECTOR(7 downto 0);
signal pixel_6 :   STD_ULOGIC_VECTOR(7 downto 0);
signal pixel_7 :   STD_ULOGIC_VECTOR(7 downto 0);
signal pixel_8 :   STD_ULOGIC_VECTOR(7 downto 0);
signal pixel_9 :   STD_ULOGIC_VECTOR(7 downto 0);
signal nd_sig :std_logic;
begin
fifo : bigfifo port map(
datain => datain,
clock =>clock,
pixel_1 =>pixel_1,
pixel_2 =>pixel_2,
pixel_3 =>pixel_3,
pixel_4 =>pixel_4,
pixel_5=>pixel_5,
pixel_6 =>pixel_6,
pixel_7 =>pixel_7,
pixel_8 =>pixel_8,
pixel_9 =>pixel_9,
filling_buffer =>filling_buffer,
emptying_buffer =>empty_buffer,
-- for debugging purposes
fifo1full =>fifo1_full,
fifo2full=>fifo2_full,
fifo3full=>fifo3_full,
datardy => nd_sig,
reset=> reset);

conv: matrix_multiply_top port map(
clock=> clock,
nd_sig => nd_sig,
rdy => dat_rdy,
pixel_1 =>pixel_1,
pixel_2 =>pixel_2,
pixel_3 =>pixel_3,
pixel_4 =>pixel_4,
pixel_5=>pixel_5,
pixel_6 =>pixel_6,
pixel_7 =>pixel_7,
pixel_8 =>pixel_8,
pixel_9 =>pixel_9,
data_out => dataout);
end Behavioral;

