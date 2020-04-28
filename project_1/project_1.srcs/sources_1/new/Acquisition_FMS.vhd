----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2020 05:58:55 PM
-- Design Name: 
-- Module Name: Acquisition_FMS - Behavioral
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

entity Acquisition_FMS is
    Generic( start_address : unsigned(32-1 downto 0) := x"1E000000";
             bytes_per_tx : unsigned(23-1 downto 0) := "000" & x"0_0200";
             FIFO_THRESHOLD : integer := 100);
    
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           
           start_sig : in STD_LOGIC;
           number_bytes : in unsigned(32-1 downto 0);
           fifo_count : in unsigned(32-1 downto 0);
           
           s_axis_s2mm_cmd_tdata : out STD_LOGIC_VECTOR(72-1 downto 0);
           s_axis_s2mm_cmd_tvalid : out STD_LOGIC;
           
           ACQ_tvalid : out STD_LOGIC;
           reset_ACQ : out STD_LOGIC;
           S2MM_finished : out STD_LOGIC;
           S2MM_error : out STD_LOGIC;
           
            -- STS_IN
           s_axis_s2mm_sts_tdata : in STD_LOGIC_VECTOR(8-1 downto 0);
           s_axis_s2mm_sts_tready : out STD_LOGIC;
           s_axis_s2mm_sts_tvalid : in STD_LOGIC
           );
end Acquisition_FMS;


architecture Behavioral of Acquisition_FMS is

signal start_sig_old : std_logic;
signal n_bytes_remaining : unsigned(32-1 downto 0);
signal s2mm_addr : unsigned(32-1 downto 0) := (others => '0');

signal S2MM_finished_int : std_logic;

signal reset_counter : unsigned(3 downto 0);

TYPE fsm_type_signal is (IDLE, RESET_STATE, FIFO_FILL, SEND_CMD, PREP_NEXT_CMD, LAST_SEND);
signal fsm_state : fsm_type_signal;

signal acq_done : std_logic;
signal ACQ_tvalid_int : std_logic;
signal byes_sent : unsigned(32-1 downto 0);
begin



rising_edge_start : process(clk, resetn)
begin
if resetn = '0' then
    start_sig_old <= '0';
elsif rising_edge(clk) then
    start_sig_old <= start_sig;
end if;
end process;


FSM_process : process(clk, resetn)
begin
if resetn = '0' then
    S2MM_finished_int <= '0';
    s2mm_addr <= (others => '0');
    n_bytes_remaining <= (others => '0');
    s_axis_s2mm_cmd_tvalid <= '0';
    
    reset_ACQ <= '0';
    reset_counter <= (others => '0');


    fsm_state <= IDLE;
    
elsif rising_edge(clk) then
    case fsm_state is
    
        when IDLE => 
            S2MM_finished_int <= S2MM_finished_int;
            s2mm_addr <= (others => '0');
            n_bytes_remaining <= unsigned(number_bytes);
            s_axis_s2mm_cmd_tvalid <= '0';
            
            reset_ACQ <= '1'; -- not 0, because fsm_state come back to IDLE after last assert tvalid and write is not finish at this point.
            reset_counter <= (others => '0');
            
            if start_sig = '1' and start_sig_old = '0' then
                fsm_state <= RESET_STATE;
            else
                fsm_state <= IDLE;
            end if;
            
        when RESET_STATE =>
            S2MM_finished_int <= S2MM_finished_int;
            s2mm_addr <= s2mm_addr;
            n_bytes_remaining <= n_bytes_remaining;
            s_axis_s2mm_cmd_tvalid <= '0';
            
            reset_ACQ <= '0'; -- need to be assert for 3 clockcycles
            reset_counter <= reset_counter + 1;
            
            if reset_counter >= 3 then
                fsm_state <= FIFO_FILL;
            else
                fsm_state <= RESET_STATE;
            end if;

        
        when FIFO_FILL => -- we don't want to be always sending cmd, we need to wait for something
            reset_ACQ <= '1';
            reset_counter <= (others => '0');


            S2MM_finished_int <= '0';
            s2mm_addr <= s2mm_addr;
            n_bytes_remaining <= n_bytes_remaining;
            s_axis_s2mm_cmd_tvalid <= '0';
            
        if fifo_count > FIFO_THRESHOLD then
            fsm_state <= SEND_CMD;
        else
            fsm_state <= FIFO_FILL;
        end if;
         
        when SEND_CMD =>
            reset_ACQ <= '1';
            reset_counter <= (others => '0');
        
            S2MM_finished_int <= '0';
            s2mm_addr <= s2mm_addr;
            n_bytes_remaining <= n_bytes_remaining;        
            s_axis_s2mm_cmd_tvalid <= '1';
            
            if n_bytes_remaining <= bytes_per_tx then
                fsm_state <= LAST_SEND;
            else
                fsm_state <= PREP_NEXT_CMD;
            end if;
            
        when PREP_NEXT_CMD =>
            reset_ACQ <= '1';
            reset_counter <= (others => '0');
            
            S2MM_finished_int <= '0';
            s2mm_addr <= s2mm_addr + bytes_per_tx; -- For next Tx
            n_bytes_remaining <= n_bytes_remaining - bytes_per_tx;
            s_axis_s2mm_cmd_tvalid <= '0';
            
            fsm_state <= FIFO_FILL;

        
        when LAST_SEND =>
            reset_ACQ <= '1';
            reset_counter <= (others => '0');
            
            S2MM_finished_int <= '1';
            s2mm_addr <= s2mm_addr;
            n_bytes_remaining <= n_bytes_remaining;
            s_axis_s2mm_cmd_tvalid <= '0';
            fsm_state <= IDLE;

        when OTHERS =>
            reset_ACQ <= '0';
            reset_counter <= (others => '0');
            
            S2MM_finished_int <= '0';
            s2mm_addr <= (others => '0');
            n_bytes_remaining <= (others => '0');
            s_axis_s2mm_cmd_tvalid <= '0';
            fsm_state <= IDLE;
        end case;
end if;
end process;

STS_process : process(clk, resetn)
begin
if resetn = '0' then
S2MM_error <= '0';
byes_sent <= (others => '0');
elsif rising_edge(clk) then
    if s_axis_s2mm_sts_tvalid = '1' then
        if s_axis_s2mm_sts_tdata = x"80" then
            byes_sent <= byes_sent + bytes_per_tx;
            S2MM_error <= '0';
        else
            S2MM_error <= '1';
            byes_sent <= byes_sent;
        end if;
    end if;
end if;
end process;

tvalid_process: process(clk, resetn)
begin
if resetn = '0' then
    ACQ_tvalid_int <= '0';
    --S2MM_finished <= '0';
    S2MM_error <= '0';
elsif rising_edge(clk) then
    if start_sig = '1' and start_sig_old = '0' then
        ACQ_tvalid_int <= '1';
    elsif byes_sent >= number_bytes then
        ACQ_tvalid_int <= '0';
    else
        ACQ_tvalid_int <= ACQ_tvalid_int;
    end if;
end if;
end process;



ACQ_tvalid <= ACQ_tvalid_int;
S2MM_finished <= S2MM_finished_int;
s_axis_s2mm_cmd_tdata <= x"00" & std_logic_vector(unsigned(start_address) + s2mm_addr) & "000000001" & std_logic_vector(bytes_per_tx);

end Behavioral;
