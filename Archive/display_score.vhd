library ieee;
use ieee.std_logic_1164.all;

entity score_display is 
    port (
        score : in integer range 0 to 9;

        segment : out std_logic_vector(6 downto 0) );
end entity score_display;

architecture score_display_arch of score_display is
begin
    with score select
        segment <=  "1111110" when 0,
                    "0110000" when 1,
                    "1101101" when 2,
                    "1111001" when 3,
                    "0110011" when 4,
                    "1011011" when 5,
                    "1011111" when 6,
                    "1110010" when 7,
                    "1111111" when 8,
                    "1111011" when 9,
                    "0000000" when others;
end architecture score_display_arch;