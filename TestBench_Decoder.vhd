library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TestBench_Decoder is
end TestBench_Decoder;

architecture ARC of TestBench_Decoder is
component Decoder_2x4
    port(
          a,b,en : in std_logic;
          Z      : out std_logic_vector(3 downto 0)); 
end component; 

signal a,b,en : std_logic :='0';
signal Z : std_logic_vector(3 downto 0);

begin 
    dev_test : Decoder_2x4 port map( a, b, en, Z);
    
    stimulus : process
    begin 
    
    a <= '0';
    b <= '0'; 
    en <= '0';
    wait for 20ns;
    
    a <= '0';
    b <= '0'; 
    en <= '1';
    wait for 20ns;
    
    a <= '0';
    b <= '1'; 
    en <= '1';
    wait for 20ns;
    
    a <= '1';
    b <= '0'; 
    en <= '1';
    wait for 20ns;
    
    a <= '1';
    b <= '1'; 
    en <= '1';
    wait for 20ns;
    end process;
end ARC;