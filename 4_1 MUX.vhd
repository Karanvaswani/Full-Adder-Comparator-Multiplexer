--4 input multiplexer   
entity MUX4_20es062 is 
    Port ( A_062 : in  STD_LOGIC; 
           B_062 : in  STD_LOGIC; 
           C_062 : in  STD_LOGIC; 
           D_062 : in  STD_LOGIC; 
           S_062 : in  STD_LOGIC_VECTOR (1 downto 0); 
           Y_062 : out  STD_LOGIC); 
end MUX4_20es062; 
architecture Behavioral of MUX4_20es062 is 
begin 
with S_062 select 
Y_062 <= A_062 when "00", 
         B_062 when "01", 
         C_062 when "10", 
         D_062 when others; 
end Behavioral;
