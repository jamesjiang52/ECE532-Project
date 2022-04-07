-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Sat Mar 12 15:42:46 2022
-- Host        : BA3145WS18 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sd_card_controller_0_0_sim_netlist.vhdl
-- Design      : design_1_sd_card_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider is
  port (
    clk_out_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider is
  signal \^clk_out_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  clk_out_reg_0 <= \^clk_out_reg_0\;
clk_out_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk_out_reg_0\,
      O => p_0_in
    );
clk_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => \^clk_out_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider_0 is
  port (
    clk : out STD_LOGIC;
    clk_out_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider_0 : entity is "clock_divider";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider_0 is
  signal \^clk\ : STD_LOGIC;
  signal \clk_out_i_1__0_n_0\ : STD_LOGIC;
begin
  clk <= \^clk\;
\clk_out_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk\,
      O => \clk_out_i_1__0_n_0\
    );
clk_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_reg_0,
      CE => '1',
      D => \clk_out_i_1__0_n_0\,
      Q => \^clk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0_M00_AXI is
  port (
    data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    INIT_AXI_TXN : in STD_LOGIC;
    ERROR : out STD_LOGIC;
    M_AXI_ACLK : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC
  );
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0_M00_AXI : entity is 32;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0_M00_AXI : entity is 32;
  attribute C_M_TRANSACTIONS_NUM : integer;
  attribute C_M_TRANSACTIONS_NUM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0_M00_AXI : entity is 1;
  attribute IDLE : string;
  attribute IDLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0_M00_AXI : entity is "2'b00";
  attribute INIT_WRITE : string;
  attribute INIT_WRITE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0_M00_AXI : entity is "2'b01";
  attribute TRANS_NUM_BITS : integer;
  attribute TRANS_NUM_BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0_M00_AXI : entity is 0;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0_M00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0_M00_AXI is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal FSM_sequential_mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal FSM_sequential_mst_exec_state_i_2_n_0 : STD_LOGIC;
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^address\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal axi_awvalid_i_2_n_0 : STD_LOGIC;
  signal axi_bready_i_1_n_0 : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal \^data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal init_txn_ff : STD_LOGIC;
  signal init_txn_ff2 : STD_LOGIC;
  signal last_write : STD_LOGIC;
  signal last_write_i_1_n_0 : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC;
  signal start_single_write0 : STD_LOGIC;
  signal start_single_write_i_1_n_0 : STD_LOGIC;
  signal start_single_write_reg_n_0 : STD_LOGIC;
  signal write_index : STD_LOGIC;
  signal \write_index[0]_i_1_n_0\ : STD_LOGIC;
  signal write_issued_i_1_n_0 : STD_LOGIC;
  signal write_issued_reg_n_0 : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of writes_done : signal is std.standard.true;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_mst_exec_state_reg : label is "IDLE:0,INIT_WRITE:1";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_awvalid_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_bready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wvalid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of last_write_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_index[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair0";
  attribute KEEP : string;
  attribute KEEP of writes_done_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of writes_done_reg : label is "true";
begin
  ERROR <= \<const0>\;
  M_AXI_ARADDR(31 downto 0) <= \^address\(31 downto 0);
  M_AXI_ARPROT(2) <= \<const0>\;
  M_AXI_ARPROT(1) <= \<const0>\;
  M_AXI_ARPROT(0) <= \<const0>\;
  M_AXI_ARVALID <= \<const0>\;
  M_AXI_AWADDR(31 downto 0) <= \^address\(31 downto 0);
  M_AXI_AWPROT(2) <= \<const0>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const0>\;
  M_AXI_AWVALID <= \^m_axi_awvalid\;
  M_AXI_BREADY <= \^m_axi_bready\;
  M_AXI_RREADY <= \^m_axi_rready\;
  M_AXI_WDATA(31 downto 0) <= \^data\(31 downto 0);
  M_AXI_WSTRB(3) <= \<const1>\;
  M_AXI_WSTRB(2) <= \<const1>\;
  M_AXI_WSTRB(1) <= \<const1>\;
  M_AXI_WSTRB(0) <= \<const1>\;
  M_AXI_WVALID <= \^m_axi_wvalid\;
  \^address\(31 downto 0) <= address(31 downto 0);
  \^data\(31 downto 0) <= data(31 downto 0);
FSM_sequential_mst_exec_state_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => M_AXI_ARESETN,
      O => FSM_sequential_mst_exec_state_i_1_n_0
    );
FSM_sequential_mst_exec_state_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4474"
    )
        port map (
      I0 => writes_done,
      I1 => mst_exec_state,
      I2 => init_txn_ff,
      I3 => init_txn_ff2,
      O => FSM_sequential_mst_exec_state_i_2_n_0
    );
FSM_sequential_mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => FSM_sequential_mst_exec_state_i_2_n_0,
      Q => mst_exec_state,
      R => FSM_sequential_mst_exec_state_i_1_n_0
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
axi_awvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => init_txn_ff2,
      I1 => init_txn_ff,
      I2 => M_AXI_ARESETN,
      O => axi_awvalid_i_1_n_0
    );
axi_awvalid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      O => axi_awvalid_i_2_n_0
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_awvalid_i_2_n_0,
      Q => \^m_axi_awvalid\,
      R => axi_awvalid_i_1_n_0
    );
axi_bready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => M_AXI_BVALID,
      I1 => \^m_axi_bready\,
      O => axi_bready_i_1_n_0
    );
axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_bready_i_1_n_0,
      Q => \^m_axi_bready\,
      R => axi_awvalid_i_1_n_0
    );
axi_rready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^m_axi_rready\,
      I1 => M_AXI_RVALID,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^m_axi_rready\,
      R => axi_awvalid_i_1_n_0
    );
axi_wvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => \^m_axi_wvalid\,
      I2 => M_AXI_WREADY,
      O => axi_wvalid_i_1_n_0
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_wvalid_i_1_n_0,
      Q => \^m_axi_wvalid\,
      R => axi_awvalid_i_1_n_0
    );
init_txn_ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => init_txn_ff,
      Q => init_txn_ff2,
      R => FSM_sequential_mst_exec_state_i_1_n_0
    );
init_txn_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => INIT_AXI_TXN,
      Q => init_txn_ff,
      R => FSM_sequential_mst_exec_state_i_1_n_0
    );
last_write_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => M_AXI_AWREADY,
      I1 => write_index,
      I2 => last_write,
      O => last_write_i_1_n_0
    );
last_write_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => last_write_i_1_n_0,
      Q => last_write,
      R => axi_awvalid_i_1_n_0
    );
start_single_write_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD2020"
    )
        port map (
      I0 => mst_exec_state,
      I1 => writes_done,
      I2 => start_single_write0,
      I3 => \^m_axi_bready\,
      I4 => start_single_write_reg_n_0,
      O => start_single_write_i_1_n_0
    );
start_single_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => write_issued_reg_n_0,
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_BVALID,
      I3 => \^m_axi_wvalid\,
      I4 => start_single_write_reg_n_0,
      I5 => last_write,
      O => start_single_write0
    );
start_single_write_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => start_single_write_i_1_n_0,
      Q => start_single_write_reg_n_0,
      R => FSM_sequential_mst_exec_state_i_1_n_0
    );
\write_index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => start_single_write_reg_n_0,
      I1 => write_index,
      O => \write_index[0]_i_1_n_0\
    );
\write_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \write_index[0]_i_1_n_0\,
      Q => write_index,
      R => axi_awvalid_i_1_n_0
    );
write_issued_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF2020"
    )
        port map (
      I0 => mst_exec_state,
      I1 => writes_done,
      I2 => start_single_write0,
      I3 => \^m_axi_bready\,
      I4 => write_issued_reg_n_0,
      O => write_issued_i_1_n_0
    );
write_issued_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => write_issued_i_1_n_0,
      Q => write_issued_reg_n_0,
      R => FSM_sequential_mst_exec_state_i_1_n_0
    );
writes_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^m_axi_bready\,
      I1 => M_AXI_BVALID,
      I2 => last_write,
      I3 => writes_done,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => axi_awvalid_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller is
  port (
    cs : out STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC;
    sclk : out STD_LOGIC;
    rd : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    byte_available : out STD_LOGIC;
    wr : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ready_for_next_byte : out STD_LOGIC;
    reset : in STD_LOGIC;
    ready : out STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute CMD0 : integer;
  attribute CMD0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 2;
  attribute CMD1 : integer;
  attribute CMD1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 22;
  attribute CMD41 : integer;
  attribute CMD41 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 4;
  attribute CMD55 : integer;
  attribute CMD55 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 3;
  attribute CMD8 : integer;
  attribute CMD8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 19;
  attribute DISPATCH : integer;
  attribute DISPATCH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 20;
  attribute IDLE : integer;
  attribute IDLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 6;
  attribute INIT : string;
  attribute INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is "1";
  attribute POLL_CMD : integer;
  attribute POLL_CMD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 5;
  attribute POLL_CMD1 : integer;
  attribute POLL_CMD1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 23;
  attribute READ_BLOCK : integer;
  attribute READ_BLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 7;
  attribute READ_BLOCK_CRC : integer;
  attribute READ_BLOCK_CRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 10;
  attribute READ_BLOCK_DATA : integer;
  attribute READ_BLOCK_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 9;
  attribute READ_BLOCK_WAIT : integer;
  attribute READ_BLOCK_WAIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 8;
  attribute RECEIVE_BYTE : integer;
  attribute RECEIVE_BYTE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 13;
  attribute RECEIVE_BYTE_WAIT : integer;
  attribute RECEIVE_BYTE_WAIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 12;
  attribute RECEIVE_BYTE_WAIT_CMD8 : integer;
  attribute RECEIVE_BYTE_WAIT_CMD8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 21;
  attribute RST : integer;
  attribute RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 0;
  attribute SEND_CMD : integer;
  attribute SEND_CMD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 11;
  attribute WRITE_BLOCK_BYTE : integer;
  attribute WRITE_BLOCK_BYTE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 17;
  attribute WRITE_BLOCK_CMD : integer;
  attribute WRITE_BLOCK_CMD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 14;
  attribute WRITE_BLOCK_DATA : integer;
  attribute WRITE_BLOCK_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 16;
  attribute WRITE_BLOCK_INIT : integer;
  attribute WRITE_BLOCK_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 15;
  attribute WRITE_BLOCK_WAIT : integer;
  attribute WRITE_BLOCK_WAIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 18;
  attribute WRITE_DATA_SIZE : integer;
  attribute WRITE_DATA_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller : entity is 515;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller is
  signal \bit_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_10_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_11_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_12_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_13_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_14_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_5_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_6_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_7_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_8_n_0\ : STD_LOGIC;
  signal \bit_counter[7]_i_9_n_0\ : STD_LOGIC;
  signal \bit_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \bit_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \bit_counter[9]_i_4_n_0\ : STD_LOGIC;
  signal \bit_counter[9]_i_5_n_0\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \boot_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \boot_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \boot_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \boot_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \boot_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \boot_counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \boot_counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \boot_counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \boot_counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \boot_counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \boot_counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \boot_counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \boot_counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \boot_counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \boot_counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \boot_counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \boot_counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \boot_counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \boot_counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \boot_counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \boot_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \boot_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \boot_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \boot_counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \boot_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \boot_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \boot_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \boot_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal boot_counter_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \boot_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \boot_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \boot_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \boot_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \boot_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \boot_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \boot_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \boot_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \boot_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \boot_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \boot_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \boot_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \boot_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \boot_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \boot_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \boot_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \boot_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \boot_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \boot_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \boot_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \boot_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \boot_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \boot_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \boot_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \boot_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \boot_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \boot_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \boot_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \boot_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \boot_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \boot_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \boot_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \boot_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \boot_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \boot_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \boot_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \boot_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \boot_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \boot_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \boot_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \boot_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \boot_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \boot_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \boot_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \boot_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \boot_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \boot_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \boot_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \boot_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \boot_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \boot_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \boot_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \boot_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^byte_available\ : STD_LOGIC;
  signal byte_available_i_1_n_0 : STD_LOGIC;
  signal byte_available_i_2_n_0 : STD_LOGIC;
  signal byte_available_i_3_n_0 : STD_LOGIC;
  signal \byte_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \byte_counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_10_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_11_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_12_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_13_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_5_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_6_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_7_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_8_n_0\ : STD_LOGIC;
  signal \byte_counter[8]_i_9_n_0\ : STD_LOGIC;
  signal \byte_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \byte_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \byte_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \byte_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \byte_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \byte_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \byte_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \byte_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \byte_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \byte_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal cmd_mode_i_1_n_0 : STD_LOGIC;
  signal cmd_mode_i_2_n_0 : STD_LOGIC;
  signal cmd_mode_i_3_n_0 : STD_LOGIC;
  signal cmd_mode_i_4_n_0 : STD_LOGIC;
  signal cmd_mode_i_5_n_0 : STD_LOGIC;
  signal cmd_mode_reg_n_0 : STD_LOGIC;
  signal cmd_out : STD_LOGIC_VECTOR ( 45 downto 1 );
  signal \cmd_out[47]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_out[47]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_out[47]_i_3_n_0\ : STD_LOGIC;
  signal \cmd_out[47]_i_4_n_0\ : STD_LOGIC;
  signal \cmd_out[47]_i_5_n_0\ : STD_LOGIC;
  signal \cmd_out[55]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[10]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[11]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[12]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[13]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[14]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[15]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[16]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[17]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[18]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[19]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[20]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[21]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[22]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[23]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[24]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[25]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[26]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[27]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[28]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[29]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[30]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[31]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[32]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[33]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[34]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[35]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[36]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[37]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[38]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[39]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[40]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[41]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[42]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[43]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[44]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[45]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[46]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[47]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[48]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[49]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[50]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[51]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[52]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[53]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[54]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[55]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[7]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[8]\ : STD_LOGIC;
  signal \cmd_out_reg_n_0_[9]\ : STD_LOGIC;
  signal \^cs\ : STD_LOGIC;
  signal cs_i_10_n_0 : STD_LOGIC;
  signal cs_i_11_n_0 : STD_LOGIC;
  signal cs_i_12_n_0 : STD_LOGIC;
  signal cs_i_1_n_0 : STD_LOGIC;
  signal cs_i_2_n_0 : STD_LOGIC;
  signal cs_i_3_n_0 : STD_LOGIC;
  signal cs_i_4_n_0 : STD_LOGIC;
  signal cs_i_5_n_0 : STD_LOGIC;
  signal cs_i_6_n_0 : STD_LOGIC;
  signal cs_i_7_n_0 : STD_LOGIC;
  signal cs_i_8_n_0 : STD_LOGIC;
  signal cs_i_9_n_0 : STD_LOGIC;
  signal \data_sig[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_sig[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_sig[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_sig[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_sig[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_sig[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_sig[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_sig[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_sig[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_sig[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_sig[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_sig[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_sig[7]_i_6_n_0\ : STD_LOGIC;
  signal \data_sig[7]_i_7_n_0\ : STD_LOGIC;
  signal \data_sig_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_sig_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_sig_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_sig_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_sig_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_sig_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_sig_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_sig_reg_n_0_[7]\ : STD_LOGIC;
  signal \dout[7]_i_1_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^ready_for_next_byte\ : STD_LOGIC;
  signal ready_for_next_byte_i_10_n_0 : STD_LOGIC;
  signal ready_for_next_byte_i_1_n_0 : STD_LOGIC;
  signal ready_for_next_byte_i_2_n_0 : STD_LOGIC;
  signal ready_for_next_byte_i_3_n_0 : STD_LOGIC;
  signal ready_for_next_byte_i_4_n_0 : STD_LOGIC;
  signal ready_for_next_byte_i_5_n_0 : STD_LOGIC;
  signal ready_for_next_byte_i_6_n_0 : STD_LOGIC;
  signal ready_for_next_byte_i_7_n_0 : STD_LOGIC;
  signal ready_for_next_byte_i_8_n_0 : STD_LOGIC;
  signal ready_for_next_byte_i_9_n_0 : STD_LOGIC;
  signal recv_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of recv_data : signal is std.standard.true;
  signal \recv_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \recv_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \recv_data[1]_i_2_n_0\ : STD_LOGIC;
  signal \recv_data[1]_i_3_n_0\ : STD_LOGIC;
  signal \recv_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \recv_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \recv_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \recv_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \recv_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \recv_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \recv_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \recv_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \recv_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \recv_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \recv_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \return_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \return_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \return_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \return_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \return_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \return_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \return_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \return_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \return_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \return_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \return_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \return_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \return_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \return_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
  signal sclk_sig_i_1_n_0 : STD_LOGIC;
  signal sclk_sig_i_2_n_0 : STD_LOGIC;
  signal sclk_sig_i_3_n_0 : STD_LOGIC;
  signal sclk_sig_i_4_n_0 : STD_LOGIC;
  signal sclk_sig_i_5_n_0 : STD_LOGIC;
  signal sclk_sig_i_6_n_0 : STD_LOGIC;
  signal sclk_sig_i_7_n_0 : STD_LOGIC;
  signal sclk_sig_i_8_n_0 : STD_LOGIC;
  signal sclk_sig_i_9_n_0 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[4]_i_10_n_0\ : STD_LOGIC;
  signal \state[4]_i_11_n_0\ : STD_LOGIC;
  signal \state[4]_i_12_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_2_n_0\ : STD_LOGIC;
  signal \state[4]_i_3_n_0\ : STD_LOGIC;
  signal \state[4]_i_4_n_0\ : STD_LOGIC;
  signal \state[4]_i_5_n_0\ : STD_LOGIC;
  signal \state[4]_i_6_n_0\ : STD_LOGIC;
  signal \state[4]_i_7_n_0\ : STD_LOGIC;
  signal \state[4]_i_8_n_0\ : STD_LOGIC;
  signal \state[4]_i_9_n_0\ : STD_LOGIC;
  signal \^status\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal version : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of version : signal is std.standard.true;
  signal \version[0]_i_1_n_0\ : STD_LOGIC;
  signal \version[7]_i_1_n_0\ : STD_LOGIC;
  signal \version[7]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_boot_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_boot_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_counter[1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bit_counter[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_counter[4]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bit_counter[7]_i_10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bit_counter[7]_i_11\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bit_counter[7]_i_14\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bit_counter[7]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_counter[7]_i_8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bit_counter[8]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bit_counter[9]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of byte_available_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of byte_available_i_3 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \byte_counter[0]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \byte_counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \byte_counter[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \byte_counter[8]_i_10\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \byte_counter[8]_i_12\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \byte_counter[8]_i_13\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \byte_counter[8]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \byte_counter[8]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \byte_counter[8]_i_7\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \byte_counter[8]_i_8\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \byte_counter[8]_i_9\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of cmd_mode_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of cmd_mode_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of cmd_mode_i_5 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cmd_out[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cmd_out[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cmd_out[43]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cmd_out[47]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cmd_out[47]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cmd_out[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cmd_out[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cmd_out[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of cs_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of cs_i_4 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of cs_i_5 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of cs_i_6 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of cs_i_7 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of cs_i_8 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of cs_i_9 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_sig[7]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_sig[7]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of ready_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ready_for_next_byte_i_10 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of ready_for_next_byte_i_2 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of ready_for_next_byte_i_4 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of ready_for_next_byte_i_6 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of ready_for_next_byte_i_9 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \recv_data[1]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \recv_data[1]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \recv_data[6]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \recv_data[6]_i_3\ : label is "soft_lutpair38";
  attribute KEEP : string;
  attribute KEEP of \recv_data_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \recv_data_reg[0]\ : label is "true";
  attribute KEEP of \recv_data_reg[1]\ : label is "yes";
  attribute mark_debug_string of \recv_data_reg[1]\ : label is "true";
  attribute KEEP of \recv_data_reg[2]\ : label is "yes";
  attribute mark_debug_string of \recv_data_reg[2]\ : label is "true";
  attribute KEEP of \recv_data_reg[3]\ : label is "yes";
  attribute mark_debug_string of \recv_data_reg[3]\ : label is "true";
  attribute KEEP of \recv_data_reg[4]\ : label is "yes";
  attribute mark_debug_string of \recv_data_reg[4]\ : label is "true";
  attribute KEEP of \recv_data_reg[5]\ : label is "yes";
  attribute mark_debug_string of \recv_data_reg[5]\ : label is "true";
  attribute KEEP of \recv_data_reg[6]\ : label is "yes";
  attribute mark_debug_string of \recv_data_reg[6]\ : label is "true";
  attribute KEEP of \recv_data_reg[7]\ : label is "yes";
  attribute mark_debug_string of \recv_data_reg[7]\ : label is "true";
  attribute SOFT_HLUTNM of \return_state[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \return_state[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \return_state[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \return_state[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \return_state[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \return_state[4]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of sclk_sig_i_4 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of sclk_sig_i_7 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of sclk_sig_i_9 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state[0]_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \state[0]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \state[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \state[4]_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \state[4]_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \state[4]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \state[4]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[4]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[4]_i_7\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \state[4]_i_9\ : label is "soft_lutpair34";
  attribute KEEP of \version_reg[0]\ : label is "yes";
  attribute mark_debug_string of \version_reg[0]\ : label is "true";
  attribute KEEP of \version_reg[1]\ : label is "yes";
  attribute mark_debug_string of \version_reg[1]\ : label is "true";
  attribute KEEP of \version_reg[2]\ : label is "yes";
  attribute mark_debug_string of \version_reg[2]\ : label is "true";
  attribute KEEP of \version_reg[3]\ : label is "yes";
  attribute mark_debug_string of \version_reg[3]\ : label is "true";
  attribute KEEP of \version_reg[4]\ : label is "yes";
  attribute mark_debug_string of \version_reg[4]\ : label is "true";
  attribute KEEP of \version_reg[5]\ : label is "yes";
  attribute mark_debug_string of \version_reg[5]\ : label is "true";
  attribute KEEP of \version_reg[6]\ : label is "yes";
  attribute mark_debug_string of \version_reg[6]\ : label is "true";
  attribute KEEP of \version_reg[7]\ : label is "yes";
  attribute mark_debug_string of \version_reg[7]\ : label is "true";
begin
  byte_available <= \^byte_available\;
  cs <= \^cs\;
  ready_for_next_byte <= \^ready_for_next_byte\;
  sclk <= \^sclk\;
  status(4 downto 0) <= \^status\(4 downto 0);
\bit_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AFFFBFF9ABEFBBE"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(2),
      I2 => \^status\(3),
      I3 => \^status\(0),
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \^status\(4),
      O => \bit_counter[0]_i_1_n_0\
    );
\bit_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF3C3CFFFEFEFEFE"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(3),
      I2 => \bit_counter[1]_i_2_n_0\,
      I3 => \bit_counter_reg_n_0_[0]\,
      I4 => \bit_counter_reg_n_0_[1]\,
      I5 => \^status\(0),
      O => \bit_counter[1]_i_1_n_0\
    );
\bit_counter[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(1),
      O => \bit_counter[1]_i_2_n_0\
    );
\bit_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA900"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[2]\,
      I1 => \bit_counter_reg_n_0_[1]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \^status\(0),
      I4 => \bit_counter[2]_i_2_n_0\,
      O => \bit_counter[2]_i_1_n_0\
    );
\bit_counter[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E1EFFFE"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(1),
      I2 => \^status\(3),
      I3 => \^status\(4),
      I4 => \^status\(0),
      O => \bit_counter[2]_i_2_n_0\
    );
\bit_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[3]\,
      I1 => \bit_counter_reg_n_0_[0]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \bit_counter_reg_n_0_[2]\,
      O => \bit_counter[3]_i_1_n_0\
    );
\bit_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4FFF4F40044F04"
    )
        port map (
      I0 => \bit_counter[4]_i_2_n_0\,
      I1 => \^status\(0),
      I2 => \^status\(3),
      I3 => \^status\(2),
      I4 => \^status\(4),
      I5 => \^status\(1),
      O => \bit_counter[4]_i_1_n_0\
    );
\bit_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[4]\,
      I1 => \bit_counter_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \bit_counter_reg_n_0_[0]\,
      I4 => \bit_counter_reg_n_0_[3]\,
      O => \bit_counter[4]_i_2_n_0\
    );
\bit_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4CDD4CDC0CCC0FF"
    )
        port map (
      I0 => \bit_counter[5]_i_2_n_0\,
      I1 => \^status\(1),
      I2 => \^status\(2),
      I3 => \^status\(3),
      I4 => \^status\(4),
      I5 => \^status\(0),
      O => \bit_counter[5]_i_1_n_0\
    );
\bit_counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[5]\,
      I1 => \bit_counter_reg_n_0_[3]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[1]\,
      I4 => \bit_counter_reg_n_0_[2]\,
      I5 => \bit_counter_reg_n_0_[4]\,
      O => \bit_counter[5]_i_2_n_0\
    );
\bit_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[6]\,
      I1 => \bit_counter_reg_n_0_[4]\,
      I2 => \bit_counter[8]_i_2_n_0\,
      I3 => \bit_counter_reg_n_0_[5]\,
      O => \bit_counter[6]_i_1_n_0\
    );
\bit_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FF51"
    )
        port map (
      I0 => \bit_counter[7]_i_3_n_0\,
      I1 => \bit_counter[7]_i_4_n_0\,
      I2 => \bit_counter[7]_i_5_n_0\,
      I3 => \bit_counter[7]_i_6_n_0\,
      I4 => reset,
      I5 => \bit_counter[7]_i_7_n_0\,
      O => \bit_counter[7]_i_1_n_0\
    );
\bit_counter[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A802"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(2),
      I2 => \^status\(1),
      I3 => \^status\(3),
      O => \bit_counter[7]_i_10_n_0\
    );
\bit_counter[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(3),
      O => \bit_counter[7]_i_11_n_0\
    );
\bit_counter[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220020002000200"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(3),
      I2 => \^status\(0),
      I3 => \^status\(1),
      I4 => \^sclk\,
      I5 => miso,
      O => \bit_counter[7]_i_12_n_0\
    );
\bit_counter[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000001"
    )
        port map (
      I0 => \^status\(0),
      I1 => \byte_counter_reg_n_0_[8]\,
      I2 => \byte_counter_reg_n_0_[9]\,
      I3 => \byte_counter[7]_i_3_n_0\,
      I4 => \state[4]_i_12_n_0\,
      I5 => \state[4]_i_9_n_0\,
      O => \bit_counter[7]_i_13_n_0\
    );
\bit_counter[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset,
      I1 => \^status\(4),
      O => \bit_counter[7]_i_14_n_0\
    );
\bit_counter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F1F11F11111111"
    )
        port map (
      I0 => \bit_counter[7]_i_8_n_0\,
      I1 => \^status\(0),
      I2 => \bit_counter_reg_n_0_[7]\,
      I3 => \bit_counter[7]_i_9_n_0\,
      I4 => \bit_counter_reg_n_0_[6]\,
      I5 => \bit_counter[7]_i_10_n_0\,
      O => \bit_counter[7]_i_2_n_0\
    );
\bit_counter[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF28"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(0),
      I2 => \^status\(1),
      I3 => \^status\(4),
      I4 => \^status\(3),
      O => \bit_counter[7]_i_3_n_0\
    );
\bit_counter[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFFFE"
    )
        port map (
      I0 => cs_i_8_n_0,
      I1 => cs_i_7_n_0,
      I2 => sclk_sig_i_8_n_0,
      I3 => \^status\(0),
      I4 => \^status\(1),
      I5 => \^status\(2),
      O => \bit_counter[7]_i_4_n_0\
    );
\bit_counter[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEEE"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(1),
      I2 => \^status\(0),
      I3 => \bit_counter[9]_i_5_n_0\,
      I4 => \bit_counter_reg_n_0_[8]\,
      I5 => \bit_counter_reg_n_0_[9]\,
      O => \bit_counter[7]_i_5_n_0\
    );
\bit_counter[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000AAFFFCC"
    )
        port map (
      I0 => \data_sig[7]_i_3_n_0\,
      I1 => \recv_data[1]_i_2_n_0\,
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \^status\(0),
      I5 => \bit_counter[7]_i_11_n_0\,
      O => \bit_counter[7]_i_6_n_0\
    );
\bit_counter[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AFAEAAAF"
    )
        port map (
      I0 => \bit_counter[7]_i_12_n_0\,
      I1 => \data_sig[7]_i_3_n_0\,
      I2 => \bit_counter[7]_i_13_n_0\,
      I3 => \^status\(1),
      I4 => \^status\(0),
      I5 => \bit_counter[7]_i_14_n_0\,
      O => \bit_counter[7]_i_7_n_0\
    );
\bit_counter[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(2),
      I2 => \^status\(4),
      I3 => \^status\(1),
      O => \bit_counter[7]_i_8_n_0\
    );
\bit_counter[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[5]\,
      I1 => \bit_counter_reg_n_0_[3]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      I3 => \bit_counter_reg_n_0_[1]\,
      I4 => \bit_counter_reg_n_0_[2]\,
      I5 => \bit_counter_reg_n_0_[4]\,
      O => \bit_counter[7]_i_9_n_0\
    );
\bit_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[8]\,
      I1 => \bit_counter_reg_n_0_[5]\,
      I2 => \bit_counter_reg_n_0_[4]\,
      I3 => \bit_counter_reg_n_0_[7]\,
      I4 => \bit_counter_reg_n_0_[6]\,
      I5 => \bit_counter[8]_i_2_n_0\,
      O => \bit_counter[8]_i_1_n_0\
    );
\bit_counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[3]\,
      I1 => \bit_counter_reg_n_0_[0]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \bit_counter_reg_n_0_[2]\,
      O => \bit_counter[8]_i_2_n_0\
    );
\bit_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F080F0F"
    )
        port map (
      I0 => \bit_counter[9]_i_3_n_0\,
      I1 => \^status\(4),
      I2 => reset,
      I3 => \bit_counter[7]_i_6_n_0\,
      I4 => \bit_counter[9]_i_4_n_0\,
      I5 => \bit_counter[7]_i_10_n_0\,
      O => \bit_counter[9]_i_1_n_0\
    );
\bit_counter[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[9]\,
      I1 => \bit_counter[9]_i_5_n_0\,
      I2 => \bit_counter_reg_n_0_[8]\,
      O => \bit_counter[9]_i_2_n_0\
    );
\bit_counter[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF33012201"
    )
        port map (
      I0 => \^status\(1),
      I1 => \state[4]_i_9_n_0\,
      I2 => \state[4]_i_10_n_0\,
      I3 => \^status\(0),
      I4 => \data_sig[7]_i_3_n_0\,
      I5 => \bit_counter[7]_i_12_n_0\,
      O => \bit_counter[9]_i_3_n_0\
    );
\bit_counter[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454501"
    )
        port map (
      I0 => \bit_counter[1]_i_2_n_0\,
      I1 => cs_i_4_n_0,
      I2 => cs_i_5_n_0,
      I3 => \byte_counter[8]_i_11_n_0\,
      I4 => sclk_sig_i_8_n_0,
      I5 => \bit_counter[7]_i_3_n_0\,
      O => \bit_counter[9]_i_4_n_0\
    );
\bit_counter[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bit_counter[8]_i_2_n_0\,
      I1 => \bit_counter_reg_n_0_[6]\,
      I2 => \bit_counter_reg_n_0_[7]\,
      I3 => \bit_counter_reg_n_0_[4]\,
      I4 => \bit_counter_reg_n_0_[5]\,
      O => \bit_counter[9]_i_5_n_0\
    );
\bit_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bit_counter[7]_i_1_n_0\,
      D => \bit_counter[0]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[0]\,
      R => '0'
    );
\bit_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bit_counter[7]_i_1_n_0\,
      D => \bit_counter[1]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[1]\,
      R => '0'
    );
\bit_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bit_counter[7]_i_1_n_0\,
      D => \bit_counter[2]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[2]\,
      R => '0'
    );
\bit_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bit_counter[7]_i_1_n_0\,
      D => \bit_counter[3]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[3]\,
      R => \bit_counter[9]_i_1_n_0\
    );
\bit_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bit_counter[7]_i_1_n_0\,
      D => \bit_counter[4]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[4]\,
      R => '0'
    );
\bit_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bit_counter[7]_i_1_n_0\,
      D => \bit_counter[5]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[5]\,
      R => '0'
    );
\bit_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bit_counter[7]_i_1_n_0\,
      D => \bit_counter[6]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[6]\,
      R => \bit_counter[9]_i_1_n_0\
    );
\bit_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bit_counter[7]_i_1_n_0\,
      D => \bit_counter[7]_i_2_n_0\,
      Q => \bit_counter_reg_n_0_[7]\,
      R => '0'
    );
\bit_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bit_counter[7]_i_1_n_0\,
      D => \bit_counter[8]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[8]\,
      R => \bit_counter[9]_i_1_n_0\
    );
\bit_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bit_counter[7]_i_1_n_0\,
      D => \bit_counter[9]_i_2_n_0\,
      Q => \bit_counter_reg_n_0_[9]\,
      R => \bit_counter[9]_i_1_n_0\
    );
\boot_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => cs_i_3_n_0,
      I1 => \^status\(3),
      I2 => \^status\(2),
      I3 => \^status\(4),
      I4 => \^status\(1),
      I5 => \^status\(0),
      O => \boot_counter[0]_i_1_n_0\
    );
\boot_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(3),
      O => \boot_counter[0]_i_3_n_0\
    );
\boot_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(2),
      O => \boot_counter[0]_i_4_n_0\
    );
\boot_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(1),
      O => \boot_counter[0]_i_5_n_0\
    );
\boot_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(0),
      O => \boot_counter[0]_i_6_n_0\
    );
\boot_counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(15),
      O => \boot_counter[12]_i_2_n_0\
    );
\boot_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(14),
      O => \boot_counter[12]_i_3_n_0\
    );
\boot_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(13),
      O => \boot_counter[12]_i_4_n_0\
    );
\boot_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(12),
      O => \boot_counter[12]_i_5_n_0\
    );
\boot_counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(19),
      O => \boot_counter[16]_i_2_n_0\
    );
\boot_counter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(18),
      O => \boot_counter[16]_i_3_n_0\
    );
\boot_counter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(17),
      O => \boot_counter[16]_i_4_n_0\
    );
\boot_counter[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(16),
      O => \boot_counter[16]_i_5_n_0\
    );
\boot_counter[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(23),
      O => \boot_counter[20]_i_2_n_0\
    );
\boot_counter[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(22),
      O => \boot_counter[20]_i_3_n_0\
    );
\boot_counter[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(21),
      O => \boot_counter[20]_i_4_n_0\
    );
\boot_counter[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(20),
      O => \boot_counter[20]_i_5_n_0\
    );
\boot_counter[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(26),
      O => \boot_counter[24]_i_2_n_0\
    );
\boot_counter[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(25),
      O => \boot_counter[24]_i_3_n_0\
    );
\boot_counter[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(24),
      O => \boot_counter[24]_i_4_n_0\
    );
\boot_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(7),
      O => \boot_counter[4]_i_2_n_0\
    );
\boot_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(6),
      O => \boot_counter[4]_i_3_n_0\
    );
\boot_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(5),
      O => \boot_counter[4]_i_4_n_0\
    );
\boot_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(4),
      O => \boot_counter[4]_i_5_n_0\
    );
\boot_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(11),
      O => \boot_counter[8]_i_2_n_0\
    );
\boot_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(10),
      O => \boot_counter[8]_i_3_n_0\
    );
\boot_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(9),
      O => \boot_counter[8]_i_4_n_0\
    );
\boot_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_counter_reg(8),
      O => \boot_counter[8]_i_5_n_0\
    );
\boot_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[0]_i_2_n_7\,
      Q => boot_counter_reg(0),
      R => reset
    );
\boot_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \boot_counter_reg[0]_i_2_n_0\,
      CO(2) => \boot_counter_reg[0]_i_2_n_1\,
      CO(1) => \boot_counter_reg[0]_i_2_n_2\,
      CO(0) => \boot_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \boot_counter_reg[0]_i_2_n_4\,
      O(2) => \boot_counter_reg[0]_i_2_n_5\,
      O(1) => \boot_counter_reg[0]_i_2_n_6\,
      O(0) => \boot_counter_reg[0]_i_2_n_7\,
      S(3) => \boot_counter[0]_i_3_n_0\,
      S(2) => \boot_counter[0]_i_4_n_0\,
      S(1) => \boot_counter[0]_i_5_n_0\,
      S(0) => \boot_counter[0]_i_6_n_0\
    );
\boot_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[8]_i_1_n_5\,
      Q => boot_counter_reg(10),
      R => reset
    );
\boot_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[8]_i_1_n_4\,
      Q => boot_counter_reg(11),
      R => reset
    );
\boot_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[12]_i_1_n_7\,
      Q => boot_counter_reg(12),
      R => reset
    );
\boot_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_counter_reg[8]_i_1_n_0\,
      CO(3) => \boot_counter_reg[12]_i_1_n_0\,
      CO(2) => \boot_counter_reg[12]_i_1_n_1\,
      CO(1) => \boot_counter_reg[12]_i_1_n_2\,
      CO(0) => \boot_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \boot_counter_reg[12]_i_1_n_4\,
      O(2) => \boot_counter_reg[12]_i_1_n_5\,
      O(1) => \boot_counter_reg[12]_i_1_n_6\,
      O(0) => \boot_counter_reg[12]_i_1_n_7\,
      S(3) => \boot_counter[12]_i_2_n_0\,
      S(2) => \boot_counter[12]_i_3_n_0\,
      S(1) => \boot_counter[12]_i_4_n_0\,
      S(0) => \boot_counter[12]_i_5_n_0\
    );
\boot_counter_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[12]_i_1_n_6\,
      Q => boot_counter_reg(13),
      S => reset
    );
\boot_counter_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[12]_i_1_n_5\,
      Q => boot_counter_reg(14),
      S => reset
    );
\boot_counter_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[12]_i_1_n_4\,
      Q => boot_counter_reg(15),
      S => reset
    );
\boot_counter_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[16]_i_1_n_7\,
      Q => boot_counter_reg(16),
      S => reset
    );
\boot_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_counter_reg[12]_i_1_n_0\,
      CO(3) => \boot_counter_reg[16]_i_1_n_0\,
      CO(2) => \boot_counter_reg[16]_i_1_n_1\,
      CO(1) => \boot_counter_reg[16]_i_1_n_2\,
      CO(0) => \boot_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \boot_counter_reg[16]_i_1_n_4\,
      O(2) => \boot_counter_reg[16]_i_1_n_5\,
      O(1) => \boot_counter_reg[16]_i_1_n_6\,
      O(0) => \boot_counter_reg[16]_i_1_n_7\,
      S(3) => \boot_counter[16]_i_2_n_0\,
      S(2) => \boot_counter[16]_i_3_n_0\,
      S(1) => \boot_counter[16]_i_4_n_0\,
      S(0) => \boot_counter[16]_i_5_n_0\
    );
\boot_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[16]_i_1_n_6\,
      Q => boot_counter_reg(17),
      R => reset
    );
\boot_counter_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[16]_i_1_n_5\,
      Q => boot_counter_reg(18),
      S => reset
    );
\boot_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[16]_i_1_n_4\,
      Q => boot_counter_reg(19),
      R => reset
    );
\boot_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[0]_i_2_n_6\,
      Q => boot_counter_reg(1),
      R => reset
    );
\boot_counter_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[20]_i_1_n_7\,
      Q => boot_counter_reg(20),
      S => reset
    );
\boot_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_counter_reg[16]_i_1_n_0\,
      CO(3) => \boot_counter_reg[20]_i_1_n_0\,
      CO(2) => \boot_counter_reg[20]_i_1_n_1\,
      CO(1) => \boot_counter_reg[20]_i_1_n_2\,
      CO(0) => \boot_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \boot_counter_reg[20]_i_1_n_4\,
      O(2) => \boot_counter_reg[20]_i_1_n_5\,
      O(1) => \boot_counter_reg[20]_i_1_n_6\,
      O(0) => \boot_counter_reg[20]_i_1_n_7\,
      S(3) => \boot_counter[20]_i_2_n_0\,
      S(2) => \boot_counter[20]_i_3_n_0\,
      S(1) => \boot_counter[20]_i_4_n_0\,
      S(0) => \boot_counter[20]_i_5_n_0\
    );
\boot_counter_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[20]_i_1_n_6\,
      Q => boot_counter_reg(21),
      S => reset
    );
\boot_counter_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[20]_i_1_n_5\,
      Q => boot_counter_reg(22),
      S => reset
    );
\boot_counter_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[20]_i_1_n_4\,
      Q => boot_counter_reg(23),
      S => reset
    );
\boot_counter_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[24]_i_1_n_7\,
      Q => boot_counter_reg(24),
      S => reset
    );
\boot_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_counter_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_boot_counter_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \boot_counter_reg[24]_i_1_n_2\,
      CO(0) => \boot_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3) => \NLW_boot_counter_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \boot_counter_reg[24]_i_1_n_5\,
      O(1) => \boot_counter_reg[24]_i_1_n_6\,
      O(0) => \boot_counter_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2) => \boot_counter[24]_i_2_n_0\,
      S(1) => \boot_counter[24]_i_3_n_0\,
      S(0) => \boot_counter[24]_i_4_n_0\
    );
\boot_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[24]_i_1_n_6\,
      Q => boot_counter_reg(25),
      R => reset
    );
\boot_counter_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[24]_i_1_n_5\,
      Q => boot_counter_reg(26),
      S => reset
    );
\boot_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[0]_i_2_n_5\,
      Q => boot_counter_reg(2),
      R => reset
    );
\boot_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[0]_i_2_n_4\,
      Q => boot_counter_reg(3),
      R => reset
    );
\boot_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[4]_i_1_n_7\,
      Q => boot_counter_reg(4),
      R => reset
    );
\boot_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_counter_reg[0]_i_2_n_0\,
      CO(3) => \boot_counter_reg[4]_i_1_n_0\,
      CO(2) => \boot_counter_reg[4]_i_1_n_1\,
      CO(1) => \boot_counter_reg[4]_i_1_n_2\,
      CO(0) => \boot_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \boot_counter_reg[4]_i_1_n_4\,
      O(2) => \boot_counter_reg[4]_i_1_n_5\,
      O(1) => \boot_counter_reg[4]_i_1_n_6\,
      O(0) => \boot_counter_reg[4]_i_1_n_7\,
      S(3) => \boot_counter[4]_i_2_n_0\,
      S(2) => \boot_counter[4]_i_3_n_0\,
      S(1) => \boot_counter[4]_i_4_n_0\,
      S(0) => \boot_counter[4]_i_5_n_0\
    );
\boot_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[4]_i_1_n_6\,
      Q => boot_counter_reg(5),
      R => reset
    );
\boot_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[4]_i_1_n_5\,
      Q => boot_counter_reg(6),
      R => reset
    );
\boot_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[4]_i_1_n_4\,
      Q => boot_counter_reg(7),
      R => reset
    );
\boot_counter_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[8]_i_1_n_7\,
      Q => boot_counter_reg(8),
      S => reset
    );
\boot_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_counter_reg[4]_i_1_n_0\,
      CO(3) => \boot_counter_reg[8]_i_1_n_0\,
      CO(2) => \boot_counter_reg[8]_i_1_n_1\,
      CO(1) => \boot_counter_reg[8]_i_1_n_2\,
      CO(0) => \boot_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \boot_counter_reg[8]_i_1_n_4\,
      O(2) => \boot_counter_reg[8]_i_1_n_5\,
      O(1) => \boot_counter_reg[8]_i_1_n_6\,
      O(0) => \boot_counter_reg[8]_i_1_n_7\,
      S(3) => \boot_counter[8]_i_2_n_0\,
      S(2) => \boot_counter[8]_i_3_n_0\,
      S(1) => \boot_counter[8]_i_4_n_0\,
      S(0) => \boot_counter[8]_i_5_n_0\
    );
\boot_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \boot_counter[0]_i_1_n_0\,
      D => \boot_counter_reg[8]_i_1_n_6\,
      Q => boot_counter_reg(9),
      R => reset
    );
byte_available_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF3FEF00003000"
    )
        port map (
      I0 => cs_i_3_n_0,
      I1 => \^status\(2),
      I2 => byte_available_i_2_n_0,
      I3 => \^status\(3),
      I4 => byte_available_i_3_n_0,
      I5 => \^byte_available\,
      O => byte_available_i_1_n_0
    );
byte_available_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(4),
      O => byte_available_i_2_n_0
    );
byte_available_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => reset,
      I1 => \^status\(3),
      I2 => \^status\(0),
      O => byte_available_i_3_n_0
    );
byte_available_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => byte_available_i_1_n_0,
      Q => \^byte_available\,
      R => '0'
    );
\byte_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEFEF22202020"
    )
        port map (
      I0 => \p_0_in__0\(0),
      I1 => reset,
      I2 => \byte_counter[8]_i_6_n_0\,
      I3 => \byte_counter[8]_i_5_n_0\,
      I4 => \byte_counter[8]_i_4_n_0\,
      I5 => \byte_counter_reg_n_0_[0]\,
      O => \byte_counter[0]_i_1_n_0\
    );
\byte_counter[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFFFC"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(3),
      I2 => \^status\(0),
      I3 => \^status\(4),
      I4 => \byte_counter_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\byte_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEFEF22202020"
    )
        port map (
      I0 => \p_0_in__0\(1),
      I1 => reset,
      I2 => \byte_counter[8]_i_6_n_0\,
      I3 => \byte_counter[8]_i_5_n_0\,
      I4 => \byte_counter[8]_i_4_n_0\,
      I5 => \byte_counter_reg_n_0_[1]\,
      O => \byte_counter[1]_i_1_n_0\
    );
\byte_counter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF99FFFF909990"
    )
        port map (
      I0 => \byte_counter_reg_n_0_[0]\,
      I1 => \byte_counter_reg_n_0_[1]\,
      I2 => \^status\(4),
      I3 => \^status\(0),
      I4 => \^status\(2),
      I5 => \^status\(3),
      O => \p_0_in__0\(1)
    );
\byte_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4444F"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(3),
      I2 => \byte_counter_reg_n_0_[0]\,
      I3 => \byte_counter_reg_n_0_[1]\,
      I4 => \byte_counter_reg_n_0_[2]\,
      O => \byte_counter[2]_i_1_n_0\
    );
\byte_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF22222222F"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(0),
      I2 => \byte_counter_reg_n_0_[2]\,
      I3 => \byte_counter_reg_n_0_[1]\,
      I4 => \byte_counter_reg_n_0_[0]\,
      I5 => \byte_counter_reg_n_0_[3]\,
      O => \byte_counter[3]_i_1_n_0\
    );
\byte_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAB"
    )
        port map (
      I0 => \byte_counter[7]_i_2_n_0\,
      I1 => \byte_counter_reg_n_0_[1]\,
      I2 => \byte_counter_reg_n_0_[0]\,
      I3 => \byte_counter_reg_n_0_[3]\,
      I4 => \byte_counter_reg_n_0_[2]\,
      I5 => \byte_counter_reg_n_0_[4]\,
      O => \byte_counter[4]_i_1_n_0\
    );
\byte_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4444F"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(3),
      I2 => \byte_counter_reg_n_0_[4]\,
      I3 => \byte_counter[7]_i_3_n_0\,
      I4 => \byte_counter_reg_n_0_[5]\,
      O => \byte_counter[5]_i_1_n_0\
    );
\byte_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF22222222F"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(0),
      I2 => \byte_counter_reg_n_0_[5]\,
      I3 => \byte_counter[7]_i_3_n_0\,
      I4 => \byte_counter_reg_n_0_[4]\,
      I5 => \byte_counter_reg_n_0_[6]\,
      O => \byte_counter[6]_i_1_n_0\
    );
\byte_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEB"
    )
        port map (
      I0 => \byte_counter[7]_i_2_n_0\,
      I1 => \byte_counter_reg_n_0_[7]\,
      I2 => \byte_counter_reg_n_0_[6]\,
      I3 => \byte_counter_reg_n_0_[4]\,
      I4 => \byte_counter[7]_i_3_n_0\,
      I5 => \byte_counter_reg_n_0_[5]\,
      O => \byte_counter[7]_i_1_n_0\
    );
\byte_counter[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(0),
      O => \byte_counter[7]_i_2_n_0\
    );
\byte_counter[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \byte_counter_reg_n_0_[1]\,
      I1 => \byte_counter_reg_n_0_[0]\,
      I2 => \byte_counter_reg_n_0_[3]\,
      I3 => \byte_counter_reg_n_0_[2]\,
      O => \byte_counter[7]_i_3_n_0\
    );
\byte_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000F8"
    )
        port map (
      I0 => \byte_counter[8]_i_4_n_0\,
      I1 => \byte_counter[8]_i_5_n_0\,
      I2 => \byte_counter[8]_i_6_n_0\,
      I3 => reset,
      I4 => \byte_counter[8]_i_7_n_0\,
      I5 => \byte_counter[8]_i_8_n_0\,
      O => \byte_counter[8]_i_1_n_0\
    );
\byte_counter[8]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \byte_counter_reg_n_0_[4]\,
      I1 => \byte_counter_reg_n_0_[5]\,
      I2 => \byte_counter_reg_n_0_[6]\,
      I3 => \byte_counter_reg_n_0_[7]\,
      I4 => \byte_counter[7]_i_3_n_0\,
      O => \byte_counter[8]_i_10_n_0\
    );
\byte_counter[8]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cs_i_12_n_0,
      I1 => \byte_counter[8]_i_12_n_0\,
      I2 => cs_i_11_n_0,
      I3 => \byte_counter[8]_i_13_n_0\,
      O => \byte_counter[8]_i_11_n_0\
    );
\byte_counter[8]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => boot_counter_reg(14),
      I1 => boot_counter_reg(3),
      I2 => boot_counter_reg(16),
      I3 => boot_counter_reg(13),
      O => \byte_counter[8]_i_12_n_0\
    );
\byte_counter[8]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => boot_counter_reg(24),
      I1 => boot_counter_reg(17),
      I2 => boot_counter_reg(25),
      I3 => boot_counter_reg(18),
      O => \byte_counter[8]_i_13_n_0\
    );
\byte_counter[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555454444444444"
    )
        port map (
      I0 => reset,
      I1 => \byte_counter[8]_i_6_n_0\,
      I2 => cs_i_3_n_0,
      I3 => \state[4]_i_7_n_0\,
      I4 => \byte_counter[8]_i_9_n_0\,
      I5 => \byte_counter[8]_i_4_n_0\,
      O => \byte_counter[8]_i_2_n_0\
    );
\byte_counter[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F22F"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(0),
      I2 => \byte_counter[8]_i_10_n_0\,
      I3 => \byte_counter_reg_n_0_[8]\,
      O => \byte_counter[8]_i_3_n_0\
    );
\byte_counter[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(1),
      I2 => \^status\(2),
      O => \byte_counter[8]_i_4_n_0\
    );
\byte_counter[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05C005C005C005CF"
    )
        port map (
      I0 => \state[4]_i_10_n_0\,
      I1 => \recv_data[1]_i_2_n_0\,
      I2 => \^status\(3),
      I3 => \^status\(4),
      I4 => sclk_sig_i_8_n_0,
      I5 => \byte_counter[8]_i_11_n_0\,
      O => \byte_counter[8]_i_5_n_0\
    );
\byte_counter[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3001000000000000"
    )
        port map (
      I0 => \state[4]_i_10_n_0\,
      I1 => \^status\(4),
      I2 => \^status\(1),
      I3 => \^status\(2),
      I4 => \^status\(0),
      I5 => \^status\(3),
      O => \byte_counter[8]_i_6_n_0\
    );
\byte_counter[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(2),
      O => \byte_counter[8]_i_7_n_0\
    );
\byte_counter[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(2),
      O => \byte_counter[8]_i_8_n_0\
    );
\byte_counter[8]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200F20"
    )
        port map (
      I0 => \^sclk\,
      I1 => miso,
      I2 => \^status\(3),
      I3 => \^status\(4),
      I4 => \state[4]_i_10_n_0\,
      O => \byte_counter[8]_i_9_n_0\
    );
\byte_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEFEF22202020"
    )
        port map (
      I0 => \p_0_in__0\(9),
      I1 => reset,
      I2 => \byte_counter[8]_i_6_n_0\,
      I3 => \byte_counter[8]_i_5_n_0\,
      I4 => \byte_counter[8]_i_4_n_0\,
      I5 => \byte_counter_reg_n_0_[9]\,
      O => \byte_counter[9]_i_1_n_0\
    );
\byte_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0EEE0EEE0E0EE"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(0),
      I2 => \^status\(2),
      I3 => \byte_counter_reg_n_0_[9]\,
      I4 => \byte_counter[8]_i_10_n_0\,
      I5 => \byte_counter_reg_n_0_[8]\,
      O => \p_0_in__0\(9)
    );
\byte_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \byte_counter[0]_i_1_n_0\,
      Q => \byte_counter_reg_n_0_[0]\,
      R => '0'
    );
\byte_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \byte_counter[1]_i_1_n_0\,
      Q => \byte_counter_reg_n_0_[1]\,
      R => '0'
    );
\byte_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \byte_counter[8]_i_2_n_0\,
      D => \byte_counter[2]_i_1_n_0\,
      Q => \byte_counter_reg_n_0_[2]\,
      R => \byte_counter[8]_i_1_n_0\
    );
\byte_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \byte_counter[8]_i_2_n_0\,
      D => \byte_counter[3]_i_1_n_0\,
      Q => \byte_counter_reg_n_0_[3]\,
      R => \byte_counter[8]_i_1_n_0\
    );
\byte_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \byte_counter[8]_i_2_n_0\,
      D => \byte_counter[4]_i_1_n_0\,
      Q => \byte_counter_reg_n_0_[4]\,
      R => \byte_counter[8]_i_1_n_0\
    );
\byte_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \byte_counter[8]_i_2_n_0\,
      D => \byte_counter[5]_i_1_n_0\,
      Q => \byte_counter_reg_n_0_[5]\,
      R => \byte_counter[8]_i_1_n_0\
    );
\byte_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \byte_counter[8]_i_2_n_0\,
      D => \byte_counter[6]_i_1_n_0\,
      Q => \byte_counter_reg_n_0_[6]\,
      R => \byte_counter[8]_i_1_n_0\
    );
\byte_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \byte_counter[8]_i_2_n_0\,
      D => \byte_counter[7]_i_1_n_0\,
      Q => \byte_counter_reg_n_0_[7]\,
      R => \byte_counter[8]_i_1_n_0\
    );
\byte_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \byte_counter[8]_i_2_n_0\,
      D => \byte_counter[8]_i_3_n_0\,
      Q => \byte_counter_reg_n_0_[8]\,
      R => \byte_counter[8]_i_1_n_0\
    );
\byte_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \byte_counter[9]_i_1_n_0\,
      Q => \byte_counter_reg_n_0_[9]\,
      R => '0'
    );
cmd_mode_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEFE00022202"
    )
        port map (
      I0 => cmd_mode_i_2_n_0,
      I1 => reset,
      I2 => cmd_mode_i_3_n_0,
      I3 => \^status\(0),
      I4 => cmd_mode_i_4_n_0,
      I5 => cmd_mode_reg_n_0,
      O => cmd_mode_i_1_n_0
    );
cmd_mode_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^status\(4),
      I1 => miso,
      I2 => \^status\(1),
      O => cmd_mode_i_2_n_0
    );
cmd_mode_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFFFFEFFFFFFFE"
    )
        port map (
      I0 => \state[4]_i_9_n_0\,
      I1 => sclk_sig_i_8_n_0,
      I2 => \byte_counter[8]_i_11_n_0\,
      I3 => \^status\(4),
      I4 => \^status\(1),
      I5 => cmd_mode_i_5_n_0,
      O => cmd_mode_i_3_n_0
    );
cmd_mode_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(4),
      I2 => \^status\(1),
      I3 => \^status\(2),
      O => cmd_mode_i_4_n_0
    );
cmd_mode_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => miso,
      I1 => \^sclk\,
      O => cmd_mode_i_5_n_0
    );
cmd_mode_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => cmd_mode_i_1_n_0,
      Q => cmd_mode_reg_n_0,
      R => '0'
    );
\cmd_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(2),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[9]\,
      I5 => \^status\(3),
      O => cmd_out(10)
    );
\cmd_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FACA00F0F0F0F"
    )
        port map (
      I0 => address(3),
      I1 => \cmd_out_reg_n_0_[10]\,
      I2 => \^status\(2),
      I3 => \^status\(3),
      I4 => \^status\(4),
      I5 => \^status\(1),
      O => cmd_out(11)
    );
\cmd_out[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(4),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[11]\,
      I5 => \^status\(3),
      O => cmd_out(12)
    );
\cmd_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FACA00F0F0F0F"
    )
        port map (
      I0 => address(5),
      I1 => \cmd_out_reg_n_0_[12]\,
      I2 => \^status\(2),
      I3 => \^status\(3),
      I4 => \^status\(4),
      I5 => \^status\(1),
      O => cmd_out(13)
    );
\cmd_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(6),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[13]\,
      I5 => \^status\(3),
      O => cmd_out(14)
    );
\cmd_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FACA00F0F0F0F"
    )
        port map (
      I0 => address(7),
      I1 => \cmd_out_reg_n_0_[14]\,
      I2 => \^status\(2),
      I3 => \^status\(3),
      I4 => \^status\(4),
      I5 => \^status\(1),
      O => cmd_out(15)
    );
\cmd_out[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FACA00F0F0F0F"
    )
        port map (
      I0 => address(8),
      I1 => \cmd_out_reg_n_0_[15]\,
      I2 => \^status\(2),
      I3 => \^status\(3),
      I4 => \^status\(4),
      I5 => \^status\(1),
      O => cmd_out(16)
    );
\cmd_out[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(9),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[16]\,
      I5 => \^status\(3),
      O => cmd_out(17)
    );
\cmd_out[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(10),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[17]\,
      I5 => \^status\(3),
      O => cmd_out(18)
    );
\cmd_out[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(11),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[18]\,
      I5 => \^status\(3),
      O => cmd_out(19)
    );
\cmd_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F6F3"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(2),
      I2 => \^status\(3),
      I3 => \^status\(1),
      O => cmd_out(1)
    );
\cmd_out[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(12),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[19]\,
      I5 => \^status\(3),
      O => cmd_out(20)
    );
\cmd_out[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(13),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[20]\,
      I5 => \^status\(3),
      O => cmd_out(21)
    );
\cmd_out[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(14),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[21]\,
      I5 => \^status\(3),
      O => cmd_out(22)
    );
\cmd_out[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(15),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[22]\,
      I5 => \^status\(3),
      O => cmd_out(23)
    );
\cmd_out[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(16),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[23]\,
      I5 => \^status\(3),
      O => cmd_out(24)
    );
\cmd_out[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(17),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[24]\,
      I5 => \^status\(3),
      O => cmd_out(25)
    );
\cmd_out[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(18),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[25]\,
      I5 => \^status\(3),
      O => cmd_out(26)
    );
\cmd_out[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(19),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[26]\,
      I5 => \^status\(3),
      O => cmd_out(27)
    );
\cmd_out[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(20),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[27]\,
      I5 => \^status\(3),
      O => cmd_out(28)
    );
\cmd_out[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(21),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[28]\,
      I5 => \^status\(3),
      O => cmd_out(29)
    );
\cmd_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF67676703030303"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(2),
      I2 => \^status\(0),
      I3 => \^status\(3),
      I4 => \cmd_out_reg_n_0_[1]\,
      I5 => \^status\(1),
      O => cmd_out(2)
    );
\cmd_out[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(22),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[29]\,
      I5 => \^status\(3),
      O => cmd_out(30)
    );
\cmd_out[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(23),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[30]\,
      I5 => \^status\(3),
      O => cmd_out(31)
    );
\cmd_out[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(24),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[31]\,
      I5 => \^status\(3),
      O => cmd_out(32)
    );
\cmd_out[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(25),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[32]\,
      I5 => \^status\(3),
      O => cmd_out(33)
    );
\cmd_out[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(26),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[33]\,
      I5 => \^status\(3),
      O => cmd_out(34)
    );
\cmd_out[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(27),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[34]\,
      I5 => \^status\(3),
      O => cmd_out(35)
    );
\cmd_out[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(28),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[35]\,
      I5 => \^status\(3),
      O => cmd_out(36)
    );
\cmd_out[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(29),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[36]\,
      I5 => \^status\(3),
      O => cmd_out(37)
    );
\cmd_out[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4FFF0F4F4F0F0F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(30),
      I2 => \^status\(1),
      I3 => \cmd_out_reg_n_0_[37]\,
      I4 => \^status\(2),
      I5 => \^status\(3),
      O => cmd_out(38)
    );
\cmd_out[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(31),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[38]\,
      I5 => \^status\(3),
      O => cmd_out(39)
    );
\cmd_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF090909"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(1),
      I2 => \^status\(4),
      I3 => \cmd_out_reg_n_0_[2]\,
      I4 => \^status\(3),
      O => cmd_out(3)
    );
\cmd_out[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FF55FFFF7575"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(4),
      I2 => \^status\(0),
      I3 => \cmd_out_reg_n_0_[39]\,
      I4 => \^status\(2),
      I5 => \^status\(3),
      O => cmd_out(40)
    );
\cmd_out[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF2F00000F2F"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(4),
      I2 => \^status\(1),
      I3 => \^status\(3),
      I4 => \^status\(2),
      I5 => \cmd_out_reg_n_0_[40]\,
      O => cmd_out(41)
    );
\cmd_out[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF2F00000F2F"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(4),
      I2 => \^status\(1),
      I3 => \^status\(3),
      I4 => \^status\(2),
      I5 => \cmd_out_reg_n_0_[41]\,
      O => cmd_out(42)
    );
\cmd_out[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDFFD5"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(3),
      I2 => \cmd_out_reg_n_0_[42]\,
      I3 => \^status\(4),
      I4 => \^status\(2),
      O => cmd_out(43)
    );
\cmd_out[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F000D0D000D"
    )
        port map (
      I0 => \^status\(3),
      I1 => \cmd_out_reg_n_0_[43]\,
      I2 => \^status\(4),
      I3 => \^status\(1),
      I4 => \^status\(0),
      I5 => \^status\(2),
      O => cmd_out(44)
    );
\cmd_out[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF0F0F0FAF0F3F0F"
    )
        port map (
      I0 => \cmd_out_reg_n_0_[44]\,
      I1 => \^status\(2),
      I2 => \^status\(1),
      I3 => \^status\(0),
      I4 => \^status\(3),
      I5 => \^status\(4),
      O => cmd_out(45)
    );
\cmd_out[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000510155555101"
    )
        port map (
      I0 => reset,
      I1 => \cmd_out[47]_i_3_n_0\,
      I2 => \^status\(3),
      I3 => \cmd_out[47]_i_4_n_0\,
      I4 => \^status\(0),
      I5 => \cmd_out[47]_i_5_n_0\,
      O => \cmd_out[47]_i_1_n_0\
    );
\cmd_out[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008F"
    )
        port map (
      I0 => \^status\(3),
      I1 => \cmd_out_reg_n_0_[46]\,
      I2 => \^status\(1),
      I3 => \^status\(2),
      O => \cmd_out[47]_i_2_n_0\
    );
\cmd_out[47]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFFF0000FE"
    )
        port map (
      I0 => cs_i_8_n_0,
      I1 => cs_i_7_n_0,
      I2 => sclk_sig_i_8_n_0,
      I3 => \^status\(2),
      I4 => \^status\(1),
      I5 => \^status\(4),
      O => \cmd_out[47]_i_3_n_0\
    );
\cmd_out[47]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(2),
      I2 => \^status\(4),
      O => \cmd_out[47]_i_4_n_0\
    );
\cmd_out[47]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8ECECECFFFFFFFF"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(3),
      I2 => \^status\(2),
      I3 => cs_i_5_n_0,
      I4 => \^sclk\,
      I5 => \^status\(1),
      O => \cmd_out[47]_i_5_n_0\
    );
\cmd_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F9D9"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(2),
      I2 => \^status\(3),
      I3 => \cmd_out_reg_n_0_[3]\,
      O => cmd_out(4)
    );
\cmd_out[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005500CC000F"
    )
        port map (
      I0 => \cmd_out[47]_i_5_n_0\,
      I1 => \cmd_out[47]_i_4_n_0\,
      I2 => \cmd_out[47]_i_3_n_0\,
      I3 => reset,
      I4 => \^status\(3),
      I5 => \^status\(0),
      O => \cmd_out[55]_i_1_n_0\
    );
\cmd_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF090909"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(1),
      I2 => \^status\(4),
      I3 => \cmd_out_reg_n_0_[4]\,
      I4 => \^status\(3),
      O => cmd_out(5)
    );
\cmd_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF090909"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(1),
      I2 => \^status\(4),
      I3 => \cmd_out_reg_n_0_[5]\,
      I4 => \^status\(3),
      O => cmd_out(6)
    );
\cmd_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FF800008FFF00FF"
    )
        port map (
      I0 => \^status\(3),
      I1 => \cmd_out_reg_n_0_[6]\,
      I2 => \^status\(4),
      I3 => \^status\(2),
      I4 => \^status\(1),
      I5 => \^status\(0),
      O => cmd_out(7)
    );
\cmd_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F0F400F400F400F"
    )
        port map (
      I0 => \^status\(4),
      I1 => address(0),
      I2 => \^status\(2),
      I3 => \^status\(1),
      I4 => \cmd_out_reg_n_0_[7]\,
      I5 => \^status\(3),
      O => cmd_out(8)
    );
\cmd_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FACA00F0F0F0F"
    )
        port map (
      I0 => address(1),
      I1 => \cmd_out_reg_n_0_[8]\,
      I2 => \^status\(2),
      I3 => \^status\(3),
      I4 => \^status\(4),
      I5 => \^status\(1),
      O => cmd_out(9)
    );
\cmd_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(10),
      Q => \cmd_out_reg_n_0_[10]\,
      R => '0'
    );
\cmd_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(11),
      Q => \cmd_out_reg_n_0_[11]\,
      R => '0'
    );
\cmd_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(12),
      Q => \cmd_out_reg_n_0_[12]\,
      R => '0'
    );
\cmd_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(13),
      Q => \cmd_out_reg_n_0_[13]\,
      R => '0'
    );
\cmd_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(14),
      Q => \cmd_out_reg_n_0_[14]\,
      R => '0'
    );
\cmd_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(15),
      Q => \cmd_out_reg_n_0_[15]\,
      R => '0'
    );
\cmd_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(16),
      Q => \cmd_out_reg_n_0_[16]\,
      R => '0'
    );
\cmd_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(17),
      Q => \cmd_out_reg_n_0_[17]\,
      R => '0'
    );
\cmd_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(18),
      Q => \cmd_out_reg_n_0_[18]\,
      R => '0'
    );
\cmd_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(19),
      Q => \cmd_out_reg_n_0_[19]\,
      R => '0'
    );
\cmd_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(1),
      Q => \cmd_out_reg_n_0_[1]\,
      R => '0'
    );
\cmd_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(20),
      Q => \cmd_out_reg_n_0_[20]\,
      R => '0'
    );
\cmd_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(21),
      Q => \cmd_out_reg_n_0_[21]\,
      R => '0'
    );
\cmd_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(22),
      Q => \cmd_out_reg_n_0_[22]\,
      R => '0'
    );
\cmd_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(23),
      Q => \cmd_out_reg_n_0_[23]\,
      R => '0'
    );
\cmd_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(24),
      Q => \cmd_out_reg_n_0_[24]\,
      R => '0'
    );
\cmd_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(25),
      Q => \cmd_out_reg_n_0_[25]\,
      R => '0'
    );
\cmd_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(26),
      Q => \cmd_out_reg_n_0_[26]\,
      R => '0'
    );
\cmd_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(27),
      Q => \cmd_out_reg_n_0_[27]\,
      R => '0'
    );
\cmd_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(28),
      Q => \cmd_out_reg_n_0_[28]\,
      R => '0'
    );
\cmd_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(29),
      Q => \cmd_out_reg_n_0_[29]\,
      R => '0'
    );
\cmd_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(2),
      Q => \cmd_out_reg_n_0_[2]\,
      R => '0'
    );
\cmd_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(30),
      Q => \cmd_out_reg_n_0_[30]\,
      R => '0'
    );
\cmd_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(31),
      Q => \cmd_out_reg_n_0_[31]\,
      R => '0'
    );
\cmd_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(32),
      Q => \cmd_out_reg_n_0_[32]\,
      R => '0'
    );
\cmd_out_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(33),
      Q => \cmd_out_reg_n_0_[33]\,
      R => '0'
    );
\cmd_out_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(34),
      Q => \cmd_out_reg_n_0_[34]\,
      R => '0'
    );
\cmd_out_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(35),
      Q => \cmd_out_reg_n_0_[35]\,
      R => '0'
    );
\cmd_out_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(36),
      Q => \cmd_out_reg_n_0_[36]\,
      R => '0'
    );
\cmd_out_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(37),
      Q => \cmd_out_reg_n_0_[37]\,
      R => '0'
    );
\cmd_out_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(38),
      Q => \cmd_out_reg_n_0_[38]\,
      R => '0'
    );
\cmd_out_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(39),
      Q => \cmd_out_reg_n_0_[39]\,
      R => '0'
    );
\cmd_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(3),
      Q => \cmd_out_reg_n_0_[3]\,
      R => '0'
    );
\cmd_out_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(40),
      Q => \cmd_out_reg_n_0_[40]\,
      R => '0'
    );
\cmd_out_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(41),
      Q => \cmd_out_reg_n_0_[41]\,
      R => '0'
    );
\cmd_out_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(42),
      Q => \cmd_out_reg_n_0_[42]\,
      R => '0'
    );
\cmd_out_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(43),
      Q => \cmd_out_reg_n_0_[43]\,
      R => '0'
    );
\cmd_out_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(44),
      Q => \cmd_out_reg_n_0_[44]\,
      R => '0'
    );
\cmd_out_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(45),
      Q => \cmd_out_reg_n_0_[45]\,
      R => '0'
    );
\cmd_out_reg[46]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => \cmd_out_reg_n_0_[45]\,
      Q => \cmd_out_reg_n_0_[46]\,
      S => \cmd_out[55]_i_1_n_0\
    );
\cmd_out_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => \cmd_out[47]_i_2_n_0\,
      Q => \cmd_out_reg_n_0_[47]\,
      R => '0'
    );
\cmd_out_reg[48]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => \cmd_out_reg_n_0_[47]\,
      Q => \cmd_out_reg_n_0_[48]\,
      S => \cmd_out[55]_i_1_n_0\
    );
\cmd_out_reg[49]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => \cmd_out_reg_n_0_[48]\,
      Q => \cmd_out_reg_n_0_[49]\,
      S => \cmd_out[55]_i_1_n_0\
    );
\cmd_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(4),
      Q => \cmd_out_reg_n_0_[4]\,
      R => '0'
    );
\cmd_out_reg[50]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => \cmd_out_reg_n_0_[49]\,
      Q => \cmd_out_reg_n_0_[50]\,
      S => \cmd_out[55]_i_1_n_0\
    );
\cmd_out_reg[51]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => \cmd_out_reg_n_0_[50]\,
      Q => \cmd_out_reg_n_0_[51]\,
      S => \cmd_out[55]_i_1_n_0\
    );
\cmd_out_reg[52]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => \cmd_out_reg_n_0_[51]\,
      Q => \cmd_out_reg_n_0_[52]\,
      S => \cmd_out[55]_i_1_n_0\
    );
\cmd_out_reg[53]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => \cmd_out_reg_n_0_[52]\,
      Q => \cmd_out_reg_n_0_[53]\,
      S => \cmd_out[55]_i_1_n_0\
    );
\cmd_out_reg[54]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => \cmd_out_reg_n_0_[53]\,
      Q => \cmd_out_reg_n_0_[54]\,
      S => \cmd_out[55]_i_1_n_0\
    );
\cmd_out_reg[55]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => \cmd_out_reg_n_0_[54]\,
      Q => \cmd_out_reg_n_0_[55]\,
      S => \cmd_out[55]_i_1_n_0\
    );
\cmd_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(5),
      Q => \cmd_out_reg_n_0_[5]\,
      R => '0'
    );
\cmd_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(6),
      Q => \cmd_out_reg_n_0_[6]\,
      R => '0'
    );
\cmd_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(7),
      Q => \cmd_out_reg_n_0_[7]\,
      R => '0'
    );
\cmd_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(8),
      Q => \cmd_out_reg_n_0_[8]\,
      R => '0'
    );
\cmd_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cmd_out[47]_i_1_n_0\,
      D => cmd_out(9),
      Q => \cmd_out_reg_n_0_[9]\,
      R => '0'
    );
cs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFDDD01000111"
    )
        port map (
      I0 => \^status\(0),
      I1 => cs_i_2_n_0,
      I2 => cs_i_3_n_0,
      I3 => cs_i_4_n_0,
      I4 => cs_i_5_n_0,
      I5 => \^cs\,
      O => cs_i_1_n_0
    );
cs_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => boot_counter_reg(26),
      I1 => boot_counter_reg(7),
      I2 => boot_counter_reg(8),
      I3 => boot_counter_reg(5),
      O => cs_i_10_n_0
    );
cs_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => boot_counter_reg(21),
      I1 => boot_counter_reg(9),
      I2 => boot_counter_reg(19),
      I3 => boot_counter_reg(12),
      O => cs_i_11_n_0
    );
cs_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => boot_counter_reg(15),
      I1 => boot_counter_reg(4),
      I2 => boot_counter_reg(0),
      I3 => boot_counter_reg(11),
      O => cs_i_12_n_0
    );
cs_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => reset,
      I1 => \^status\(1),
      I2 => \^status\(4),
      I3 => \^status\(2),
      I4 => \^status\(3),
      O => cs_i_2_n_0
    );
cs_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cs_i_6_n_0,
      I1 => boot_counter_reg(2),
      I2 => boot_counter_reg(10),
      I3 => boot_counter_reg(1),
      I4 => cs_i_7_n_0,
      I5 => cs_i_8_n_0,
      O => cs_i_3_n_0
    );
cs_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(1),
      I2 => \^status\(0),
      O => cs_i_4_n_0
    );
cs_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cs_i_9_n_0,
      I1 => \bit_counter[8]_i_2_n_0\,
      I2 => \bit_counter_reg_n_0_[8]\,
      I3 => \bit_counter_reg_n_0_[9]\,
      O => cs_i_5_n_0
    );
cs_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => boot_counter_reg(6),
      I1 => boot_counter_reg(22),
      I2 => boot_counter_reg(20),
      I3 => boot_counter_reg(23),
      I4 => cs_i_10_n_0,
      O => cs_i_6_n_0
    );
cs_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => boot_counter_reg(18),
      I1 => boot_counter_reg(25),
      I2 => boot_counter_reg(17),
      I3 => boot_counter_reg(24),
      I4 => cs_i_11_n_0,
      O => cs_i_7_n_0
    );
cs_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => boot_counter_reg(13),
      I1 => boot_counter_reg(16),
      I2 => boot_counter_reg(3),
      I3 => boot_counter_reg(14),
      I4 => cs_i_12_n_0,
      O => cs_i_8_n_0
    );
cs_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[5]\,
      I1 => \bit_counter_reg_n_0_[4]\,
      I2 => \bit_counter_reg_n_0_[7]\,
      I3 => \bit_counter_reg_n_0_[6]\,
      O => cs_i_9_n_0
    );
cs_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cs_i_1_n_0,
      Q => \^cs\,
      R => '0'
    );
\data_sig[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \data_sig[7]_i_6_n_0\,
      I1 => \data_sig[7]_i_5_n_0\,
      I2 => din(0),
      O => \data_sig[0]_i_1_n_0\
    );
\data_sig[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD0"
    )
        port map (
      I0 => \^status\(0),
      I1 => \data_sig_reg_n_0_[0]\,
      I2 => din(1),
      I3 => \data_sig[7]_i_5_n_0\,
      I4 => \data_sig[7]_i_6_n_0\,
      O => \data_sig[1]_i_1_n_0\
    );
\data_sig[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD0"
    )
        port map (
      I0 => \^status\(0),
      I1 => \data_sig_reg_n_0_[1]\,
      I2 => din(2),
      I3 => \data_sig[7]_i_5_n_0\,
      I4 => \data_sig[7]_i_6_n_0\,
      O => \data_sig[2]_i_1_n_0\
    );
\data_sig[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD0"
    )
        port map (
      I0 => \^status\(0),
      I1 => \data_sig_reg_n_0_[2]\,
      I2 => din(3),
      I3 => \data_sig[7]_i_5_n_0\,
      I4 => \data_sig[7]_i_6_n_0\,
      O => \data_sig[3]_i_1_n_0\
    );
\data_sig[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD0"
    )
        port map (
      I0 => \^status\(0),
      I1 => \data_sig_reg_n_0_[3]\,
      I2 => din(4),
      I3 => \data_sig[7]_i_5_n_0\,
      I4 => \data_sig[7]_i_6_n_0\,
      O => \data_sig[4]_i_1_n_0\
    );
\data_sig[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD0"
    )
        port map (
      I0 => \^status\(0),
      I1 => \data_sig_reg_n_0_[4]\,
      I2 => din(5),
      I3 => \data_sig[7]_i_5_n_0\,
      I4 => \data_sig[7]_i_6_n_0\,
      O => \data_sig[5]_i_1_n_0\
    );
\data_sig[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD0"
    )
        port map (
      I0 => \^status\(0),
      I1 => \data_sig_reg_n_0_[5]\,
      I2 => din(6),
      I3 => \data_sig[7]_i_5_n_0\,
      I4 => \data_sig[7]_i_6_n_0\,
      O => \data_sig[6]_i_1_n_0\
    );
\data_sig[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEEAA0F00000000"
    )
        port map (
      I0 => \data_sig[7]_i_3_n_0\,
      I1 => \^status\(1),
      I2 => \state[4]_i_10_n_0\,
      I3 => \^status\(2),
      I4 => \^status\(0),
      I5 => \data_sig[7]_i_4_n_0\,
      O => \data_sig[7]_i_1_n_0\
    );
\data_sig[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD0"
    )
        port map (
      I0 => \^status\(0),
      I1 => \data_sig_reg_n_0_[6]\,
      I2 => din(7),
      I3 => \data_sig[7]_i_5_n_0\,
      I4 => \data_sig[7]_i_6_n_0\,
      O => \data_sig[7]_i_2_n_0\
    );
\data_sig[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^sclk\,
      I1 => \bit_counter_reg_n_0_[9]\,
      I2 => \bit_counter_reg_n_0_[8]\,
      I3 => \bit_counter[8]_i_2_n_0\,
      I4 => cs_i_9_n_0,
      O => \data_sig[7]_i_3_n_0\
    );
\data_sig[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(1),
      I2 => \^status\(3),
      I3 => \^status\(4),
      I4 => reset,
      O => \data_sig[7]_i_4_n_0\
    );
\data_sig[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \data_sig[7]_i_7_n_0\,
      I1 => \byte_counter_reg_n_0_[8]\,
      I2 => \byte_counter_reg_n_0_[9]\,
      I3 => \byte_counter_reg_n_0_[0]\,
      I4 => \byte_counter_reg_n_0_[1]\,
      O => \data_sig[7]_i_5_n_0\
    );
\data_sig[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABAAAAAAAAAA"
    )
        port map (
      I0 => \^status\(0),
      I1 => \byte_counter_reg_n_0_[8]\,
      I2 => \byte_counter_reg_n_0_[9]\,
      I3 => \byte_counter_reg_n_0_[1]\,
      I4 => \byte_counter_reg_n_0_[0]\,
      I5 => \data_sig[7]_i_7_n_0\,
      O => \data_sig[7]_i_6_n_0\
    );
\data_sig[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \byte_counter_reg_n_0_[4]\,
      I1 => \byte_counter_reg_n_0_[5]\,
      I2 => \byte_counter_reg_n_0_[6]\,
      I3 => \byte_counter_reg_n_0_[7]\,
      I4 => \byte_counter_reg_n_0_[3]\,
      I5 => \byte_counter_reg_n_0_[2]\,
      O => \data_sig[7]_i_7_n_0\
    );
\data_sig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_sig[7]_i_1_n_0\,
      D => \data_sig[0]_i_1_n_0\,
      Q => \data_sig_reg_n_0_[0]\,
      R => '0'
    );
\data_sig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_sig[7]_i_1_n_0\,
      D => \data_sig[1]_i_1_n_0\,
      Q => \data_sig_reg_n_0_[1]\,
      R => '0'
    );
\data_sig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_sig[7]_i_1_n_0\,
      D => \data_sig[2]_i_1_n_0\,
      Q => \data_sig_reg_n_0_[2]\,
      R => '0'
    );
\data_sig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_sig[7]_i_1_n_0\,
      D => \data_sig[3]_i_1_n_0\,
      Q => \data_sig_reg_n_0_[3]\,
      R => '0'
    );
\data_sig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_sig[7]_i_1_n_0\,
      D => \data_sig[4]_i_1_n_0\,
      Q => \data_sig_reg_n_0_[4]\,
      R => '0'
    );
\data_sig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_sig[7]_i_1_n_0\,
      D => \data_sig[5]_i_1_n_0\,
      Q => \data_sig_reg_n_0_[5]\,
      R => '0'
    );
\data_sig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_sig[7]_i_1_n_0\,
      D => \data_sig[6]_i_1_n_0\,
      Q => \data_sig_reg_n_0_[6]\,
      R => '0'
    );
\data_sig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \data_sig[7]_i_1_n_0\,
      D => \data_sig[7]_i_2_n_0\,
      Q => \data_sig_reg_n_0_[7]\,
      R => '0'
    );
\dout[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(3),
      I2 => reset,
      I3 => \^status\(4),
      I4 => \^status\(0),
      I5 => \^status\(1),
      O => \dout[7]_i_1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => recv_data(0),
      Q => dout(0),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => recv_data(1),
      Q => dout(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => recv_data(2),
      Q => dout(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => recv_data(3),
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => recv_data(4),
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => recv_data(5),
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => recv_data(6),
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => recv_data(7),
      Q => dout(7),
      R => '0'
    );
mosi_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \cmd_out_reg_n_0_[55]\,
      I1 => cmd_mode_reg_n_0,
      I2 => \data_sig_reg_n_0_[7]\,
      O => mosi
    );
ready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(1),
      I2 => \^status\(0),
      I3 => \^status\(3),
      I4 => \^status\(2),
      O => ready
    );
ready_for_next_byte_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBBB00000888"
    )
        port map (
      I0 => ready_for_next_byte_i_2_n_0,
      I1 => ready_for_next_byte_i_3_n_0,
      I2 => ready_for_next_byte_i_4_n_0,
      I3 => ready_for_next_byte_i_5_n_0,
      I4 => reset,
      I5 => \^ready_for_next_byte\,
      O => ready_for_next_byte_i_1_n_0
    );
ready_for_next_byte_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(1),
      I2 => \^status\(2),
      O => ready_for_next_byte_i_10_n_0
    );
ready_for_next_byte_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(4),
      I2 => \^status\(1),
      O => ready_for_next_byte_i_2_n_0
    );
ready_for_next_byte_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBBFAAAAAAAA"
    )
        port map (
      I0 => ready_for_next_byte_i_6_n_0,
      I1 => ready_for_next_byte_i_7_n_0,
      I2 => \state[4]_i_10_n_0\,
      I3 => ready_for_next_byte_i_8_n_0,
      I4 => ready_for_next_byte_i_9_n_0,
      I5 => ready_for_next_byte_i_10_n_0,
      O => ready_for_next_byte_i_3_n_0
    );
ready_for_next_byte_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^status\(4),
      I1 => cs_i_8_n_0,
      I2 => cs_i_7_n_0,
      I3 => sclk_sig_i_8_n_0,
      O => ready_for_next_byte_i_4_n_0
    );
ready_for_next_byte_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(4),
      O => ready_for_next_byte_i_5_n_0
    );
ready_for_next_byte_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(2),
      I2 => \^status\(3),
      O => ready_for_next_byte_i_6_n_0
    );
ready_for_next_byte_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[9]\,
      I1 => \bit_counter_reg_n_0_[8]\,
      I2 => \bit_counter[8]_i_2_n_0\,
      I3 => cs_i_9_n_0,
      I4 => \recv_data[6]_i_3_n_0\,
      I5 => \^status\(4),
      O => ready_for_next_byte_i_7_n_0
    );
ready_for_next_byte_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008028"
    )
        port map (
      I0 => \data_sig[7]_i_7_n_0\,
      I1 => \byte_counter_reg_n_0_[0]\,
      I2 => \byte_counter_reg_n_0_[1]\,
      I3 => \byte_counter_reg_n_0_[9]\,
      I4 => \byte_counter_reg_n_0_[8]\,
      I5 => \^status\(0),
      O => ready_for_next_byte_i_8_n_0
    );
ready_for_next_byte_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(4),
      O => ready_for_next_byte_i_9_n_0
    );
ready_for_next_byte_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ready_for_next_byte_i_1_n_0,
      Q => \^ready_for_next_byte\,
      R => '0'
    );
\recv_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7B0008FF7B0000"
    )
        port map (
      I0 => miso,
      I1 => \^sclk\,
      I2 => \^status\(4),
      I3 => reset,
      I4 => recv_data(0),
      I5 => \^status\(0),
      O => \recv_data[0]_i_1_n_0\
    );
\recv_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C5FFFF00C000C0"
    )
        port map (
      I0 => \recv_data[1]_i_2_n_0\,
      I1 => \recv_data[1]_i_3_n_0\,
      I2 => \recv_data[6]_i_3_n_0\,
      I3 => \^status\(4),
      I4 => \recv_data[1]_i_4_n_0\,
      I5 => recv_data(1),
      O => \recv_data[1]_i_1_n_0\
    );
\recv_data[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sclk\,
      I1 => miso,
      O => \recv_data[1]_i_2_n_0\
    );
\recv_data[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => recv_data(0),
      I1 => reset,
      O => \recv_data[1]_i_3_n_0\
    );
\recv_data[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4055"
    )
        port map (
      I0 => reset,
      I1 => miso,
      I2 => \^sclk\,
      I3 => \^status\(4),
      O => \recv_data[1]_i_4_n_0\
    );
\recv_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444444444444"
    )
        port map (
      I0 => \recv_data[6]_i_2_n_0\,
      I1 => recv_data(2),
      I2 => \^status\(4),
      I3 => reset,
      I4 => \recv_data[6]_i_3_n_0\,
      I5 => recv_data(1),
      O => \recv_data[2]_i_1_n_0\
    );
\recv_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444444444444"
    )
        port map (
      I0 => \recv_data[6]_i_2_n_0\,
      I1 => recv_data(3),
      I2 => \^status\(4),
      I3 => reset,
      I4 => \recv_data[6]_i_3_n_0\,
      I5 => recv_data(2),
      O => \recv_data[3]_i_1_n_0\
    );
\recv_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444444444444"
    )
        port map (
      I0 => \recv_data[6]_i_2_n_0\,
      I1 => recv_data(4),
      I2 => \^status\(4),
      I3 => reset,
      I4 => \recv_data[6]_i_3_n_0\,
      I5 => recv_data(3),
      O => \recv_data[4]_i_1_n_0\
    );
\recv_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444444444444"
    )
        port map (
      I0 => \recv_data[6]_i_2_n_0\,
      I1 => recv_data(5),
      I2 => \^status\(4),
      I3 => reset,
      I4 => \recv_data[6]_i_3_n_0\,
      I5 => recv_data(4),
      O => \recv_data[5]_i_1_n_0\
    );
\recv_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444444444444"
    )
        port map (
      I0 => \recv_data[6]_i_2_n_0\,
      I1 => recv_data(6),
      I2 => \^status\(4),
      I3 => reset,
      I4 => \recv_data[6]_i_3_n_0\,
      I5 => recv_data(5),
      O => \recv_data[6]_i_1_n_0\
    );
\recv_data[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51410000"
    )
        port map (
      I0 => reset,
      I1 => \^status\(4),
      I2 => miso,
      I3 => \^status\(0),
      I4 => \^sclk\,
      O => \recv_data[6]_i_2_n_0\
    );
\recv_data[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sclk\,
      I1 => \^status\(0),
      O => \recv_data[6]_i_3_n_0\
    );
\recv_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABEAAAAAAAEAAAA"
    )
        port map (
      I0 => reset,
      I1 => \^status\(3),
      I2 => \^status\(4),
      I3 => \^status\(1),
      I4 => \^status\(2),
      I5 => \^status\(0),
      O => \recv_data[7]_i_1_n_0\
    );
\recv_data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFAA0000"
    )
        port map (
      I0 => reset,
      I1 => miso,
      I2 => \^sclk\,
      I3 => \^status\(4),
      I4 => recv_data(7),
      I5 => \recv_data[7]_i_3_n_0\,
      O => \recv_data[7]_i_2_n_0\
    );
\recv_data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000022F022"
    )
        port map (
      I0 => recv_data(7),
      I1 => \recv_data[1]_i_2_n_0\,
      I2 => recv_data(6),
      I3 => \recv_data[6]_i_3_n_0\,
      I4 => reset,
      I5 => \^status\(4),
      O => \recv_data[7]_i_3_n_0\
    );
\recv_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \recv_data[7]_i_1_n_0\,
      D => \recv_data[0]_i_1_n_0\,
      Q => recv_data(0),
      R => '0'
    );
\recv_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \recv_data[7]_i_1_n_0\,
      D => \recv_data[1]_i_1_n_0\,
      Q => recv_data(1),
      R => '0'
    );
\recv_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \recv_data[7]_i_1_n_0\,
      D => \recv_data[2]_i_1_n_0\,
      Q => recv_data(2),
      R => '0'
    );
\recv_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \recv_data[7]_i_1_n_0\,
      D => \recv_data[3]_i_1_n_0\,
      Q => recv_data(3),
      R => '0'
    );
\recv_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \recv_data[7]_i_1_n_0\,
      D => \recv_data[4]_i_1_n_0\,
      Q => recv_data(4),
      R => '0'
    );
\recv_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \recv_data[7]_i_1_n_0\,
      D => \recv_data[5]_i_1_n_0\,
      Q => recv_data(5),
      R => '0'
    );
\recv_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \recv_data[7]_i_1_n_0\,
      D => \recv_data[6]_i_1_n_0\,
      Q => recv_data(6),
      R => '0'
    );
\recv_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \recv_data[7]_i_1_n_0\,
      D => \recv_data[7]_i_2_n_0\,
      Q => recv_data(7),
      R => '0'
    );
\return_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF3F0730"
    )
        port map (
      I0 => \state[4]_i_10_n_0\,
      I1 => \^status\(0),
      I2 => \^status\(1),
      I3 => \^status\(3),
      I4 => \^status\(2),
      O => \return_state[0]_i_1_n_0\
    );
\return_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F38"
    )
        port map (
      I0 => \state[4]_i_10_n_0\,
      I1 => \^status\(0),
      I2 => \^status\(1),
      I3 => \^status\(4),
      O => \return_state[1]_i_1_n_0\
    );
\return_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00F0"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(0),
      I2 => \^status\(2),
      I3 => \^status\(4),
      I4 => \^status\(1),
      O => \return_state[2]_i_1_n_0\
    );
\return_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(1),
      I2 => \^status\(2),
      O => \return_state[3]_i_1_n_0\
    );
\return_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000111115551111"
    )
        port map (
      I0 => reset,
      I1 => \return_state[4]_i_3_n_0\,
      I2 => \return_state[4]_i_4_n_0\,
      I3 => \^status\(1),
      I4 => \^status\(2),
      I5 => \return_state[4]_i_5_n_0\,
      O => \return_state[4]_i_1_n_0\
    );
\return_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BB000B"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(2),
      I2 => \^status\(0),
      I3 => \^status\(3),
      I4 => \^status\(4),
      O => \return_state[4]_i_2_n_0\
    );
\return_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCFF033300DDFF"
    )
        port map (
      I0 => \state[4]_i_10_n_0\,
      I1 => \^status\(0),
      I2 => \recv_data[1]_i_2_n_0\,
      I3 => \^status\(4),
      I4 => \^status\(1),
      I5 => \^status\(3),
      O => \return_state[4]_i_3_n_0\
    );
\return_state[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(3),
      I2 => \^status\(0),
      O => \return_state[4]_i_4_n_0\
    );
\return_state[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEFEEFFE"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(3),
      I2 => \^status\(1),
      I3 => \^status\(4),
      I4 => recv_data(0),
      O => \return_state[4]_i_5_n_0\
    );
\return_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \return_state[4]_i_1_n_0\,
      D => \return_state[0]_i_1_n_0\,
      Q => \return_state_reg_n_0_[0]\,
      R => '0'
    );
\return_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \return_state[4]_i_1_n_0\,
      D => \return_state[1]_i_1_n_0\,
      Q => \return_state_reg_n_0_[1]\,
      R => '0'
    );
\return_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \return_state[4]_i_1_n_0\,
      D => \return_state[2]_i_1_n_0\,
      Q => \return_state_reg_n_0_[2]\,
      R => '0'
    );
\return_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \return_state[4]_i_1_n_0\,
      D => \return_state[3]_i_1_n_0\,
      Q => \return_state_reg_n_0_[3]\,
      R => '0'
    );
\return_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \return_state[4]_i_1_n_0\,
      D => \return_state[4]_i_2_n_0\,
      Q => \return_state_reg_n_0_[4]\,
      R => '0'
    );
sclk_sig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFE2202"
    )
        port map (
      I0 => \^sclk\,
      I1 => sclk_sig_i_2_n_0,
      I2 => sclk_sig_i_3_n_0,
      I3 => sclk_sig_i_4_n_0,
      I4 => sclk_sig_i_5_n_0,
      I5 => reset,
      O => sclk_sig_i_1_n_0
    );
sclk_sig_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAABAAAAAAA"
    )
        port map (
      I0 => sclk_sig_i_6_n_0,
      I1 => \^status\(3),
      I2 => \^status\(0),
      I3 => sclk_sig_i_7_n_0,
      I4 => \^status\(4),
      I5 => cs_i_5_n_0,
      O => sclk_sig_i_2_n_0
    );
sclk_sig_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888888C"
    )
        port map (
      I0 => \^status\(3),
      I1 => byte_available_i_2_n_0,
      I2 => \^status\(2),
      I3 => cs_i_8_n_0,
      I4 => cs_i_7_n_0,
      I5 => sclk_sig_i_8_n_0,
      O => sclk_sig_i_3_n_0
    );
sclk_sig_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(2),
      O => sclk_sig_i_4_n_0
    );
sclk_sig_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFFFF"
    )
        port map (
      I0 => \bit_counter[7]_i_8_n_0\,
      I1 => cs_i_8_n_0,
      I2 => cs_i_7_n_0,
      I3 => sclk_sig_i_8_n_0,
      I4 => cs_i_4_n_0,
      I5 => \^sclk\,
      O => sclk_sig_i_5_n_0
    );
sclk_sig_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000280"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(3),
      I2 => \^status\(0),
      I3 => \^status\(4),
      I4 => \^status\(2),
      I5 => reset,
      O => sclk_sig_i_6_n_0
    );
sclk_sig_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(4),
      I2 => \^status\(2),
      O => sclk_sig_i_7_n_0
    );
sclk_sig_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => boot_counter_reg(1),
      I1 => boot_counter_reg(10),
      I2 => boot_counter_reg(2),
      I3 => cs_i_10_n_0,
      I4 => sclk_sig_i_9_n_0,
      O => sclk_sig_i_8_n_0
    );
sclk_sig_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => boot_counter_reg(23),
      I1 => boot_counter_reg(20),
      I2 => boot_counter_reg(22),
      I3 => boot_counter_reg(6),
      O => sclk_sig_i_9_n_0
    );
sclk_sig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sclk_sig_i_1_n_0,
      Q => \^sclk\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEEEEEFFEEFEEE"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \state[0]_i_3_n_0\,
      I2 => recv_data(0),
      I3 => \state[4]_i_7_n_0\,
      I4 => \state[0]_i_4_n_0\,
      I5 => \state[0]_i_5_n_0\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0D0D00050F0F"
    )
        port map (
      I0 => \^status\(1),
      I1 => rd,
      I2 => \^status\(0),
      I3 => \state[4]_i_10_n_0\,
      I4 => \^status\(4),
      I5 => \^status\(2),
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F222F22BF80BF80"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(1),
      I2 => \^status\(0),
      I3 => \^status\(3),
      I4 => \return_state_reg_n_0_[0]\,
      I5 => \^status\(2),
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(1),
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(2),
      O => \state[0]_i_5_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333380B3F3F30030"
    )
        port map (
      I0 => \return_state_reg_n_0_[1]\,
      I1 => \^status\(3),
      I2 => \^status\(2),
      I3 => \^status\(4),
      I4 => \^status\(1),
      I5 => \^status\(0),
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03CE0000"
    )
        port map (
      I0 => \state[4]_i_10_n_0\,
      I1 => \^status\(2),
      I2 => \^status\(0),
      I3 => \^status\(1),
      I4 => \^status\(4),
      I5 => \state[2]_i_2_n_0\,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA0A40000"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(1),
      I2 => \^status\(0),
      I3 => \^status\(3),
      I4 => \^status\(2),
      I5 => \state[2]_i_3_n_0\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44CC04CC54CC14CC"
    )
        port map (
      I0 => \^status\(1),
      I1 => \^status\(3),
      I2 => \^status\(0),
      I3 => \^status\(2),
      I4 => \return_state_reg_n_0_[2]\,
      I5 => recv_data(0),
      O => \state[2]_i_3_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => \state[3]_i_2_n_0\,
      I1 => \^status\(1),
      I2 => \state[3]_i_3_n_0\,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003F3F3F3F00153F"
    )
        port map (
      I0 => \state[4]_i_10_n_0\,
      I1 => \^status\(3),
      I2 => \return_state_reg_n_0_[3]\,
      I3 => \^status\(4),
      I4 => \^status\(2),
      I5 => \^status\(0),
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAEAAAEAAAEAE"
    )
        port map (
      I0 => \state[3]_i_4_n_0\,
      I1 => \^status\(1),
      I2 => \^status\(3),
      I3 => \^status\(0),
      I4 => \^status\(2),
      I5 => \^status\(4),
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F5F00001000"
    )
        port map (
      I0 => \^status\(0),
      I1 => \^status\(4),
      I2 => \^status\(2),
      I3 => wr,
      I4 => rd,
      I5 => \^status\(3),
      O => \state[3]_i_4_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F555F5F00440044"
    )
        port map (
      I0 => \state[4]_i_3_n_0\,
      I1 => miso,
      I2 => \state[4]_i_4_n_0\,
      I3 => \state[4]_i_5_n_0\,
      I4 => cs_i_3_n_0,
      I5 => \state[4]_i_6_n_0\,
      O => \state[4]_i_1_n_0\
    );
\state[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \byte_counter_reg_n_0_[8]\,
      I1 => \byte_counter_reg_n_0_[9]\,
      I2 => \byte_counter[7]_i_3_n_0\,
      I3 => \state[4]_i_12_n_0\,
      O => \state[4]_i_10_n_0\
    );
\state[4]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBA2900"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(2),
      I2 => \^status\(1),
      I3 => \^status\(0),
      I4 => \^status\(4),
      O => \state[4]_i_11_n_0\
    );
\state[4]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \byte_counter_reg_n_0_[7]\,
      I1 => \byte_counter_reg_n_0_[6]\,
      I2 => \byte_counter_reg_n_0_[5]\,
      I3 => \byte_counter_reg_n_0_[4]\,
      O => \state[4]_i_12_n_0\
    );
\state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4445444544444445"
    )
        port map (
      I0 => \state[4]_i_7_n_0\,
      I1 => \state[4]_i_8_n_0\,
      I2 => \^status\(1),
      I3 => \state[4]_i_9_n_0\,
      I4 => \state[4]_i_10_n_0\,
      I5 => \^status\(0),
      O => \state[4]_i_2_n_0\
    );
\state[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => \state[4]_i_11_n_0\,
      I1 => miso,
      I2 => \state[4]_i_4_n_0\,
      I3 => \^sclk\,
      O => \state[4]_i_3_n_0\
    );
\state[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00425818"
    )
        port map (
      I0 => \^status\(4),
      I1 => \^status\(0),
      I2 => \^status\(3),
      I3 => \^status\(2),
      I4 => \^status\(1),
      O => \state[4]_i_4_n_0\
    );
\state[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00DBFEFE"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(1),
      I2 => \^status\(0),
      I3 => \^status\(3),
      I4 => \^status\(4),
      O => \state[4]_i_5_n_0\
    );
\state[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33131333FF3FF35F"
    )
        port map (
      I0 => cs_i_5_n_0,
      I1 => \^status\(4),
      I2 => \^status\(0),
      I3 => \^status\(1),
      I4 => \^status\(2),
      I5 => \^status\(3),
      O => \state[4]_i_6_n_0\
    );
\state[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^status\(3),
      I1 => \^status\(4),
      O => \state[4]_i_7_n_0\
    );
\state[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0A50000E0050000"
    )
        port map (
      I0 => \^status\(3),
      I1 => recv_data(0),
      I2 => \^status\(0),
      I3 => \^status\(1),
      I4 => \^status\(2),
      I5 => \return_state_reg_n_0_[4]\,
      O => \state[4]_i_8_n_0\
    );
\state[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^status\(2),
      I1 => \^status\(3),
      O => \state[4]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[4]_i_1_n_0\,
      D => \state[0]_i_1_n_0\,
      Q => \^status\(0),
      R => reset
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[4]_i_1_n_0\,
      D => \state[1]_i_1_n_0\,
      Q => \^status\(1),
      R => reset
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[4]_i_1_n_0\,
      D => \state[2]_i_1_n_0\,
      Q => \^status\(2),
      R => reset
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[4]_i_1_n_0\,
      D => \state[3]_i_1_n_0\,
      Q => \^status\(3),
      R => reset
    );
\state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \state[4]_i_1_n_0\,
      D => \state[4]_i_2_n_0\,
      Q => \^status\(4),
      R => reset
    );
\version[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFBA00"
    )
        port map (
      I0 => version(0),
      I1 => reset,
      I2 => recv_data(0),
      I3 => \version[7]_i_2_n_0\,
      I4 => version(0),
      O => \version[0]_i_1_n_0\
    );
\version[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => reset,
      I1 => recv_data(0),
      I2 => \version[7]_i_2_n_0\,
      O => \version[7]_i_1_n_0\
    );
\version[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAABAAAAA"
    )
        port map (
      I0 => reset,
      I1 => \^status\(1),
      I2 => \^status\(4),
      I3 => \^status\(0),
      I4 => \^status\(2),
      I5 => \^status\(3),
      O => \version[7]_i_2_n_0\
    );
\version_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \version[0]_i_1_n_0\,
      Q => version(0),
      R => '0'
    );
\version_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \version[7]_i_2_n_0\,
      D => version(1),
      Q => version(1),
      R => \version[7]_i_1_n_0\
    );
\version_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \version[7]_i_2_n_0\,
      D => version(2),
      Q => version(2),
      R => \version[7]_i_1_n_0\
    );
\version_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \version[7]_i_2_n_0\,
      D => version(3),
      Q => version(3),
      R => \version[7]_i_1_n_0\
    );
\version_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \version[7]_i_2_n_0\,
      D => version(4),
      Q => version(4),
      R => \version[7]_i_1_n_0\
    );
\version_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \version[7]_i_2_n_0\,
      D => version(5),
      Q => version(5),
      R => \version[7]_i_1_n_0\
    );
\version_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \version[7]_i_2_n_0\,
      D => version(6),
      Q => version(6),
      R => \version[7]_i_1_n_0\
    );
\version_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \version[7]_i_2_n_0\,
      D => version(7),
      Q => version(7),
      R => \version[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0 is
  port (
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    SD_DAT : out STD_LOGIC_VECTOR ( 0 to 0 );
    SD_CMD : out STD_LOGIC;
    SD_SCK : out STD_LOGIC;
    loaded : out STD_LOGIC;
    load : in STD_LOGIC;
    resetn : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rvalid : in STD_LOGIC;
    \recv_data_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0 is
  signal addr_ptr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \addr_ptr[3]_i_2_n_0\ : STD_LOGIC;
  signal addr_ptr_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of addr_ptr_0 : signal is std.standard.true;
  signal \addr_ptr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ptr_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ptr_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ptr_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ptr_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ptr_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ptr_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ptr_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ptr_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ptr_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ptr_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ptr_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ptr_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ptr_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ptr_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ptr_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ptr_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ptr_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ptr_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ptr_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ptr_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \addr_ptr_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \addr_ptr_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \addr_ptr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ptr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ptr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ptr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \addr_ptr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_ptr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \addr_ptr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \addr_ptr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal address : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of address : signal is std.standard.true;
  signal \address0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \address0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \address0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \address0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \address0_carry__0_n_0\ : STD_LOGIC;
  signal \address0_carry__0_n_1\ : STD_LOGIC;
  signal \address0_carry__0_n_2\ : STD_LOGIC;
  signal \address0_carry__0_n_3\ : STD_LOGIC;
  signal \address0_carry__0_n_4\ : STD_LOGIC;
  signal \address0_carry__0_n_5\ : STD_LOGIC;
  signal \address0_carry__0_n_6\ : STD_LOGIC;
  signal \address0_carry__0_n_7\ : STD_LOGIC;
  signal \address0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \address0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \address0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \address0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \address0_carry__1_n_0\ : STD_LOGIC;
  signal \address0_carry__1_n_1\ : STD_LOGIC;
  signal \address0_carry__1_n_2\ : STD_LOGIC;
  signal \address0_carry__1_n_3\ : STD_LOGIC;
  signal \address0_carry__1_n_4\ : STD_LOGIC;
  signal \address0_carry__1_n_5\ : STD_LOGIC;
  signal \address0_carry__1_n_6\ : STD_LOGIC;
  signal \address0_carry__1_n_7\ : STD_LOGIC;
  signal \address0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \address0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \address0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \address0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \address0_carry__2_n_0\ : STD_LOGIC;
  signal \address0_carry__2_n_1\ : STD_LOGIC;
  signal \address0_carry__2_n_2\ : STD_LOGIC;
  signal \address0_carry__2_n_3\ : STD_LOGIC;
  signal \address0_carry__2_n_4\ : STD_LOGIC;
  signal \address0_carry__2_n_5\ : STD_LOGIC;
  signal \address0_carry__2_n_6\ : STD_LOGIC;
  signal \address0_carry__2_n_7\ : STD_LOGIC;
  signal \address0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \address0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \address0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \address0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \address0_carry__3_n_0\ : STD_LOGIC;
  signal \address0_carry__3_n_1\ : STD_LOGIC;
  signal \address0_carry__3_n_2\ : STD_LOGIC;
  signal \address0_carry__3_n_3\ : STD_LOGIC;
  signal \address0_carry__3_n_4\ : STD_LOGIC;
  signal \address0_carry__3_n_5\ : STD_LOGIC;
  signal \address0_carry__3_n_6\ : STD_LOGIC;
  signal \address0_carry__3_n_7\ : STD_LOGIC;
  signal \address0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \address0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \address0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \address0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \address0_carry__4_n_0\ : STD_LOGIC;
  signal \address0_carry__4_n_1\ : STD_LOGIC;
  signal \address0_carry__4_n_2\ : STD_LOGIC;
  signal \address0_carry__4_n_3\ : STD_LOGIC;
  signal \address0_carry__4_n_4\ : STD_LOGIC;
  signal \address0_carry__4_n_5\ : STD_LOGIC;
  signal \address0_carry__4_n_6\ : STD_LOGIC;
  signal \address0_carry__4_n_7\ : STD_LOGIC;
  signal \address0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \address0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \address0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \address0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \address0_carry__5_n_0\ : STD_LOGIC;
  signal \address0_carry__5_n_1\ : STD_LOGIC;
  signal \address0_carry__5_n_2\ : STD_LOGIC;
  signal \address0_carry__5_n_3\ : STD_LOGIC;
  signal \address0_carry__5_n_4\ : STD_LOGIC;
  signal \address0_carry__5_n_5\ : STD_LOGIC;
  signal \address0_carry__5_n_6\ : STD_LOGIC;
  signal \address0_carry__5_n_7\ : STD_LOGIC;
  signal \address0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \address0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \address0_carry__6_n_2\ : STD_LOGIC;
  signal \address0_carry__6_n_3\ : STD_LOGIC;
  signal \address0_carry__6_n_5\ : STD_LOGIC;
  signal \address0_carry__6_n_6\ : STD_LOGIC;
  signal \address0_carry__6_n_7\ : STD_LOGIC;
  signal address0_carry_i_1_n_0 : STD_LOGIC;
  signal address0_carry_i_2_n_0 : STD_LOGIC;
  signal address0_carry_i_3_n_0 : STD_LOGIC;
  signal address0_carry_n_0 : STD_LOGIC;
  signal address0_carry_n_1 : STD_LOGIC;
  signal address0_carry_n_2 : STD_LOGIC;
  signal address0_carry_n_3 : STD_LOGIC;
  signal address0_carry_n_4 : STD_LOGIC;
  signal address0_carry_n_5 : STD_LOGIC;
  signal address0_carry_n_6 : STD_LOGIC;
  signal address0_carry_n_7 : STD_LOGIC;
  signal \address[0]_i_1_n_0\ : STD_LOGIC;
  signal \address[10]_i_1_n_0\ : STD_LOGIC;
  signal \address[11]_i_1_n_0\ : STD_LOGIC;
  signal \address[12]_i_1_n_0\ : STD_LOGIC;
  signal \address[13]_i_1_n_0\ : STD_LOGIC;
  signal \address[14]_i_1_n_0\ : STD_LOGIC;
  signal \address[15]_i_1_n_0\ : STD_LOGIC;
  signal \address[16]_i_1_n_0\ : STD_LOGIC;
  signal \address[17]_i_1_n_0\ : STD_LOGIC;
  signal \address[18]_i_1_n_0\ : STD_LOGIC;
  signal \address[19]_i_1_n_0\ : STD_LOGIC;
  signal \address[1]_i_1_n_0\ : STD_LOGIC;
  signal \address[20]_i_1_n_0\ : STD_LOGIC;
  signal \address[21]_i_1_n_0\ : STD_LOGIC;
  signal \address[22]_i_1_n_0\ : STD_LOGIC;
  signal \address[22]_i_2_n_0\ : STD_LOGIC;
  signal \address[2]_i_1_n_0\ : STD_LOGIC;
  signal \address[31]_i_1_n_0\ : STD_LOGIC;
  signal \address[3]_i_1_n_0\ : STD_LOGIC;
  signal \address[4]_i_1_n_0\ : STD_LOGIC;
  signal \address[5]_i_1_n_0\ : STD_LOGIC;
  signal \address[6]_i_1_n_0\ : STD_LOGIC;
  signal \address[7]_i_1_n_0\ : STD_LOGIC;
  signal \address[8]_i_1_n_0\ : STD_LOGIC;
  signal \address[9]_i_1_n_0\ : STD_LOGIC;
  signal byte_available : STD_LOGIC;
  attribute MARK_DEBUG of byte_available : signal is std.standard.true;
  signal byte_available_1_i_1_n_0 : STD_LOGIC;
  signal byte_available_1_i_2_n_0 : STD_LOGIC;
  signal byte_available_1_reg_n_0 : STD_LOGIC;
  signal clk_25mhz : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute MARK_DEBUG of counter : signal is std.standard.true;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of data : signal is std.standard.true;
  signal \data[0]_i_1_n_0\ : STD_LOGIC;
  signal \data[10]_i_1_n_0\ : STD_LOGIC;
  signal \data[11]_i_1_n_0\ : STD_LOGIC;
  signal \data[12]_i_1_n_0\ : STD_LOGIC;
  signal \data[13]_i_1_n_0\ : STD_LOGIC;
  signal \data[14]_i_1_n_0\ : STD_LOGIC;
  signal \data[15]_i_1_n_0\ : STD_LOGIC;
  signal \data[16]_i_1_n_0\ : STD_LOGIC;
  signal \data[17]_i_1_n_0\ : STD_LOGIC;
  signal \data[18]_i_1_n_0\ : STD_LOGIC;
  signal \data[19]_i_1_n_0\ : STD_LOGIC;
  signal \data[1]_i_1_n_0\ : STD_LOGIC;
  signal \data[20]_i_1_n_0\ : STD_LOGIC;
  signal \data[21]_i_1_n_0\ : STD_LOGIC;
  signal \data[22]_i_1_n_0\ : STD_LOGIC;
  signal \data[23]_i_1_n_0\ : STD_LOGIC;
  signal \data[24]_i_1_n_0\ : STD_LOGIC;
  signal \data[25]_i_1_n_0\ : STD_LOGIC;
  signal \data[26]_i_1_n_0\ : STD_LOGIC;
  signal \data[27]_i_1_n_0\ : STD_LOGIC;
  signal \data[28]_i_1_n_0\ : STD_LOGIC;
  signal \data[29]_i_1_n_0\ : STD_LOGIC;
  signal \data[2]_i_1_n_0\ : STD_LOGIC;
  signal \data[30]_i_1_n_0\ : STD_LOGIC;
  signal \data[31]_i_1_n_0\ : STD_LOGIC;
  signal \data[31]_i_2_n_0\ : STD_LOGIC;
  signal \data[3]_i_1_n_0\ : STD_LOGIC;
  signal \data[4]_i_1_n_0\ : STD_LOGIC;
  signal \data[5]_i_1_n_0\ : STD_LOGIC;
  signal \data[6]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal \data[8]_i_1_n_0\ : STD_LOGIC;
  signal \data[9]_i_1_n_0\ : STD_LOGIC;
  signal div1_n_0 : STD_LOGIC;
  signal dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of dout : signal is std.standard.true;
  signal loaded_INST_0_i_1_n_0 : STD_LOGIC;
  signal m00_axi_init_axi_txn : STD_LOGIC;
  signal m00_axi_init_axi_txn0 : STD_LOGIC;
  signal rd : STD_LOGIC;
  attribute MARK_DEBUG of rd : signal is std.standard.true;
  signal rd1 : STD_LOGIC;
  signal rd_i_1_n_0 : STD_LOGIC;
  signal rd_i_2_n_0 : STD_LOGIC;
  signal ready : STD_LOGIC;
  attribute MARK_DEBUG of ready : signal is std.standard.true;
  signal ready_for_next_byte : STD_LOGIC;
  attribute MARK_DEBUG of ready_for_next_byte : signal is std.standard.true;
  signal rst : STD_LOGIC;
  signal \signal\ : STD_LOGIC;
  attribute MARK_DEBUG of \signal\ : signal is std.standard.true;
  signal signal_1_i_1_n_0 : STD_LOGIC;
  signal signal_1_i_2_n_0 : STD_LOGIC;
  signal signal_1_reg_n_0 : STD_LOGIC;
  signal signal_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute MARK_DEBUG of state : signal is std.standard.true;
  signal wr : STD_LOGIC;
  attribute MARK_DEBUG of wr : signal is std.standard.true;
  signal \NLW_addr_ptr_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_address0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_address0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sd_card_controller_v1_0_M00_AXI_inst_ERROR_UNCONNECTED : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \addr_ptr_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \addr_ptr_reg[0]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[10]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[10]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[11]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[11]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[12]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[12]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[13]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[13]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[14]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[14]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[15]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[15]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[16]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[16]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[17]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[17]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[18]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[18]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[19]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[19]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[1]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[1]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[20]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[20]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[21]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[21]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[22]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[22]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[23]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[23]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[24]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[24]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[25]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[25]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[26]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[26]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[27]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[27]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[28]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[28]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[29]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[29]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[2]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[2]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[30]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[30]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[31]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[31]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[3]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[3]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[4]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[4]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[5]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[5]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[6]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[6]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[7]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[7]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[8]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[8]\ : label is "true";
  attribute KEEP of \addr_ptr_reg[9]\ : label is "yes";
  attribute mark_debug_string of \addr_ptr_reg[9]\ : label is "true";
  attribute KEEP of \address_reg[0]\ : label is "yes";
  attribute mark_debug_string of \address_reg[0]\ : label is "true";
  attribute KEEP of \address_reg[10]\ : label is "yes";
  attribute mark_debug_string of \address_reg[10]\ : label is "true";
  attribute KEEP of \address_reg[11]\ : label is "yes";
  attribute mark_debug_string of \address_reg[11]\ : label is "true";
  attribute KEEP of \address_reg[12]\ : label is "yes";
  attribute mark_debug_string of \address_reg[12]\ : label is "true";
  attribute KEEP of \address_reg[13]\ : label is "yes";
  attribute mark_debug_string of \address_reg[13]\ : label is "true";
  attribute KEEP of \address_reg[14]\ : label is "yes";
  attribute mark_debug_string of \address_reg[14]\ : label is "true";
  attribute KEEP of \address_reg[15]\ : label is "yes";
  attribute mark_debug_string of \address_reg[15]\ : label is "true";
  attribute KEEP of \address_reg[16]\ : label is "yes";
  attribute mark_debug_string of \address_reg[16]\ : label is "true";
  attribute KEEP of \address_reg[17]\ : label is "yes";
  attribute mark_debug_string of \address_reg[17]\ : label is "true";
  attribute KEEP of \address_reg[18]\ : label is "yes";
  attribute mark_debug_string of \address_reg[18]\ : label is "true";
  attribute KEEP of \address_reg[19]\ : label is "yes";
  attribute mark_debug_string of \address_reg[19]\ : label is "true";
  attribute KEEP of \address_reg[1]\ : label is "yes";
  attribute mark_debug_string of \address_reg[1]\ : label is "true";
  attribute KEEP of \address_reg[20]\ : label is "yes";
  attribute mark_debug_string of \address_reg[20]\ : label is "true";
  attribute KEEP of \address_reg[21]\ : label is "yes";
  attribute mark_debug_string of \address_reg[21]\ : label is "true";
  attribute KEEP of \address_reg[22]\ : label is "yes";
  attribute mark_debug_string of \address_reg[22]\ : label is "true";
  attribute KEEP of \address_reg[23]\ : label is "yes";
  attribute mark_debug_string of \address_reg[23]\ : label is "true";
  attribute KEEP of \address_reg[24]\ : label is "yes";
  attribute mark_debug_string of \address_reg[24]\ : label is "true";
  attribute KEEP of \address_reg[25]\ : label is "yes";
  attribute mark_debug_string of \address_reg[25]\ : label is "true";
  attribute KEEP of \address_reg[26]\ : label is "yes";
  attribute mark_debug_string of \address_reg[26]\ : label is "true";
  attribute KEEP of \address_reg[27]\ : label is "yes";
  attribute mark_debug_string of \address_reg[27]\ : label is "true";
  attribute KEEP of \address_reg[28]\ : label is "yes";
  attribute mark_debug_string of \address_reg[28]\ : label is "true";
  attribute KEEP of \address_reg[29]\ : label is "yes";
  attribute mark_debug_string of \address_reg[29]\ : label is "true";
  attribute KEEP of \address_reg[2]\ : label is "yes";
  attribute mark_debug_string of \address_reg[2]\ : label is "true";
  attribute KEEP of \address_reg[30]\ : label is "yes";
  attribute mark_debug_string of \address_reg[30]\ : label is "true";
  attribute KEEP of \address_reg[31]\ : label is "yes";
  attribute mark_debug_string of \address_reg[31]\ : label is "true";
  attribute KEEP of \address_reg[3]\ : label is "yes";
  attribute mark_debug_string of \address_reg[3]\ : label is "true";
  attribute KEEP of \address_reg[4]\ : label is "yes";
  attribute mark_debug_string of \address_reg[4]\ : label is "true";
  attribute KEEP of \address_reg[5]\ : label is "yes";
  attribute mark_debug_string of \address_reg[5]\ : label is "true";
  attribute KEEP of \address_reg[6]\ : label is "yes";
  attribute mark_debug_string of \address_reg[6]\ : label is "true";
  attribute KEEP of \address_reg[7]\ : label is "yes";
  attribute mark_debug_string of \address_reg[7]\ : label is "true";
  attribute KEEP of \address_reg[8]\ : label is "yes";
  attribute mark_debug_string of \address_reg[8]\ : label is "true";
  attribute KEEP of \address_reg[9]\ : label is "yes";
  attribute mark_debug_string of \address_reg[9]\ : label is "true";
  attribute KEEP of \counter_reg[0]\ : label is "yes";
  attribute mark_debug_string of \counter_reg[0]\ : label is "true";
  attribute KEEP of \counter_reg[1]\ : label is "yes";
  attribute mark_debug_string of \counter_reg[1]\ : label is "true";
  attribute KEEP of \data_reg[0]\ : label is "yes";
  attribute mark_debug_string of \data_reg[0]\ : label is "true";
  attribute KEEP of \data_reg[10]\ : label is "yes";
  attribute mark_debug_string of \data_reg[10]\ : label is "true";
  attribute KEEP of \data_reg[11]\ : label is "yes";
  attribute mark_debug_string of \data_reg[11]\ : label is "true";
  attribute KEEP of \data_reg[12]\ : label is "yes";
  attribute mark_debug_string of \data_reg[12]\ : label is "true";
  attribute KEEP of \data_reg[13]\ : label is "yes";
  attribute mark_debug_string of \data_reg[13]\ : label is "true";
  attribute KEEP of \data_reg[14]\ : label is "yes";
  attribute mark_debug_string of \data_reg[14]\ : label is "true";
  attribute KEEP of \data_reg[15]\ : label is "yes";
  attribute mark_debug_string of \data_reg[15]\ : label is "true";
  attribute KEEP of \data_reg[16]\ : label is "yes";
  attribute mark_debug_string of \data_reg[16]\ : label is "true";
  attribute KEEP of \data_reg[17]\ : label is "yes";
  attribute mark_debug_string of \data_reg[17]\ : label is "true";
  attribute KEEP of \data_reg[18]\ : label is "yes";
  attribute mark_debug_string of \data_reg[18]\ : label is "true";
  attribute KEEP of \data_reg[19]\ : label is "yes";
  attribute mark_debug_string of \data_reg[19]\ : label is "true";
  attribute KEEP of \data_reg[1]\ : label is "yes";
  attribute mark_debug_string of \data_reg[1]\ : label is "true";
  attribute KEEP of \data_reg[20]\ : label is "yes";
  attribute mark_debug_string of \data_reg[20]\ : label is "true";
  attribute KEEP of \data_reg[21]\ : label is "yes";
  attribute mark_debug_string of \data_reg[21]\ : label is "true";
  attribute KEEP of \data_reg[22]\ : label is "yes";
  attribute mark_debug_string of \data_reg[22]\ : label is "true";
  attribute KEEP of \data_reg[23]\ : label is "yes";
  attribute mark_debug_string of \data_reg[23]\ : label is "true";
  attribute KEEP of \data_reg[24]\ : label is "yes";
  attribute mark_debug_string of \data_reg[24]\ : label is "true";
  attribute KEEP of \data_reg[25]\ : label is "yes";
  attribute mark_debug_string of \data_reg[25]\ : label is "true";
  attribute KEEP of \data_reg[26]\ : label is "yes";
  attribute mark_debug_string of \data_reg[26]\ : label is "true";
  attribute KEEP of \data_reg[27]\ : label is "yes";
  attribute mark_debug_string of \data_reg[27]\ : label is "true";
  attribute KEEP of \data_reg[28]\ : label is "yes";
  attribute mark_debug_string of \data_reg[28]\ : label is "true";
  attribute KEEP of \data_reg[29]\ : label is "yes";
  attribute mark_debug_string of \data_reg[29]\ : label is "true";
  attribute KEEP of \data_reg[2]\ : label is "yes";
  attribute mark_debug_string of \data_reg[2]\ : label is "true";
  attribute KEEP of \data_reg[30]\ : label is "yes";
  attribute mark_debug_string of \data_reg[30]\ : label is "true";
  attribute KEEP of \data_reg[31]\ : label is "yes";
  attribute mark_debug_string of \data_reg[31]\ : label is "true";
  attribute KEEP of \data_reg[3]\ : label is "yes";
  attribute mark_debug_string of \data_reg[3]\ : label is "true";
  attribute KEEP of \data_reg[4]\ : label is "yes";
  attribute mark_debug_string of \data_reg[4]\ : label is "true";
  attribute KEEP of \data_reg[5]\ : label is "yes";
  attribute mark_debug_string of \data_reg[5]\ : label is "true";
  attribute KEEP of \data_reg[6]\ : label is "yes";
  attribute mark_debug_string of \data_reg[6]\ : label is "true";
  attribute KEEP of \data_reg[7]\ : label is "yes";
  attribute mark_debug_string of \data_reg[7]\ : label is "true";
  attribute KEEP of \data_reg[8]\ : label is "yes";
  attribute mark_debug_string of \data_reg[8]\ : label is "true";
  attribute KEEP of \data_reg[9]\ : label is "yes";
  attribute mark_debug_string of \data_reg[9]\ : label is "true";
  attribute KEEP of rd_reg : label is "yes";
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of sd_card_controller_v1_0_M00_AXI_inst : label is 32;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of sd_card_controller_v1_0_M00_AXI_inst : label is 32;
  attribute C_M_TRANSACTIONS_NUM : integer;
  attribute C_M_TRANSACTIONS_NUM of sd_card_controller_v1_0_M00_AXI_inst : label is 1;
  attribute IDLE : string;
  attribute IDLE of sd_card_controller_v1_0_M00_AXI_inst : label is "2'b00";
  attribute INIT_WRITE : string;
  attribute INIT_WRITE of sd_card_controller_v1_0_M00_AXI_inst : label is "2'b01";
  attribute TRANS_NUM_BITS : integer;
  attribute TRANS_NUM_BITS of sd_card_controller_v1_0_M00_AXI_inst : label is 0;
  attribute CMD0 : integer;
  attribute CMD0 of sdcont : label is 2;
  attribute CMD1 : integer;
  attribute CMD1 of sdcont : label is 22;
  attribute CMD41 : integer;
  attribute CMD41 of sdcont : label is 4;
  attribute CMD55 : integer;
  attribute CMD55 of sdcont : label is 3;
  attribute CMD8 : integer;
  attribute CMD8 of sdcont : label is 19;
  attribute DISPATCH : integer;
  attribute DISPATCH of sdcont : label is 20;
  attribute IDLE_integer : integer;
  attribute IDLE_integer of sdcont : label is 6;
  attribute INIT : string;
  attribute INIT of sdcont : label is "1";
  attribute POLL_CMD : integer;
  attribute POLL_CMD of sdcont : label is 5;
  attribute POLL_CMD1 : integer;
  attribute POLL_CMD1 of sdcont : label is 23;
  attribute READ_BLOCK : integer;
  attribute READ_BLOCK of sdcont : label is 7;
  attribute READ_BLOCK_CRC : integer;
  attribute READ_BLOCK_CRC of sdcont : label is 10;
  attribute READ_BLOCK_DATA : integer;
  attribute READ_BLOCK_DATA of sdcont : label is 9;
  attribute READ_BLOCK_WAIT : integer;
  attribute READ_BLOCK_WAIT of sdcont : label is 8;
  attribute RECEIVE_BYTE : integer;
  attribute RECEIVE_BYTE of sdcont : label is 13;
  attribute RECEIVE_BYTE_WAIT : integer;
  attribute RECEIVE_BYTE_WAIT of sdcont : label is 12;
  attribute RECEIVE_BYTE_WAIT_CMD8 : integer;
  attribute RECEIVE_BYTE_WAIT_CMD8 of sdcont : label is 21;
  attribute SEND_CMD : integer;
  attribute SEND_CMD of sdcont : label is 11;
  attribute WRITE_BLOCK_BYTE : integer;
  attribute WRITE_BLOCK_BYTE of sdcont : label is 17;
  attribute WRITE_BLOCK_CMD : integer;
  attribute WRITE_BLOCK_CMD of sdcont : label is 14;
  attribute WRITE_BLOCK_DATA : integer;
  attribute WRITE_BLOCK_DATA of sdcont : label is 16;
  attribute WRITE_BLOCK_INIT : integer;
  attribute WRITE_BLOCK_INIT of sdcont : label is 15;
  attribute WRITE_BLOCK_WAIT : integer;
  attribute WRITE_BLOCK_WAIT of sdcont : label is 18;
  attribute WRITE_DATA_SIZE : integer;
  attribute WRITE_DATA_SIZE of sdcont : label is 515;
  attribute KEEP of signal_reg : label is "yes";
  attribute mark_debug_string of signal_reg : label is "true";
  attribute KEEP of wr_reg : label is "yes";
  attribute mark_debug_string of wr_reg : label is "true";
begin
\addr_ptr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => load,
      I1 => addr_ptr_0(25),
      I2 => addr_ptr_0(24),
      I3 => addr_ptr_0(27),
      I4 => addr_ptr_0(26),
      I5 => loaded_INST_0_i_1_n_0,
      O => rd1
    );
\addr_ptr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9AAAAA"
    )
        port map (
      I0 => addr_ptr_0(0),
      I1 => ready,
      I2 => rd,
      I3 => byte_available_1_reg_n_0,
      I4 => byte_available,
      O => \addr_ptr[3]_i_2_n_0\
    );
\addr_ptr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(0),
      Q => addr_ptr_0(0),
      R => rst
    );
\addr_ptr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(10),
      Q => addr_ptr_0(10),
      R => rst
    );
\addr_ptr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(11),
      Q => addr_ptr_0(11),
      R => rst
    );
\addr_ptr_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ptr_reg[7]_i_1_n_0\,
      CO(3) => \addr_ptr_reg[11]_i_1_n_0\,
      CO(2) => \addr_ptr_reg[11]_i_1_n_1\,
      CO(1) => \addr_ptr_reg[11]_i_1_n_2\,
      CO(0) => \addr_ptr_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr_ptr(11 downto 8),
      S(3 downto 0) => addr_ptr_0(11 downto 8)
    );
\addr_ptr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(12),
      Q => addr_ptr_0(12),
      R => rst
    );
\addr_ptr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(13),
      Q => addr_ptr_0(13),
      R => rst
    );
\addr_ptr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(14),
      Q => addr_ptr_0(14),
      R => rst
    );
\addr_ptr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(15),
      Q => addr_ptr_0(15),
      R => rst
    );
\addr_ptr_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ptr_reg[11]_i_1_n_0\,
      CO(3) => \addr_ptr_reg[15]_i_1_n_0\,
      CO(2) => \addr_ptr_reg[15]_i_1_n_1\,
      CO(1) => \addr_ptr_reg[15]_i_1_n_2\,
      CO(0) => \addr_ptr_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr_ptr(15 downto 12),
      S(3 downto 0) => addr_ptr_0(15 downto 12)
    );
\addr_ptr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(16),
      Q => addr_ptr_0(16),
      R => rst
    );
\addr_ptr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(17),
      Q => addr_ptr_0(17),
      R => rst
    );
\addr_ptr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(18),
      Q => addr_ptr_0(18),
      R => rst
    );
\addr_ptr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(19),
      Q => addr_ptr_0(19),
      R => rst
    );
\addr_ptr_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ptr_reg[15]_i_1_n_0\,
      CO(3) => \addr_ptr_reg[19]_i_1_n_0\,
      CO(2) => \addr_ptr_reg[19]_i_1_n_1\,
      CO(1) => \addr_ptr_reg[19]_i_1_n_2\,
      CO(0) => \addr_ptr_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr_ptr(19 downto 16),
      S(3 downto 0) => addr_ptr_0(19 downto 16)
    );
\addr_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(1),
      Q => addr_ptr_0(1),
      R => rst
    );
\addr_ptr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(20),
      Q => addr_ptr_0(20),
      R => rst
    );
\addr_ptr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(21),
      Q => addr_ptr_0(21),
      R => rst
    );
\addr_ptr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(22),
      Q => addr_ptr_0(22),
      R => rst
    );
\addr_ptr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(23),
      Q => addr_ptr_0(23),
      R => rst
    );
\addr_ptr_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ptr_reg[19]_i_1_n_0\,
      CO(3) => \addr_ptr_reg[23]_i_1_n_0\,
      CO(2) => \addr_ptr_reg[23]_i_1_n_1\,
      CO(1) => \addr_ptr_reg[23]_i_1_n_2\,
      CO(0) => \addr_ptr_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr_ptr(23 downto 20),
      S(3 downto 0) => addr_ptr_0(23 downto 20)
    );
\addr_ptr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(24),
      Q => addr_ptr_0(24),
      R => rst
    );
\addr_ptr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(25),
      Q => addr_ptr_0(25),
      R => rst
    );
\addr_ptr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(26),
      Q => addr_ptr_0(26),
      R => rst
    );
\addr_ptr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(27),
      Q => addr_ptr_0(27),
      R => rst
    );
\addr_ptr_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ptr_reg[23]_i_1_n_0\,
      CO(3) => \addr_ptr_reg[27]_i_1_n_0\,
      CO(2) => \addr_ptr_reg[27]_i_1_n_1\,
      CO(1) => \addr_ptr_reg[27]_i_1_n_2\,
      CO(0) => \addr_ptr_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr_ptr(27 downto 24),
      S(3 downto 0) => addr_ptr_0(27 downto 24)
    );
\addr_ptr_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(28),
      Q => addr_ptr_0(28),
      R => rst
    );
\addr_ptr_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(29),
      Q => addr_ptr_0(29),
      R => rst
    );
\addr_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(2),
      Q => addr_ptr_0(2),
      R => rst
    );
\addr_ptr_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(30),
      Q => addr_ptr_0(30),
      R => rst
    );
\addr_ptr_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(31),
      Q => addr_ptr_0(31),
      R => rst
    );
\addr_ptr_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ptr_reg[27]_i_1_n_0\,
      CO(3) => \NLW_addr_ptr_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \addr_ptr_reg[31]_i_2_n_1\,
      CO(1) => \addr_ptr_reg[31]_i_2_n_2\,
      CO(0) => \addr_ptr_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr_ptr(31 downto 28),
      S(3 downto 0) => addr_ptr_0(31 downto 28)
    );
\addr_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(3),
      Q => addr_ptr_0(3),
      R => rst
    );
\addr_ptr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addr_ptr_reg[3]_i_1_n_0\,
      CO(2) => \addr_ptr_reg[3]_i_1_n_1\,
      CO(1) => \addr_ptr_reg[3]_i_1_n_2\,
      CO(0) => \addr_ptr_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => addr_ptr_0(0),
      O(3 downto 0) => addr_ptr(3 downto 0),
      S(3 downto 1) => addr_ptr_0(3 downto 1),
      S(0) => \addr_ptr[3]_i_2_n_0\
    );
\addr_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(4),
      Q => addr_ptr_0(4),
      R => rst
    );
\addr_ptr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(5),
      Q => addr_ptr_0(5),
      R => rst
    );
\addr_ptr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(6),
      Q => addr_ptr_0(6),
      R => rst
    );
\addr_ptr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(7),
      Q => addr_ptr_0(7),
      R => rst
    );
\addr_ptr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_ptr_reg[3]_i_1_n_0\,
      CO(3) => \addr_ptr_reg[7]_i_1_n_0\,
      CO(2) => \addr_ptr_reg[7]_i_1_n_1\,
      CO(1) => \addr_ptr_reg[7]_i_1_n_2\,
      CO(0) => \addr_ptr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => addr_ptr(7 downto 4),
      S(3 downto 0) => addr_ptr_0(7 downto 4)
    );
\addr_ptr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(8),
      Q => addr_ptr_0(8),
      R => rst
    );
\addr_ptr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => rd1,
      D => addr_ptr(9),
      Q => addr_ptr_0(9),
      R => rst
    );
address0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => address0_carry_n_0,
      CO(2) => address0_carry_n_1,
      CO(1) => address0_carry_n_2,
      CO(0) => address0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => addr_ptr_0(4 downto 2),
      DI(0) => '0',
      O(3) => address0_carry_n_4,
      O(2) => address0_carry_n_5,
      O(1) => address0_carry_n_6,
      O(0) => address0_carry_n_7,
      S(3) => address0_carry_i_1_n_0,
      S(2) => address0_carry_i_2_n_0,
      S(1) => address0_carry_i_3_n_0,
      S(0) => addr_ptr_0(1)
    );
\address0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => address0_carry_n_0,
      CO(3) => \address0_carry__0_n_0\,
      CO(2) => \address0_carry__0_n_1\,
      CO(1) => \address0_carry__0_n_2\,
      CO(0) => \address0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => addr_ptr_0(8 downto 5),
      O(3) => \address0_carry__0_n_4\,
      O(2) => \address0_carry__0_n_5\,
      O(1) => \address0_carry__0_n_6\,
      O(0) => \address0_carry__0_n_7\,
      S(3) => \address0_carry__0_i_1_n_0\,
      S(2) => \address0_carry__0_i_2_n_0\,
      S(1) => \address0_carry__0_i_3_n_0\,
      S(0) => \address0_carry__0_i_4_n_0\
    );
\address0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(8),
      O => \address0_carry__0_i_1_n_0\
    );
\address0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(7),
      O => \address0_carry__0_i_2_n_0\
    );
\address0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(6),
      O => \address0_carry__0_i_3_n_0\
    );
\address0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(5),
      O => \address0_carry__0_i_4_n_0\
    );
\address0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address0_carry__0_n_0\,
      CO(3) => \address0_carry__1_n_0\,
      CO(2) => \address0_carry__1_n_1\,
      CO(1) => \address0_carry__1_n_2\,
      CO(0) => \address0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => addr_ptr_0(12 downto 9),
      O(3) => \address0_carry__1_n_4\,
      O(2) => \address0_carry__1_n_5\,
      O(1) => \address0_carry__1_n_6\,
      O(0) => \address0_carry__1_n_7\,
      S(3) => \address0_carry__1_i_1_n_0\,
      S(2) => \address0_carry__1_i_2_n_0\,
      S(1) => \address0_carry__1_i_3_n_0\,
      S(0) => \address0_carry__1_i_4_n_0\
    );
\address0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(12),
      O => \address0_carry__1_i_1_n_0\
    );
\address0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(11),
      O => \address0_carry__1_i_2_n_0\
    );
\address0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(10),
      O => \address0_carry__1_i_3_n_0\
    );
\address0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(9),
      O => \address0_carry__1_i_4_n_0\
    );
\address0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \address0_carry__1_n_0\,
      CO(3) => \address0_carry__2_n_0\,
      CO(2) => \address0_carry__2_n_1\,
      CO(1) => \address0_carry__2_n_2\,
      CO(0) => \address0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => addr_ptr_0(16 downto 13),
      O(3) => \address0_carry__2_n_4\,
      O(2) => \address0_carry__2_n_5\,
      O(1) => \address0_carry__2_n_6\,
      O(0) => \address0_carry__2_n_7\,
      S(3) => \address0_carry__2_i_1_n_0\,
      S(2) => \address0_carry__2_i_2_n_0\,
      S(1) => \address0_carry__2_i_3_n_0\,
      S(0) => \address0_carry__2_i_4_n_0\
    );
\address0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(16),
      O => \address0_carry__2_i_1_n_0\
    );
\address0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(15),
      O => \address0_carry__2_i_2_n_0\
    );
\address0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(14),
      O => \address0_carry__2_i_3_n_0\
    );
\address0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(13),
      O => \address0_carry__2_i_4_n_0\
    );
\address0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \address0_carry__2_n_0\,
      CO(3) => \address0_carry__3_n_0\,
      CO(2) => \address0_carry__3_n_1\,
      CO(1) => \address0_carry__3_n_2\,
      CO(0) => \address0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => addr_ptr_0(20 downto 17),
      O(3) => \address0_carry__3_n_4\,
      O(2) => \address0_carry__3_n_5\,
      O(1) => \address0_carry__3_n_6\,
      O(0) => \address0_carry__3_n_7\,
      S(3) => \address0_carry__3_i_1_n_0\,
      S(2) => \address0_carry__3_i_2_n_0\,
      S(1) => \address0_carry__3_i_3_n_0\,
      S(0) => \address0_carry__3_i_4_n_0\
    );
\address0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(20),
      O => \address0_carry__3_i_1_n_0\
    );
\address0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(19),
      O => \address0_carry__3_i_2_n_0\
    );
\address0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(18),
      O => \address0_carry__3_i_3_n_0\
    );
\address0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(17),
      O => \address0_carry__3_i_4_n_0\
    );
\address0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \address0_carry__3_n_0\,
      CO(3) => \address0_carry__4_n_0\,
      CO(2) => \address0_carry__4_n_1\,
      CO(1) => \address0_carry__4_n_2\,
      CO(0) => \address0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => addr_ptr_0(24 downto 21),
      O(3) => \address0_carry__4_n_4\,
      O(2) => \address0_carry__4_n_5\,
      O(1) => \address0_carry__4_n_6\,
      O(0) => \address0_carry__4_n_7\,
      S(3) => \address0_carry__4_i_1_n_0\,
      S(2) => \address0_carry__4_i_2_n_0\,
      S(1) => \address0_carry__4_i_3_n_0\,
      S(0) => \address0_carry__4_i_4_n_0\
    );
\address0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(24),
      O => \address0_carry__4_i_1_n_0\
    );
\address0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(23),
      O => \address0_carry__4_i_2_n_0\
    );
\address0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(22),
      O => \address0_carry__4_i_3_n_0\
    );
\address0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(21),
      O => \address0_carry__4_i_4_n_0\
    );
\address0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \address0_carry__4_n_0\,
      CO(3) => \address0_carry__5_n_0\,
      CO(2) => \address0_carry__5_n_1\,
      CO(1) => \address0_carry__5_n_2\,
      CO(0) => \address0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => addr_ptr_0(28 downto 25),
      O(3) => \address0_carry__5_n_4\,
      O(2) => \address0_carry__5_n_5\,
      O(1) => \address0_carry__5_n_6\,
      O(0) => \address0_carry__5_n_7\,
      S(3) => \address0_carry__5_i_1_n_0\,
      S(2) => \address0_carry__5_i_2_n_0\,
      S(1) => \address0_carry__5_i_3_n_0\,
      S(0) => \address0_carry__5_i_4_n_0\
    );
\address0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(28),
      O => \address0_carry__5_i_1_n_0\
    );
\address0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(27),
      O => \address0_carry__5_i_2_n_0\
    );
\address0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(26),
      O => \address0_carry__5_i_3_n_0\
    );
\address0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(25),
      O => \address0_carry__5_i_4_n_0\
    );
\address0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \address0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_address0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \address0_carry__6_n_2\,
      CO(0) => \address0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => addr_ptr_0(30 downto 29),
      O(3) => \NLW_address0_carry__6_O_UNCONNECTED\(3),
      O(2) => \address0_carry__6_n_5\,
      O(1) => \address0_carry__6_n_6\,
      O(0) => \address0_carry__6_n_7\,
      S(3) => '0',
      S(2) => addr_ptr_0(31),
      S(1) => \address0_carry__6_i_1_n_0\,
      S(0) => \address0_carry__6_i_2_n_0\
    );
\address0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(30),
      O => \address0_carry__6_i_1_n_0\
    );
\address0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(29),
      O => \address0_carry__6_i_2_n_0\
    );
address0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(4),
      O => address0_carry_i_1_n_0
    );
address0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(3),
      O => address0_carry_i_2_n_0
    );
address0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_ptr_0(2),
      O => address0_carry_i_3_n_0
    );
\address[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(0),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(9),
      O => \address[0]_i_1_n_0\
    );
\address[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(10),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(19),
      O => \address[10]_i_1_n_0\
    );
\address[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(11),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(20),
      O => \address[11]_i_1_n_0\
    );
\address[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(12),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(21),
      O => \address[12]_i_1_n_0\
    );
\address[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(13),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(22),
      O => \address[13]_i_1_n_0\
    );
\address[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(14),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(23),
      O => \address[14]_i_1_n_0\
    );
\address[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(15),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(24),
      O => \address[15]_i_1_n_0\
    );
\address[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(16),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(25),
      O => \address[16]_i_1_n_0\
    );
\address[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(17),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(26),
      O => \address[17]_i_1_n_0\
    );
\address[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(18),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(27),
      O => \address[18]_i_1_n_0\
    );
\address[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(19),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(28),
      O => \address[19]_i_1_n_0\
    );
\address[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(1),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(10),
      O => \address[1]_i_1_n_0\
    );
\address[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(20),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(29),
      O => \address[20]_i_1_n_0\
    );
\address[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(21),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(30),
      O => \address[21]_i_1_n_0\
    );
\address[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => loaded_INST_0_i_1_n_0,
      I1 => rd_i_2_n_0,
      I2 => load,
      I3 => resetn,
      O => \address[22]_i_1_n_0\
    );
\address[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(22),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(31),
      O => \address[22]_i_2_n_0\
    );
\address[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(2),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(11),
      O => \address[2]_i_1_n_0\
    );
\address[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => load,
      I1 => rd_i_2_n_0,
      I2 => loaded_INST_0_i_1_n_0,
      I3 => ready,
      I4 => resetn,
      O => \address[31]_i_1_n_0\
    );
\address[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(3),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(12),
      O => \address[3]_i_1_n_0\
    );
\address[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(4),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(13),
      O => \address[4]_i_1_n_0\
    );
\address[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(5),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(14),
      O => \address[5]_i_1_n_0\
    );
\address[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(6),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(15),
      O => \address[6]_i_1_n_0\
    );
\address[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(7),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(16),
      O => \address[7]_i_1_n_0\
    );
\address[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(8),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(17),
      O => \address[8]_i_1_n_0\
    );
\address[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => address(9),
      I1 => resetn,
      I2 => ready,
      I3 => addr_ptr_0(18),
      O => \address[9]_i_1_n_0\
    );
\address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[0]_i_1_n_0\,
      Q => address(0),
      R => '0'
    );
\address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[10]_i_1_n_0\,
      Q => address(10),
      R => '0'
    );
\address_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[11]_i_1_n_0\,
      Q => address(11),
      R => '0'
    );
\address_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[12]_i_1_n_0\,
      Q => address(12),
      R => '0'
    );
\address_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[13]_i_1_n_0\,
      Q => address(13),
      R => '0'
    );
\address_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[14]_i_1_n_0\,
      Q => address(14),
      R => '0'
    );
\address_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[15]_i_1_n_0\,
      Q => address(15),
      R => '0'
    );
\address_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[16]_i_1_n_0\,
      Q => address(16),
      R => '0'
    );
\address_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[17]_i_1_n_0\,
      Q => address(17),
      R => '0'
    );
\address_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[18]_i_1_n_0\,
      Q => address(18),
      R => '0'
    );
\address_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[19]_i_1_n_0\,
      Q => address(19),
      R => '0'
    );
\address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[1]_i_1_n_0\,
      Q => address(1),
      R => '0'
    );
\address_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[20]_i_1_n_0\,
      Q => address(20),
      R => '0'
    );
\address_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[21]_i_1_n_0\,
      Q => address(21),
      R => '0'
    );
\address_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[22]_i_2_n_0\,
      Q => address(22),
      R => '0'
    );
\address_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => address(23),
      Q => address(23),
      R => \address[31]_i_1_n_0\
    );
\address_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => address(24),
      Q => address(24),
      R => \address[31]_i_1_n_0\
    );
\address_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => address(25),
      Q => address(25),
      R => \address[31]_i_1_n_0\
    );
\address_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => address(26),
      Q => address(26),
      R => \address[31]_i_1_n_0\
    );
\address_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => address(27),
      Q => address(27),
      R => \address[31]_i_1_n_0\
    );
\address_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => address(28),
      Q => address(28),
      R => \address[31]_i_1_n_0\
    );
\address_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => address(29),
      Q => address(29),
      R => \address[31]_i_1_n_0\
    );
\address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[2]_i_1_n_0\,
      Q => address(2),
      R => '0'
    );
\address_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => address(30),
      Q => address(30),
      R => \address[31]_i_1_n_0\
    );
\address_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => address(31),
      Q => address(31),
      R => \address[31]_i_1_n_0\
    );
\address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[3]_i_1_n_0\,
      Q => address(3),
      R => '0'
    );
\address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[4]_i_1_n_0\,
      Q => address(4),
      R => '0'
    );
\address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[5]_i_1_n_0\,
      Q => address(5),
      R => '0'
    );
\address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[6]_i_1_n_0\,
      Q => address(6),
      R => '0'
    );
\address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[7]_i_1_n_0\,
      Q => address(7),
      R => '0'
    );
\address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[8]_i_1_n_0\,
      Q => address(8),
      R => '0'
    );
\address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \address[9]_i_1_n_0\,
      Q => address(9),
      R => '0'
    );
byte_available_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => byte_available,
      I1 => loaded_INST_0_i_1_n_0,
      I2 => rd_i_2_n_0,
      I3 => load,
      I4 => byte_available_1_i_2_n_0,
      I5 => byte_available_1_reg_n_0,
      O => byte_available_1_i_1_n_0
    );
byte_available_1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ready,
      I1 => rd,
      O => byte_available_1_i_2_n_0
    );
byte_available_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => byte_available_1_i_1_n_0,
      Q => byte_available_1_reg_n_0,
      R => rst
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00400000"
    )
        port map (
      I0 => byte_available_1_reg_n_0,
      I1 => byte_available,
      I2 => rd,
      I3 => ready,
      I4 => resetn,
      I5 => counter(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => counter(0),
      I1 => \data[31]_i_2_n_0\,
      I2 => counter(1),
      O => \counter[1]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \counter[0]_i_1_n_0\,
      Q => counter(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \counter[1]_i_1_n_0\,
      Q => counter(1),
      R => '0'
    );
\data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(0),
      I1 => \data[31]_i_2_n_0\,
      I2 => dout(0),
      O => \data[0]_i_1_n_0\
    );
\data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(10),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(2),
      O => \data[10]_i_1_n_0\
    );
\data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(11),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(3),
      O => \data[11]_i_1_n_0\
    );
\data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(12),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(4),
      O => \data[12]_i_1_n_0\
    );
\data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(13),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(5),
      O => \data[13]_i_1_n_0\
    );
\data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(14),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(6),
      O => \data[14]_i_1_n_0\
    );
\data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(15),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(7),
      O => \data[15]_i_1_n_0\
    );
\data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(16),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(8),
      O => \data[16]_i_1_n_0\
    );
\data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(17),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(9),
      O => \data[17]_i_1_n_0\
    );
\data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(18),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(10),
      O => \data[18]_i_1_n_0\
    );
\data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(19),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(11),
      O => \data[19]_i_1_n_0\
    );
\data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(1),
      I1 => \data[31]_i_2_n_0\,
      I2 => dout(1),
      O => \data[1]_i_1_n_0\
    );
\data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(20),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(12),
      O => \data[20]_i_1_n_0\
    );
\data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(21),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(13),
      O => \data[21]_i_1_n_0\
    );
\data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(22),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(14),
      O => \data[22]_i_1_n_0\
    );
\data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(23),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(15),
      O => \data[23]_i_1_n_0\
    );
\data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(24),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(16),
      O => \data[24]_i_1_n_0\
    );
\data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(25),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(17),
      O => \data[25]_i_1_n_0\
    );
\data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(26),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(18),
      O => \data[26]_i_1_n_0\
    );
\data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(27),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(19),
      O => \data[27]_i_1_n_0\
    );
\data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(28),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(20),
      O => \data[28]_i_1_n_0\
    );
\data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(29),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(21),
      O => \data[29]_i_1_n_0\
    );
\data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(2),
      I1 => \data[31]_i_2_n_0\,
      I2 => dout(2),
      O => \data[2]_i_1_n_0\
    );
\data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(30),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(22),
      O => \data[30]_i_1_n_0\
    );
\data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(31),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(23),
      O => \data[31]_i_1_n_0\
    );
\data[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => resetn,
      I1 => ready,
      I2 => rd,
      I3 => byte_available,
      I4 => byte_available_1_reg_n_0,
      O => \data[31]_i_2_n_0\
    );
\data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(3),
      I1 => \data[31]_i_2_n_0\,
      I2 => dout(3),
      O => \data[3]_i_1_n_0\
    );
\data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(4),
      I1 => \data[31]_i_2_n_0\,
      I2 => dout(4),
      O => \data[4]_i_1_n_0\
    );
\data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(5),
      I1 => \data[31]_i_2_n_0\,
      I2 => dout(5),
      O => \data[5]_i_1_n_0\
    );
\data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(6),
      I1 => \data[31]_i_2_n_0\,
      I2 => dout(6),
      O => \data[6]_i_1_n_0\
    );
\data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(7),
      I1 => \data[31]_i_2_n_0\,
      I2 => dout(7),
      O => \data[7]_i_1_n_0\
    );
\data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(8),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(0),
      O => \data[8]_i_1_n_0\
    );
\data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data(9),
      I1 => \data[31]_i_2_n_0\,
      I2 => data(1),
      O => \data[9]_i_1_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[0]_i_1_n_0\,
      Q => data(0),
      R => '0'
    );
\data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[10]_i_1_n_0\,
      Q => data(10),
      R => '0'
    );
\data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[11]_i_1_n_0\,
      Q => data(11),
      R => '0'
    );
\data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[12]_i_1_n_0\,
      Q => data(12),
      R => '0'
    );
\data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[13]_i_1_n_0\,
      Q => data(13),
      R => '0'
    );
\data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[14]_i_1_n_0\,
      Q => data(14),
      R => '0'
    );
\data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[15]_i_1_n_0\,
      Q => data(15),
      R => '0'
    );
\data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[16]_i_1_n_0\,
      Q => data(16),
      R => '0'
    );
\data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[17]_i_1_n_0\,
      Q => data(17),
      R => '0'
    );
\data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[18]_i_1_n_0\,
      Q => data(18),
      R => '0'
    );
\data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[19]_i_1_n_0\,
      Q => data(19),
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[1]_i_1_n_0\,
      Q => data(1),
      R => '0'
    );
\data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[20]_i_1_n_0\,
      Q => data(20),
      R => '0'
    );
\data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[21]_i_1_n_0\,
      Q => data(21),
      R => '0'
    );
\data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[22]_i_1_n_0\,
      Q => data(22),
      R => '0'
    );
\data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[23]_i_1_n_0\,
      Q => data(23),
      R => '0'
    );
\data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[24]_i_1_n_0\,
      Q => data(24),
      R => '0'
    );
\data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[25]_i_1_n_0\,
      Q => data(25),
      R => '0'
    );
\data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[26]_i_1_n_0\,
      Q => data(26),
      R => '0'
    );
\data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[27]_i_1_n_0\,
      Q => data(27),
      R => '0'
    );
\data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[28]_i_1_n_0\,
      Q => data(28),
      R => '0'
    );
\data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[29]_i_1_n_0\,
      Q => data(29),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[2]_i_1_n_0\,
      Q => data(2),
      R => '0'
    );
\data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[30]_i_1_n_0\,
      Q => data(30),
      R => '0'
    );
\data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[31]_i_1_n_0\,
      Q => data(31),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[3]_i_1_n_0\,
      Q => data(3),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[4]_i_1_n_0\,
      Q => data(4),
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[5]_i_1_n_0\,
      Q => data(5),
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[6]_i_1_n_0\,
      Q => data(6),
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[7]_i_1_n_0\,
      Q => data(7),
      R => '0'
    );
\data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[8]_i_1_n_0\,
      Q => data(8),
      R => '0'
    );
\data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => \data[9]_i_1_n_0\,
      Q => data(9),
      R => '0'
    );
div1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider
     port map (
      clk => clk,
      clk_out_reg_0 => div1_n_0
    );
div2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider_0
     port map (
      clk => clk_25mhz,
      clk_out_reg_0 => div1_n_0
    );
loaded_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => loaded_INST_0_i_1_n_0,
      I1 => addr_ptr_0(26),
      I2 => addr_ptr_0(27),
      I3 => addr_ptr_0(24),
      I4 => addr_ptr_0(25),
      O => loaded
    );
loaded_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => addr_ptr_0(30),
      I1 => addr_ptr_0(31),
      I2 => addr_ptr_0(28),
      I3 => addr_ptr_0(29),
      I4 => addr_ptr_0(23),
      I5 => addr_ptr_0(22),
      O => loaded_INST_0_i_1_n_0
    );
m00_axi_init_axi_txn_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \signal\,
      I1 => signal_1_reg_n_0,
      O => m00_axi_init_axi_txn0
    );
m00_axi_init_axi_txn_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => m00_axi_init_axi_txn0,
      Q => m00_axi_init_axi_txn,
      R => rst
    );
rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => rd,
      I1 => ready,
      I2 => load,
      I3 => rd_i_2_n_0,
      I4 => loaded_INST_0_i_1_n_0,
      O => rd_i_1_n_0
    );
rd_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => addr_ptr_0(25),
      I1 => addr_ptr_0(24),
      I2 => addr_ptr_0(27),
      I3 => addr_ptr_0(26),
      O => rd_i_2_n_0
    );
rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rd_i_1_n_0,
      Q => rd,
      R => rst
    );
sd_card_controller_v1_0_M00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0_M00_AXI
     port map (
      ERROR => NLW_sd_card_controller_v1_0_M00_AXI_inst_ERROR_UNCONNECTED,
      INIT_AXI_TXN => m00_axi_init_axi_txn,
      M_AXI_ACLK => m00_axi_aclk,
      M_AXI_ARADDR(31 downto 0) => m00_axi_araddr(31 downto 0),
      M_AXI_ARESETN => m00_axi_aresetn,
      M_AXI_ARPROT(2 downto 0) => m00_axi_arprot(2 downto 0),
      M_AXI_ARREADY => m00_axi_arready,
      M_AXI_ARVALID => m00_axi_arvalid,
      M_AXI_AWADDR(31 downto 0) => m00_axi_awaddr(31 downto 0),
      M_AXI_AWPROT(2 downto 0) => m00_axi_awprot(2 downto 0),
      M_AXI_AWREADY => m00_axi_awready,
      M_AXI_AWVALID => m00_axi_awvalid,
      M_AXI_BREADY => m00_axi_bready,
      M_AXI_BRESP(1 downto 0) => m00_axi_bresp(1 downto 0),
      M_AXI_BVALID => m00_axi_bvalid,
      M_AXI_RDATA(31 downto 0) => m00_axi_rdata(31 downto 0),
      M_AXI_RREADY => m00_axi_rready,
      M_AXI_RRESP(1 downto 0) => m00_axi_rresp(1 downto 0),
      M_AXI_RVALID => m00_axi_rvalid,
      M_AXI_WDATA(31 downto 0) => m00_axi_wdata(31 downto 0),
      M_AXI_WREADY => m00_axi_wready,
      M_AXI_WSTRB(3 downto 0) => m00_axi_wstrb(3 downto 0),
      M_AXI_WVALID => m00_axi_wvalid,
      address(31) => \address0_carry__6_n_5\,
      address(30) => \address0_carry__6_n_6\,
      address(29) => \address0_carry__6_n_7\,
      address(28) => \address0_carry__5_n_4\,
      address(27) => \address0_carry__5_n_5\,
      address(26) => \address0_carry__5_n_6\,
      address(25) => \address0_carry__5_n_7\,
      address(24) => \address0_carry__4_n_4\,
      address(23) => \address0_carry__4_n_5\,
      address(22) => \address0_carry__4_n_6\,
      address(21) => \address0_carry__4_n_7\,
      address(20) => \address0_carry__3_n_4\,
      address(19) => \address0_carry__3_n_5\,
      address(18) => \address0_carry__3_n_6\,
      address(17) => \address0_carry__3_n_7\,
      address(16) => \address0_carry__2_n_4\,
      address(15) => \address0_carry__2_n_5\,
      address(14) => \address0_carry__2_n_6\,
      address(13) => \address0_carry__2_n_7\,
      address(12) => \address0_carry__1_n_4\,
      address(11) => \address0_carry__1_n_5\,
      address(10) => \address0_carry__1_n_6\,
      address(9) => \address0_carry__1_n_7\,
      address(8) => \address0_carry__0_n_4\,
      address(7) => \address0_carry__0_n_5\,
      address(6) => \address0_carry__0_n_6\,
      address(5) => \address0_carry__0_n_7\,
      address(4) => address0_carry_n_4,
      address(3) => address0_carry_n_5,
      address(2) => address0_carry_n_6,
      address(1) => address0_carry_n_7,
      address(0) => addr_ptr_0(0),
      data(31 downto 0) => data(31 downto 0)
    );
sdcont: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_controller
     port map (
      address(31 downto 0) => address(31 downto 0),
      byte_available => byte_available,
      clk => clk_25mhz,
      cs => SD_DAT(0),
      din(7 downto 0) => B"00000000",
      dout(7 downto 0) => dout(7 downto 0),
      miso => \recv_data_reg[7]\(0),
      mosi => SD_CMD,
      rd => rd,
      ready => ready,
      ready_for_next_byte => ready_for_next_byte,
      reset => rst,
      sclk => SD_SCK,
      status(4 downto 0) => state(4 downto 0),
      wr => wr
    );
sdcont_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => rst
    );
signal_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => \signal\,
      I1 => loaded_INST_0_i_1_n_0,
      I2 => rd_i_2_n_0,
      I3 => load,
      I4 => signal_1_i_2_n_0,
      I5 => signal_1_reg_n_0,
      O => signal_1_i_1_n_0
    );
signal_1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => rd,
      I1 => ready,
      I2 => resetn,
      O => signal_1_i_2_n_0
    );
signal_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => signal_1_i_1_n_0,
      Q => signal_1_reg_n_0,
      R => '0'
    );
signal_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \signal\,
      I1 => \data[31]_i_2_n_0\,
      I2 => counter(0),
      I3 => counter(1),
      O => signal_i_1_n_0
    );
signal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[22]_i_1_n_0\,
      D => signal_i_1_n_0,
      Q => \signal\,
      R => '0'
    );
wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr,
      Q => wr,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    SD_CD : in STD_LOGIC;
    SD_RESET : out STD_LOGIC;
    SD_SCK : out STD_LOGIC;
    SD_CMD : out STD_LOGIC;
    SD_DAT : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    load : in STD_LOGIC;
    loaded : out STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_sd_card_controller_0_0,sd_card_controller_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sd_card_controller_v1_0,Vivado 2018.3.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^sd_dat\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SD_RESET : signal is "xilinx.com:signal:reset:1.0 SD_RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of SD_RESET : signal is "XIL_INTERFACENAME SD_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of m00_axi_aclk : signal is "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of m00_axi_aresetn : signal is "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of m00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of m00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of m00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of m00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of m00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  attribute X_INTERFACE_INFO of m00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m00_axi_rready : signal is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  attribute X_INTERFACE_INFO of m00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  attribute X_INTERFACE_INFO of m00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of m00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of m00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of m00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of m00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  attribute X_INTERFACE_INFO of m00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  attribute X_INTERFACE_INFO of m00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  attribute X_INTERFACE_INFO of m00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of m00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
begin
  SD_DAT(2) <= \<const1>\;
  SD_DAT(1) <= \<const1>\;
  SD_RESET <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sd_card_controller_v1_0
     port map (
      SD_CMD => SD_CMD,
      SD_DAT(0) => SD_DAT(3),
      SD_SCK => SD_SCK,
      clk => clk,
      load => load,
      loaded => loaded,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => m00_axi_araddr(31 downto 0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arprot(2 downto 0) => m00_axi_arprot(2 downto 0),
      m00_axi_arready => m00_axi_arready,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_awaddr(31 downto 0) => m00_axi_awaddr(31 downto 0),
      m00_axi_awprot(2 downto 0) => m00_axi_awprot(2 downto 0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bresp(1 downto 0) => m00_axi_bresp(1 downto 0),
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rready => m00_axi_rready,
      m00_axi_rresp(1 downto 0) => m00_axi_rresp(1 downto 0),
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(3 downto 0) => m00_axi_wstrb(3 downto 0),
      m00_axi_wvalid => m00_axi_wvalid,
      \recv_data_reg[7]\(0) => SD_DAT(0),
      resetn => resetn
    );
end STRUCTURE;
