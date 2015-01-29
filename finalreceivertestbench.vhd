library ieee;
use ieee.std_logic_1164.all;

entity test_bench is
end test_bench;

architecture test1 of test_bench is
	signal serialin, clockpulse: std_logic;
	signal testout0, testout1, testout2, testout3: std_logic_vector (6 downto 0);
	constant clk_period: time:= 50ns 
	
begin
		instance1: 	entity work.finalreceiver
		
		port map (datain=>serialin, clock=>clockpulse, disp0=>testout0, disp1=>testout1, disp2=>testout2, disp3=>testout3);
		
clock_process: process
		begin 
		clk <='0';
			wait for clk_period/2;
		clk <='1';
			wait for clk_period/2;
End process;

		serialin<='0'; clock<='0';
		wait for 50ns;
		clock<='1'
		wait for 10ns;
		serialin<='1'; clock<='0'
		clock<='1'
		wait for 10ns;
		clock<='1'
		wait for 10ns;
		clock<='1'
		wait for 10ns;
		clock<='1'
		wait for 10ns;
		clock<='1'
		wait for 10ns;
		clock<='1'
		wait for 10ns;
		clock<='1'
		wait for 10ns;
		clock<='1'
		wait for 10ns;
		clock<='1'
		wait for 10ns;
		
		
end test1;
