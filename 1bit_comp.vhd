entity COMPARATOR_1bit_20es062 is 
Port ( A_062 : in  STD_LOGIC; 
B_062 : in  STD_LOGIC; 
X_062 : out  STD_LOGIC; 
Y_062 : out  STD_LOGIC; 
Z_062 : out  STD_LOGIC); 
end COMPARATOR_1bit_20es062; 
architecture Behavioral of COMPARATOR_1bit_20es062 is 
begin 
X_062 <= '1' when A_062 > B_062 else '0';   
Y_062 <= '1' when A_062 < B_062 else '0';   
Z_062 <= '1' when A_062 = B_062 else '0';   
end Behavioral; 



