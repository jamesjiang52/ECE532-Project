// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sun Mar 20 10:54:46 2022
// Host        : BA3145WS23 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/jiangja5/hash_server/hash_server.srcs/sources_1/bd/design_1/ip/design_1_sd_card_controller_0_0/design_1_sd_card_controller_0_0_sim_netlist.v
// Design      : design_1_sd_card_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sd_card_controller_0_0,sd_card_controller_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sd_card_controller_v1_0,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module design_1_sd_card_controller_0_0
   (clk,
    resetn,
    SD_CD,
    SD_RESET,
    SD_SCK,
    SD_CMD,
    SD_DAT,
    load,
    loaded,
    m00_axi_awaddr,
    m00_axi_awprot,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bresp,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_araddr,
    m00_axi_arprot,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input SD_CD;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SD_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SD_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output SD_RESET;
  output SD_SCK;
  output SD_CMD;
  inout [3:0]SD_DAT;
  input load;
  output loaded;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input m00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire SD_CMD;
  wire [3:0]\^SD_DAT ;
  wire SD_SCK;
  wire clk;
  wire load;
  wire loaded;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire [2:0]m00_axi_arprot;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:0]m00_axi_awaddr;
  wire [2:0]m00_axi_awprot;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire [3:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  wire resetn;

  assign SD_RESET = \<const0> ;
  xVIA SD_DAT_1via (SD_DAT[1], SD_DAT[2]);
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(SD_DAT[2]));
  design_1_sd_card_controller_0_0_sd_card_controller_v1_0 inst
       (.SD_CMD(SD_CMD),
        .SD_DAT(SD_DAT[3]),
        .SD_SCK(SD_SCK),
        .clk(clk),
        .load(load),
        .loaded(loaded),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arprot(m00_axi_arprot),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awprot(m00_axi_awprot),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bresp(m00_axi_bresp),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rresp(m00_axi_rresp),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid),
        .\recv_data_reg[7] (SD_DAT[0]),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module design_1_sd_card_controller_0_0_clock_divider
   (clk_out_reg_0,
    clk);
  output clk_out_reg_0;
  input clk;

  wire clk;
  wire clk_out_reg_0;
  wire p_0_in;

  LUT1 #(
    .INIT(2'h1)) 
    clk_out_i_1
       (.I0(clk_out_reg_0),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(clk_out_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module design_1_sd_card_controller_0_0_clock_divider_0
   (clk,
    clk_out_reg_0);
  output clk;
  input clk_out_reg_0;

  wire clk;
  wire clk_out_i_1__0_n_0;
  wire clk_out_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    clk_out_i_1__0
       (.I0(clk),
        .O(clk_out_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk_out_reg_0),
        .CE(1'b1),
        .D(clk_out_i_1__0_n_0),
        .Q(clk),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sd_card_controller_v1_0" *) 
module design_1_sd_card_controller_0_0_sd_card_controller_v1_0
   (m00_axi_awaddr,
    m00_axi_awprot,
    m00_axi_awvalid,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wvalid,
    m00_axi_bready,
    m00_axi_araddr,
    m00_axi_arprot,
    m00_axi_arvalid,
    m00_axi_rready,
    SD_DAT,
    SD_CMD,
    SD_SCK,
    loaded,
    load,
    resetn,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_awready,
    m00_axi_wready,
    m00_axi_bresp,
    m00_axi_bvalid,
    m00_axi_arready,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rvalid,
    \recv_data_reg[7] ,
    clk);
  output [31:0]m00_axi_awaddr;
  output [2:0]m00_axi_awprot;
  output m00_axi_awvalid;
  output [31:0]m00_axi_wdata;
  output [3:0]m00_axi_wstrb;
  output m00_axi_wvalid;
  output m00_axi_bready;
  output [31:0]m00_axi_araddr;
  output [2:0]m00_axi_arprot;
  output m00_axi_arvalid;
  output m00_axi_rready;
  output [0:0]SD_DAT;
  output SD_CMD;
  output SD_SCK;
  output loaded;
  input load;
  input resetn;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  input m00_axi_awready;
  input m00_axi_wready;
  input [1:0]m00_axi_bresp;
  input m00_axi_bvalid;
  input m00_axi_arready;
  input [31:0]m00_axi_rdata;
  input [1:0]m00_axi_rresp;
  input m00_axi_rvalid;
  input [0:0]\recv_data_reg[7] ;
  input clk;

  wire SD_CMD;
  wire [0:0]SD_DAT;
  wire SD_SCK;
  wire [31:0]addr_ptr;
  wire \addr_ptr[3]_i_2_n_0 ;
  (* MARK_DEBUG *) wire [31:0]addr_ptr_0;
  wire \addr_ptr_reg[11]_i_1_n_0 ;
  wire \addr_ptr_reg[11]_i_1_n_1 ;
  wire \addr_ptr_reg[11]_i_1_n_2 ;
  wire \addr_ptr_reg[11]_i_1_n_3 ;
  wire \addr_ptr_reg[15]_i_1_n_0 ;
  wire \addr_ptr_reg[15]_i_1_n_1 ;
  wire \addr_ptr_reg[15]_i_1_n_2 ;
  wire \addr_ptr_reg[15]_i_1_n_3 ;
  wire \addr_ptr_reg[19]_i_1_n_0 ;
  wire \addr_ptr_reg[19]_i_1_n_1 ;
  wire \addr_ptr_reg[19]_i_1_n_2 ;
  wire \addr_ptr_reg[19]_i_1_n_3 ;
  wire \addr_ptr_reg[23]_i_1_n_0 ;
  wire \addr_ptr_reg[23]_i_1_n_1 ;
  wire \addr_ptr_reg[23]_i_1_n_2 ;
  wire \addr_ptr_reg[23]_i_1_n_3 ;
  wire \addr_ptr_reg[27]_i_1_n_0 ;
  wire \addr_ptr_reg[27]_i_1_n_1 ;
  wire \addr_ptr_reg[27]_i_1_n_2 ;
  wire \addr_ptr_reg[27]_i_1_n_3 ;
  wire \addr_ptr_reg[31]_i_2_n_1 ;
  wire \addr_ptr_reg[31]_i_2_n_2 ;
  wire \addr_ptr_reg[31]_i_2_n_3 ;
  wire \addr_ptr_reg[3]_i_1_n_0 ;
  wire \addr_ptr_reg[3]_i_1_n_1 ;
  wire \addr_ptr_reg[3]_i_1_n_2 ;
  wire \addr_ptr_reg[3]_i_1_n_3 ;
  wire \addr_ptr_reg[7]_i_1_n_0 ;
  wire \addr_ptr_reg[7]_i_1_n_1 ;
  wire \addr_ptr_reg[7]_i_1_n_2 ;
  wire \addr_ptr_reg[7]_i_1_n_3 ;
  (* MARK_DEBUG *) wire [31:0]address;
  wire address0_carry__0_i_1_n_0;
  wire address0_carry__0_i_2_n_0;
  wire address0_carry__0_i_3_n_0;
  wire address0_carry__0_i_4_n_0;
  wire address0_carry__0_n_0;
  wire address0_carry__0_n_1;
  wire address0_carry__0_n_2;
  wire address0_carry__0_n_3;
  wire address0_carry__0_n_4;
  wire address0_carry__0_n_5;
  wire address0_carry__0_n_6;
  wire address0_carry__0_n_7;
  wire address0_carry__1_i_1_n_0;
  wire address0_carry__1_i_2_n_0;
  wire address0_carry__1_i_3_n_0;
  wire address0_carry__1_i_4_n_0;
  wire address0_carry__1_n_0;
  wire address0_carry__1_n_1;
  wire address0_carry__1_n_2;
  wire address0_carry__1_n_3;
  wire address0_carry__1_n_4;
  wire address0_carry__1_n_5;
  wire address0_carry__1_n_6;
  wire address0_carry__1_n_7;
  wire address0_carry__2_i_1_n_0;
  wire address0_carry__2_i_2_n_0;
  wire address0_carry__2_i_3_n_0;
  wire address0_carry__2_i_4_n_0;
  wire address0_carry__2_n_0;
  wire address0_carry__2_n_1;
  wire address0_carry__2_n_2;
  wire address0_carry__2_n_3;
  wire address0_carry__2_n_4;
  wire address0_carry__2_n_5;
  wire address0_carry__2_n_6;
  wire address0_carry__2_n_7;
  wire address0_carry__3_i_1_n_0;
  wire address0_carry__3_i_2_n_0;
  wire address0_carry__3_i_3_n_0;
  wire address0_carry__3_i_4_n_0;
  wire address0_carry__3_n_0;
  wire address0_carry__3_n_1;
  wire address0_carry__3_n_2;
  wire address0_carry__3_n_3;
  wire address0_carry__3_n_4;
  wire address0_carry__3_n_5;
  wire address0_carry__3_n_6;
  wire address0_carry__3_n_7;
  wire address0_carry__4_i_1_n_0;
  wire address0_carry__4_i_2_n_0;
  wire address0_carry__4_i_3_n_0;
  wire address0_carry__4_i_4_n_0;
  wire address0_carry__4_n_0;
  wire address0_carry__4_n_1;
  wire address0_carry__4_n_2;
  wire address0_carry__4_n_3;
  wire address0_carry__4_n_4;
  wire address0_carry__4_n_5;
  wire address0_carry__4_n_6;
  wire address0_carry__4_n_7;
  wire address0_carry__5_i_1_n_0;
  wire address0_carry__5_i_2_n_0;
  wire address0_carry__5_i_3_n_0;
  wire address0_carry__5_n_0;
  wire address0_carry__5_n_1;
  wire address0_carry__5_n_2;
  wire address0_carry__5_n_3;
  wire address0_carry__5_n_4;
  wire address0_carry__5_n_5;
  wire address0_carry__5_n_6;
  wire address0_carry__5_n_7;
  wire address0_carry__6_i_1_n_0;
  wire address0_carry__6_n_2;
  wire address0_carry__6_n_3;
  wire address0_carry__6_n_5;
  wire address0_carry__6_n_6;
  wire address0_carry__6_n_7;
  wire address0_carry_i_1_n_0;
  wire address0_carry_i_2_n_0;
  wire address0_carry_i_3_n_0;
  wire address0_carry_n_0;
  wire address0_carry_n_1;
  wire address0_carry_n_2;
  wire address0_carry_n_3;
  wire address0_carry_n_4;
  wire address0_carry_n_5;
  wire address0_carry_n_6;
  wire address0_carry_n_7;
  wire \address[0]_i_1_n_0 ;
  wire \address[10]_i_1_n_0 ;
  wire \address[11]_i_1_n_0 ;
  wire \address[12]_i_1_n_0 ;
  wire \address[13]_i_1_n_0 ;
  wire \address[14]_i_1_n_0 ;
  wire \address[15]_i_1_n_0 ;
  wire \address[16]_i_1_n_0 ;
  wire \address[17]_i_1_n_0 ;
  wire \address[18]_i_1_n_0 ;
  wire \address[19]_i_1_n_0 ;
  wire \address[1]_i_1_n_0 ;
  wire \address[20]_i_1_n_0 ;
  wire \address[21]_i_1_n_0 ;
  wire \address[22]_i_1_n_0 ;
  wire \address[22]_i_2_n_0 ;
  wire \address[2]_i_1_n_0 ;
  wire \address[31]_i_1_n_0 ;
  wire \address[3]_i_1_n_0 ;
  wire \address[4]_i_1_n_0 ;
  wire \address[5]_i_1_n_0 ;
  wire \address[6]_i_1_n_0 ;
  wire \address[7]_i_1_n_0 ;
  wire \address[8]_i_1_n_0 ;
  wire \address[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire byte_available;
  wire byte_available_1_i_1_n_0;
  wire byte_available_1_i_2_n_0;
  wire byte_available_1_reg_n_0;
  wire clk;
  wire clk_25mhz;
  (* MARK_DEBUG *) wire [1:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [31:0]data;
  wire \data[0]_i_1_n_0 ;
  wire \data[10]_i_1_n_0 ;
  wire \data[11]_i_1_n_0 ;
  wire \data[12]_i_1_n_0 ;
  wire \data[13]_i_1_n_0 ;
  wire \data[14]_i_1_n_0 ;
  wire \data[15]_i_1_n_0 ;
  wire \data[16]_i_1_n_0 ;
  wire \data[17]_i_1_n_0 ;
  wire \data[18]_i_1_n_0 ;
  wire \data[19]_i_1_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[20]_i_1_n_0 ;
  wire \data[21]_i_1_n_0 ;
  wire \data[22]_i_1_n_0 ;
  wire \data[23]_i_1_n_0 ;
  wire \data[24]_i_1_n_0 ;
  wire \data[25]_i_1_n_0 ;
  wire \data[26]_i_1_n_0 ;
  wire \data[27]_i_1_n_0 ;
  wire \data[28]_i_1_n_0 ;
  wire \data[29]_i_1_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[30]_i_1_n_0 ;
  wire \data[31]_i_1_n_0 ;
  wire \data[31]_i_2_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[8]_i_1_n_0 ;
  wire \data[9]_i_1_n_0 ;
  wire div1_n_0;
  (* MARK_DEBUG *) wire [7:0]dout;
  wire load;
  wire loaded;
  wire loaded_INST_0_i_1_n_0;
  wire m00_axi_aclk;
  wire [31:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire [2:0]m00_axi_arprot;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:0]m00_axi_awaddr;
  wire [2:0]m00_axi_awprot;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire [1:0]m00_axi_bresp;
  wire m00_axi_bvalid;
  wire m00_axi_init_axi_txn;
  wire m00_axi_init_axi_txn0;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire [1:0]m00_axi_rresp;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire [3:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  (* MARK_DEBUG *) wire rd;
  wire rd1;
  wire rd_i_1_n_0;
  wire rd_i_2_n_0;
  (* MARK_DEBUG *) wire ready;
  (* MARK_DEBUG *) wire ready_for_next_byte;
  wire [0:0]\recv_data_reg[7] ;
  wire resetn;
  wire rst;
  (* MARK_DEBUG *) wire signal;
  wire signal_1_i_1_n_0;
  wire signal_1_i_2_n_0;
  wire signal_1_reg_n_0;
  wire signal_i_1_n_0;
  (* MARK_DEBUG *) wire [4:0]state;
  (* MARK_DEBUG *) wire wr;
  wire [3:3]\NLW_addr_ptr_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:2]NLW_address0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_address0_carry__6_O_UNCONNECTED;
  wire NLW_sd_card_controller_v1_0_M00_AXI_inst_ERROR_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \addr_ptr[31]_i_1 
       (.I0(load),
        .I1(addr_ptr_0[25]),
        .I2(addr_ptr_0[24]),
        .I3(addr_ptr_0[27]),
        .I4(addr_ptr_0[26]),
        .I5(loaded_INST_0_i_1_n_0),
        .O(rd1));
  LUT5 #(
    .INIT(32'hAA9AAAAA)) 
    \addr_ptr[3]_i_2 
       (.I0(addr_ptr_0[0]),
        .I1(ready),
        .I2(rd),
        .I3(byte_available_1_reg_n_0),
        .I4(byte_available),
        .O(\addr_ptr[3]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[0] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[0]),
        .Q(addr_ptr_0[0]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[10] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[10]),
        .Q(addr_ptr_0[10]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[11] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[11]),
        .Q(addr_ptr_0[11]),
        .R(rst));
  CARRY4 \addr_ptr_reg[11]_i_1 
       (.CI(\addr_ptr_reg[7]_i_1_n_0 ),
        .CO({\addr_ptr_reg[11]_i_1_n_0 ,\addr_ptr_reg[11]_i_1_n_1 ,\addr_ptr_reg[11]_i_1_n_2 ,\addr_ptr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr_ptr[11:8]),
        .S(addr_ptr_0[11:8]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[12] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[12]),
        .Q(addr_ptr_0[12]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[13] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[13]),
        .Q(addr_ptr_0[13]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[14] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[14]),
        .Q(addr_ptr_0[14]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[15] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[15]),
        .Q(addr_ptr_0[15]),
        .R(rst));
  CARRY4 \addr_ptr_reg[15]_i_1 
       (.CI(\addr_ptr_reg[11]_i_1_n_0 ),
        .CO({\addr_ptr_reg[15]_i_1_n_0 ,\addr_ptr_reg[15]_i_1_n_1 ,\addr_ptr_reg[15]_i_1_n_2 ,\addr_ptr_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr_ptr[15:12]),
        .S(addr_ptr_0[15:12]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[16] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[16]),
        .Q(addr_ptr_0[16]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[17] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[17]),
        .Q(addr_ptr_0[17]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[18] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[18]),
        .Q(addr_ptr_0[18]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[19] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[19]),
        .Q(addr_ptr_0[19]),
        .R(rst));
  CARRY4 \addr_ptr_reg[19]_i_1 
       (.CI(\addr_ptr_reg[15]_i_1_n_0 ),
        .CO({\addr_ptr_reg[19]_i_1_n_0 ,\addr_ptr_reg[19]_i_1_n_1 ,\addr_ptr_reg[19]_i_1_n_2 ,\addr_ptr_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr_ptr[19:16]),
        .S(addr_ptr_0[19:16]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[1] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[1]),
        .Q(addr_ptr_0[1]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[20] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[20]),
        .Q(addr_ptr_0[20]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[21] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[21]),
        .Q(addr_ptr_0[21]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[22] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[22]),
        .Q(addr_ptr_0[22]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[23] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[23]),
        .Q(addr_ptr_0[23]),
        .R(rst));
  CARRY4 \addr_ptr_reg[23]_i_1 
       (.CI(\addr_ptr_reg[19]_i_1_n_0 ),
        .CO({\addr_ptr_reg[23]_i_1_n_0 ,\addr_ptr_reg[23]_i_1_n_1 ,\addr_ptr_reg[23]_i_1_n_2 ,\addr_ptr_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr_ptr[23:20]),
        .S(addr_ptr_0[23:20]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[24] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[24]),
        .Q(addr_ptr_0[24]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[25] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[25]),
        .Q(addr_ptr_0[25]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[26] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[26]),
        .Q(addr_ptr_0[26]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[27] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[27]),
        .Q(addr_ptr_0[27]),
        .R(rst));
  CARRY4 \addr_ptr_reg[27]_i_1 
       (.CI(\addr_ptr_reg[23]_i_1_n_0 ),
        .CO({\addr_ptr_reg[27]_i_1_n_0 ,\addr_ptr_reg[27]_i_1_n_1 ,\addr_ptr_reg[27]_i_1_n_2 ,\addr_ptr_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr_ptr[27:24]),
        .S(addr_ptr_0[27:24]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[28] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[28]),
        .Q(addr_ptr_0[28]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[29] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[29]),
        .Q(addr_ptr_0[29]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[2] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[2]),
        .Q(addr_ptr_0[2]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[30] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[30]),
        .Q(addr_ptr_0[30]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[31] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[31]),
        .Q(addr_ptr_0[31]),
        .R(rst));
  CARRY4 \addr_ptr_reg[31]_i_2 
       (.CI(\addr_ptr_reg[27]_i_1_n_0 ),
        .CO({\NLW_addr_ptr_reg[31]_i_2_CO_UNCONNECTED [3],\addr_ptr_reg[31]_i_2_n_1 ,\addr_ptr_reg[31]_i_2_n_2 ,\addr_ptr_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr_ptr[31:28]),
        .S(addr_ptr_0[31:28]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[3] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[3]),
        .Q(addr_ptr_0[3]),
        .R(rst));
  CARRY4 \addr_ptr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\addr_ptr_reg[3]_i_1_n_0 ,\addr_ptr_reg[3]_i_1_n_1 ,\addr_ptr_reg[3]_i_1_n_2 ,\addr_ptr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,addr_ptr_0[0]}),
        .O(addr_ptr[3:0]),
        .S({addr_ptr_0[3:1],\addr_ptr[3]_i_2_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[4] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[4]),
        .Q(addr_ptr_0[4]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[5] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[5]),
        .Q(addr_ptr_0[5]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[6] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[6]),
        .Q(addr_ptr_0[6]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[7] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[7]),
        .Q(addr_ptr_0[7]),
        .R(rst));
  CARRY4 \addr_ptr_reg[7]_i_1 
       (.CI(\addr_ptr_reg[3]_i_1_n_0 ),
        .CO({\addr_ptr_reg[7]_i_1_n_0 ,\addr_ptr_reg[7]_i_1_n_1 ,\addr_ptr_reg[7]_i_1_n_2 ,\addr_ptr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(addr_ptr[7:4]),
        .S(addr_ptr_0[7:4]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[8] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[8]),
        .Q(addr_ptr_0[8]),
        .R(rst));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \addr_ptr_reg[9] 
       (.C(clk),
        .CE(rd1),
        .D(addr_ptr[9]),
        .Q(addr_ptr_0[9]),
        .R(rst));
  CARRY4 address0_carry
       (.CI(1'b0),
        .CO({address0_carry_n_0,address0_carry_n_1,address0_carry_n_2,address0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({addr_ptr_0[4:2],1'b0}),
        .O({address0_carry_n_4,address0_carry_n_5,address0_carry_n_6,address0_carry_n_7}),
        .S({address0_carry_i_1_n_0,address0_carry_i_2_n_0,address0_carry_i_3_n_0,addr_ptr_0[1]}));
  CARRY4 address0_carry__0
       (.CI(address0_carry_n_0),
        .CO({address0_carry__0_n_0,address0_carry__0_n_1,address0_carry__0_n_2,address0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(addr_ptr_0[8:5]),
        .O({address0_carry__0_n_4,address0_carry__0_n_5,address0_carry__0_n_6,address0_carry__0_n_7}),
        .S({address0_carry__0_i_1_n_0,address0_carry__0_i_2_n_0,address0_carry__0_i_3_n_0,address0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__0_i_1
       (.I0(addr_ptr_0[8]),
        .O(address0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__0_i_2
       (.I0(addr_ptr_0[7]),
        .O(address0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__0_i_3
       (.I0(addr_ptr_0[6]),
        .O(address0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__0_i_4
       (.I0(addr_ptr_0[5]),
        .O(address0_carry__0_i_4_n_0));
  CARRY4 address0_carry__1
       (.CI(address0_carry__0_n_0),
        .CO({address0_carry__1_n_0,address0_carry__1_n_1,address0_carry__1_n_2,address0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(addr_ptr_0[12:9]),
        .O({address0_carry__1_n_4,address0_carry__1_n_5,address0_carry__1_n_6,address0_carry__1_n_7}),
        .S({address0_carry__1_i_1_n_0,address0_carry__1_i_2_n_0,address0_carry__1_i_3_n_0,address0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__1_i_1
       (.I0(addr_ptr_0[12]),
        .O(address0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__1_i_2
       (.I0(addr_ptr_0[11]),
        .O(address0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__1_i_3
       (.I0(addr_ptr_0[10]),
        .O(address0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__1_i_4
       (.I0(addr_ptr_0[9]),
        .O(address0_carry__1_i_4_n_0));
  CARRY4 address0_carry__2
       (.CI(address0_carry__1_n_0),
        .CO({address0_carry__2_n_0,address0_carry__2_n_1,address0_carry__2_n_2,address0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(addr_ptr_0[16:13]),
        .O({address0_carry__2_n_4,address0_carry__2_n_5,address0_carry__2_n_6,address0_carry__2_n_7}),
        .S({address0_carry__2_i_1_n_0,address0_carry__2_i_2_n_0,address0_carry__2_i_3_n_0,address0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__2_i_1
       (.I0(addr_ptr_0[16]),
        .O(address0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__2_i_2
       (.I0(addr_ptr_0[15]),
        .O(address0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__2_i_3
       (.I0(addr_ptr_0[14]),
        .O(address0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__2_i_4
       (.I0(addr_ptr_0[13]),
        .O(address0_carry__2_i_4_n_0));
  CARRY4 address0_carry__3
       (.CI(address0_carry__2_n_0),
        .CO({address0_carry__3_n_0,address0_carry__3_n_1,address0_carry__3_n_2,address0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(addr_ptr_0[20:17]),
        .O({address0_carry__3_n_4,address0_carry__3_n_5,address0_carry__3_n_6,address0_carry__3_n_7}),
        .S({address0_carry__3_i_1_n_0,address0_carry__3_i_2_n_0,address0_carry__3_i_3_n_0,address0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__3_i_1
       (.I0(addr_ptr_0[20]),
        .O(address0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__3_i_2
       (.I0(addr_ptr_0[19]),
        .O(address0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__3_i_3
       (.I0(addr_ptr_0[18]),
        .O(address0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__3_i_4
       (.I0(addr_ptr_0[17]),
        .O(address0_carry__3_i_4_n_0));
  CARRY4 address0_carry__4
       (.CI(address0_carry__3_n_0),
        .CO({address0_carry__4_n_0,address0_carry__4_n_1,address0_carry__4_n_2,address0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(addr_ptr_0[24:21]),
        .O({address0_carry__4_n_4,address0_carry__4_n_5,address0_carry__4_n_6,address0_carry__4_n_7}),
        .S({address0_carry__4_i_1_n_0,address0_carry__4_i_2_n_0,address0_carry__4_i_3_n_0,address0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__4_i_1
       (.I0(addr_ptr_0[24]),
        .O(address0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__4_i_2
       (.I0(addr_ptr_0[23]),
        .O(address0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__4_i_3
       (.I0(addr_ptr_0[22]),
        .O(address0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__4_i_4
       (.I0(addr_ptr_0[21]),
        .O(address0_carry__4_i_4_n_0));
  CARRY4 address0_carry__5
       (.CI(address0_carry__4_n_0),
        .CO({address0_carry__5_n_0,address0_carry__5_n_1,address0_carry__5_n_2,address0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,addr_ptr_0[27:25]}),
        .O({address0_carry__5_n_4,address0_carry__5_n_5,address0_carry__5_n_6,address0_carry__5_n_7}),
        .S({addr_ptr_0[28],address0_carry__5_i_1_n_0,address0_carry__5_i_2_n_0,address0_carry__5_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__5_i_1
       (.I0(addr_ptr_0[27]),
        .O(address0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__5_i_2
       (.I0(addr_ptr_0[26]),
        .O(address0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__5_i_3
       (.I0(addr_ptr_0[25]),
        .O(address0_carry__5_i_3_n_0));
  CARRY4 address0_carry__6
       (.CI(address0_carry__5_n_0),
        .CO({NLW_address0_carry__6_CO_UNCONNECTED[3:2],address0_carry__6_n_2,address0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_address0_carry__6_O_UNCONNECTED[3],address0_carry__6_n_5,address0_carry__6_n_6,address0_carry__6_n_7}),
        .S({1'b0,address0_carry__6_i_1_n_0,addr_ptr_0[30:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry__6_i_1
       (.I0(addr_ptr_0[31]),
        .O(address0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry_i_1
       (.I0(addr_ptr_0[4]),
        .O(address0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry_i_2
       (.I0(addr_ptr_0[3]),
        .O(address0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    address0_carry_i_3
       (.I0(addr_ptr_0[2]),
        .O(address0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[0]_i_1 
       (.I0(address[0]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[9]),
        .O(\address[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[10]_i_1 
       (.I0(address[10]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[19]),
        .O(\address[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[11]_i_1 
       (.I0(address[11]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[20]),
        .O(\address[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[12]_i_1 
       (.I0(address[12]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[21]),
        .O(\address[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[13]_i_1 
       (.I0(address[13]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[22]),
        .O(\address[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[14]_i_1 
       (.I0(address[14]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[23]),
        .O(\address[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[15]_i_1 
       (.I0(address[15]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[24]),
        .O(\address[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[16]_i_1 
       (.I0(address[16]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[25]),
        .O(\address[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[17]_i_1 
       (.I0(address[17]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[26]),
        .O(\address[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[18]_i_1 
       (.I0(address[18]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[27]),
        .O(\address[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[19]_i_1 
       (.I0(address[19]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[28]),
        .O(\address[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[1]_i_1 
       (.I0(address[1]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[10]),
        .O(\address[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[20]_i_1 
       (.I0(address[20]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[29]),
        .O(\address[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[21]_i_1 
       (.I0(address[21]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[30]),
        .O(\address[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \address[22]_i_1 
       (.I0(loaded_INST_0_i_1_n_0),
        .I1(rd_i_2_n_0),
        .I2(load),
        .I3(resetn),
        .O(\address[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[22]_i_2 
       (.I0(address[22]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[31]),
        .O(\address[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[2]_i_1 
       (.I0(address[2]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[11]),
        .O(\address[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \address[31]_i_1 
       (.I0(load),
        .I1(rd_i_2_n_0),
        .I2(loaded_INST_0_i_1_n_0),
        .I3(ready),
        .I4(resetn),
        .O(\address[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[3]_i_1 
       (.I0(address[3]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[12]),
        .O(\address[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[4]_i_1 
       (.I0(address[4]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[13]),
        .O(\address[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[5]_i_1 
       (.I0(address[5]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[14]),
        .O(\address[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[6]_i_1 
       (.I0(address[6]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[15]),
        .O(\address[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[7]_i_1 
       (.I0(address[7]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[16]),
        .O(\address[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[8]_i_1 
       (.I0(address[8]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[17]),
        .O(\address[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \address[9]_i_1 
       (.I0(address[9]),
        .I1(resetn),
        .I2(ready),
        .I3(addr_ptr_0[18]),
        .O(\address[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[0] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[0]_i_1_n_0 ),
        .Q(address[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[10] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[10]_i_1_n_0 ),
        .Q(address[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[11] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[11]_i_1_n_0 ),
        .Q(address[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[12] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[12]_i_1_n_0 ),
        .Q(address[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[13] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[13]_i_1_n_0 ),
        .Q(address[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[14] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[14]_i_1_n_0 ),
        .Q(address[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[15] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[15]_i_1_n_0 ),
        .Q(address[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[16] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[16]_i_1_n_0 ),
        .Q(address[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[17] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[17]_i_1_n_0 ),
        .Q(address[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[18] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[18]_i_1_n_0 ),
        .Q(address[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[19] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[19]_i_1_n_0 ),
        .Q(address[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[1] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[1]_i_1_n_0 ),
        .Q(address[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[20] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[20]_i_1_n_0 ),
        .Q(address[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[21] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[21]_i_1_n_0 ),
        .Q(address[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[22] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[22]_i_2_n_0 ),
        .Q(address[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[23] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(address[23]),
        .Q(address[23]),
        .R(\address[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[24] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(address[24]),
        .Q(address[24]),
        .R(\address[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[25] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(address[25]),
        .Q(address[25]),
        .R(\address[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[26] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(address[26]),
        .Q(address[26]),
        .R(\address[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[27] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(address[27]),
        .Q(address[27]),
        .R(\address[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[28] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(address[28]),
        .Q(address[28]),
        .R(\address[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[29] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(address[29]),
        .Q(address[29]),
        .R(\address[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[2] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[2]_i_1_n_0 ),
        .Q(address[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[30] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(address[30]),
        .Q(address[30]),
        .R(\address[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[31] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(address[31]),
        .Q(address[31]),
        .R(\address[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[3] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[3]_i_1_n_0 ),
        .Q(address[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[4] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[4]_i_1_n_0 ),
        .Q(address[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[5] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[5]_i_1_n_0 ),
        .Q(address[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[6] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[6]_i_1_n_0 ),
        .Q(address[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[7] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[7]_i_1_n_0 ),
        .Q(address[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[8] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[8]_i_1_n_0 ),
        .Q(address[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \address_reg[9] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\address[9]_i_1_n_0 ),
        .Q(address[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    byte_available_1_i_1
       (.I0(byte_available),
        .I1(loaded_INST_0_i_1_n_0),
        .I2(rd_i_2_n_0),
        .I3(load),
        .I4(byte_available_1_i_2_n_0),
        .I5(byte_available_1_reg_n_0),
        .O(byte_available_1_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    byte_available_1_i_2
       (.I0(ready),
        .I1(rd),
        .O(byte_available_1_i_2_n_0));
  FDRE byte_available_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(byte_available_1_i_1_n_0),
        .Q(byte_available_1_reg_n_0),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFBFFFFF00400000)) 
    \counter[0]_i_1 
       (.I0(byte_available_1_reg_n_0),
        .I1(byte_available),
        .I2(rd),
        .I3(ready),
        .I4(resetn),
        .I5(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \counter[1]_i_1 
       (.I0(counter[0]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(counter[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[0]_i_1 
       (.I0(data[0]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(dout[0]),
        .O(\data[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[10]_i_1 
       (.I0(data[10]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[2]),
        .O(\data[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[11]_i_1 
       (.I0(data[11]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[3]),
        .O(\data[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[12]_i_1 
       (.I0(data[12]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[4]),
        .O(\data[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[13]_i_1 
       (.I0(data[13]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[5]),
        .O(\data[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[14]_i_1 
       (.I0(data[14]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[6]),
        .O(\data[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[15]_i_1 
       (.I0(data[15]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[7]),
        .O(\data[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[16]_i_1 
       (.I0(data[16]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[8]),
        .O(\data[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[17]_i_1 
       (.I0(data[17]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[9]),
        .O(\data[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[18]_i_1 
       (.I0(data[18]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[10]),
        .O(\data[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[19]_i_1 
       (.I0(data[19]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[11]),
        .O(\data[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[1]_i_1 
       (.I0(data[1]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(dout[1]),
        .O(\data[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[20]_i_1 
       (.I0(data[20]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[12]),
        .O(\data[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[21]_i_1 
       (.I0(data[21]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[13]),
        .O(\data[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[22]_i_1 
       (.I0(data[22]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[14]),
        .O(\data[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[23]_i_1 
       (.I0(data[23]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[15]),
        .O(\data[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[24]_i_1 
       (.I0(data[24]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[16]),
        .O(\data[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[25]_i_1 
       (.I0(data[25]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[17]),
        .O(\data[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[26]_i_1 
       (.I0(data[26]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[18]),
        .O(\data[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[27]_i_1 
       (.I0(data[27]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[19]),
        .O(\data[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[28]_i_1 
       (.I0(data[28]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[20]),
        .O(\data[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[29]_i_1 
       (.I0(data[29]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[21]),
        .O(\data[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[2]_i_1 
       (.I0(data[2]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(dout[2]),
        .O(\data[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[30]_i_1 
       (.I0(data[30]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[22]),
        .O(\data[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[31]_i_1 
       (.I0(data[31]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[23]),
        .O(\data[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \data[31]_i_2 
       (.I0(resetn),
        .I1(ready),
        .I2(rd),
        .I3(byte_available),
        .I4(byte_available_1_reg_n_0),
        .O(\data[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[3]_i_1 
       (.I0(data[3]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(dout[3]),
        .O(\data[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[4]_i_1 
       (.I0(data[4]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(dout[4]),
        .O(\data[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[5]_i_1 
       (.I0(data[5]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(dout[5]),
        .O(\data[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[6]_i_1 
       (.I0(data[6]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(dout[6]),
        .O(\data[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[7]_i_1 
       (.I0(data[7]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(dout[7]),
        .O(\data[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[8]_i_1 
       (.I0(data[8]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[0]),
        .O(\data[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[9]_i_1 
       (.I0(data[9]),
        .I1(\data[31]_i_2_n_0 ),
        .I2(data[1]),
        .O(\data[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[0] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[0]_i_1_n_0 ),
        .Q(data[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[10] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[10]_i_1_n_0 ),
        .Q(data[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[11] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[11]_i_1_n_0 ),
        .Q(data[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[12] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[12]_i_1_n_0 ),
        .Q(data[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[13] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[13]_i_1_n_0 ),
        .Q(data[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[14] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[14]_i_1_n_0 ),
        .Q(data[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[15] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[15]_i_1_n_0 ),
        .Q(data[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[16] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[16]_i_1_n_0 ),
        .Q(data[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[17] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[17]_i_1_n_0 ),
        .Q(data[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[18] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[18]_i_1_n_0 ),
        .Q(data[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[19] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[19]_i_1_n_0 ),
        .Q(data[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[1] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[1]_i_1_n_0 ),
        .Q(data[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[20] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[20]_i_1_n_0 ),
        .Q(data[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[21] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[21]_i_1_n_0 ),
        .Q(data[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[22] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[22]_i_1_n_0 ),
        .Q(data[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[23] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[23]_i_1_n_0 ),
        .Q(data[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[24] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[24]_i_1_n_0 ),
        .Q(data[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[25] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[25]_i_1_n_0 ),
        .Q(data[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[26] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[26]_i_1_n_0 ),
        .Q(data[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[27] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[27]_i_1_n_0 ),
        .Q(data[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[28] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[28]_i_1_n_0 ),
        .Q(data[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[29] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[29]_i_1_n_0 ),
        .Q(data[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[2] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[2]_i_1_n_0 ),
        .Q(data[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[30] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[30]_i_1_n_0 ),
        .Q(data[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[31] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[31]_i_1_n_0 ),
        .Q(data[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[3] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[3]_i_1_n_0 ),
        .Q(data[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[4] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[4]_i_1_n_0 ),
        .Q(data[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[5] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[5]_i_1_n_0 ),
        .Q(data[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[6] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[6]_i_1_n_0 ),
        .Q(data[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[7] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[7]_i_1_n_0 ),
        .Q(data[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[8] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[8]_i_1_n_0 ),
        .Q(data[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \data_reg[9] 
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(\data[9]_i_1_n_0 ),
        .Q(data[9]),
        .R(1'b0));
  design_1_sd_card_controller_0_0_clock_divider div1
       (.clk(clk),
        .clk_out_reg_0(div1_n_0));
  design_1_sd_card_controller_0_0_clock_divider_0 div2
       (.clk(clk_25mhz),
        .clk_out_reg_0(div1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    loaded_INST_0
       (.I0(loaded_INST_0_i_1_n_0),
        .I1(addr_ptr_0[26]),
        .I2(addr_ptr_0[27]),
        .I3(addr_ptr_0[24]),
        .I4(addr_ptr_0[25]),
        .O(loaded));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    loaded_INST_0_i_1
       (.I0(addr_ptr_0[30]),
        .I1(addr_ptr_0[31]),
        .I2(addr_ptr_0[28]),
        .I3(addr_ptr_0[29]),
        .I4(addr_ptr_0[23]),
        .I5(addr_ptr_0[22]),
        .O(loaded_INST_0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    m00_axi_init_axi_txn_i_1
       (.I0(signal),
        .I1(signal_1_reg_n_0),
        .O(m00_axi_init_axi_txn0));
  FDRE #(
    .INIT(1'b0)) 
    m00_axi_init_axi_txn_reg
       (.C(clk),
        .CE(1'b1),
        .D(m00_axi_init_axi_txn0),
        .Q(m00_axi_init_axi_txn),
        .R(rst));
  LUT5 #(
    .INIT(32'h000000E0)) 
    rd_i_1
       (.I0(rd),
        .I1(ready),
        .I2(load),
        .I3(rd_i_2_n_0),
        .I4(loaded_INST_0_i_1_n_0),
        .O(rd_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rd_i_2
       (.I0(addr_ptr_0[25]),
        .I1(addr_ptr_0[24]),
        .I2(addr_ptr_0[27]),
        .I3(addr_ptr_0[26]),
        .O(rd_i_2_n_0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    rd_reg
       (.C(clk),
        .CE(1'b1),
        .D(rd_i_1_n_0),
        .Q(rd),
        .R(rst));
  (* C_M_AXI_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_DATA_WIDTH = "32" *) 
  (* C_M_TRANSACTIONS_NUM = "1" *) 
  (* IDLE = "2'b00" *) 
  (* INIT_WRITE = "2'b01" *) 
  (* TRANS_NUM_BITS = "0" *) 
  design_1_sd_card_controller_0_0_sd_card_controller_v1_0_M00_AXI sd_card_controller_v1_0_M00_AXI_inst
       (.ERROR(NLW_sd_card_controller_v1_0_M00_AXI_inst_ERROR_UNCONNECTED),
        .INIT_AXI_TXN(m00_axi_init_axi_txn),
        .M_AXI_ACLK(m00_axi_aclk),
        .M_AXI_ARADDR(m00_axi_araddr),
        .M_AXI_ARESETN(m00_axi_aresetn),
        .M_AXI_ARPROT(m00_axi_arprot),
        .M_AXI_ARREADY(m00_axi_arready),
        .M_AXI_ARVALID(m00_axi_arvalid),
        .M_AXI_AWADDR(m00_axi_awaddr),
        .M_AXI_AWPROT(m00_axi_awprot),
        .M_AXI_AWREADY(m00_axi_awready),
        .M_AXI_AWVALID(m00_axi_awvalid),
        .M_AXI_BREADY(m00_axi_bready),
        .M_AXI_BRESP(m00_axi_bresp),
        .M_AXI_BVALID(m00_axi_bvalid),
        .M_AXI_RDATA(m00_axi_rdata),
        .M_AXI_RREADY(m00_axi_rready),
        .M_AXI_RRESP(m00_axi_rresp),
        .M_AXI_RVALID(m00_axi_rvalid),
        .M_AXI_WDATA(m00_axi_wdata),
        .M_AXI_WREADY(m00_axi_wready),
        .M_AXI_WSTRB(m00_axi_wstrb),
        .M_AXI_WVALID(m00_axi_wvalid),
        .address({address0_carry__6_n_5,address0_carry__6_n_6,address0_carry__6_n_7,address0_carry__5_n_4,address0_carry__5_n_5,address0_carry__5_n_6,address0_carry__5_n_7,address0_carry__4_n_4,address0_carry__4_n_5,address0_carry__4_n_6,address0_carry__4_n_7,address0_carry__3_n_4,address0_carry__3_n_5,address0_carry__3_n_6,address0_carry__3_n_7,address0_carry__2_n_4,address0_carry__2_n_5,address0_carry__2_n_6,address0_carry__2_n_7,address0_carry__1_n_4,address0_carry__1_n_5,address0_carry__1_n_6,address0_carry__1_n_7,address0_carry__0_n_4,address0_carry__0_n_5,address0_carry__0_n_6,address0_carry__0_n_7,address0_carry_n_4,address0_carry_n_5,address0_carry_n_6,address0_carry_n_7,addr_ptr_0[0]}),
        .data(data));
  (* CMD0 = "2" *) 
  (* CMD1 = "22" *) 
  (* CMD41 = "4" *) 
  (* CMD55 = "3" *) 
  (* CMD8 = "19" *) 
  (* DISPATCH = "20" *) 
  (* IDLE = "6" *) 
  (* INIT = "1" *) 
  (* POLL_CMD = "5" *) 
  (* POLL_CMD1 = "23" *) 
  (* READ_BLOCK = "7" *) 
  (* READ_BLOCK_CRC = "10" *) 
  (* READ_BLOCK_DATA = "9" *) 
  (* READ_BLOCK_WAIT = "8" *) 
  (* RECEIVE_BYTE = "13" *) 
  (* RECEIVE_BYTE_WAIT = "12" *) 
  (* RECEIVE_BYTE_WAIT_CMD8 = "21" *) 
  (* RST = "0" *) 
  (* SEND_CMD = "11" *) 
  (* WRITE_BLOCK_BYTE = "17" *) 
  (* WRITE_BLOCK_CMD = "14" *) 
  (* WRITE_BLOCK_DATA = "16" *) 
  (* WRITE_BLOCK_INIT = "15" *) 
  (* WRITE_BLOCK_WAIT = "18" *) 
  (* WRITE_DATA_SIZE = "515" *) 
  design_1_sd_card_controller_0_0_sd_controller sdcont
       (.address(address),
        .byte_available(byte_available),
        .clk(clk_25mhz),
        .cs(SD_DAT),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(dout),
        .miso(\recv_data_reg[7] ),
        .mosi(SD_CMD),
        .rd(rd),
        .ready(ready),
        .ready_for_next_byte(ready_for_next_byte),
        .reset(rst),
        .sclk(SD_SCK),
        .status(state),
        .wr(wr));
  LUT1 #(
    .INIT(2'h1)) 
    sdcont_i_1
       (.I0(resetn),
        .O(rst));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    signal_1_i_1
       (.I0(signal),
        .I1(loaded_INST_0_i_1_n_0),
        .I2(rd_i_2_n_0),
        .I3(load),
        .I4(signal_1_i_2_n_0),
        .I5(signal_1_reg_n_0),
        .O(signal_1_i_1_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    signal_1_i_2
       (.I0(rd),
        .I1(ready),
        .I2(resetn),
        .O(signal_1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    signal_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(signal_1_i_1_n_0),
        .Q(signal_1_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB888)) 
    signal_i_1
       (.I0(signal),
        .I1(\data[31]_i_2_n_0 ),
        .I2(counter[0]),
        .I3(counter[1]),
        .O(signal_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    signal_reg
       (.C(clk),
        .CE(\address[22]_i_1_n_0 ),
        .D(signal_i_1_n_0),
        .Q(signal),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    wr_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr),
        .Q(wr),
        .R(rst));
endmodule

(* C_M_AXI_ADDR_WIDTH = "32" *) (* C_M_AXI_DATA_WIDTH = "32" *) (* C_M_TRANSACTIONS_NUM = "1" *) 
(* IDLE = "2'b00" *) (* INIT_WRITE = "2'b01" *) (* ORIG_REF_NAME = "sd_card_controller_v1_0_M00_AXI" *) 
(* TRANS_NUM_BITS = "0" *) 
module design_1_sd_card_controller_0_0_sd_card_controller_v1_0_M00_AXI
   (data,
    address,
    INIT_AXI_TXN,
    ERROR,
    M_AXI_ACLK,
    M_AXI_ARESETN,
    M_AXI_AWADDR,
    M_AXI_AWPROT,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARADDR,
    M_AXI_ARPROT,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RVALID,
    M_AXI_RREADY);
  input [31:0]data;
  input [31:0]address;
  input INIT_AXI_TXN;
  output ERROR;
  input M_AXI_ACLK;
  input M_AXI_ARESETN;
  output [31:0]M_AXI_AWADDR;
  output [2:0]M_AXI_AWPROT;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [31:0]M_AXI_WDATA;
  output [3:0]M_AXI_WSTRB;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  input [1:0]M_AXI_BRESP;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
  output [31:0]M_AXI_ARADDR;
  output [2:0]M_AXI_ARPROT;
  output M_AXI_ARVALID;
  input M_AXI_ARREADY;
  input [31:0]M_AXI_RDATA;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RVALID;
  output M_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire FSM_sequential_mst_exec_state_i_1_n_0;
  wire FSM_sequential_mst_exec_state_i_2_n_0;
  wire INIT_AXI_TXN;
  wire M_AXI_ACLK;
  wire M_AXI_ARESETN;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire [31:0]address;
  wire axi_awvalid_i_1_n_0;
  wire axi_awvalid_i_2_n_0;
  wire axi_bready_i_1_n_0;
  wire axi_rready_i_1_n_0;
  wire axi_wvalid_i_1_n_0;
  wire [31:0]data;
  wire init_txn_ff;
  wire init_txn_ff2;
  wire last_write;
  wire last_write_i_1_n_0;
  wire mst_exec_state;
  wire start_single_write0;
  wire start_single_write_i_1_n_0;
  wire start_single_write_reg_n_0;
  wire write_index;
  wire \write_index[0]_i_1_n_0 ;
  wire write_issued_i_1_n_0;
  wire write_issued_reg_n_0;
  (* MARK_DEBUG *) wire writes_done;
  wire writes_done_i_1_n_0;

  assign ERROR = \<const0> ;
  assign M_AXI_ARADDR[31:0] = address;
  assign M_AXI_ARPROT[2] = \<const0> ;
  assign M_AXI_ARPROT[1] = \<const0> ;
  assign M_AXI_ARPROT[0] = \<const0> ;
  assign M_AXI_ARVALID = \<const0> ;
  assign M_AXI_AWADDR[31:0] = address;
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_WDATA[31:0] = data;
  assign M_AXI_WSTRB[3] = \<const1> ;
  assign M_AXI_WSTRB[2] = \<const1> ;
  assign M_AXI_WSTRB[1] = \<const1> ;
  assign M_AXI_WSTRB[0] = \<const1> ;
  LUT1 #(
    .INIT(2'h1)) 
    FSM_sequential_mst_exec_state_i_1
       (.I0(M_AXI_ARESETN),
        .O(FSM_sequential_mst_exec_state_i_1_n_0));
  LUT4 #(
    .INIT(16'h4474)) 
    FSM_sequential_mst_exec_state_i_2
       (.I0(writes_done),
        .I1(mst_exec_state),
        .I2(init_txn_ff),
        .I3(init_txn_ff2),
        .O(FSM_sequential_mst_exec_state_i_2_n_0));
  (* FSM_ENCODED_STATES = "IDLE:0,INIT_WRITE:1" *) 
  FDRE FSM_sequential_mst_exec_state_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(FSM_sequential_mst_exec_state_i_2_n_0),
        .Q(mst_exec_state),
        .R(FSM_sequential_mst_exec_state_i_1_n_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h4F)) 
    axi_awvalid_i_1
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(M_AXI_ARESETN),
        .O(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_awvalid_i_2
       (.I0(start_single_write_reg_n_0),
        .I1(M_AXI_AWVALID),
        .I2(M_AXI_AWREADY),
        .O(axi_awvalid_i_2_n_0));
  FDRE axi_awvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awvalid_i_2_n_0),
        .Q(M_AXI_AWVALID),
        .R(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_bready_i_1
       (.I0(M_AXI_BVALID),
        .I1(M_AXI_BREADY),
        .O(axi_bready_i_1_n_0));
  FDRE axi_bready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bready_i_1_n_0),
        .Q(M_AXI_BREADY),
        .R(axi_awvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    axi_rready_i_1
       (.I0(M_AXI_RREADY),
        .I1(M_AXI_RVALID),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(M_AXI_RREADY),
        .R(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_wvalid_i_1
       (.I0(start_single_write_reg_n_0),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(M_AXI_WVALID),
        .R(axi_awvalid_i_1_n_0));
  FDRE init_txn_ff2_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(init_txn_ff),
        .Q(init_txn_ff2),
        .R(FSM_sequential_mst_exec_state_i_1_n_0));
  FDRE init_txn_ff_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(INIT_AXI_TXN),
        .Q(init_txn_ff),
        .R(FSM_sequential_mst_exec_state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    last_write_i_1
       (.I0(M_AXI_AWREADY),
        .I1(write_index),
        .I2(last_write),
        .O(last_write_i_1_n_0));
  FDRE last_write_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(last_write_i_1_n_0),
        .Q(last_write),
        .R(axi_awvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFD2020)) 
    start_single_write_i_1
       (.I0(mst_exec_state),
        .I1(writes_done),
        .I2(start_single_write0),
        .I3(M_AXI_BREADY),
        .I4(start_single_write_reg_n_0),
        .O(start_single_write_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    start_single_write_i_2
       (.I0(write_issued_reg_n_0),
        .I1(M_AXI_AWVALID),
        .I2(M_AXI_BVALID),
        .I3(M_AXI_WVALID),
        .I4(start_single_write_reg_n_0),
        .I5(last_write),
        .O(start_single_write0));
  FDRE start_single_write_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(start_single_write_i_1_n_0),
        .Q(start_single_write_reg_n_0),
        .R(FSM_sequential_mst_exec_state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_index[0]_i_1 
       (.I0(start_single_write_reg_n_0),
        .I1(write_index),
        .O(\write_index[0]_i_1_n_0 ));
  FDRE \write_index_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\write_index[0]_i_1_n_0 ),
        .Q(write_index),
        .R(axi_awvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'hFDFF2020)) 
    write_issued_i_1
       (.I0(mst_exec_state),
        .I1(writes_done),
        .I2(start_single_write0),
        .I3(M_AXI_BREADY),
        .I4(write_issued_reg_n_0),
        .O(write_issued_i_1_n_0));
  FDRE write_issued_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(write_issued_i_1_n_0),
        .Q(write_issued_reg_n_0),
        .R(FSM_sequential_mst_exec_state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    writes_done_i_1
       (.I0(M_AXI_BREADY),
        .I1(M_AXI_BVALID),
        .I2(last_write),
        .I3(writes_done),
        .O(writes_done_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE writes_done_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(axi_awvalid_i_1_n_0));
endmodule

(* CMD0 = "2" *) (* CMD1 = "22" *) (* CMD41 = "4" *) 
(* CMD55 = "3" *) (* CMD8 = "19" *) (* DISPATCH = "20" *) 
(* IDLE = "6" *) (* INIT = "1" *) (* ORIG_REF_NAME = "sd_controller" *) 
(* POLL_CMD = "5" *) (* POLL_CMD1 = "23" *) (* READ_BLOCK = "7" *) 
(* READ_BLOCK_CRC = "10" *) (* READ_BLOCK_DATA = "9" *) (* READ_BLOCK_WAIT = "8" *) 
(* RECEIVE_BYTE = "13" *) (* RECEIVE_BYTE_WAIT = "12" *) (* RECEIVE_BYTE_WAIT_CMD8 = "21" *) 
(* RST = "0" *) (* SEND_CMD = "11" *) (* WRITE_BLOCK_BYTE = "17" *) 
(* WRITE_BLOCK_CMD = "14" *) (* WRITE_BLOCK_DATA = "16" *) (* WRITE_BLOCK_INIT = "15" *) 
(* WRITE_BLOCK_WAIT = "18" *) (* WRITE_DATA_SIZE = "515" *) 
module design_1_sd_card_controller_0_0_sd_controller
   (cs,
    mosi,
    miso,
    sclk,
    rd,
    dout,
    byte_available,
    wr,
    din,
    ready_for_next_byte,
    reset,
    ready,
    address,
    clk,
    status);
  output cs;
  output mosi;
  input miso;
  output sclk;
  input rd;
  output [7:0]dout;
  output byte_available;
  input wr;
  input [7:0]din;
  output ready_for_next_byte;
  input reset;
  output ready;
  input [31:0]address;
  input clk;
  output [4:0]status;

  wire [31:0]address;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[1]_i_2_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[2]_i_2_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter[4]_i_1_n_0 ;
  wire \bit_counter[4]_i_2_n_0 ;
  wire \bit_counter[5]_i_1_n_0 ;
  wire \bit_counter[5]_i_2_n_0 ;
  wire \bit_counter[6]_i_1_n_0 ;
  wire \bit_counter[7]_i_10_n_0 ;
  wire \bit_counter[7]_i_11_n_0 ;
  wire \bit_counter[7]_i_12_n_0 ;
  wire \bit_counter[7]_i_13_n_0 ;
  wire \bit_counter[7]_i_14_n_0 ;
  wire \bit_counter[7]_i_1_n_0 ;
  wire \bit_counter[7]_i_2_n_0 ;
  wire \bit_counter[7]_i_3_n_0 ;
  wire \bit_counter[7]_i_4_n_0 ;
  wire \bit_counter[7]_i_5_n_0 ;
  wire \bit_counter[7]_i_6_n_0 ;
  wire \bit_counter[7]_i_7_n_0 ;
  wire \bit_counter[7]_i_8_n_0 ;
  wire \bit_counter[7]_i_9_n_0 ;
  wire \bit_counter[8]_i_1_n_0 ;
  wire \bit_counter[8]_i_2_n_0 ;
  wire \bit_counter[9]_i_1_n_0 ;
  wire \bit_counter[9]_i_2_n_0 ;
  wire \bit_counter[9]_i_3_n_0 ;
  wire \bit_counter[9]_i_4_n_0 ;
  wire \bit_counter[9]_i_5_n_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \bit_counter_reg_n_0_[4] ;
  wire \bit_counter_reg_n_0_[5] ;
  wire \bit_counter_reg_n_0_[6] ;
  wire \bit_counter_reg_n_0_[7] ;
  wire \bit_counter_reg_n_0_[8] ;
  wire \bit_counter_reg_n_0_[9] ;
  wire \boot_counter[0]_i_1_n_0 ;
  wire \boot_counter[0]_i_3_n_0 ;
  wire \boot_counter[0]_i_4_n_0 ;
  wire \boot_counter[0]_i_5_n_0 ;
  wire \boot_counter[0]_i_6_n_0 ;
  wire \boot_counter[12]_i_2_n_0 ;
  wire \boot_counter[12]_i_3_n_0 ;
  wire \boot_counter[12]_i_4_n_0 ;
  wire \boot_counter[12]_i_5_n_0 ;
  wire \boot_counter[16]_i_2_n_0 ;
  wire \boot_counter[16]_i_3_n_0 ;
  wire \boot_counter[16]_i_4_n_0 ;
  wire \boot_counter[16]_i_5_n_0 ;
  wire \boot_counter[20]_i_2_n_0 ;
  wire \boot_counter[20]_i_3_n_0 ;
  wire \boot_counter[20]_i_4_n_0 ;
  wire \boot_counter[20]_i_5_n_0 ;
  wire \boot_counter[24]_i_2_n_0 ;
  wire \boot_counter[24]_i_3_n_0 ;
  wire \boot_counter[24]_i_4_n_0 ;
  wire \boot_counter[4]_i_2_n_0 ;
  wire \boot_counter[4]_i_3_n_0 ;
  wire \boot_counter[4]_i_4_n_0 ;
  wire \boot_counter[4]_i_5_n_0 ;
  wire \boot_counter[8]_i_2_n_0 ;
  wire \boot_counter[8]_i_3_n_0 ;
  wire \boot_counter[8]_i_4_n_0 ;
  wire \boot_counter[8]_i_5_n_0 ;
  wire [26:0]boot_counter_reg;
  wire \boot_counter_reg[0]_i_2_n_0 ;
  wire \boot_counter_reg[0]_i_2_n_1 ;
  wire \boot_counter_reg[0]_i_2_n_2 ;
  wire \boot_counter_reg[0]_i_2_n_3 ;
  wire \boot_counter_reg[0]_i_2_n_4 ;
  wire \boot_counter_reg[0]_i_2_n_5 ;
  wire \boot_counter_reg[0]_i_2_n_6 ;
  wire \boot_counter_reg[0]_i_2_n_7 ;
  wire \boot_counter_reg[12]_i_1_n_0 ;
  wire \boot_counter_reg[12]_i_1_n_1 ;
  wire \boot_counter_reg[12]_i_1_n_2 ;
  wire \boot_counter_reg[12]_i_1_n_3 ;
  wire \boot_counter_reg[12]_i_1_n_4 ;
  wire \boot_counter_reg[12]_i_1_n_5 ;
  wire \boot_counter_reg[12]_i_1_n_6 ;
  wire \boot_counter_reg[12]_i_1_n_7 ;
  wire \boot_counter_reg[16]_i_1_n_0 ;
  wire \boot_counter_reg[16]_i_1_n_1 ;
  wire \boot_counter_reg[16]_i_1_n_2 ;
  wire \boot_counter_reg[16]_i_1_n_3 ;
  wire \boot_counter_reg[16]_i_1_n_4 ;
  wire \boot_counter_reg[16]_i_1_n_5 ;
  wire \boot_counter_reg[16]_i_1_n_6 ;
  wire \boot_counter_reg[16]_i_1_n_7 ;
  wire \boot_counter_reg[20]_i_1_n_0 ;
  wire \boot_counter_reg[20]_i_1_n_1 ;
  wire \boot_counter_reg[20]_i_1_n_2 ;
  wire \boot_counter_reg[20]_i_1_n_3 ;
  wire \boot_counter_reg[20]_i_1_n_4 ;
  wire \boot_counter_reg[20]_i_1_n_5 ;
  wire \boot_counter_reg[20]_i_1_n_6 ;
  wire \boot_counter_reg[20]_i_1_n_7 ;
  wire \boot_counter_reg[24]_i_1_n_2 ;
  wire \boot_counter_reg[24]_i_1_n_3 ;
  wire \boot_counter_reg[24]_i_1_n_5 ;
  wire \boot_counter_reg[24]_i_1_n_6 ;
  wire \boot_counter_reg[24]_i_1_n_7 ;
  wire \boot_counter_reg[4]_i_1_n_0 ;
  wire \boot_counter_reg[4]_i_1_n_1 ;
  wire \boot_counter_reg[4]_i_1_n_2 ;
  wire \boot_counter_reg[4]_i_1_n_3 ;
  wire \boot_counter_reg[4]_i_1_n_4 ;
  wire \boot_counter_reg[4]_i_1_n_5 ;
  wire \boot_counter_reg[4]_i_1_n_6 ;
  wire \boot_counter_reg[4]_i_1_n_7 ;
  wire \boot_counter_reg[8]_i_1_n_0 ;
  wire \boot_counter_reg[8]_i_1_n_1 ;
  wire \boot_counter_reg[8]_i_1_n_2 ;
  wire \boot_counter_reg[8]_i_1_n_3 ;
  wire \boot_counter_reg[8]_i_1_n_4 ;
  wire \boot_counter_reg[8]_i_1_n_5 ;
  wire \boot_counter_reg[8]_i_1_n_6 ;
  wire \boot_counter_reg[8]_i_1_n_7 ;
  wire byte_available;
  wire byte_available_i_1_n_0;
  wire byte_available_i_2_n_0;
  wire byte_available_i_3_n_0;
  wire \byte_counter[0]_i_1_n_0 ;
  wire \byte_counter[1]_i_1_n_0 ;
  wire \byte_counter[2]_i_1_n_0 ;
  wire \byte_counter[3]_i_1_n_0 ;
  wire \byte_counter[4]_i_1_n_0 ;
  wire \byte_counter[5]_i_1_n_0 ;
  wire \byte_counter[6]_i_1_n_0 ;
  wire \byte_counter[7]_i_1_n_0 ;
  wire \byte_counter[7]_i_2_n_0 ;
  wire \byte_counter[7]_i_3_n_0 ;
  wire \byte_counter[8]_i_10_n_0 ;
  wire \byte_counter[8]_i_11_n_0 ;
  wire \byte_counter[8]_i_12_n_0 ;
  wire \byte_counter[8]_i_13_n_0 ;
  wire \byte_counter[8]_i_1_n_0 ;
  wire \byte_counter[8]_i_2_n_0 ;
  wire \byte_counter[8]_i_3_n_0 ;
  wire \byte_counter[8]_i_4_n_0 ;
  wire \byte_counter[8]_i_5_n_0 ;
  wire \byte_counter[8]_i_6_n_0 ;
  wire \byte_counter[8]_i_7_n_0 ;
  wire \byte_counter[8]_i_8_n_0 ;
  wire \byte_counter[8]_i_9_n_0 ;
  wire \byte_counter[9]_i_1_n_0 ;
  wire \byte_counter_reg_n_0_[0] ;
  wire \byte_counter_reg_n_0_[1] ;
  wire \byte_counter_reg_n_0_[2] ;
  wire \byte_counter_reg_n_0_[3] ;
  wire \byte_counter_reg_n_0_[4] ;
  wire \byte_counter_reg_n_0_[5] ;
  wire \byte_counter_reg_n_0_[6] ;
  wire \byte_counter_reg_n_0_[7] ;
  wire \byte_counter_reg_n_0_[8] ;
  wire \byte_counter_reg_n_0_[9] ;
  wire clk;
  wire cmd_mode_i_1_n_0;
  wire cmd_mode_i_2_n_0;
  wire cmd_mode_i_3_n_0;
  wire cmd_mode_i_4_n_0;
  wire cmd_mode_i_5_n_0;
  wire cmd_mode_reg_n_0;
  wire [45:1]cmd_out;
  wire \cmd_out[47]_i_1_n_0 ;
  wire \cmd_out[47]_i_2_n_0 ;
  wire \cmd_out[47]_i_3_n_0 ;
  wire \cmd_out[47]_i_4_n_0 ;
  wire \cmd_out[47]_i_5_n_0 ;
  wire \cmd_out[55]_i_1_n_0 ;
  wire \cmd_out_reg_n_0_[10] ;
  wire \cmd_out_reg_n_0_[11] ;
  wire \cmd_out_reg_n_0_[12] ;
  wire \cmd_out_reg_n_0_[13] ;
  wire \cmd_out_reg_n_0_[14] ;
  wire \cmd_out_reg_n_0_[15] ;
  wire \cmd_out_reg_n_0_[16] ;
  wire \cmd_out_reg_n_0_[17] ;
  wire \cmd_out_reg_n_0_[18] ;
  wire \cmd_out_reg_n_0_[19] ;
  wire \cmd_out_reg_n_0_[1] ;
  wire \cmd_out_reg_n_0_[20] ;
  wire \cmd_out_reg_n_0_[21] ;
  wire \cmd_out_reg_n_0_[22] ;
  wire \cmd_out_reg_n_0_[23] ;
  wire \cmd_out_reg_n_0_[24] ;
  wire \cmd_out_reg_n_0_[25] ;
  wire \cmd_out_reg_n_0_[26] ;
  wire \cmd_out_reg_n_0_[27] ;
  wire \cmd_out_reg_n_0_[28] ;
  wire \cmd_out_reg_n_0_[29] ;
  wire \cmd_out_reg_n_0_[2] ;
  wire \cmd_out_reg_n_0_[30] ;
  wire \cmd_out_reg_n_0_[31] ;
  wire \cmd_out_reg_n_0_[32] ;
  wire \cmd_out_reg_n_0_[33] ;
  wire \cmd_out_reg_n_0_[34] ;
  wire \cmd_out_reg_n_0_[35] ;
  wire \cmd_out_reg_n_0_[36] ;
  wire \cmd_out_reg_n_0_[37] ;
  wire \cmd_out_reg_n_0_[38] ;
  wire \cmd_out_reg_n_0_[39] ;
  wire \cmd_out_reg_n_0_[3] ;
  wire \cmd_out_reg_n_0_[40] ;
  wire \cmd_out_reg_n_0_[41] ;
  wire \cmd_out_reg_n_0_[42] ;
  wire \cmd_out_reg_n_0_[43] ;
  wire \cmd_out_reg_n_0_[44] ;
  wire \cmd_out_reg_n_0_[45] ;
  wire \cmd_out_reg_n_0_[46] ;
  wire \cmd_out_reg_n_0_[47] ;
  wire \cmd_out_reg_n_0_[48] ;
  wire \cmd_out_reg_n_0_[49] ;
  wire \cmd_out_reg_n_0_[4] ;
  wire \cmd_out_reg_n_0_[50] ;
  wire \cmd_out_reg_n_0_[51] ;
  wire \cmd_out_reg_n_0_[52] ;
  wire \cmd_out_reg_n_0_[53] ;
  wire \cmd_out_reg_n_0_[54] ;
  wire \cmd_out_reg_n_0_[55] ;
  wire \cmd_out_reg_n_0_[5] ;
  wire \cmd_out_reg_n_0_[6] ;
  wire \cmd_out_reg_n_0_[7] ;
  wire \cmd_out_reg_n_0_[8] ;
  wire \cmd_out_reg_n_0_[9] ;
  wire cs;
  wire cs_i_10_n_0;
  wire cs_i_11_n_0;
  wire cs_i_12_n_0;
  wire cs_i_1_n_0;
  wire cs_i_2_n_0;
  wire cs_i_3_n_0;
  wire cs_i_4_n_0;
  wire cs_i_5_n_0;
  wire cs_i_6_n_0;
  wire cs_i_7_n_0;
  wire cs_i_8_n_0;
  wire cs_i_9_n_0;
  wire \data_sig[0]_i_1_n_0 ;
  wire \data_sig[1]_i_1_n_0 ;
  wire \data_sig[2]_i_1_n_0 ;
  wire \data_sig[3]_i_1_n_0 ;
  wire \data_sig[4]_i_1_n_0 ;
  wire \data_sig[5]_i_1_n_0 ;
  wire \data_sig[6]_i_1_n_0 ;
  wire \data_sig[7]_i_1_n_0 ;
  wire \data_sig[7]_i_2_n_0 ;
  wire \data_sig[7]_i_3_n_0 ;
  wire \data_sig[7]_i_4_n_0 ;
  wire \data_sig[7]_i_5_n_0 ;
  wire \data_sig[7]_i_6_n_0 ;
  wire \data_sig[7]_i_7_n_0 ;
  wire \data_sig_reg_n_0_[0] ;
  wire \data_sig_reg_n_0_[1] ;
  wire \data_sig_reg_n_0_[2] ;
  wire \data_sig_reg_n_0_[3] ;
  wire \data_sig_reg_n_0_[4] ;
  wire \data_sig_reg_n_0_[5] ;
  wire \data_sig_reg_n_0_[6] ;
  wire \data_sig_reg_n_0_[7] ;
  wire [7:0]din;
  wire [7:0]dout;
  wire \dout[7]_i_1_n_0 ;
  wire miso;
  wire mosi;
  wire [9:0]p_0_in__0;
  wire rd;
  wire ready;
  wire ready_for_next_byte;
  wire ready_for_next_byte_i_10_n_0;
  wire ready_for_next_byte_i_1_n_0;
  wire ready_for_next_byte_i_2_n_0;
  wire ready_for_next_byte_i_3_n_0;
  wire ready_for_next_byte_i_4_n_0;
  wire ready_for_next_byte_i_5_n_0;
  wire ready_for_next_byte_i_6_n_0;
  wire ready_for_next_byte_i_7_n_0;
  wire ready_for_next_byte_i_8_n_0;
  wire ready_for_next_byte_i_9_n_0;
  (* MARK_DEBUG *) wire [7:0]recv_data;
  wire \recv_data[0]_i_1_n_0 ;
  wire \recv_data[1]_i_1_n_0 ;
  wire \recv_data[1]_i_2_n_0 ;
  wire \recv_data[1]_i_3_n_0 ;
  wire \recv_data[1]_i_4_n_0 ;
  wire \recv_data[2]_i_1_n_0 ;
  wire \recv_data[3]_i_1_n_0 ;
  wire \recv_data[4]_i_1_n_0 ;
  wire \recv_data[5]_i_1_n_0 ;
  wire \recv_data[6]_i_1_n_0 ;
  wire \recv_data[6]_i_2_n_0 ;
  wire \recv_data[6]_i_3_n_0 ;
  wire \recv_data[7]_i_1_n_0 ;
  wire \recv_data[7]_i_2_n_0 ;
  wire \recv_data[7]_i_3_n_0 ;
  wire reset;
  wire \return_state[0]_i_1_n_0 ;
  wire \return_state[1]_i_1_n_0 ;
  wire \return_state[2]_i_1_n_0 ;
  wire \return_state[3]_i_1_n_0 ;
  wire \return_state[4]_i_1_n_0 ;
  wire \return_state[4]_i_2_n_0 ;
  wire \return_state[4]_i_3_n_0 ;
  wire \return_state[4]_i_4_n_0 ;
  wire \return_state[4]_i_5_n_0 ;
  wire \return_state_reg_n_0_[0] ;
  wire \return_state_reg_n_0_[1] ;
  wire \return_state_reg_n_0_[2] ;
  wire \return_state_reg_n_0_[3] ;
  wire \return_state_reg_n_0_[4] ;
  wire sclk;
  wire sclk_sig_i_1_n_0;
  wire sclk_sig_i_2_n_0;
  wire sclk_sig_i_3_n_0;
  wire sclk_sig_i_4_n_0;
  wire sclk_sig_i_5_n_0;
  wire sclk_sig_i_6_n_0;
  wire sclk_sig_i_7_n_0;
  wire sclk_sig_i_8_n_0;
  wire sclk_sig_i_9_n_0;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[4]_i_10_n_0 ;
  wire \state[4]_i_11_n_0 ;
  wire \state[4]_i_12_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_5_n_0 ;
  wire \state[4]_i_6_n_0 ;
  wire \state[4]_i_7_n_0 ;
  wire \state[4]_i_8_n_0 ;
  wire \state[4]_i_9_n_0 ;
  wire [4:0]status;
  (* MARK_DEBUG *) wire [7:0]version;
  wire \version[0]_i_1_n_0 ;
  wire \version[7]_i_1_n_0 ;
  wire \version[7]_i_2_n_0 ;
  wire wr;
  wire [3:2]\NLW_boot_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_boot_counter_reg[24]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h9AFFFBFF9ABEFBBE)) 
    \bit_counter[0]_i_1 
       (.I0(status[1]),
        .I1(status[2]),
        .I2(status[3]),
        .I3(status[0]),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(status[4]),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF3C3CFFFEFEFEFE)) 
    \bit_counter[1]_i_1 
       (.I0(status[4]),
        .I1(status[3]),
        .I2(\bit_counter[1]_i_2_n_0 ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[1] ),
        .I5(status[0]),
        .O(\bit_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bit_counter[1]_i_2 
       (.I0(status[2]),
        .I1(status[1]),
        .O(\bit_counter[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFA900)) 
    \bit_counter[2]_i_1 
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(status[0]),
        .I4(\bit_counter[2]_i_2_n_0 ),
        .O(\bit_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h1E1EFFFE)) 
    \bit_counter[2]_i_2 
       (.I0(status[2]),
        .I1(status[1]),
        .I2(status[3]),
        .I3(status[4]),
        .I4(status[0]),
        .O(\bit_counter[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \bit_counter[3]_i_1 
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF4FFF4F40044F04)) 
    \bit_counter[4]_i_1 
       (.I0(\bit_counter[4]_i_2_n_0 ),
        .I1(status[0]),
        .I2(status[3]),
        .I3(status[2]),
        .I4(status[4]),
        .I5(status[1]),
        .O(\bit_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h55555556)) 
    \bit_counter[4]_i_2 
       (.I0(\bit_counter_reg_n_0_[4] ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .O(\bit_counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD4CDD4CDC0CCC0FF)) 
    \bit_counter[5]_i_1 
       (.I0(\bit_counter[5]_i_2_n_0 ),
        .I1(status[1]),
        .I2(status[2]),
        .I3(status[3]),
        .I4(status[4]),
        .I5(status[0]),
        .O(\bit_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \bit_counter[5]_i_2 
       (.I0(\bit_counter_reg_n_0_[5] ),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(\bit_counter_reg_n_0_[4] ),
        .O(\bit_counter[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \bit_counter[6]_i_1 
       (.I0(\bit_counter_reg_n_0_[6] ),
        .I1(\bit_counter_reg_n_0_[4] ),
        .I2(\bit_counter[8]_i_2_n_0 ),
        .I3(\bit_counter_reg_n_0_[5] ),
        .O(\bit_counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF51)) 
    \bit_counter[7]_i_1 
       (.I0(\bit_counter[7]_i_3_n_0 ),
        .I1(\bit_counter[7]_i_4_n_0 ),
        .I2(\bit_counter[7]_i_5_n_0 ),
        .I3(\bit_counter[7]_i_6_n_0 ),
        .I4(reset),
        .I5(\bit_counter[7]_i_7_n_0 ),
        .O(\bit_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA802)) 
    \bit_counter[7]_i_10 
       (.I0(status[0]),
        .I1(status[2]),
        .I2(status[1]),
        .I3(status[3]),
        .O(\bit_counter[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bit_counter[7]_i_11 
       (.I0(status[4]),
        .I1(status[3]),
        .O(\bit_counter[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0220020002000200)) 
    \bit_counter[7]_i_12 
       (.I0(status[2]),
        .I1(status[3]),
        .I2(status[0]),
        .I3(status[1]),
        .I4(sclk),
        .I5(miso),
        .O(\bit_counter[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \bit_counter[7]_i_13 
       (.I0(status[0]),
        .I1(\byte_counter_reg_n_0_[8] ),
        .I2(\byte_counter_reg_n_0_[9] ),
        .I3(\byte_counter[7]_i_3_n_0 ),
        .I4(\state[4]_i_12_n_0 ),
        .I5(\state[4]_i_9_n_0 ),
        .O(\bit_counter[7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bit_counter[7]_i_14 
       (.I0(reset),
        .I1(status[4]),
        .O(\bit_counter[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1F11F11111111)) 
    \bit_counter[7]_i_2 
       (.I0(\bit_counter[7]_i_8_n_0 ),
        .I1(status[0]),
        .I2(\bit_counter_reg_n_0_[7] ),
        .I3(\bit_counter[7]_i_9_n_0 ),
        .I4(\bit_counter_reg_n_0_[6] ),
        .I5(\bit_counter[7]_i_10_n_0 ),
        .O(\bit_counter[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFF28)) 
    \bit_counter[7]_i_3 
       (.I0(status[2]),
        .I1(status[0]),
        .I2(status[1]),
        .I3(status[4]),
        .I4(status[3]),
        .O(\bit_counter[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \bit_counter[7]_i_4 
       (.I0(cs_i_8_n_0),
        .I1(cs_i_7_n_0),
        .I2(sclk_sig_i_8_n_0),
        .I3(status[0]),
        .I4(status[1]),
        .I5(status[2]),
        .O(\bit_counter[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEEE)) 
    \bit_counter[7]_i_5 
       (.I0(status[2]),
        .I1(status[1]),
        .I2(status[0]),
        .I3(\bit_counter[9]_i_5_n_0 ),
        .I4(\bit_counter_reg_n_0_[8] ),
        .I5(\bit_counter_reg_n_0_[9] ),
        .O(\bit_counter[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000AAFFFCC)) 
    \bit_counter[7]_i_6 
       (.I0(\data_sig[7]_i_3_n_0 ),
        .I1(\recv_data[1]_i_2_n_0 ),
        .I2(status[2]),
        .I3(status[1]),
        .I4(status[0]),
        .I5(\bit_counter[7]_i_11_n_0 ),
        .O(\bit_counter[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AFAEAAAF)) 
    \bit_counter[7]_i_7 
       (.I0(\bit_counter[7]_i_12_n_0 ),
        .I1(\data_sig[7]_i_3_n_0 ),
        .I2(\bit_counter[7]_i_13_n_0 ),
        .I3(status[1]),
        .I4(status[0]),
        .I5(\bit_counter[7]_i_14_n_0 ),
        .O(\bit_counter[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[7]_i_8 
       (.I0(status[3]),
        .I1(status[2]),
        .I2(status[4]),
        .I3(status[1]),
        .O(\bit_counter[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bit_counter[7]_i_9 
       (.I0(\bit_counter_reg_n_0_[5] ),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(\bit_counter_reg_n_0_[4] ),
        .O(\bit_counter[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \bit_counter[8]_i_1 
       (.I0(\bit_counter_reg_n_0_[8] ),
        .I1(\bit_counter_reg_n_0_[5] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter_reg_n_0_[7] ),
        .I4(\bit_counter_reg_n_0_[6] ),
        .I5(\bit_counter[8]_i_2_n_0 ),
        .O(\bit_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_counter[8]_i_2 
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .O(\bit_counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F080F0F)) 
    \bit_counter[9]_i_1 
       (.I0(\bit_counter[9]_i_3_n_0 ),
        .I1(status[4]),
        .I2(reset),
        .I3(\bit_counter[7]_i_6_n_0 ),
        .I4(\bit_counter[9]_i_4_n_0 ),
        .I5(\bit_counter[7]_i_10_n_0 ),
        .O(\bit_counter[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \bit_counter[9]_i_2 
       (.I0(\bit_counter_reg_n_0_[9] ),
        .I1(\bit_counter[9]_i_5_n_0 ),
        .I2(\bit_counter_reg_n_0_[8] ),
        .O(\bit_counter[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33012201)) 
    \bit_counter[9]_i_3 
       (.I0(status[1]),
        .I1(\state[4]_i_9_n_0 ),
        .I2(\state[4]_i_10_n_0 ),
        .I3(status[0]),
        .I4(\data_sig[7]_i_3_n_0 ),
        .I5(\bit_counter[7]_i_12_n_0 ),
        .O(\bit_counter[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454501)) 
    \bit_counter[9]_i_4 
       (.I0(\bit_counter[1]_i_2_n_0 ),
        .I1(cs_i_4_n_0),
        .I2(cs_i_5_n_0),
        .I3(\byte_counter[8]_i_11_n_0 ),
        .I4(sclk_sig_i_8_n_0),
        .I5(\bit_counter[7]_i_3_n_0 ),
        .O(\bit_counter[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bit_counter[9]_i_5 
       (.I0(\bit_counter[8]_i_2_n_0 ),
        .I1(\bit_counter_reg_n_0_[6] ),
        .I2(\bit_counter_reg_n_0_[7] ),
        .I3(\bit_counter_reg_n_0_[4] ),
        .I4(\bit_counter_reg_n_0_[5] ),
        .O(\bit_counter[9]_i_5_n_0 ));
  FDRE \bit_counter_reg[0] 
       (.C(clk),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bit_counter_reg[1] 
       (.C(clk),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bit_counter_reg[2] 
       (.C(clk),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bit_counter_reg[3] 
       (.C(clk),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[3] ),
        .R(\bit_counter[9]_i_1_n_0 ));
  FDRE \bit_counter_reg[4] 
       (.C(clk),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[4]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \bit_counter_reg[5] 
       (.C(clk),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[5]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \bit_counter_reg[6] 
       (.C(clk),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[6]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[6] ),
        .R(\bit_counter[9]_i_1_n_0 ));
  FDRE \bit_counter_reg[7] 
       (.C(clk),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[7]_i_2_n_0 ),
        .Q(\bit_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \bit_counter_reg[8] 
       (.C(clk),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[8]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[8] ),
        .R(\bit_counter[9]_i_1_n_0 ));
  FDRE \bit_counter_reg[9] 
       (.C(clk),
        .CE(\bit_counter[7]_i_1_n_0 ),
        .D(\bit_counter[9]_i_2_n_0 ),
        .Q(\bit_counter_reg_n_0_[9] ),
        .R(\bit_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \boot_counter[0]_i_1 
       (.I0(cs_i_3_n_0),
        .I1(status[3]),
        .I2(status[2]),
        .I3(status[4]),
        .I4(status[1]),
        .I5(status[0]),
        .O(\boot_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[0]_i_3 
       (.I0(boot_counter_reg[3]),
        .O(\boot_counter[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[0]_i_4 
       (.I0(boot_counter_reg[2]),
        .O(\boot_counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[0]_i_5 
       (.I0(boot_counter_reg[1]),
        .O(\boot_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[0]_i_6 
       (.I0(boot_counter_reg[0]),
        .O(\boot_counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[12]_i_2 
       (.I0(boot_counter_reg[15]),
        .O(\boot_counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[12]_i_3 
       (.I0(boot_counter_reg[14]),
        .O(\boot_counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[12]_i_4 
       (.I0(boot_counter_reg[13]),
        .O(\boot_counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[12]_i_5 
       (.I0(boot_counter_reg[12]),
        .O(\boot_counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[16]_i_2 
       (.I0(boot_counter_reg[19]),
        .O(\boot_counter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[16]_i_3 
       (.I0(boot_counter_reg[18]),
        .O(\boot_counter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[16]_i_4 
       (.I0(boot_counter_reg[17]),
        .O(\boot_counter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[16]_i_5 
       (.I0(boot_counter_reg[16]),
        .O(\boot_counter[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[20]_i_2 
       (.I0(boot_counter_reg[23]),
        .O(\boot_counter[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[20]_i_3 
       (.I0(boot_counter_reg[22]),
        .O(\boot_counter[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[20]_i_4 
       (.I0(boot_counter_reg[21]),
        .O(\boot_counter[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[20]_i_5 
       (.I0(boot_counter_reg[20]),
        .O(\boot_counter[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[24]_i_2 
       (.I0(boot_counter_reg[26]),
        .O(\boot_counter[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[24]_i_3 
       (.I0(boot_counter_reg[25]),
        .O(\boot_counter[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[24]_i_4 
       (.I0(boot_counter_reg[24]),
        .O(\boot_counter[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[4]_i_2 
       (.I0(boot_counter_reg[7]),
        .O(\boot_counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[4]_i_3 
       (.I0(boot_counter_reg[6]),
        .O(\boot_counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[4]_i_4 
       (.I0(boot_counter_reg[5]),
        .O(\boot_counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[4]_i_5 
       (.I0(boot_counter_reg[4]),
        .O(\boot_counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[8]_i_2 
       (.I0(boot_counter_reg[11]),
        .O(\boot_counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[8]_i_3 
       (.I0(boot_counter_reg[10]),
        .O(\boot_counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[8]_i_4 
       (.I0(boot_counter_reg[9]),
        .O(\boot_counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_counter[8]_i_5 
       (.I0(boot_counter_reg[8]),
        .O(\boot_counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[0] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[0]_i_2_n_7 ),
        .Q(boot_counter_reg[0]),
        .R(reset));
  CARRY4 \boot_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\boot_counter_reg[0]_i_2_n_0 ,\boot_counter_reg[0]_i_2_n_1 ,\boot_counter_reg[0]_i_2_n_2 ,\boot_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\boot_counter_reg[0]_i_2_n_4 ,\boot_counter_reg[0]_i_2_n_5 ,\boot_counter_reg[0]_i_2_n_6 ,\boot_counter_reg[0]_i_2_n_7 }),
        .S({\boot_counter[0]_i_3_n_0 ,\boot_counter[0]_i_4_n_0 ,\boot_counter[0]_i_5_n_0 ,\boot_counter[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[10] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[8]_i_1_n_5 ),
        .Q(boot_counter_reg[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[11] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[8]_i_1_n_4 ),
        .Q(boot_counter_reg[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[12] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[12]_i_1_n_7 ),
        .Q(boot_counter_reg[12]),
        .R(reset));
  CARRY4 \boot_counter_reg[12]_i_1 
       (.CI(\boot_counter_reg[8]_i_1_n_0 ),
        .CO({\boot_counter_reg[12]_i_1_n_0 ,\boot_counter_reg[12]_i_1_n_1 ,\boot_counter_reg[12]_i_1_n_2 ,\boot_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\boot_counter_reg[12]_i_1_n_4 ,\boot_counter_reg[12]_i_1_n_5 ,\boot_counter_reg[12]_i_1_n_6 ,\boot_counter_reg[12]_i_1_n_7 }),
        .S({\boot_counter[12]_i_2_n_0 ,\boot_counter[12]_i_3_n_0 ,\boot_counter[12]_i_4_n_0 ,\boot_counter[12]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[13] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[12]_i_1_n_6 ),
        .Q(boot_counter_reg[13]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[14] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[12]_i_1_n_5 ),
        .Q(boot_counter_reg[14]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[15] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[12]_i_1_n_4 ),
        .Q(boot_counter_reg[15]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[16] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[16]_i_1_n_7 ),
        .Q(boot_counter_reg[16]),
        .S(reset));
  CARRY4 \boot_counter_reg[16]_i_1 
       (.CI(\boot_counter_reg[12]_i_1_n_0 ),
        .CO({\boot_counter_reg[16]_i_1_n_0 ,\boot_counter_reg[16]_i_1_n_1 ,\boot_counter_reg[16]_i_1_n_2 ,\boot_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\boot_counter_reg[16]_i_1_n_4 ,\boot_counter_reg[16]_i_1_n_5 ,\boot_counter_reg[16]_i_1_n_6 ,\boot_counter_reg[16]_i_1_n_7 }),
        .S({\boot_counter[16]_i_2_n_0 ,\boot_counter[16]_i_3_n_0 ,\boot_counter[16]_i_4_n_0 ,\boot_counter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[17] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[16]_i_1_n_6 ),
        .Q(boot_counter_reg[17]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[18] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[16]_i_1_n_5 ),
        .Q(boot_counter_reg[18]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[19] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[16]_i_1_n_4 ),
        .Q(boot_counter_reg[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[1] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[0]_i_2_n_6 ),
        .Q(boot_counter_reg[1]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[20] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[20]_i_1_n_7 ),
        .Q(boot_counter_reg[20]),
        .S(reset));
  CARRY4 \boot_counter_reg[20]_i_1 
       (.CI(\boot_counter_reg[16]_i_1_n_0 ),
        .CO({\boot_counter_reg[20]_i_1_n_0 ,\boot_counter_reg[20]_i_1_n_1 ,\boot_counter_reg[20]_i_1_n_2 ,\boot_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\boot_counter_reg[20]_i_1_n_4 ,\boot_counter_reg[20]_i_1_n_5 ,\boot_counter_reg[20]_i_1_n_6 ,\boot_counter_reg[20]_i_1_n_7 }),
        .S({\boot_counter[20]_i_2_n_0 ,\boot_counter[20]_i_3_n_0 ,\boot_counter[20]_i_4_n_0 ,\boot_counter[20]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[21] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[20]_i_1_n_6 ),
        .Q(boot_counter_reg[21]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[22] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[20]_i_1_n_5 ),
        .Q(boot_counter_reg[22]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[23] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[20]_i_1_n_4 ),
        .Q(boot_counter_reg[23]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[24] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[24]_i_1_n_7 ),
        .Q(boot_counter_reg[24]),
        .S(reset));
  CARRY4 \boot_counter_reg[24]_i_1 
       (.CI(\boot_counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_boot_counter_reg[24]_i_1_CO_UNCONNECTED [3:2],\boot_counter_reg[24]_i_1_n_2 ,\boot_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\NLW_boot_counter_reg[24]_i_1_O_UNCONNECTED [3],\boot_counter_reg[24]_i_1_n_5 ,\boot_counter_reg[24]_i_1_n_6 ,\boot_counter_reg[24]_i_1_n_7 }),
        .S({1'b0,\boot_counter[24]_i_2_n_0 ,\boot_counter[24]_i_3_n_0 ,\boot_counter[24]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[25] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[24]_i_1_n_6 ),
        .Q(boot_counter_reg[25]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[26] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[24]_i_1_n_5 ),
        .Q(boot_counter_reg[26]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[2] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[0]_i_2_n_5 ),
        .Q(boot_counter_reg[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[3] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[0]_i_2_n_4 ),
        .Q(boot_counter_reg[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[4] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[4]_i_1_n_7 ),
        .Q(boot_counter_reg[4]),
        .R(reset));
  CARRY4 \boot_counter_reg[4]_i_1 
       (.CI(\boot_counter_reg[0]_i_2_n_0 ),
        .CO({\boot_counter_reg[4]_i_1_n_0 ,\boot_counter_reg[4]_i_1_n_1 ,\boot_counter_reg[4]_i_1_n_2 ,\boot_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\boot_counter_reg[4]_i_1_n_4 ,\boot_counter_reg[4]_i_1_n_5 ,\boot_counter_reg[4]_i_1_n_6 ,\boot_counter_reg[4]_i_1_n_7 }),
        .S({\boot_counter[4]_i_2_n_0 ,\boot_counter[4]_i_3_n_0 ,\boot_counter[4]_i_4_n_0 ,\boot_counter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[5] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[4]_i_1_n_6 ),
        .Q(boot_counter_reg[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[6] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[4]_i_1_n_5 ),
        .Q(boot_counter_reg[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[7] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[4]_i_1_n_4 ),
        .Q(boot_counter_reg[7]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \boot_counter_reg[8] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[8]_i_1_n_7 ),
        .Q(boot_counter_reg[8]),
        .S(reset));
  CARRY4 \boot_counter_reg[8]_i_1 
       (.CI(\boot_counter_reg[4]_i_1_n_0 ),
        .CO({\boot_counter_reg[8]_i_1_n_0 ,\boot_counter_reg[8]_i_1_n_1 ,\boot_counter_reg[8]_i_1_n_2 ,\boot_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\boot_counter_reg[8]_i_1_n_4 ,\boot_counter_reg[8]_i_1_n_5 ,\boot_counter_reg[8]_i_1_n_6 ,\boot_counter_reg[8]_i_1_n_7 }),
        .S({\boot_counter[8]_i_2_n_0 ,\boot_counter[8]_i_3_n_0 ,\boot_counter[8]_i_4_n_0 ,\boot_counter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \boot_counter_reg[9] 
       (.C(clk),
        .CE(\boot_counter[0]_i_1_n_0 ),
        .D(\boot_counter_reg[8]_i_1_n_6 ),
        .Q(boot_counter_reg[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFF3FEF00003000)) 
    byte_available_i_1
       (.I0(cs_i_3_n_0),
        .I1(status[2]),
        .I2(byte_available_i_2_n_0),
        .I3(status[3]),
        .I4(byte_available_i_3_n_0),
        .I5(byte_available),
        .O(byte_available_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    byte_available_i_2
       (.I0(status[1]),
        .I1(status[4]),
        .O(byte_available_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    byte_available_i_3
       (.I0(reset),
        .I1(status[3]),
        .I2(status[0]),
        .O(byte_available_i_3_n_0));
  FDRE byte_available_reg
       (.C(clk),
        .CE(1'b1),
        .D(byte_available_i_1_n_0),
        .Q(byte_available),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEFEFEF22202020)) 
    \byte_counter[0]_i_1 
       (.I0(p_0_in__0[0]),
        .I1(reset),
        .I2(\byte_counter[8]_i_6_n_0 ),
        .I3(\byte_counter[8]_i_5_n_0 ),
        .I4(\byte_counter[8]_i_4_n_0 ),
        .I5(\byte_counter_reg_n_0_[0] ),
        .O(\byte_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hACACFFFC)) 
    \byte_counter[0]_i_2 
       (.I0(status[2]),
        .I1(status[3]),
        .I2(status[0]),
        .I3(status[4]),
        .I4(\byte_counter_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hEEEFEFEF22202020)) 
    \byte_counter[1]_i_1 
       (.I0(p_0_in__0[1]),
        .I1(reset),
        .I2(\byte_counter[8]_i_6_n_0 ),
        .I3(\byte_counter[8]_i_5_n_0 ),
        .I4(\byte_counter[8]_i_4_n_0 ),
        .I5(\byte_counter_reg_n_0_[1] ),
        .O(\byte_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF99FFFF909990)) 
    \byte_counter[1]_i_2 
       (.I0(\byte_counter_reg_n_0_[0] ),
        .I1(\byte_counter_reg_n_0_[1] ),
        .I2(status[4]),
        .I3(status[0]),
        .I4(status[2]),
        .I5(status[3]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFF4444F)) 
    \byte_counter[2]_i_1 
       (.I0(status[0]),
        .I1(status[3]),
        .I2(\byte_counter_reg_n_0_[0] ),
        .I3(\byte_counter_reg_n_0_[1] ),
        .I4(\byte_counter_reg_n_0_[2] ),
        .O(\byte_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF22222222F)) 
    \byte_counter[3]_i_1 
       (.I0(status[3]),
        .I1(status[0]),
        .I2(\byte_counter_reg_n_0_[2] ),
        .I3(\byte_counter_reg_n_0_[1] ),
        .I4(\byte_counter_reg_n_0_[0] ),
        .I5(\byte_counter_reg_n_0_[3] ),
        .O(\byte_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAB)) 
    \byte_counter[4]_i_1 
       (.I0(\byte_counter[7]_i_2_n_0 ),
        .I1(\byte_counter_reg_n_0_[1] ),
        .I2(\byte_counter_reg_n_0_[0] ),
        .I3(\byte_counter_reg_n_0_[3] ),
        .I4(\byte_counter_reg_n_0_[2] ),
        .I5(\byte_counter_reg_n_0_[4] ),
        .O(\byte_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4444F)) 
    \byte_counter[5]_i_1 
       (.I0(status[0]),
        .I1(status[3]),
        .I2(\byte_counter_reg_n_0_[4] ),
        .I3(\byte_counter[7]_i_3_n_0 ),
        .I4(\byte_counter_reg_n_0_[5] ),
        .O(\byte_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF22222222F)) 
    \byte_counter[6]_i_1 
       (.I0(status[3]),
        .I1(status[0]),
        .I2(\byte_counter_reg_n_0_[5] ),
        .I3(\byte_counter[7]_i_3_n_0 ),
        .I4(\byte_counter_reg_n_0_[4] ),
        .I5(\byte_counter_reg_n_0_[6] ),
        .O(\byte_counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEB)) 
    \byte_counter[7]_i_1 
       (.I0(\byte_counter[7]_i_2_n_0 ),
        .I1(\byte_counter_reg_n_0_[7] ),
        .I2(\byte_counter_reg_n_0_[6] ),
        .I3(\byte_counter_reg_n_0_[4] ),
        .I4(\byte_counter[7]_i_3_n_0 ),
        .I5(\byte_counter_reg_n_0_[5] ),
        .O(\byte_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_counter[7]_i_2 
       (.I0(status[3]),
        .I1(status[0]),
        .O(\byte_counter[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \byte_counter[7]_i_3 
       (.I0(\byte_counter_reg_n_0_[1] ),
        .I1(\byte_counter_reg_n_0_[0] ),
        .I2(\byte_counter_reg_n_0_[3] ),
        .I3(\byte_counter_reg_n_0_[2] ),
        .O(\byte_counter[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000F8)) 
    \byte_counter[8]_i_1 
       (.I0(\byte_counter[8]_i_4_n_0 ),
        .I1(\byte_counter[8]_i_5_n_0 ),
        .I2(\byte_counter[8]_i_6_n_0 ),
        .I3(reset),
        .I4(\byte_counter[8]_i_7_n_0 ),
        .I5(\byte_counter[8]_i_8_n_0 ),
        .O(\byte_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \byte_counter[8]_i_10 
       (.I0(\byte_counter_reg_n_0_[4] ),
        .I1(\byte_counter_reg_n_0_[5] ),
        .I2(\byte_counter_reg_n_0_[6] ),
        .I3(\byte_counter_reg_n_0_[7] ),
        .I4(\byte_counter[7]_i_3_n_0 ),
        .O(\byte_counter[8]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \byte_counter[8]_i_11 
       (.I0(cs_i_12_n_0),
        .I1(\byte_counter[8]_i_12_n_0 ),
        .I2(cs_i_11_n_0),
        .I3(\byte_counter[8]_i_13_n_0 ),
        .O(\byte_counter[8]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \byte_counter[8]_i_12 
       (.I0(boot_counter_reg[14]),
        .I1(boot_counter_reg[3]),
        .I2(boot_counter_reg[16]),
        .I3(boot_counter_reg[13]),
        .O(\byte_counter[8]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \byte_counter[8]_i_13 
       (.I0(boot_counter_reg[24]),
        .I1(boot_counter_reg[17]),
        .I2(boot_counter_reg[25]),
        .I3(boot_counter_reg[18]),
        .O(\byte_counter[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5555454444444444)) 
    \byte_counter[8]_i_2 
       (.I0(reset),
        .I1(\byte_counter[8]_i_6_n_0 ),
        .I2(cs_i_3_n_0),
        .I3(\state[4]_i_7_n_0 ),
        .I4(\byte_counter[8]_i_9_n_0 ),
        .I5(\byte_counter[8]_i_4_n_0 ),
        .O(\byte_counter[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF22F)) 
    \byte_counter[8]_i_3 
       (.I0(status[3]),
        .I1(status[0]),
        .I2(\byte_counter[8]_i_10_n_0 ),
        .I3(\byte_counter_reg_n_0_[8] ),
        .O(\byte_counter[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \byte_counter[8]_i_4 
       (.I0(status[0]),
        .I1(status[1]),
        .I2(status[2]),
        .O(\byte_counter[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h05C005C005C005CF)) 
    \byte_counter[8]_i_5 
       (.I0(\state[4]_i_10_n_0 ),
        .I1(\recv_data[1]_i_2_n_0 ),
        .I2(status[3]),
        .I3(status[4]),
        .I4(sclk_sig_i_8_n_0),
        .I5(\byte_counter[8]_i_11_n_0 ),
        .O(\byte_counter[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3001000000000000)) 
    \byte_counter[8]_i_6 
       (.I0(\state[4]_i_10_n_0 ),
        .I1(status[4]),
        .I2(status[1]),
        .I3(status[2]),
        .I4(status[0]),
        .I5(status[3]),
        .O(\byte_counter[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_counter[8]_i_7 
       (.I0(status[3]),
        .I1(status[2]),
        .O(\byte_counter[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_counter[8]_i_8 
       (.I0(status[4]),
        .I1(status[2]),
        .O(\byte_counter[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00200F20)) 
    \byte_counter[8]_i_9 
       (.I0(sclk),
        .I1(miso),
        .I2(status[3]),
        .I3(status[4]),
        .I4(\state[4]_i_10_n_0 ),
        .O(\byte_counter[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEFEF22202020)) 
    \byte_counter[9]_i_1 
       (.I0(p_0_in__0[9]),
        .I1(reset),
        .I2(\byte_counter[8]_i_6_n_0 ),
        .I3(\byte_counter[8]_i_5_n_0 ),
        .I4(\byte_counter[8]_i_4_n_0 ),
        .I5(\byte_counter_reg_n_0_[9] ),
        .O(\byte_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0EEE0EEE0E0EE)) 
    \byte_counter[9]_i_2 
       (.I0(status[4]),
        .I1(status[0]),
        .I2(status[2]),
        .I3(\byte_counter_reg_n_0_[9] ),
        .I4(\byte_counter[8]_i_10_n_0 ),
        .I5(\byte_counter_reg_n_0_[8] ),
        .O(p_0_in__0[9]));
  FDRE \byte_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_counter[0]_i_1_n_0 ),
        .Q(\byte_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \byte_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_counter[1]_i_1_n_0 ),
        .Q(\byte_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \byte_counter_reg[2] 
       (.C(clk),
        .CE(\byte_counter[8]_i_2_n_0 ),
        .D(\byte_counter[2]_i_1_n_0 ),
        .Q(\byte_counter_reg_n_0_[2] ),
        .R(\byte_counter[8]_i_1_n_0 ));
  FDRE \byte_counter_reg[3] 
       (.C(clk),
        .CE(\byte_counter[8]_i_2_n_0 ),
        .D(\byte_counter[3]_i_1_n_0 ),
        .Q(\byte_counter_reg_n_0_[3] ),
        .R(\byte_counter[8]_i_1_n_0 ));
  FDRE \byte_counter_reg[4] 
       (.C(clk),
        .CE(\byte_counter[8]_i_2_n_0 ),
        .D(\byte_counter[4]_i_1_n_0 ),
        .Q(\byte_counter_reg_n_0_[4] ),
        .R(\byte_counter[8]_i_1_n_0 ));
  FDRE \byte_counter_reg[5] 
       (.C(clk),
        .CE(\byte_counter[8]_i_2_n_0 ),
        .D(\byte_counter[5]_i_1_n_0 ),
        .Q(\byte_counter_reg_n_0_[5] ),
        .R(\byte_counter[8]_i_1_n_0 ));
  FDRE \byte_counter_reg[6] 
       (.C(clk),
        .CE(\byte_counter[8]_i_2_n_0 ),
        .D(\byte_counter[6]_i_1_n_0 ),
        .Q(\byte_counter_reg_n_0_[6] ),
        .R(\byte_counter[8]_i_1_n_0 ));
  FDRE \byte_counter_reg[7] 
       (.C(clk),
        .CE(\byte_counter[8]_i_2_n_0 ),
        .D(\byte_counter[7]_i_1_n_0 ),
        .Q(\byte_counter_reg_n_0_[7] ),
        .R(\byte_counter[8]_i_1_n_0 ));
  FDRE \byte_counter_reg[8] 
       (.C(clk),
        .CE(\byte_counter[8]_i_2_n_0 ),
        .D(\byte_counter[8]_i_3_n_0 ),
        .Q(\byte_counter_reg_n_0_[8] ),
        .R(\byte_counter[8]_i_1_n_0 ));
  FDRE \byte_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\byte_counter[9]_i_1_n_0 ),
        .Q(\byte_counter_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEEEFE00022202)) 
    cmd_mode_i_1
       (.I0(cmd_mode_i_2_n_0),
        .I1(reset),
        .I2(cmd_mode_i_3_n_0),
        .I3(status[0]),
        .I4(cmd_mode_i_4_n_0),
        .I5(cmd_mode_reg_n_0),
        .O(cmd_mode_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    cmd_mode_i_2
       (.I0(status[4]),
        .I1(miso),
        .I2(status[1]),
        .O(cmd_mode_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAFFFFFEFFFFFFFE)) 
    cmd_mode_i_3
       (.I0(\state[4]_i_9_n_0 ),
        .I1(sclk_sig_i_8_n_0),
        .I2(\byte_counter[8]_i_11_n_0 ),
        .I3(status[4]),
        .I4(status[1]),
        .I5(cmd_mode_i_5_n_0),
        .O(cmd_mode_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    cmd_mode_i_4
       (.I0(status[3]),
        .I1(status[4]),
        .I2(status[1]),
        .I3(status[2]),
        .O(cmd_mode_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cmd_mode_i_5
       (.I0(miso),
        .I1(sclk),
        .O(cmd_mode_i_5_n_0));
  FDRE #(
    .INIT(1'b1)) 
    cmd_mode_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_mode_i_1_n_0),
        .Q(cmd_mode_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[10]_i_1 
       (.I0(status[4]),
        .I1(address[2]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[9] ),
        .I5(status[3]),
        .O(cmd_out[10]));
  LUT6 #(
    .INIT(64'h0F0FACA00F0F0F0F)) 
    \cmd_out[11]_i_1 
       (.I0(address[3]),
        .I1(\cmd_out_reg_n_0_[10] ),
        .I2(status[2]),
        .I3(status[3]),
        .I4(status[4]),
        .I5(status[1]),
        .O(cmd_out[11]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[12]_i_1 
       (.I0(status[4]),
        .I1(address[4]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[11] ),
        .I5(status[3]),
        .O(cmd_out[12]));
  LUT6 #(
    .INIT(64'h0F0FACA00F0F0F0F)) 
    \cmd_out[13]_i_1 
       (.I0(address[5]),
        .I1(\cmd_out_reg_n_0_[12] ),
        .I2(status[2]),
        .I3(status[3]),
        .I4(status[4]),
        .I5(status[1]),
        .O(cmd_out[13]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[14]_i_1 
       (.I0(status[4]),
        .I1(address[6]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[13] ),
        .I5(status[3]),
        .O(cmd_out[14]));
  LUT6 #(
    .INIT(64'h0F0FACA00F0F0F0F)) 
    \cmd_out[15]_i_1 
       (.I0(address[7]),
        .I1(\cmd_out_reg_n_0_[14] ),
        .I2(status[2]),
        .I3(status[3]),
        .I4(status[4]),
        .I5(status[1]),
        .O(cmd_out[15]));
  LUT6 #(
    .INIT(64'h0F0FACA00F0F0F0F)) 
    \cmd_out[16]_i_1 
       (.I0(address[8]),
        .I1(\cmd_out_reg_n_0_[15] ),
        .I2(status[2]),
        .I3(status[3]),
        .I4(status[4]),
        .I5(status[1]),
        .O(cmd_out[16]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[17]_i_1 
       (.I0(status[4]),
        .I1(address[9]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[16] ),
        .I5(status[3]),
        .O(cmd_out[17]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[18]_i_1 
       (.I0(status[4]),
        .I1(address[10]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[17] ),
        .I5(status[3]),
        .O(cmd_out[18]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[19]_i_1 
       (.I0(status[4]),
        .I1(address[11]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[18] ),
        .I5(status[3]),
        .O(cmd_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF6F3)) 
    \cmd_out[1]_i_1 
       (.I0(status[4]),
        .I1(status[2]),
        .I2(status[3]),
        .I3(status[1]),
        .O(cmd_out[1]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[20]_i_1 
       (.I0(status[4]),
        .I1(address[12]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[19] ),
        .I5(status[3]),
        .O(cmd_out[20]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[21]_i_1 
       (.I0(status[4]),
        .I1(address[13]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[20] ),
        .I5(status[3]),
        .O(cmd_out[21]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[22]_i_1 
       (.I0(status[4]),
        .I1(address[14]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[21] ),
        .I5(status[3]),
        .O(cmd_out[22]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[23]_i_1 
       (.I0(status[4]),
        .I1(address[15]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[22] ),
        .I5(status[3]),
        .O(cmd_out[23]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[24]_i_1 
       (.I0(status[4]),
        .I1(address[16]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[23] ),
        .I5(status[3]),
        .O(cmd_out[24]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[25]_i_1 
       (.I0(status[4]),
        .I1(address[17]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[24] ),
        .I5(status[3]),
        .O(cmd_out[25]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[26]_i_1 
       (.I0(status[4]),
        .I1(address[18]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[25] ),
        .I5(status[3]),
        .O(cmd_out[26]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[27]_i_1 
       (.I0(status[4]),
        .I1(address[19]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[26] ),
        .I5(status[3]),
        .O(cmd_out[27]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[28]_i_1 
       (.I0(status[4]),
        .I1(address[20]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[27] ),
        .I5(status[3]),
        .O(cmd_out[28]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[29]_i_1 
       (.I0(status[4]),
        .I1(address[21]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[28] ),
        .I5(status[3]),
        .O(cmd_out[29]));
  LUT6 #(
    .INIT(64'hFF67676703030303)) 
    \cmd_out[2]_i_1 
       (.I0(status[4]),
        .I1(status[2]),
        .I2(status[0]),
        .I3(status[3]),
        .I4(\cmd_out_reg_n_0_[1] ),
        .I5(status[1]),
        .O(cmd_out[2]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[30]_i_1 
       (.I0(status[4]),
        .I1(address[22]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[29] ),
        .I5(status[3]),
        .O(cmd_out[30]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[31]_i_1 
       (.I0(status[4]),
        .I1(address[23]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[30] ),
        .I5(status[3]),
        .O(cmd_out[31]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[32]_i_1 
       (.I0(status[4]),
        .I1(address[24]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[31] ),
        .I5(status[3]),
        .O(cmd_out[32]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[33]_i_1 
       (.I0(status[4]),
        .I1(address[25]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[32] ),
        .I5(status[3]),
        .O(cmd_out[33]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[34]_i_1 
       (.I0(status[4]),
        .I1(address[26]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[33] ),
        .I5(status[3]),
        .O(cmd_out[34]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[35]_i_1 
       (.I0(status[4]),
        .I1(address[27]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[34] ),
        .I5(status[3]),
        .O(cmd_out[35]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[36]_i_1 
       (.I0(status[4]),
        .I1(address[28]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[35] ),
        .I5(status[3]),
        .O(cmd_out[36]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[37]_i_1 
       (.I0(status[4]),
        .I1(address[29]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[36] ),
        .I5(status[3]),
        .O(cmd_out[37]));
  LUT6 #(
    .INIT(64'h4F4FFF0F4F4F0F0F)) 
    \cmd_out[38]_i_1 
       (.I0(status[4]),
        .I1(address[30]),
        .I2(status[1]),
        .I3(\cmd_out_reg_n_0_[37] ),
        .I4(status[2]),
        .I5(status[3]),
        .O(cmd_out[38]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[39]_i_1 
       (.I0(status[4]),
        .I1(address[31]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[38] ),
        .I5(status[3]),
        .O(cmd_out[39]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFF090909)) 
    \cmd_out[3]_i_1 
       (.I0(status[2]),
        .I1(status[1]),
        .I2(status[4]),
        .I3(\cmd_out_reg_n_0_[2] ),
        .I4(status[3]),
        .O(cmd_out[3]));
  LUT6 #(
    .INIT(64'h5555FF55FFFF7575)) 
    \cmd_out[40]_i_1 
       (.I0(status[1]),
        .I1(status[4]),
        .I2(status[0]),
        .I3(\cmd_out_reg_n_0_[39] ),
        .I4(status[2]),
        .I5(status[3]),
        .O(cmd_out[40]));
  LUT6 #(
    .INIT(64'h0000FF2F00000F2F)) 
    \cmd_out[41]_i_1 
       (.I0(status[0]),
        .I1(status[4]),
        .I2(status[1]),
        .I3(status[3]),
        .I4(status[2]),
        .I5(\cmd_out_reg_n_0_[40] ),
        .O(cmd_out[41]));
  LUT6 #(
    .INIT(64'h0000FF2F00000F2F)) 
    \cmd_out[42]_i_1 
       (.I0(status[0]),
        .I1(status[4]),
        .I2(status[1]),
        .I3(status[3]),
        .I4(status[2]),
        .I5(\cmd_out_reg_n_0_[41] ),
        .O(cmd_out[42]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hDDDDFFD5)) 
    \cmd_out[43]_i_1 
       (.I0(status[1]),
        .I1(status[3]),
        .I2(\cmd_out_reg_n_0_[42] ),
        .I3(status[4]),
        .I4(status[2]),
        .O(cmd_out[43]));
  LUT6 #(
    .INIT(64'h0F000F000D0D000D)) 
    \cmd_out[44]_i_1 
       (.I0(status[3]),
        .I1(\cmd_out_reg_n_0_[43] ),
        .I2(status[4]),
        .I3(status[1]),
        .I4(status[0]),
        .I5(status[2]),
        .O(cmd_out[44]));
  LUT6 #(
    .INIT(64'hAF0F0F0FAF0F3F0F)) 
    \cmd_out[45]_i_1 
       (.I0(\cmd_out_reg_n_0_[44] ),
        .I1(status[2]),
        .I2(status[1]),
        .I3(status[0]),
        .I4(status[3]),
        .I5(status[4]),
        .O(cmd_out[45]));
  LUT6 #(
    .INIT(64'h0000510155555101)) 
    \cmd_out[47]_i_1 
       (.I0(reset),
        .I1(\cmd_out[47]_i_3_n_0 ),
        .I2(status[3]),
        .I3(\cmd_out[47]_i_4_n_0 ),
        .I4(status[0]),
        .I5(\cmd_out[47]_i_5_n_0 ),
        .O(\cmd_out[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h008F)) 
    \cmd_out[47]_i_2 
       (.I0(status[3]),
        .I1(\cmd_out_reg_n_0_[46] ),
        .I2(status[1]),
        .I3(status[2]),
        .O(\cmd_out[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFFF0000FE)) 
    \cmd_out[47]_i_3 
       (.I0(cs_i_8_n_0),
        .I1(cs_i_7_n_0),
        .I2(sclk_sig_i_8_n_0),
        .I3(status[2]),
        .I4(status[1]),
        .I5(status[4]),
        .O(\cmd_out[47]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cmd_out[47]_i_4 
       (.I0(status[1]),
        .I1(status[2]),
        .I2(status[4]),
        .O(\cmd_out[47]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE8ECECECFFFFFFFF)) 
    \cmd_out[47]_i_5 
       (.I0(status[4]),
        .I1(status[3]),
        .I2(status[2]),
        .I3(cs_i_5_n_0),
        .I4(sclk),
        .I5(status[1]),
        .O(\cmd_out[47]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF9D9)) 
    \cmd_out[4]_i_1 
       (.I0(status[0]),
        .I1(status[2]),
        .I2(status[3]),
        .I3(\cmd_out_reg_n_0_[3] ),
        .O(cmd_out[4]));
  LUT6 #(
    .INIT(64'h0000005500CC000F)) 
    \cmd_out[55]_i_1 
       (.I0(\cmd_out[47]_i_5_n_0 ),
        .I1(\cmd_out[47]_i_4_n_0 ),
        .I2(\cmd_out[47]_i_3_n_0 ),
        .I3(reset),
        .I4(status[3]),
        .I5(status[0]),
        .O(\cmd_out[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFF090909)) 
    \cmd_out[5]_i_1 
       (.I0(status[2]),
        .I1(status[1]),
        .I2(status[4]),
        .I3(\cmd_out_reg_n_0_[4] ),
        .I4(status[3]),
        .O(cmd_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF090909)) 
    \cmd_out[6]_i_1 
       (.I0(status[2]),
        .I1(status[1]),
        .I2(status[4]),
        .I3(\cmd_out_reg_n_0_[5] ),
        .I4(status[3]),
        .O(cmd_out[6]));
  LUT6 #(
    .INIT(64'h8FF800008FFF00FF)) 
    \cmd_out[7]_i_1 
       (.I0(status[3]),
        .I1(\cmd_out_reg_n_0_[6] ),
        .I2(status[4]),
        .I3(status[2]),
        .I4(status[1]),
        .I5(status[0]),
        .O(cmd_out[7]));
  LUT6 #(
    .INIT(64'h4F0F400F400F400F)) 
    \cmd_out[8]_i_1 
       (.I0(status[4]),
        .I1(address[0]),
        .I2(status[2]),
        .I3(status[1]),
        .I4(\cmd_out_reg_n_0_[7] ),
        .I5(status[3]),
        .O(cmd_out[8]));
  LUT6 #(
    .INIT(64'h0F0FACA00F0F0F0F)) 
    \cmd_out[9]_i_1 
       (.I0(address[1]),
        .I1(\cmd_out_reg_n_0_[8] ),
        .I2(status[2]),
        .I3(status[3]),
        .I4(status[4]),
        .I5(status[1]),
        .O(cmd_out[9]));
  FDRE \cmd_out_reg[10] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[10]),
        .Q(\cmd_out_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \cmd_out_reg[11] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[11]),
        .Q(\cmd_out_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \cmd_out_reg[12] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[12]),
        .Q(\cmd_out_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \cmd_out_reg[13] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[13]),
        .Q(\cmd_out_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \cmd_out_reg[14] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[14]),
        .Q(\cmd_out_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \cmd_out_reg[15] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[15]),
        .Q(\cmd_out_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \cmd_out_reg[16] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[16]),
        .Q(\cmd_out_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \cmd_out_reg[17] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[17]),
        .Q(\cmd_out_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \cmd_out_reg[18] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[18]),
        .Q(\cmd_out_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \cmd_out_reg[19] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[19]),
        .Q(\cmd_out_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \cmd_out_reg[1] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[1]),
        .Q(\cmd_out_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \cmd_out_reg[20] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[20]),
        .Q(\cmd_out_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \cmd_out_reg[21] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[21]),
        .Q(\cmd_out_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \cmd_out_reg[22] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[22]),
        .Q(\cmd_out_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \cmd_out_reg[23] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[23]),
        .Q(\cmd_out_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \cmd_out_reg[24] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[24]),
        .Q(\cmd_out_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \cmd_out_reg[25] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[25]),
        .Q(\cmd_out_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \cmd_out_reg[26] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[26]),
        .Q(\cmd_out_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \cmd_out_reg[27] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[27]),
        .Q(\cmd_out_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \cmd_out_reg[28] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[28]),
        .Q(\cmd_out_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \cmd_out_reg[29] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[29]),
        .Q(\cmd_out_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \cmd_out_reg[2] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[2]),
        .Q(\cmd_out_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \cmd_out_reg[30] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[30]),
        .Q(\cmd_out_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \cmd_out_reg[31] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[31]),
        .Q(\cmd_out_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \cmd_out_reg[32] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[32]),
        .Q(\cmd_out_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \cmd_out_reg[33] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[33]),
        .Q(\cmd_out_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \cmd_out_reg[34] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[34]),
        .Q(\cmd_out_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \cmd_out_reg[35] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[35]),
        .Q(\cmd_out_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \cmd_out_reg[36] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[36]),
        .Q(\cmd_out_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \cmd_out_reg[37] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[37]),
        .Q(\cmd_out_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \cmd_out_reg[38] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[38]),
        .Q(\cmd_out_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \cmd_out_reg[39] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[39]),
        .Q(\cmd_out_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \cmd_out_reg[3] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[3]),
        .Q(\cmd_out_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \cmd_out_reg[40] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[40]),
        .Q(\cmd_out_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \cmd_out_reg[41] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[41]),
        .Q(\cmd_out_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \cmd_out_reg[42] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[42]),
        .Q(\cmd_out_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \cmd_out_reg[43] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[43]),
        .Q(\cmd_out_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \cmd_out_reg[44] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[44]),
        .Q(\cmd_out_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \cmd_out_reg[45] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[45]),
        .Q(\cmd_out_reg_n_0_[45] ),
        .R(1'b0));
  FDSE \cmd_out_reg[46] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(\cmd_out_reg_n_0_[45] ),
        .Q(\cmd_out_reg_n_0_[46] ),
        .S(\cmd_out[55]_i_1_n_0 ));
  FDRE \cmd_out_reg[47] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(\cmd_out[47]_i_2_n_0 ),
        .Q(\cmd_out_reg_n_0_[47] ),
        .R(1'b0));
  FDSE \cmd_out_reg[48] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(\cmd_out_reg_n_0_[47] ),
        .Q(\cmd_out_reg_n_0_[48] ),
        .S(\cmd_out[55]_i_1_n_0 ));
  FDSE \cmd_out_reg[49] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(\cmd_out_reg_n_0_[48] ),
        .Q(\cmd_out_reg_n_0_[49] ),
        .S(\cmd_out[55]_i_1_n_0 ));
  FDRE \cmd_out_reg[4] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[4]),
        .Q(\cmd_out_reg_n_0_[4] ),
        .R(1'b0));
  FDSE \cmd_out_reg[50] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(\cmd_out_reg_n_0_[49] ),
        .Q(\cmd_out_reg_n_0_[50] ),
        .S(\cmd_out[55]_i_1_n_0 ));
  FDSE \cmd_out_reg[51] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(\cmd_out_reg_n_0_[50] ),
        .Q(\cmd_out_reg_n_0_[51] ),
        .S(\cmd_out[55]_i_1_n_0 ));
  FDSE \cmd_out_reg[52] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(\cmd_out_reg_n_0_[51] ),
        .Q(\cmd_out_reg_n_0_[52] ),
        .S(\cmd_out[55]_i_1_n_0 ));
  FDSE \cmd_out_reg[53] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(\cmd_out_reg_n_0_[52] ),
        .Q(\cmd_out_reg_n_0_[53] ),
        .S(\cmd_out[55]_i_1_n_0 ));
  FDSE \cmd_out_reg[54] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(\cmd_out_reg_n_0_[53] ),
        .Q(\cmd_out_reg_n_0_[54] ),
        .S(\cmd_out[55]_i_1_n_0 ));
  FDSE \cmd_out_reg[55] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(\cmd_out_reg_n_0_[54] ),
        .Q(\cmd_out_reg_n_0_[55] ),
        .S(\cmd_out[55]_i_1_n_0 ));
  FDRE \cmd_out_reg[5] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[5]),
        .Q(\cmd_out_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \cmd_out_reg[6] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[6]),
        .Q(\cmd_out_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \cmd_out_reg[7] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[7]),
        .Q(\cmd_out_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \cmd_out_reg[8] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[8]),
        .Q(\cmd_out_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \cmd_out_reg[9] 
       (.C(clk),
        .CE(\cmd_out[47]_i_1_n_0 ),
        .D(cmd_out[9]),
        .Q(\cmd_out_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFDDD01000111)) 
    cs_i_1
       (.I0(status[0]),
        .I1(cs_i_2_n_0),
        .I2(cs_i_3_n_0),
        .I3(cs_i_4_n_0),
        .I4(cs_i_5_n_0),
        .I5(cs),
        .O(cs_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cs_i_10
       (.I0(boot_counter_reg[26]),
        .I1(boot_counter_reg[7]),
        .I2(boot_counter_reg[8]),
        .I3(boot_counter_reg[5]),
        .O(cs_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cs_i_11
       (.I0(boot_counter_reg[21]),
        .I1(boot_counter_reg[9]),
        .I2(boot_counter_reg[19]),
        .I3(boot_counter_reg[12]),
        .O(cs_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cs_i_12
       (.I0(boot_counter_reg[15]),
        .I1(boot_counter_reg[4]),
        .I2(boot_counter_reg[0]),
        .I3(boot_counter_reg[11]),
        .O(cs_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cs_i_2
       (.I0(reset),
        .I1(status[1]),
        .I2(status[4]),
        .I3(status[2]),
        .I4(status[3]),
        .O(cs_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cs_i_3
       (.I0(cs_i_6_n_0),
        .I1(boot_counter_reg[2]),
        .I2(boot_counter_reg[10]),
        .I3(boot_counter_reg[1]),
        .I4(cs_i_7_n_0),
        .I5(cs_i_8_n_0),
        .O(cs_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h45)) 
    cs_i_4
       (.I0(status[2]),
        .I1(status[1]),
        .I2(status[0]),
        .O(cs_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    cs_i_5
       (.I0(cs_i_9_n_0),
        .I1(\bit_counter[8]_i_2_n_0 ),
        .I2(\bit_counter_reg_n_0_[8] ),
        .I3(\bit_counter_reg_n_0_[9] ),
        .O(cs_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cs_i_6
       (.I0(boot_counter_reg[6]),
        .I1(boot_counter_reg[22]),
        .I2(boot_counter_reg[20]),
        .I3(boot_counter_reg[23]),
        .I4(cs_i_10_n_0),
        .O(cs_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cs_i_7
       (.I0(boot_counter_reg[18]),
        .I1(boot_counter_reg[25]),
        .I2(boot_counter_reg[17]),
        .I3(boot_counter_reg[24]),
        .I4(cs_i_11_n_0),
        .O(cs_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cs_i_8
       (.I0(boot_counter_reg[13]),
        .I1(boot_counter_reg[16]),
        .I2(boot_counter_reg[3]),
        .I3(boot_counter_reg[14]),
        .I4(cs_i_12_n_0),
        .O(cs_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    cs_i_9
       (.I0(\bit_counter_reg_n_0_[5] ),
        .I1(\bit_counter_reg_n_0_[4] ),
        .I2(\bit_counter_reg_n_0_[7] ),
        .I3(\bit_counter_reg_n_0_[6] ),
        .O(cs_i_9_n_0));
  FDRE cs_reg
       (.C(clk),
        .CE(1'b1),
        .D(cs_i_1_n_0),
        .Q(cs),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    \data_sig[0]_i_1 
       (.I0(\data_sig[7]_i_6_n_0 ),
        .I1(\data_sig[7]_i_5_n_0 ),
        .I2(din[0]),
        .O(\data_sig[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD0)) 
    \data_sig[1]_i_1 
       (.I0(status[0]),
        .I1(\data_sig_reg_n_0_[0] ),
        .I2(din[1]),
        .I3(\data_sig[7]_i_5_n_0 ),
        .I4(\data_sig[7]_i_6_n_0 ),
        .O(\data_sig[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD0)) 
    \data_sig[2]_i_1 
       (.I0(status[0]),
        .I1(\data_sig_reg_n_0_[1] ),
        .I2(din[2]),
        .I3(\data_sig[7]_i_5_n_0 ),
        .I4(\data_sig[7]_i_6_n_0 ),
        .O(\data_sig[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD0)) 
    \data_sig[3]_i_1 
       (.I0(status[0]),
        .I1(\data_sig_reg_n_0_[2] ),
        .I2(din[3]),
        .I3(\data_sig[7]_i_5_n_0 ),
        .I4(\data_sig[7]_i_6_n_0 ),
        .O(\data_sig[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD0)) 
    \data_sig[4]_i_1 
       (.I0(status[0]),
        .I1(\data_sig_reg_n_0_[3] ),
        .I2(din[4]),
        .I3(\data_sig[7]_i_5_n_0 ),
        .I4(\data_sig[7]_i_6_n_0 ),
        .O(\data_sig[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD0)) 
    \data_sig[5]_i_1 
       (.I0(status[0]),
        .I1(\data_sig_reg_n_0_[4] ),
        .I2(din[5]),
        .I3(\data_sig[7]_i_5_n_0 ),
        .I4(\data_sig[7]_i_6_n_0 ),
        .O(\data_sig[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD0)) 
    \data_sig[6]_i_1 
       (.I0(status[0]),
        .I1(\data_sig_reg_n_0_[5] ),
        .I2(din[6]),
        .I3(\data_sig[7]_i_5_n_0 ),
        .I4(\data_sig[7]_i_6_n_0 ),
        .O(\data_sig[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEEAA0F00000000)) 
    \data_sig[7]_i_1 
       (.I0(\data_sig[7]_i_3_n_0 ),
        .I1(status[1]),
        .I2(\state[4]_i_10_n_0 ),
        .I3(status[2]),
        .I4(status[0]),
        .I5(\data_sig[7]_i_4_n_0 ),
        .O(\data_sig[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD0)) 
    \data_sig[7]_i_2 
       (.I0(status[0]),
        .I1(\data_sig_reg_n_0_[6] ),
        .I2(din[7]),
        .I3(\data_sig[7]_i_5_n_0 ),
        .I4(\data_sig[7]_i_6_n_0 ),
        .O(\data_sig[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \data_sig[7]_i_3 
       (.I0(sclk),
        .I1(\bit_counter_reg_n_0_[9] ),
        .I2(\bit_counter_reg_n_0_[8] ),
        .I3(\bit_counter[8]_i_2_n_0 ),
        .I4(cs_i_9_n_0),
        .O(\data_sig[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \data_sig[7]_i_4 
       (.I0(status[2]),
        .I1(status[1]),
        .I2(status[3]),
        .I3(status[4]),
        .I4(reset),
        .O(\data_sig[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \data_sig[7]_i_5 
       (.I0(\data_sig[7]_i_7_n_0 ),
        .I1(\byte_counter_reg_n_0_[8] ),
        .I2(\byte_counter_reg_n_0_[9] ),
        .I3(\byte_counter_reg_n_0_[0] ),
        .I4(\byte_counter_reg_n_0_[1] ),
        .O(\data_sig[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABAAAAAAAAAA)) 
    \data_sig[7]_i_6 
       (.I0(status[0]),
        .I1(\byte_counter_reg_n_0_[8] ),
        .I2(\byte_counter_reg_n_0_[9] ),
        .I3(\byte_counter_reg_n_0_[1] ),
        .I4(\byte_counter_reg_n_0_[0] ),
        .I5(\data_sig[7]_i_7_n_0 ),
        .O(\data_sig[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_sig[7]_i_7 
       (.I0(\byte_counter_reg_n_0_[4] ),
        .I1(\byte_counter_reg_n_0_[5] ),
        .I2(\byte_counter_reg_n_0_[6] ),
        .I3(\byte_counter_reg_n_0_[7] ),
        .I4(\byte_counter_reg_n_0_[3] ),
        .I5(\byte_counter_reg_n_0_[2] ),
        .O(\data_sig[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \data_sig_reg[0] 
       (.C(clk),
        .CE(\data_sig[7]_i_1_n_0 ),
        .D(\data_sig[0]_i_1_n_0 ),
        .Q(\data_sig_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sig_reg[1] 
       (.C(clk),
        .CE(\data_sig[7]_i_1_n_0 ),
        .D(\data_sig[1]_i_1_n_0 ),
        .Q(\data_sig_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sig_reg[2] 
       (.C(clk),
        .CE(\data_sig[7]_i_1_n_0 ),
        .D(\data_sig[2]_i_1_n_0 ),
        .Q(\data_sig_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sig_reg[3] 
       (.C(clk),
        .CE(\data_sig[7]_i_1_n_0 ),
        .D(\data_sig[3]_i_1_n_0 ),
        .Q(\data_sig_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sig_reg[4] 
       (.C(clk),
        .CE(\data_sig[7]_i_1_n_0 ),
        .D(\data_sig[4]_i_1_n_0 ),
        .Q(\data_sig_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sig_reg[5] 
       (.C(clk),
        .CE(\data_sig[7]_i_1_n_0 ),
        .D(\data_sig[5]_i_1_n_0 ),
        .Q(\data_sig_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sig_reg[6] 
       (.C(clk),
        .CE(\data_sig[7]_i_1_n_0 ),
        .D(\data_sig[6]_i_1_n_0 ),
        .Q(\data_sig_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_sig_reg[7] 
       (.C(clk),
        .CE(\data_sig[7]_i_1_n_0 ),
        .D(\data_sig[7]_i_2_n_0 ),
        .Q(\data_sig_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \dout[7]_i_1 
       (.I0(status[2]),
        .I1(status[3]),
        .I2(reset),
        .I3(status[4]),
        .I4(status[0]),
        .I5(status[1]),
        .O(\dout[7]_i_1_n_0 ));
  FDRE \dout_reg[0] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(recv_data[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(recv_data[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(recv_data[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(recv_data[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(recv_data[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(recv_data[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(recv_data[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(recv_data[7]),
        .Q(dout[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    mosi_INST_0
       (.I0(\cmd_out_reg_n_0_[55] ),
        .I1(cmd_mode_reg_n_0),
        .I2(\data_sig_reg_n_0_[7] ),
        .O(mosi));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    ready_INST_0
       (.I0(status[4]),
        .I1(status[1]),
        .I2(status[0]),
        .I3(status[3]),
        .I4(status[2]),
        .O(ready));
  LUT6 #(
    .INIT(64'hFFFFFBBB00000888)) 
    ready_for_next_byte_i_1
       (.I0(ready_for_next_byte_i_2_n_0),
        .I1(ready_for_next_byte_i_3_n_0),
        .I2(ready_for_next_byte_i_4_n_0),
        .I3(ready_for_next_byte_i_5_n_0),
        .I4(reset),
        .I5(ready_for_next_byte),
        .O(ready_for_next_byte_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ready_for_next_byte_i_10
       (.I0(status[3]),
        .I1(status[1]),
        .I2(status[2]),
        .O(ready_for_next_byte_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h54)) 
    ready_for_next_byte_i_2
       (.I0(status[0]),
        .I1(status[4]),
        .I2(status[1]),
        .O(ready_for_next_byte_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFBBBFAAAAAAAA)) 
    ready_for_next_byte_i_3
       (.I0(ready_for_next_byte_i_6_n_0),
        .I1(ready_for_next_byte_i_7_n_0),
        .I2(\state[4]_i_10_n_0 ),
        .I3(ready_for_next_byte_i_8_n_0),
        .I4(ready_for_next_byte_i_9_n_0),
        .I5(ready_for_next_byte_i_10_n_0),
        .O(ready_for_next_byte_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ready_for_next_byte_i_4
       (.I0(status[4]),
        .I1(cs_i_8_n_0),
        .I2(cs_i_7_n_0),
        .I3(sclk_sig_i_8_n_0),
        .O(ready_for_next_byte_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ready_for_next_byte_i_5
       (.I0(status[3]),
        .I1(status[4]),
        .O(ready_for_next_byte_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ready_for_next_byte_i_6
       (.I0(status[1]),
        .I1(status[2]),
        .I2(status[3]),
        .O(ready_for_next_byte_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    ready_for_next_byte_i_7
       (.I0(\bit_counter_reg_n_0_[9] ),
        .I1(\bit_counter_reg_n_0_[8] ),
        .I2(\bit_counter[8]_i_2_n_0 ),
        .I3(cs_i_9_n_0),
        .I4(\recv_data[6]_i_3_n_0 ),
        .I5(status[4]),
        .O(ready_for_next_byte_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008028)) 
    ready_for_next_byte_i_8
       (.I0(\data_sig[7]_i_7_n_0 ),
        .I1(\byte_counter_reg_n_0_[0] ),
        .I2(\byte_counter_reg_n_0_[1] ),
        .I3(\byte_counter_reg_n_0_[9] ),
        .I4(\byte_counter_reg_n_0_[8] ),
        .I5(status[0]),
        .O(ready_for_next_byte_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ready_for_next_byte_i_9
       (.I0(status[0]),
        .I1(status[4]),
        .O(ready_for_next_byte_i_9_n_0));
  FDRE ready_for_next_byte_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_for_next_byte_i_1_n_0),
        .Q(ready_for_next_byte),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF7B0008FF7B0000)) 
    \recv_data[0]_i_1 
       (.I0(miso),
        .I1(sclk),
        .I2(status[4]),
        .I3(reset),
        .I4(recv_data[0]),
        .I5(status[0]),
        .O(\recv_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00C5FFFF00C000C0)) 
    \recv_data[1]_i_1 
       (.I0(\recv_data[1]_i_2_n_0 ),
        .I1(\recv_data[1]_i_3_n_0 ),
        .I2(\recv_data[6]_i_3_n_0 ),
        .I3(status[4]),
        .I4(\recv_data[1]_i_4_n_0 ),
        .I5(recv_data[1]),
        .O(\recv_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \recv_data[1]_i_2 
       (.I0(sclk),
        .I1(miso),
        .O(\recv_data[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \recv_data[1]_i_3 
       (.I0(recv_data[0]),
        .I1(reset),
        .O(\recv_data[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4055)) 
    \recv_data[1]_i_4 
       (.I0(reset),
        .I1(miso),
        .I2(sclk),
        .I3(status[4]),
        .O(\recv_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h444F444444444444)) 
    \recv_data[2]_i_1 
       (.I0(\recv_data[6]_i_2_n_0 ),
        .I1(recv_data[2]),
        .I2(status[4]),
        .I3(reset),
        .I4(\recv_data[6]_i_3_n_0 ),
        .I5(recv_data[1]),
        .O(\recv_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444F444444444444)) 
    \recv_data[3]_i_1 
       (.I0(\recv_data[6]_i_2_n_0 ),
        .I1(recv_data[3]),
        .I2(status[4]),
        .I3(reset),
        .I4(\recv_data[6]_i_3_n_0 ),
        .I5(recv_data[2]),
        .O(\recv_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444F444444444444)) 
    \recv_data[4]_i_1 
       (.I0(\recv_data[6]_i_2_n_0 ),
        .I1(recv_data[4]),
        .I2(status[4]),
        .I3(reset),
        .I4(\recv_data[6]_i_3_n_0 ),
        .I5(recv_data[3]),
        .O(\recv_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444F444444444444)) 
    \recv_data[5]_i_1 
       (.I0(\recv_data[6]_i_2_n_0 ),
        .I1(recv_data[5]),
        .I2(status[4]),
        .I3(reset),
        .I4(\recv_data[6]_i_3_n_0 ),
        .I5(recv_data[4]),
        .O(\recv_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444F444444444444)) 
    \recv_data[6]_i_1 
       (.I0(\recv_data[6]_i_2_n_0 ),
        .I1(recv_data[6]),
        .I2(status[4]),
        .I3(reset),
        .I4(\recv_data[6]_i_3_n_0 ),
        .I5(recv_data[5]),
        .O(\recv_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h51410000)) 
    \recv_data[6]_i_2 
       (.I0(reset),
        .I1(status[4]),
        .I2(miso),
        .I3(status[0]),
        .I4(sclk),
        .O(\recv_data[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \recv_data[6]_i_3 
       (.I0(sclk),
        .I1(status[0]),
        .O(\recv_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABEAAAAAAAEAAAA)) 
    \recv_data[7]_i_1 
       (.I0(reset),
        .I1(status[3]),
        .I2(status[4]),
        .I3(status[1]),
        .I4(status[2]),
        .I5(status[0]),
        .O(\recv_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFAA0000)) 
    \recv_data[7]_i_2 
       (.I0(reset),
        .I1(miso),
        .I2(sclk),
        .I3(status[4]),
        .I4(recv_data[7]),
        .I5(\recv_data[7]_i_3_n_0 ),
        .O(\recv_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000022F022)) 
    \recv_data[7]_i_3 
       (.I0(recv_data[7]),
        .I1(\recv_data[1]_i_2_n_0 ),
        .I2(recv_data[6]),
        .I3(\recv_data[6]_i_3_n_0 ),
        .I4(reset),
        .I5(status[4]),
        .O(\recv_data[7]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \recv_data_reg[0] 
       (.C(clk),
        .CE(\recv_data[7]_i_1_n_0 ),
        .D(\recv_data[0]_i_1_n_0 ),
        .Q(recv_data[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \recv_data_reg[1] 
       (.C(clk),
        .CE(\recv_data[7]_i_1_n_0 ),
        .D(\recv_data[1]_i_1_n_0 ),
        .Q(recv_data[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \recv_data_reg[2] 
       (.C(clk),
        .CE(\recv_data[7]_i_1_n_0 ),
        .D(\recv_data[2]_i_1_n_0 ),
        .Q(recv_data[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \recv_data_reg[3] 
       (.C(clk),
        .CE(\recv_data[7]_i_1_n_0 ),
        .D(\recv_data[3]_i_1_n_0 ),
        .Q(recv_data[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \recv_data_reg[4] 
       (.C(clk),
        .CE(\recv_data[7]_i_1_n_0 ),
        .D(\recv_data[4]_i_1_n_0 ),
        .Q(recv_data[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \recv_data_reg[5] 
       (.C(clk),
        .CE(\recv_data[7]_i_1_n_0 ),
        .D(\recv_data[5]_i_1_n_0 ),
        .Q(recv_data[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \recv_data_reg[6] 
       (.C(clk),
        .CE(\recv_data[7]_i_1_n_0 ),
        .D(\recv_data[6]_i_1_n_0 ),
        .Q(recv_data[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \recv_data_reg[7] 
       (.C(clk),
        .CE(\recv_data[7]_i_1_n_0 ),
        .D(\recv_data[7]_i_2_n_0 ),
        .Q(recv_data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFF3F0730)) 
    \return_state[0]_i_1 
       (.I0(\state[4]_i_10_n_0 ),
        .I1(status[0]),
        .I2(status[1]),
        .I3(status[3]),
        .I4(status[2]),
        .O(\return_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h3F38)) 
    \return_state[1]_i_1 
       (.I0(\state[4]_i_10_n_0 ),
        .I1(status[0]),
        .I2(status[1]),
        .I3(status[4]),
        .O(\return_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFAE00F0)) 
    \return_state[2]_i_1 
       (.I0(status[3]),
        .I1(status[0]),
        .I2(status[2]),
        .I3(status[4]),
        .I4(status[1]),
        .O(\return_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \return_state[3]_i_1 
       (.I0(status[4]),
        .I1(status[1]),
        .I2(status[2]),
        .O(\return_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000111115551111)) 
    \return_state[4]_i_1 
       (.I0(reset),
        .I1(\return_state[4]_i_3_n_0 ),
        .I2(\return_state[4]_i_4_n_0 ),
        .I3(status[1]),
        .I4(status[2]),
        .I5(\return_state[4]_i_5_n_0 ),
        .O(\return_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00BB000B)) 
    \return_state[4]_i_2 
       (.I0(status[1]),
        .I1(status[2]),
        .I2(status[0]),
        .I3(status[3]),
        .I4(status[4]),
        .O(\return_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCFF033300DDFF)) 
    \return_state[4]_i_3 
       (.I0(\state[4]_i_10_n_0 ),
        .I1(status[0]),
        .I2(\recv_data[1]_i_2_n_0 ),
        .I3(status[4]),
        .I4(status[1]),
        .I5(status[3]),
        .O(\return_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \return_state[4]_i_4 
       (.I0(status[4]),
        .I1(status[3]),
        .I2(status[0]),
        .O(\return_state[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEEFEEFFE)) 
    \return_state[4]_i_5 
       (.I0(status[0]),
        .I1(status[3]),
        .I2(status[1]),
        .I3(status[4]),
        .I4(recv_data[0]),
        .O(\return_state[4]_i_5_n_0 ));
  FDRE \return_state_reg[0] 
       (.C(clk),
        .CE(\return_state[4]_i_1_n_0 ),
        .D(\return_state[0]_i_1_n_0 ),
        .Q(\return_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \return_state_reg[1] 
       (.C(clk),
        .CE(\return_state[4]_i_1_n_0 ),
        .D(\return_state[1]_i_1_n_0 ),
        .Q(\return_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \return_state_reg[2] 
       (.C(clk),
        .CE(\return_state[4]_i_1_n_0 ),
        .D(\return_state[2]_i_1_n_0 ),
        .Q(\return_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \return_state_reg[3] 
       (.C(clk),
        .CE(\return_state[4]_i_1_n_0 ),
        .D(\return_state[3]_i_1_n_0 ),
        .Q(\return_state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \return_state_reg[4] 
       (.C(clk),
        .CE(\return_state[4]_i_1_n_0 ),
        .D(\return_state[4]_i_2_n_0 ),
        .Q(\return_state_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEFE2202)) 
    sclk_sig_i_1
       (.I0(sclk),
        .I1(sclk_sig_i_2_n_0),
        .I2(sclk_sig_i_3_n_0),
        .I3(sclk_sig_i_4_n_0),
        .I4(sclk_sig_i_5_n_0),
        .I5(reset),
        .O(sclk_sig_i_1_n_0));
  LUT6 #(
    .INIT(64'hBAAABAAABAAAAAAA)) 
    sclk_sig_i_2
       (.I0(sclk_sig_i_6_n_0),
        .I1(status[3]),
        .I2(status[0]),
        .I3(sclk_sig_i_7_n_0),
        .I4(status[4]),
        .I5(cs_i_5_n_0),
        .O(sclk_sig_i_2_n_0));
  LUT6 #(
    .INIT(64'h888888888888888C)) 
    sclk_sig_i_3
       (.I0(status[3]),
        .I1(byte_available_i_2_n_0),
        .I2(status[2]),
        .I3(cs_i_8_n_0),
        .I4(cs_i_7_n_0),
        .I5(sclk_sig_i_8_n_0),
        .O(sclk_sig_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sclk_sig_i_4
       (.I0(status[0]),
        .I1(status[2]),
        .O(sclk_sig_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFEFFFF)) 
    sclk_sig_i_5
       (.I0(\bit_counter[7]_i_8_n_0 ),
        .I1(cs_i_8_n_0),
        .I2(cs_i_7_n_0),
        .I3(sclk_sig_i_8_n_0),
        .I4(cs_i_4_n_0),
        .I5(sclk),
        .O(sclk_sig_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000008000000280)) 
    sclk_sig_i_6
       (.I0(status[1]),
        .I1(status[3]),
        .I2(status[0]),
        .I3(status[4]),
        .I4(status[2]),
        .I5(reset),
        .O(sclk_sig_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h45)) 
    sclk_sig_i_7
       (.I0(status[1]),
        .I1(status[4]),
        .I2(status[2]),
        .O(sclk_sig_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sclk_sig_i_8
       (.I0(boot_counter_reg[1]),
        .I1(boot_counter_reg[10]),
        .I2(boot_counter_reg[2]),
        .I3(cs_i_10_n_0),
        .I4(sclk_sig_i_9_n_0),
        .O(sclk_sig_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    sclk_sig_i_9
       (.I0(boot_counter_reg[23]),
        .I1(boot_counter_reg[20]),
        .I2(boot_counter_reg[22]),
        .I3(boot_counter_reg[6]),
        .O(sclk_sig_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sclk_sig_reg
       (.C(clk),
        .CE(1'b1),
        .D(sclk_sig_i_1_n_0),
        .Q(sclk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEEEEEEFFEEFEEE)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(recv_data[0]),
        .I3(\state[4]_i_7_n_0 ),
        .I4(\state[0]_i_4_n_0 ),
        .I5(\state[0]_i_5_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0D0D00050F0F)) 
    \state[0]_i_2 
       (.I0(status[1]),
        .I1(rd),
        .I2(status[0]),
        .I3(\state[4]_i_10_n_0 ),
        .I4(status[4]),
        .I5(status[2]),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3F222F22BF80BF80)) 
    \state[0]_i_3 
       (.I0(status[4]),
        .I1(status[1]),
        .I2(status[0]),
        .I3(status[3]),
        .I4(\return_state_reg_n_0_[0] ),
        .I5(status[2]),
        .O(\state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[0]_i_4 
       (.I0(status[0]),
        .I1(status[1]),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state[0]_i_5 
       (.I0(status[0]),
        .I1(status[2]),
        .O(\state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h333380B3F3F30030)) 
    \state[1]_i_1 
       (.I0(\return_state_reg_n_0_[1] ),
        .I1(status[3]),
        .I2(status[2]),
        .I3(status[4]),
        .I4(status[1]),
        .I5(status[0]),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03CE0000)) 
    \state[2]_i_1 
       (.I0(\state[4]_i_10_n_0 ),
        .I1(status[2]),
        .I2(status[0]),
        .I3(status[1]),
        .I4(status[4]),
        .I5(\state[2]_i_2_n_0 ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA0A40000)) 
    \state[2]_i_2 
       (.I0(status[4]),
        .I1(status[1]),
        .I2(status[0]),
        .I3(status[3]),
        .I4(status[2]),
        .I5(\state[2]_i_3_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44CC04CC54CC14CC)) 
    \state[2]_i_3 
       (.I0(status[1]),
        .I1(status[3]),
        .I2(status[0]),
        .I3(status[2]),
        .I4(\return_state_reg_n_0_[2] ),
        .I5(recv_data[0]),
        .O(\state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(status[1]),
        .I2(\state[3]_i_3_n_0 ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h003F3F3F3F00153F)) 
    \state[3]_i_2 
       (.I0(\state[4]_i_10_n_0 ),
        .I1(status[3]),
        .I2(\return_state_reg_n_0_[3] ),
        .I3(status[4]),
        .I4(status[2]),
        .I5(status[0]),
        .O(\state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAEAAAEAAAEAE)) 
    \state[3]_i_3 
       (.I0(\state[3]_i_4_n_0 ),
        .I1(status[1]),
        .I2(status[3]),
        .I3(status[0]),
        .I4(status[2]),
        .I5(status[4]),
        .O(\state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F5F5F00001000)) 
    \state[3]_i_4 
       (.I0(status[0]),
        .I1(status[4]),
        .I2(status[2]),
        .I3(wr),
        .I4(rd),
        .I5(status[3]),
        .O(\state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5F555F5F00440044)) 
    \state[4]_i_1 
       (.I0(\state[4]_i_3_n_0 ),
        .I1(miso),
        .I2(\state[4]_i_4_n_0 ),
        .I3(\state[4]_i_5_n_0 ),
        .I4(cs_i_3_n_0),
        .I5(\state[4]_i_6_n_0 ),
        .O(\state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[4]_i_10 
       (.I0(\byte_counter_reg_n_0_[8] ),
        .I1(\byte_counter_reg_n_0_[9] ),
        .I2(\byte_counter[7]_i_3_n_0 ),
        .I3(\state[4]_i_12_n_0 ),
        .O(\state[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAFBA2900)) 
    \state[4]_i_11 
       (.I0(status[3]),
        .I1(status[2]),
        .I2(status[1]),
        .I3(status[0]),
        .I4(status[4]),
        .O(\state[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[4]_i_12 
       (.I0(\byte_counter_reg_n_0_[7] ),
        .I1(\byte_counter_reg_n_0_[6] ),
        .I2(\byte_counter_reg_n_0_[5] ),
        .I3(\byte_counter_reg_n_0_[4] ),
        .O(\state[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4445444544444445)) 
    \state[4]_i_2 
       (.I0(\state[4]_i_7_n_0 ),
        .I1(\state[4]_i_8_n_0 ),
        .I2(status[1]),
        .I3(\state[4]_i_9_n_0 ),
        .I4(\state[4]_i_10_n_0 ),
        .I5(status[0]),
        .O(\state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4FFF)) 
    \state[4]_i_3 
       (.I0(\state[4]_i_11_n_0 ),
        .I1(miso),
        .I2(\state[4]_i_4_n_0 ),
        .I3(sclk),
        .O(\state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00425818)) 
    \state[4]_i_4 
       (.I0(status[4]),
        .I1(status[0]),
        .I2(status[3]),
        .I3(status[2]),
        .I4(status[1]),
        .O(\state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00DBFEFE)) 
    \state[4]_i_5 
       (.I0(status[2]),
        .I1(status[1]),
        .I2(status[0]),
        .I3(status[3]),
        .I4(status[4]),
        .O(\state[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h33131333FF3FF35F)) 
    \state[4]_i_6 
       (.I0(cs_i_5_n_0),
        .I1(status[4]),
        .I2(status[0]),
        .I3(status[1]),
        .I4(status[2]),
        .I5(status[3]),
        .O(\state[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[4]_i_7 
       (.I0(status[3]),
        .I1(status[4]),
        .O(\state[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE0A50000E0050000)) 
    \state[4]_i_8 
       (.I0(status[3]),
        .I1(recv_data[0]),
        .I2(status[0]),
        .I3(status[1]),
        .I4(status[2]),
        .I5(\return_state_reg_n_0_[4] ),
        .O(\state[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[4]_i_9 
       (.I0(status[2]),
        .I1(status[3]),
        .O(\state[4]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(status[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(status[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(status[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(status[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk),
        .CE(\state[4]_i_1_n_0 ),
        .D(\state[4]_i_2_n_0 ),
        .Q(status[4]),
        .R(reset));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \version[0]_i_1 
       (.I0(version[0]),
        .I1(reset),
        .I2(recv_data[0]),
        .I3(\version[7]_i_2_n_0 ),
        .I4(version[0]),
        .O(\version[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \version[7]_i_1 
       (.I0(reset),
        .I1(recv_data[0]),
        .I2(\version[7]_i_2_n_0 ),
        .O(\version[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \version[7]_i_2 
       (.I0(reset),
        .I1(status[1]),
        .I2(status[4]),
        .I3(status[0]),
        .I4(status[2]),
        .I5(status[3]),
        .O(\version[7]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \version_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\version[0]_i_1_n_0 ),
        .Q(version[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \version_reg[1] 
       (.C(clk),
        .CE(\version[7]_i_2_n_0 ),
        .D(version[1]),
        .Q(version[1]),
        .R(\version[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \version_reg[2] 
       (.C(clk),
        .CE(\version[7]_i_2_n_0 ),
        .D(version[2]),
        .Q(version[2]),
        .R(\version[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \version_reg[3] 
       (.C(clk),
        .CE(\version[7]_i_2_n_0 ),
        .D(version[3]),
        .Q(version[3]),
        .R(\version[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \version_reg[4] 
       (.C(clk),
        .CE(\version[7]_i_2_n_0 ),
        .D(version[4]),
        .Q(version[4]),
        .R(\version[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \version_reg[5] 
       (.C(clk),
        .CE(\version[7]_i_2_n_0 ),
        .D(version[5]),
        .Q(version[5]),
        .R(\version[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \version_reg[6] 
       (.C(clk),
        .CE(\version[7]_i_2_n_0 ),
        .D(version[6]),
        .Q(version[6]),
        .R(\version[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \version_reg[7] 
       (.C(clk),
        .CE(\version[7]_i_2_n_0 ),
        .D(version[7]),
        .Q(version[7]),
        .R(\version[7]_i_1_n_0 ));
endmodule
module xVIA(.a(w),.b(w));
inout w;
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
