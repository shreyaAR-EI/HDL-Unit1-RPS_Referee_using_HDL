----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2026 20:33:39
-- Design Name: 
-- Module Name: RPS_referee_VHDL - dataflow
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- entity defines input and output
entity RPS_referee_VHDL is
  Port( a: in STD_LOGIC_VECTOR (1 downto 0 );
        b: in STD_LOGIC_VECTOR( 1 downto 0 );
        win_a : out STD_LOGIC;
        win_b : out STD_LOGIC;
        tie: out STD_LOGIC);
end RPS_referee_VHDL;
--architechture defines the dataflow logic
architecture dataflow of RPS_referee_VHDL is

begin 
-- 00:rock , 01:paper , 10:scissors
    tie <= '1' when (a=b) else '0';
    win_a <= '1' when( a="00" and b="10")or( a = "01" and b = "00")or( a= "10" and b = "01") else '0';
    win_b <= '1' when( a="10" and b="00")or( a = "00" and b = "01")or( a= "01" and b = "10") else '0';



end dataflow;
