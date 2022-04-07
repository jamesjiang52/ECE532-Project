-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Sat Mar 12 15:48:01 2022
-- Host        : BA3145WS18 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/jiangja5/hash_server/hash_server.srcs/sources_1/bd/design_1/ip/design_1_hash_table_mgr_0_0/design_1_hash_table_mgr_0_0_stub.vhdl
-- Design      : design_1_hash_table_mgr_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_hash_table_mgr_0_0 is
  Port ( 
    i_ht_output_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_ht_output_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    i_ht_output_key : in STD_LOGIC_VECTOR ( 255 downto 0 );
    i_ht_output_type : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_ht_output_valid : in STD_LOGIC;
    i_ht_output_client : in STD_LOGIC;
    o_ht_output_ready : out STD_LOGIC;
    o_ht_input_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_ht_input_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_ht_input_key : out STD_LOGIC_VECTOR ( 255 downto 0 );
    o_ht_input_op : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_ht_input_client : out STD_LOGIC;
    o_ht_input_valid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );

end design_1_hash_table_mgr_0_0;

architecture stub of design_1_hash_table_mgr_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_ht_output_addr[15:0],i_ht_output_data[63:0],i_ht_output_key[255:0],i_ht_output_type[0:0],i_ht_output_valid,i_ht_output_client,o_ht_output_ready,o_ht_input_addr[15:0],o_ht_input_data[63:0],o_ht_input_key[255:0],o_ht_input_op[1:0],o_ht_input_client,o_ht_input_valid,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[6:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[6:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hash_table_mgr_v1_0,Vivado 2018.3.1";
begin
end;
