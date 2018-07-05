----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:39:52 06/25/2018 
-- Design Name: 
-- Module Name:    fifo - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo is
port(
clk :in std_logic ;
datain :in std_ulogic_vector(7 downto 0);
dataout1 :out std_ulogic_vector(7 downto 0);
dataout2 :out std_ulogic_vector(7 downto 0);
dataout3 :out std_ulogic_vector(7 downto 0);
dataout :out std_ulogic_vector(7 downto 0);
wr :in std_logic;
rd1 :in std_logic;
rd2 :in std_logic;
rd3 :in std_logic;
rd :in std_logic;
full :out std_logic;
empty:out std_logic;
pointer1 : out std_logic_vector(7 downto 0);
pointer2 : out std_logic_vector(7 downto 0);
pointer3 : out std_logic_vector(7 downto 0);
wrpointerf : out std_logic_vector(7 downto 0);
read1ptr: out std_logic_vector( 7 downto 0)
);

end fifo;

architecture Behavioral of fifo is
type pixels_in_a_row is array(0 to 149) of std_ulogic_vector(7 downto 0);--50x3=150
signal pix_row : pixels_in_a_row :=(others => (others => '0')); --initialize all bits to 0
signal readptr,writeptr : std_logic_vector(7 downto 0) :="00000000"; --we need 11 bit pointers as 1920 pixels in 1 row
signal r1ptr : std_logic_vector(7 downto 0) :="00000000";--0
signal r2ptr : std_logic_vector(7 downto 0) :="00000011"; --3
signal r3ptr : std_logic_vector(7 downto 0) :="00000110";--6

begin

process(clk)--writing process
variable writeptrc: std_logic_vector( 7 downto 0):="00000000";
begin
if(clk'event and clk='1' and wr ='1') then
pix_row(conv_integer(writeptrc)) <= datain;
writeptrc := writeptrc+'1';
end if;
if(writeptrc="10010110")then 
writeptrc:="00000000";
end if;
if(writeptrc="10010101")then 
full<='1';
else 
full <= '0';
end if;
writeptr<=writeptrc;
end process;

process(clk) --reading process 1
variable r1ptrc: std_logic_vector( 7 downto 0):="00000000";
begin
if(clk'event and clk ='0' and rd1='1') then
dataout1 <= pix_row(conv_integer(r1ptrc));
r1ptrc:= r1ptrc+'1';
end if;
if(r1ptrc="10010110")then 
r1ptrc:="00000000";
end if;
r1ptr<=r1ptrc;
end process;

process(clk) --reading process 2
variable r2ptrc: std_logic_vector( 7 downto 0):="00000011";
begin
if(clk'event and clk ='0' and rd2='1') then
dataout2 <= pix_row(conv_integer(r2ptrc));
r2ptrc:= r2ptrc+'1';
end if;
if(r2ptrc="10010110")then 
r2ptrc:="00000000";
end if;
r2ptr<=r2ptrc;
end process;

process(clk) --reading process 3
variable r3ptrc: std_logic_vector( 7 downto 0):="00000110";
begin
if(clk'event and clk ='0' and rd3='1') then
dataout3 <= pix_row(conv_integer(r3ptrc));
r3ptrc:= r3ptrc+'1';
end if;
if(r3ptrc="10010110")then 
r3ptrc:="00000000";
end if;
r3ptr<=r3ptrc;
end process;

process(clk) --reading process 
variable readptrc: std_logic_vector( 7 downto 0):="00000000";
begin
if(clk'event and clk ='0' and rd='1') then
dataout <= pix_row(conv_integer(readptrc));
readptrc := readptrc+'1';
end if;
if(readptrc="10010110")then 
readptrc:="00000000";
end if;
readptr<=readptrc;
end process;
read1ptr<=readptr;
pointer1 <= r1ptr;
pointer2 <= r2ptr;
pointer3 <= r3ptr;
wrpointerf <= writeptr;
end Behavioral;

