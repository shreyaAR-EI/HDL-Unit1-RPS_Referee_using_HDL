----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2026 20:47:12
-- Design Name: 
-- Module Name: tb_rpsReferee_VHDL - dataflow
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_rpsReferee_VHDL is
end tb_rpsReferee_VHDL;

architecture dataflow of tb_rpsReferee_VHDL is

    -- 1. Component Declaration 
    component RPS_referee_VHDL
        Port ( a : in STD_LOGIC_VECTOR (1 downto 0);
               b : in STD_LOGIC_VECTOR( 1 downto 0 );
               win_a : out STD_LOGIC;
               win_b : out STD_LOGIC;
               tie: out STD_LOGIC);
    end component;

    -- 2. Signal Declarations 
    signal a : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal b : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal win_a : STD_LOGIC;
    signal win_b : STD_LOGIC;
    signal tie : STD_LOGIC;

begin

    -- 3. Map the ports
    uut: RPS_referee_VHDL PORT MAP (
          a => a,
          b => b,
          win_a => win_a,
          win_b => win_b,
          tie => tie
        );

    -- 4. Stimulus Process (The test script)
    stim_proc: process
    begin
        -- Case 1: Rock vs Rock -> Tie
        a <= "00"; b <= "00";
        wait for 10 ns;

        -- Case 2: Rock vs Scissors -> Player A wins
        a <= "00"; b <= "10";
        wait for 10 ns;

        -- Case 3: Paper vs Scissors -> Player B wins
        a <= "01"; b <= "10";
        wait for 10 ns;

        -- Case 4: Scissors vs Paper -> Player A wins
        a <= "10"; b <= "01";
        wait for 10 ns;

        -- Case 5: Paper vs Paper -> Tie
        a <= "01"; b <= "01";
        wait for 10 ns;

        -- The wait statement stops the process
        wait; 
    end process;

end dataflow;