-- =====================================================
-- 4-Bit Full Adder in VHDL
-- File: full_adder4.vhd
-- =====================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- Allows arithmetic with std_logic_vector

entity full_adder_062 is
    Port (
        A_62    : in  STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input A
        B_62    : in  STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input B
        Cin_62  : in  STD_LOGIC;                     -- Carry input
        Sum_62  : out STD_LOGIC_VECTOR (3 downto 0); -- 4-bit sum
        Cout_62 : out STD_LOGIC                      -- Carry output
    );
end full_adder4;

architecture Behavioral of full_adder_062 is
    signal temp_62 : STD_LOGIC_VECTOR (4 downto 0); -- 5-bit signal to hold result
begin
    process (A_62, B_62, Cin_62)
    begin
        temp_62 <= ('0' & A_62) + ('0' & B_62) + ("0000" & Cin_62); 
        Sum_62  <= temp_62(3 downto 0); -- lower 4 bits
        Cout_62 <= temp_62(4);          -- Most significant bit as carry out
    end process;
end Behavioral;
