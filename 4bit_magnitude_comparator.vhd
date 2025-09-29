library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator4 is
    Port (
        A_62 : in  STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input A
        B_62 : in  STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input B
        C_62 : in  STD_LOGIC_VECTOR (3 downto 0); -- 
        X_62 : out STD_LOGIC;                     -- A > B
        Y_62 : out STD_LOGIC;                     -- A = B
        Z_62 : out STD_LOGIC                      -- A < B
    );
end comparator4;

architecture Behavioral of comparator4 is
begin
    process (A_62, B_62)
    begin
        if (A_62 > B_62) then
            X_62 <= '1';  -- A greater
            Y_62 <= '0';
            Z_62 <= '0';
        elsif (A_62 = B_62) then
            X_62 <= '0';
            Y_62 <= '1';  -- A equal
            Z_62 <= '0';
        else
            X_62 <= '0';
            Y_62 <= '0';
            Z_62 <= '1';  -- A less
        end if;
    end process;
end Behavioral;
