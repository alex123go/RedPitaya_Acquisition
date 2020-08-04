----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2020 09:22:14 AM
-- Design Name: 
-- Module Name: Acquisition_FSM_2 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Acquisition_FSM_2 is
    Generic( BYTES_PER_TX : unsigned(23-1 downto 0) := "000" & x"0_0200";
             FIFO_THRESHOLD : integer := 100);
    
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           start_sig : in STD_LOGIC;
           bytes_to_tx : in STD_LOGIC_VECTOR(32-1 downto 0);
           
           data_tvalid : out STD_LOGIC;
           error_ACQ : out STD_LOGIC;
           reset_ACQ : out STD_LOGIC;
           
           FIFO_S2MM_data_count : in STD_LOGIC_VECTOR(32-1 downto 0);
           
           start_address : in unsigned(32-1 downto 0);
           
           m_axis_s2mm_cmd_tdata : out STD_LOGIC_VECTOR(72-1 downto 0);
           m_axis_s2mm_cmd_tvalid : out STD_LOGIC;
           
           s_axis_s2mm_sts_tdata : in STD_LOGIC_VECTOR(8-1 downto 0);
           s_axis_s2mm_sts_tready : out STD_LOGIC;
           s_axis_s2mm_sts_tvalid : in STD_LOGIC );
end Acquisition_FSM_2;

architecture Behavioral of Acquisition_FSM_2 is

signal start_new, start_old : std_logic;

type Master_FSM_type is (IDLE, Start_S2MM, Wait_MM2S, Start_MM2S, running);
type S2MM_FSM_type is (IDLE, RESET_FIFO, FIFO_FILL, WRITE_S2MM, WAIT_S2MM_valid, Prep_next_S2MM, FINISH_S2MM, Error_S2MM);

signal master_fsm_state : Master_FSM_type;
signal s2mm_fsm_state : S2MM_FSM_type;

signal s2mm_addr : unsigned(32-1 downto 0);

signal data_tvalid_int, error_ACQ_int : std_logic;

signal bytes_sent : unsigned(32-1 downto 0);

signal reset_counter : unsigned(3 downto 0);

begin

start_process : process(clk, resetn)
begin
if resetn = '0' then
    start_old <= '0';
    start_new <= '0';
elsif rising_edge(clk) then
    start_old <= start_new;
    start_new <= start_sig;
end if;
end process;


S2MM_FSM : process(clk, resetn)
begin
	if resetn = '0' then
		m_axis_s2mm_cmd_tvalid <= '0';
		bytes_sent <= (others => '0');
		s2mm_addr <= (others => '0');
		data_tvalid_int <= '0';
		error_ACQ_int <= '0';
        reset_ACQ <= '0';
		reset_counter <= (others => '0');
		s2mm_fsm_state <= IDLE;


	elsif rising_edge(clk) then
		case s2mm_fsm_state is
			when IDLE =>
				m_axis_s2mm_cmd_tvalid <= '0';
				bytes_sent <= (others => '0');
				s2mm_addr <= (others => '0');
				data_tvalid_int <= data_tvalid_int;
				error_ACQ_int <= error_ACQ_int;
				reset_counter <= (others => '0');
                reset_ACQ <= '0'; -- need to be assert for 3 clockcycles


                if start_old = '0' and start_new = '1' then
					s2mm_fsm_state <= RESET_FIFO;
				else
					s2mm_fsm_state <= IDLE;
				end if;

            when RESET_FIFO =>
				data_tvalid_int <= '0';
				error_ACQ_int <= '0';
                s2mm_addr <= (others => '0');
                m_axis_s2mm_cmd_tvalid <= '0';
                
                reset_ACQ <= '0'; -- need to be assert for 3 clockcycles
                reset_counter <= reset_counter + 1;
                
                if reset_counter >= 3 then
                    s2mm_fsm_state <= FIFO_FILL;
                else
                    s2mm_fsm_state <= RESET_FIFO;
                end if;

			when FIFO_FILL =>
				m_axis_s2mm_cmd_tvalid <= '0';
				bytes_sent <= bytes_sent;
				s2mm_addr <= s2mm_addr;
				data_tvalid_int <= '0';
				error_ACQ_int <= '0';
				reset_ACQ <= '1';
				reset_counter <= (others => '0');
				
				if unsigned(FIFO_S2MM_data_count) >= FIFO_THRESHOLD then
					s2mm_fsm_state <= WRITE_S2MM;					
				else
					s2mm_fsm_state <= FIFO_FILL;
				end if;

			when WRITE_S2MM =>
				m_axis_s2mm_cmd_tvalid <= '1';
				bytes_sent <= bytes_sent;
				s2mm_addr <= s2mm_addr;
				data_tvalid_int <= '0';
				error_ACQ_int <= '0';
				reset_ACQ <= '1';
				reset_counter <= (others => '0');
				
				s2mm_fsm_state <= WAIT_S2MM_valid;

			when WAIT_S2MM_valid =>
				m_axis_s2mm_cmd_tvalid <= '0';
				bytes_sent <= bytes_sent;
				s2mm_addr <= s2mm_addr;
				data_tvalid_int <= '0';
				error_ACQ_int <= '0';
				reset_ACQ <= '1';
				reset_counter <= (others => '0');

				if (s_axis_s2mm_sts_tvalid = '1')then -- enable
		        	if (s_axis_s2mm_sts_tdata = x"80") then
			            s2mm_fsm_state <= Prep_next_S2MM;
		        	else
			            s2mm_fsm_state <= Error_S2MM;
		        	end if;
	        	else
	        		s2mm_fsm_state <= WAIT_S2MM_valid;
				end if;

			when Prep_next_S2MM =>
				m_axis_s2mm_cmd_tvalid <= '0';
				reset_counter <= (others => '0');
				reset_ACQ <= '1';
				data_tvalid_int <= '0';
				error_ACQ_int <= '0';
				
				bytes_sent <= bytes_sent + BYTES_PER_TX;
                s2mm_addr <= s2mm_addr + BYTES_PER_TX;
				
                if bytes_sent > (unsigned(bytes_to_tx)-BYTES_PER_TX) then
                    s2mm_fsm_state <= FINISH_S2MM;
                else
                    s2mm_fsm_state <= FIFO_FILL;
                end if;
            
            when FINISH_S2MM =>
                m_axis_s2mm_cmd_tvalid <= '0';
                bytes_sent <= bytes_sent;
                s2mm_addr <= s2mm_addr;

				reset_counter <= (others => '0');
				reset_ACQ <= '1';
				data_tvalid_int <= '1';
				error_ACQ_int <= '0';         
                s2mm_fsm_state <= IDLE;


            when Error_S2MM =>
            	m_axis_s2mm_cmd_tvalid <= '0';
            	bytes_sent <= bytes_sent;
            	s2mm_addr <= s2mm_addr;
            	data_tvalid_int <= '0';
            	error_ACQ_int <= '1';
            	reset_ACQ <= '1';
            	reset_counter <= (others => '0');

                s2mm_fsm_state <= IDLE;
                
			when OTHERS =>
				m_axis_s2mm_cmd_tvalid <= '0';
				bytes_sent <= (others => '0');
				s2mm_addr <= (others => '0');
				data_tvalid_int <= '0';
				error_ACQ_int <= '0';
				
				reset_counter <= (others => '0');
				reset_ACQ <= '1';
				s2mm_fsm_state <= IDLE;


		end case;
	end if;
end process;


s_axis_s2mm_sts_tready <= '1';  
error_ACQ <= error_ACQ_int;
data_tvalid <= data_tvalid_int;

m_axis_s2mm_cmd_tdata <= x"00" & std_logic_vector(start_address + s2mm_addr) & "000000001" & std_logic_vector(BYTES_PER_TX);


end Behavioral;
