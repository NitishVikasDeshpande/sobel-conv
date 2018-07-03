----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:50:08 06/30/2018 
-- Design Name: 
-- Module Name:    convolution - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity convolution is
port(

f1 : in signed(8 downto 0);
f2 : in signed(8 downto 0);
f3 : in signed(8 downto 0);
f4 : in signed(8 downto 0);
f5 : in signed(8 downto 0);
f6 : in signed(8 downto 0);
f7 : in signed(8 downto 0);
f8 : in signed(8 downto 0);
f9 : in signed(8 downto 0);
p1 : in signed(8 downto 0);
p2 : in signed(8 downto 0);
p3 : in signed(8 downto 0);
p4 : in signed(8 downto 0);
p5 : in signed(8 downto 0);
p6 : in signed(8 downto 0);
p7 : in signed(8 downto 0);
p8 : in signed(8 downto 0);
p9 : in signed(8 downto 0);
dataout : out signed(7 downto 0)
);

end convolution;

architecture Behavioral of convolution is
signal y1 : signed( 7 downto 0);
signal y2 : signed( 7 downto 0);
signal y3 : signed( 7 downto 0);
signal y4 : signed( 7 downto 0);
signal y5 : signed( 7 downto 0);
signal y6 : signed( 7 downto 0);
signal y7 : signed( 7 downto 0);
signal y8 : signed( 7 downto 0);
signal y9 : signed( 7 downto 0);

begin
y1 <= p1*f1;
y2 <= p2*f2;
y3 <= p3*f3;
y4 <= p4*f4;
y5 <= p5*f5;
y6 <= p6*f6;
y7 <= p7*f7;
y8 <= p8*f8;
y9 <= p9*f9;
dataout <= y1+y2+y3+y4+y5+y6+y7+y8+y9;


end Behavioral;

