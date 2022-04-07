// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Mar 12 15:46:45 2022
// Host        : BA3145WS18 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_hash_table_mgr_mig_0_0_stub.v
// Design      : design_1_hash_table_mgr_mig_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hash_table_mgr_mig_v1_0,Vivado 2018.3.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(o_ht_output_addr, o_ht_output_data, 
  o_ht_output_key, o_ht_output_type, o_ht_output_client, o_ht_output_valid, 
  i_ht_output_ready, i_ht_input_addr, i_ht_input_data, i_ht_input_key, i_ht_input_op, 
  i_ht_input_client, i_ht_input_valid, m00_axi_aclk, m00_axi_aresetn, m00_axi_awaddr, 
  m00_axi_awprot, m00_axi_awvalid, m00_axi_awready, m00_axi_wdata, m00_axi_wstrb, 
  m00_axi_wvalid, m00_axi_wready, m00_axi_bresp, m00_axi_bvalid, m00_axi_bready, 
  m00_axi_araddr, m00_axi_arprot, m00_axi_arvalid, m00_axi_arready, m00_axi_rdata, 
  m00_axi_rresp, m00_axi_rvalid, m00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="o_ht_output_addr[15:0],o_ht_output_data[63:0],o_ht_output_key[255:0],o_ht_output_type[0:0],o_ht_output_client[0:0],o_ht_output_valid,i_ht_output_ready,i_ht_input_addr[15:0],i_ht_input_data[63:0],i_ht_input_key[255:0],i_ht_input_op[1:0],i_ht_input_client[0:0],i_ht_input_valid,m00_axi_aclk,m00_axi_aresetn,m00_axi_awaddr[31:0],m00_axi_awprot[2:0],m00_axi_awvalid,m00_axi_awready,m00_axi_wdata[31:0],m00_axi_wstrb[3:0],m00_axi_wvalid,m00_axi_wready,m00_axi_bresp[1:0],m00_axi_bvalid,m00_axi_bready,m00_axi_araddr[31:0],m00_axi_arprot[2:0],m00_axi_arvalid,m00_axi_arready,m00_axi_rdata[31:0],m00_axi_rresp[1:0],m00_axi_rvalid,m00_axi_rready" */;
  output [15:0]o_ht_output_addr;
  output [63:0]o_ht_output_data;
  output [255:0]o_ht_output_key;
  output [0:0]o_ht_output_type;
  output [0:0]o_ht_output_client;
  output o_ht_output_valid;
  input i_ht_output_ready;
  input [15:0]i_ht_input_addr;
  input [63:0]i_ht_input_data;
  input [255:0]i_ht_input_key;
  input [1:0]i_ht_input_op;
  input [0:0]i_ht_input_client;
  input i_ht_input_valid;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  output [31:0]m00_axi_awaddr;
  output [2:0]m00_axi_awprot;
  output m00_axi_awvalid;
  input m00_axi_awready;
  output [31:0]m00_axi_wdata;
  output [3:0]m00_axi_wstrb;
  output m00_axi_wvalid;
  input m00_axi_wready;
  input [1:0]m00_axi_bresp;
  input m00_axi_bvalid;
  output m00_axi_bready;
  output [31:0]m00_axi_araddr;
  output [2:0]m00_axi_arprot;
  output m00_axi_arvalid;
  input m00_axi_arready;
  input [31:0]m00_axi_rdata;
  input [1:0]m00_axi_rresp;
  input m00_axi_rvalid;
  output m00_axi_rready;
endmodule
