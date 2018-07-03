----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:43:00 06/29/2018 
-- Design Name: 
-- Module Name:    small_fifo - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity small_fifo is
port(
clk :in std_logic ;
datain :in std_ulogic_vector(7 downto 0);
dataout1 :out std_ulogic_vector(7 downto 0);
dataout2 :out std_ulogic_vector(7 downto 0);
dataout3 :out std_ulogic_vector(7 downto 0);
--dataout :out std_logic_vector(7 downto 0);
wr :in std_logic;
rd1 :in std_logic;
rd2 :in std_logic;
rd3 :in std_logic;
--rd :in std_logic;
full :out std_logic;
empty:out std_logic);


end small_fifo;

architecture Behavioral of small_fifo is
type pixels_in_a_row is array(0 to 8) of std_ulogic_vector(7 downto 0);--3x3=9
signal pix_row : pixels_in_a_row :=(others => (others => '0')); --initialize all bits to 0
signal readptr,writeptr : std_logic_vector(3 downto 0) :="0000"; --we need 4 bit pointers as 9 pixels in 1 row
signal r1ptr : std_logic_vector(3 downto 0) := "0000";--0
signal r2ptr : std_logic_vector(3 downto 0) :="0011"; --3
signal r3ptr : std_logic_vector(3 downto 0) :="0110";--6


begin
process(clk) --writing process
begin

if(clk'event and clk='1' and wr ='1') then
pix_row(conv_integer(writeptr)) <= datain;
writeptr <= writeptr+'1';
end if;
if(writeptr="1001")then
full <= '1'; 
writeptr<="0000";
else 
full <= '0';
end if;
end process;

process(clk) --reading process 1
begin
if(clk'event and clk ='1' and rd1='1') then
dataout1 <= pix_row(conv_integer(r1ptr));
r1ptr<= r1ptr+'1';
end if;
if(r1ptr="1001")then 
r1ptr<="0000";
end if;
end process;

process(clk) --reading process 2
begin
if(clk'event and clk ='1' and rd2='1') then
dataout2 <= pix_row(conv_integer(r2ptr));
r2ptr<= r2ptr+'1';

end if;
if(r2ptr="1001")then 
r2ptr<="0000";
end if;

end process;

process(clk) --reading process 3
begin
if(clk'event and clk ='1' and rd3='1') then
dataout3 <= pix_row(conv_integer(r3ptr));
r3ptr<= r3ptr+'1';
end if;
if(r3ptr="1001")then 
r3ptr<="0000";
end if;
end process;


end Behavioral;

