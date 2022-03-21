// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue Feb 22 17:06:20 2022
// Host        : BA3145WS15 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_hash_func_top_0_2_stub.v
// Design      : design_1_hash_func_top_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hash_func_top,Vivado 2018.3.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s01_axi_aclk, s01_axi_aresetn, s01_axi_awid, 
  s01_axi_awaddr, s01_axi_awlen, s01_axi_awsize, s01_axi_awburst, s01_axi_awlock, 
  s01_axi_awcache, s01_axi_awprot, s01_axi_awqos, s01_axi_awregion, s01_axi_awvalid, 
  s01_axi_awready, s01_axi_wdata, s01_axi_wstrb, s01_axi_wlast, s01_axi_wvalid, 
  s01_axi_wready, s01_axi_bid, s01_axi_bresp, s01_axi_bvalid, s01_axi_bready, s01_axi_arid, 
  s01_axi_araddr, s01_axi_arlen, s01_axi_arsize, s01_axi_arburst, s01_axi_arlock, 
  s01_axi_arcache, s01_axi_arprot, s01_axi_arqos, s01_axi_arregion, s01_axi_arvalid, 
  s01_axi_arready, s01_axi_rid, s01_axi_rdata, s01_axi_rresp, s01_axi_rlast, s01_axi_rvalid, 
  s01_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="s01_axi_aclk,s01_axi_aresetn,s01_axi_awid[0:0],s01_axi_awaddr[7:0],s01_axi_awlen[7:0],s01_axi_awsize[2:0],s01_axi_awburst[1:0],s01_axi_awlock,s01_axi_awcache[3:0],s01_axi_awprot[2:0],s01_axi_awqos[3:0],s01_axi_awregion[3:0],s01_axi_awvalid,s01_axi_awready,s01_axi_wdata[31:0],s01_axi_wstrb[3:0],s01_axi_wlast,s01_axi_wvalid,s01_axi_wready,s01_axi_bid[0:0],s01_axi_bresp[1:0],s01_axi_bvalid,s01_axi_bready,s01_axi_arid[0:0],s01_axi_araddr[7:0],s01_axi_arlen[7:0],s01_axi_arsize[2:0],s01_axi_arburst[1:0],s01_axi_arlock,s01_axi_arcache[3:0],s01_axi_arprot[2:0],s01_axi_arqos[3:0],s01_axi_arregion[3:0],s01_axi_arvalid,s01_axi_arready,s01_axi_rid[0:0],s01_axi_rdata[31:0],s01_axi_rresp[1:0],s01_axi_rlast,s01_axi_rvalid,s01_axi_rready" */;
  input s01_axi_aclk;
  input s01_axi_aresetn;
  input [0:0]s01_axi_awid;
  input [7:0]s01_axi_awaddr;
  input [7:0]s01_axi_awlen;
  input [2:0]s01_axi_awsize;
  input [1:0]s01_axi_awburst;
  input s01_axi_awlock;
  input [3:0]s01_axi_awcache;
  input [2:0]s01_axi_awprot;
  input [3:0]s01_axi_awqos;
  input [3:0]s01_axi_awregion;
  input s01_axi_awvalid;
  output s01_axi_awready;
  input [31:0]s01_axi_wdata;
  input [3:0]s01_axi_wstrb;
  input s01_axi_wlast;
  input s01_axi_wvalid;
  output s01_axi_wready;
  output [0:0]s01_axi_bid;
  output [1:0]s01_axi_bresp;
  output s01_axi_bvalid;
  input s01_axi_bready;
  input [0:0]s01_axi_arid;
  input [7:0]s01_axi_araddr;
  input [7:0]s01_axi_arlen;
  input [2:0]s01_axi_arsize;
  input [1:0]s01_axi_arburst;
  input s01_axi_arlock;
  input [3:0]s01_axi_arcache;
  input [2:0]s01_axi_arprot;
  input [3:0]s01_axi_arqos;
  input [3:0]s01_axi_arregion;
  input s01_axi_arvalid;
  output s01_axi_arready;
  output [0:0]s01_axi_rid;
  output [31:0]s01_axi_rdata;
  output [1:0]s01_axi_rresp;
  output s01_axi_rlast;
  output s01_axi_rvalid;
  input s01_axi_rready;
endmodule
