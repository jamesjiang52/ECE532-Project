// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: utoronto.ca:use_YJ:hash_func_top:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_hash_func_top_0_2 (
  s01_axi_aclk,
  s01_axi_aresetn,
  s01_axi_awid,
  s01_axi_awaddr,
  s01_axi_awlen,
  s01_axi_awsize,
  s01_axi_awburst,
  s01_axi_awlock,
  s01_axi_awcache,
  s01_axi_awprot,
  s01_axi_awqos,
  s01_axi_awregion,
  s01_axi_awvalid,
  s01_axi_awready,
  s01_axi_wdata,
  s01_axi_wstrb,
  s01_axi_wlast,
  s01_axi_wvalid,
  s01_axi_wready,
  s01_axi_bid,
  s01_axi_bresp,
  s01_axi_bvalid,
  s01_axi_bready,
  s01_axi_arid,
  s01_axi_araddr,
  s01_axi_arlen,
  s01_axi_arsize,
  s01_axi_arburst,
  s01_axi_arlock,
  s01_axi_arcache,
  s01_axi_arprot,
  s01_axi_arqos,
  s01_axi_arregion,
  s01_axi_arvalid,
  s01_axi_arready,
  s01_axi_rid,
  s01_axi_rdata,
  s01_axi_rresp,
  s01_axi_rlast,
  s01_axi_rvalid,
  s01_axi_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axi_aclk, ASSOCIATED_BUSIF s01_axi, ASSOCIATED_RESET s01_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s01_axi_aclk CLK" *)
input wire s01_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s01_axi_aresetn RST" *)
input wire s01_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWID" *)
input wire [0 : 0] s01_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWADDR" *)
input wire [7 : 0] s01_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWLEN" *)
input wire [7 : 0] s01_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWSIZE" *)
input wire [2 : 0] s01_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWBURST" *)
input wire [1 : 0] s01_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWLOCK" *)
input wire s01_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWCACHE" *)
input wire [3 : 0] s01_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWPROT" *)
input wire [2 : 0] s01_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWQOS" *)
input wire [3 : 0] s01_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWREGION" *)
input wire [3 : 0] s01_axi_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWVALID" *)
input wire s01_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi AWREADY" *)
output wire s01_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WDATA" *)
input wire [31 : 0] s01_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WSTRB" *)
input wire [3 : 0] s01_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WLAST" *)
input wire s01_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WVALID" *)
input wire s01_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi WREADY" *)
output wire s01_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BID" *)
output wire [0 : 0] s01_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BRESP" *)
output wire [1 : 0] s01_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BVALID" *)
output wire s01_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi BREADY" *)
input wire s01_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARID" *)
input wire [0 : 0] s01_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARADDR" *)
input wire [7 : 0] s01_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARLEN" *)
input wire [7 : 0] s01_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARSIZE" *)
input wire [2 : 0] s01_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARBURST" *)
input wire [1 : 0] s01_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARLOCK" *)
input wire s01_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARCACHE" *)
input wire [3 : 0] s01_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARPROT" *)
input wire [2 : 0] s01_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARQOS" *)
input wire [3 : 0] s01_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARREGION" *)
input wire [3 : 0] s01_axi_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARVALID" *)
input wire s01_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi ARREADY" *)
output wire s01_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RID" *)
output wire [0 : 0] s01_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RDATA" *)
output wire [31 : 0] s01_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RRESP" *)
output wire [1 : 0] s01_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RLAST" *)
output wire s01_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RVALID" *)
output wire s01_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1,\
 RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s01_axi RREADY" *)
input wire s01_axi_rready;

  hash_func_top #(
    .C_S_AXI_ID_WIDTH(1),
    .C_S_AXI_ADDR_WIDTH(8),
    .C_S_AXI_AWUSER_WIDTH(0),
    .C_S_AXI_ARUSER_WIDTH(0),
    .C_S_AXI_WUSER_WIDTH(0),
    .C_S_AXI_RUSER_WIDTH(0),
    .C_S_AXI_BUSER_WIDTH(0)
  ) inst (
    .s01_axi_aclk(s01_axi_aclk),
    .s01_axi_aresetn(s01_axi_aresetn),
    .s01_axi_awid(s01_axi_awid),
    .s01_axi_awaddr(s01_axi_awaddr),
    .s01_axi_awlen(s01_axi_awlen),
    .s01_axi_awsize(s01_axi_awsize),
    .s01_axi_awburst(s01_axi_awburst),
    .s01_axi_awlock(s01_axi_awlock),
    .s01_axi_awcache(s01_axi_awcache),
    .s01_axi_awprot(s01_axi_awprot),
    .s01_axi_awqos(s01_axi_awqos),
    .s01_axi_awregion(s01_axi_awregion),
    .s01_axi_awvalid(s01_axi_awvalid),
    .s01_axi_awready(s01_axi_awready),
    .s01_axi_wdata(s01_axi_wdata),
    .s01_axi_wstrb(s01_axi_wstrb),
    .s01_axi_wlast(s01_axi_wlast),
    .s01_axi_wvalid(s01_axi_wvalid),
    .s01_axi_wready(s01_axi_wready),
    .s01_axi_bid(s01_axi_bid),
    .s01_axi_bresp(s01_axi_bresp),
    .s01_axi_bvalid(s01_axi_bvalid),
    .s01_axi_bready(s01_axi_bready),
    .s01_axi_arid(s01_axi_arid),
    .s01_axi_araddr(s01_axi_araddr),
    .s01_axi_arlen(s01_axi_arlen),
    .s01_axi_arsize(s01_axi_arsize),
    .s01_axi_arburst(s01_axi_arburst),
    .s01_axi_arlock(s01_axi_arlock),
    .s01_axi_arcache(s01_axi_arcache),
    .s01_axi_arprot(s01_axi_arprot),
    .s01_axi_arqos(s01_axi_arqos),
    .s01_axi_arregion(s01_axi_arregion),
    .s01_axi_arvalid(s01_axi_arvalid),
    .s01_axi_arready(s01_axi_arready),
    .s01_axi_rid(s01_axi_rid),
    .s01_axi_rdata(s01_axi_rdata),
    .s01_axi_rresp(s01_axi_rresp),
    .s01_axi_rlast(s01_axi_rlast),
    .s01_axi_rvalid(s01_axi_rvalid),
    .s01_axi_rready(s01_axi_rready)
  );
endmodule
