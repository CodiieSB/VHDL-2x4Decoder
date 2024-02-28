library IEEE;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity Decoder_2x4 is
    port(
          a,b,en  : in std_logic;
          Z       : out std_logic_vector(3 downto 0));
end Decoder_2x4;

architecture ARC of Decoder_2x4 is
signal s : std_logic_vector(1 downto 0);

begin 
    s(0) <= not a;
    s(1) <= not b;
    Z(0) <= s(0) and s(1) and en;
    Z(1) <= s(0) and b and en;
    Z(2) <= a and s(1) and en;
    Z(3) <= a and b and en;
end ARC;