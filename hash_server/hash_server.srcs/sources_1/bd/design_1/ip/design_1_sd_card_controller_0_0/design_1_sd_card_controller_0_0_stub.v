// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sun Mar 20 10:54:46 2022
// Host        : BA3145WS23 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/jiangja5/hash_server/hash_server.srcs/sources_1/bd/design_1/ip/design_1_sd_card_controller_0_0/design_1_sd_card_controller_0_0_stub.v
// Design      : design_1_sd_card_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sd_card_controller_v1_0,Vivado 2018.3.1" *)
module design_1_sd_card_controller_0_0(clk, resetn, SD_CD, SD_RESET, SD_SCK, SD_CMD, SD_DAT, 
  load, loaded, m00_axi_awaddr, m00_axi_awprot, m00_axi_awvalid, m00_axi_awready, 
  m00_axi_wdata, m00_axi_wstrb, m00_axi_wvalid, m00_axi_wready, m00_axi_bresp, 
  m00_axi_bvalid, m00_axi_bready, m00_axi_araddr, m00_axi_arprot, m00_axi_arvalid, 
  m00_axi_arready, m00_axi_rdata, m00_axi_rresp, m00_axi_rvalid, m00_axi_rready, 
  m00_axi_aclk, m00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,SD_CD,SD_RESET,SD_SCK,SD_CMD,SD_DAT[3:0],load,loaded,m00_axi_awaddr[31:0],m00_axi_awprot[2:0],m00_axi_awvalid,m00_axi_awready,m00_axi_wdata[31:0],m00_axi_wstrb[3:0],m00_axi_wvalid,m00_axi_wready,m00_axi_bresp[1:0],m00_axi_bvalid,m00_axi_bready,m00_axi_araddr[31:0],m00_axi_arprot[2:0],m00_axi_arvalid,m00_axi_arready,m00_axi_rdata[31:0],m00_axi_rresp[1:0],m00_axi_rvalid,m00_axi_rready,m00_axi_aclk,m00_axi_aresetn" */;
  input clk;
  input resetn;
  input SD_CD;
  output SD_RESET;
  output SD_SCK;
  output SD_CMD;
  inout [3:0]SD_DAT;
  input load;
  output loaded;
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
  input m00_axi_aclk;
  input m00_axi_aresetn;
endmodule
