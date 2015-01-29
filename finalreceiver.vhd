--Starting the hex conversion code
--design by cameron brandon ali 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-------------Top Level Entity------------

entity finalreceiver is port(
		datain :in std_logic;
		disp0, disp1, disp2, disp3 : out std_logic_vector(6 downto 0);
		clock: in std_logic);
end finalreceiver;

architecture module of finalreceiver is

		component shiftreg
				port ( 
				serial, slowclock: in std_logic;
				serialout0, serialout1, serialout2, serialout3 : out std_logic_vector(3 downto 0));
		end component;
		
		component hexconv
				port(
				sout0, sout1, sout2, sout3 : in std_logic_vector(3 downto 0);
				hexout0, hexout1, hexout2, hexout3 : out std_logic_vector(6 downto 0));
		end component;
		
		component clock_divider
				port( 
				clck : in std_logic;
				clock_slow : out std_logic);
		end component;
		
		signal sig1, sig2, sig3, sig4 : std_logic_vector(3 downto 0);
		signal sigclock : std_logic;
		
begin
		instance1: shiftreg port map (datain, sigclock, sig1, sig2, sig3, sig4);
		instance2: hexconv port map (sig1, sig2, sig3, sig4, disp0, disp1, disp2, disp3);
		instance3: clock_divider port map (clock, sigclock);
end module;

------------------clock divider------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_divider is
	generic (divide_ratio:integer:=4);
	port (
	clck: in std_logic;
	clock_slow: out std_logic);	
end clock_divider;

architecture division of clock_divider is
begin
	process (clck)
		variable count : integer range 0 to divide_ratio;
		
	begin

		if rising_edge(clck)then	
			count := count + 1;
			if count < divide_ratio/2 then
				clock_slow <= '0';
			elsif count < divide_ratio then	
				clock_slow <= '1';
			else count := 0;
			end if;		
		end if;
	end process;

end division;

------------------shift register-----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity shiftreg is port (
			serial, slowclock: in std_logic;
			serialout0, serialout1, serialout2, serialout3 : out std_logic_vector(3 downto 0));
end shiftreg;


architecture shift of shiftreg is
signal temp: std_logic_vector(16 downto 0);
signal count: integer range 0 to 18;
begin

process(slowclock)
begin

if(slowclock'event and slowclock='1')then
if serial='1' and count=0 then 
count<=18;
end if;

temp <= serial & temp(16 downto 1);

if count>0 then 
count<=count-1;
end if;

if count =1 then
serialout0<=temp(3 downto 0);
serialout1<=temp(7 downto 4);
serialout2<=temp(11 downto 8);
serialout3<=temp(15 downto 12);
end if;

end if;

end process;

end shift;

						

------------------hex converter------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hexconv is port (
			sout0,sout1,sout2,sout3 :in std_logic_vector(3 downto 0);
			hexout0,hexout1,hexout2,hexout3 :out std_logic_vector(6 downto 0));
end hexconv;

architecture converter of hexconv is 
begin
	process(sout0)
		begin
			if sout0="0000" then hexout0<="1000000";
			elsif sout0="0001" then hexout0<="1111001";
			elsif sout0="0010" then hexout0<="0100100";
			elsif sout0="0011" then hexout0<="0110000";
			elsif sout0="0100" then hexout0<="0011001";
			elsif sout0="0101" then hexout0<="0010010";
			elsif sout0="0110" then hexout0<="0000010";
			elsif sout0="0111" then hexout0<="1111000";
			elsif sout0="1000" then hexout0<="0000000";
			elsif sout0="1001" then hexout0<="0011000";
			elsif sout0="1010" then hexout0<="0001000";
			elsif sout0="1011" then hexout0<="0000011";
			elsif sout0="1100" then hexout0<="1000110";
			elsif sout0="1101" then hexout0<="0100001";
			elsif sout0="1110" then hexout0<="0000110";
			elsif sout0="1111" then hexout0<="0001110";
		end if;
	end process;
	
	process (sout1)
		begin
			if sout1="0000" then hexout1<="1000000";
			elsif sout1="0001" then hexout1<="1111001";
			elsif sout1="0010" then hexout1<="0100100";
			elsif sout1="0011" then hexout1<="0110000";
			elsif sout1="0100" then hexout1<="0011001";
			elsif sout1="0101" then hexout1<="0010010";
			elsif sout1="0110" then hexout1<="0000010";
			elsif sout1="0111" then hexout1<="1111000";
			elsif sout1="1000" then hexout1<="0000000";
			elsif sout1="1001" then hexout1<="0011000";
			elsif sout1="1010" then hexout1<="0001000";
			elsif sout1="1011" then hexout1<="0000011";
			elsif sout1="1100" then hexout1<="1000110";
			elsif sout1="1101" then hexout1<="0100001";
			elsif sout1="1110" then hexout1<="0000110";
			elsif sout1="1111" then hexout1<="0001110";
		end if;
	end process;
	
	process (sout2)
		begin
			if sout2="0000" then hexout2<="1000000";
			elsif sout2="0001" then hexout2<="1111001";
			elsif sout2="0010" then hexout2<="0100100";
			elsif sout2="0011" then hexout2<="0110000";
			elsif sout2="0100" then hexout2<="0011001";
			elsif sout2="0101" then hexout2<="0010010";
			elsif sout2="0110" then hexout2<="0000010";
			elsif sout2="0111" then hexout2<="1111000";
			elsif sout2="1000" then hexout2<="0000000";
			elsif sout2="1001" then hexout2<="0011000";
			elsif sout2="1010" then hexout2<="0001000";
			elsif sout2="1011" then hexout2<="0000011";
			elsif sout2="1100" then hexout2<="1000110";
			elsif sout2="1101" then hexout2<="0100001";
			elsif sout2="1110" then hexout2<="0000110";
			elsif sout2="1111" then hexout2<="0001110";
		end if;
	end process;
	
	process (sout3)
		begin
			if sout3="0000" then hexout3<="1000000";
			elsif sout3="0001" then hexout3<="1111001";
			elsif sout3="0010" then hexout3<="0100100";
			elsif sout3="0011" then hexout3<="0110000";
			elsif sout3="0100" then hexout3<="0011001";
			elsif sout3="0101" then hexout3<="0010010";
			elsif sout3="0110" then hexout3<="0000010";
			elsif sout3="0111" then hexout3<="1111000";
			elsif sout3="1000" then hexout3<="0000000";
			elsif sout3="1001" then hexout3<="0011000";
			elsif sout3="1010" then hexout3<="0001000";
			elsif sout3="1011" then hexout3<="0000011";
			elsif sout3="1100" then hexout3<="1000110";
			elsif sout3="1101" then hexout3<="0100001";
			elsif sout3="1110" then hexout3<="0000110";
			elsif sout3="1111" then hexout3<="0001110";
		end if;
	end process;
end converter;
	