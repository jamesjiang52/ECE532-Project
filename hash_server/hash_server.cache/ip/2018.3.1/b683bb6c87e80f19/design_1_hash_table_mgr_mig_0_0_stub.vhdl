-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Sat Mar 12 15:46:45 2022
-- Host        : BA3145WS18 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_hash_table_mgr_mig_0_0_stub.vhdl
-- Design      : design_1_hash_table_mgr_mig_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    o_ht_output_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_ht_output_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_ht_output_key : out STD_LOGIC_VECTOR ( 255 downto 0 );
    o_ht_output_type : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_ht_output_client : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_ht_output_valid : out STD_LOGIC;
    i_ht_output_ready : in STD_LOGIC;
    i_ht_input_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_ht_input_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    i_ht_input_key : in STD_LOGIC_VECTOR ( 255 downto 0 );
    i_ht_input_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_ht_input_client : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_ht_input_valid : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
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
    m00_axi_rready : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "o_ht_output_addr[15:0],o_ht_output_data[63:0],o_ht_output_key[255:0],o_ht_output_type[0:0],o_ht_output_client[0:0],o_ht_output_valid,i_ht_output_ready,i_ht_input_addr[15:0],i_ht_input_data[63:0],i_ht_input_key[255:0],i_ht_input_op[1:0],i_ht_input_client[0:0],i_ht_input_valid,m00_axi_aclk,m00_axi_aresetn,m00_axi_awaddr[31:0],m00_axi_awprot[2:0],m00_axi_awvalid,m00_axi_awready,m00_axi_wdata[31:0],m00_axi_wstrb[3:0],m00_axi_wvalid,m00_axi_wready,m00_axi_bresp[1:0],m00_axi_bvalid,m00_axi_bready,m00_axi_araddr[31:0],m00_axi_arprot[2:0],m00_axi_arvalid,m00_axi_arready,m00_axi_rdata[31:0],m00_axi_rresp[1:0],m00_axi_rvalid,m00_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hash_table_mgr_mig_v1_0,Vivado 2018.3.1";
begin
end;
