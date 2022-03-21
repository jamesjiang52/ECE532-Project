// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Mar 12 12:32:28 2022
// Host        : DESKTOP-S44E3SR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_spam_detection_infer_0_0_sim_netlist.v
// Design      : design_1_spam_detection_infer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_spam_detection_infer_0_0,spam_detection_inference_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "spam_detection_inference_v1_0,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (write_done,
    spam_prob,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input write_done;
  output [31:0]spam_prob;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]spam_prob;
  wire write_done;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spam_detection_inference_v1_0 inst
       (.s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .spam_prob(spam_prob),
        .write_done(write_done));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_except
   (out_reg0,
    D,
    qnan_reg_0,
    opa_nan,
    opb_nan,
    Q,
    expa_ff_reg_0,
    \out_reg[31] ,
    \out_reg[31]_0 ,
    out_d,
    \out_reg[31]_1 ,
    \out_reg[31]_2 ,
    \out[31]_i_3_0 ,
    \out[31]_i_3_1 ,
    \out[31]_i_3_2 ,
    \out_reg[0] ,
    \out_reg[0]_0 ,
    \out_reg[0]_1 ,
    \out_reg[22] ,
    O,
    sign,
    result_zero_sign,
    nan_sign,
    fasu_op_r2,
    s00_axi_aclk);
  output out_reg0;
  output [1:0]D;
  output qnan_reg_0;
  output opa_nan;
  output opb_nan;
  input [30:0]Q;
  input [30:0]expa_ff_reg_0;
  input \out_reg[31] ;
  input \out_reg[31]_0 ;
  input [3:0]out_d;
  input \out_reg[31]_1 ;
  input \out_reg[31]_2 ;
  input \out[31]_i_3_0 ;
  input \out[31]_i_3_1 ;
  input \out[31]_i_3_2 ;
  input \out_reg[0] ;
  input \out_reg[0]_0 ;
  input \out_reg[0]_1 ;
  input \out_reg[22] ;
  input [0:0]O;
  input sign;
  input result_zero_sign;
  input nan_sign;
  input fasu_op_r2;
  input s00_axi_aclk;

  wire [1:0]D;
  wire [0:0]O;
  wire [30:0]Q;
  wire expa_ff;
  wire expa_ff0;
  wire expa_ff_i_2_n_0;
  wire [30:0]expa_ff_reg_0;
  wire expb_ff;
  wire expb_ff0;
  wire expb_ff_i_2_n_0;
  wire fasu_op_r2;
  wire ind0;
  wire ind_d;
  wire inf0;
  wire inf_d;
  wire infa_f_r;
  wire infa_f_r_i_1_n_0;
  wire infa_f_r_i_2_n_0;
  wire infa_f_r_i_3_n_0;
  wire infa_f_r_i_4_n_0;
  wire infa_f_r_i_5_n_0;
  wire infa_f_r_i_6_n_0;
  wire infb_f_r;
  wire infb_f_r_i_2_n_0;
  wire infb_f_r_i_3_n_0;
  wire infb_f_r_i_4_n_0;
  wire infb_f_r_i_5_n_0;
  wire infb_f_r_i_6_n_0;
  wire nan_sign;
  wire opa_nan;
  wire opa_nan0;
  wire opb_nan;
  wire opb_nan0;
  wire \out[22]_i_6_n_0 ;
  wire \out[31]_i_10_n_0 ;
  wire \out[31]_i_2_n_0 ;
  wire \out[31]_i_3_0 ;
  wire \out[31]_i_3_1 ;
  wire \out[31]_i_3_2 ;
  wire \out[31]_i_3_n_0 ;
  wire \out[31]_i_6_n_0 ;
  wire \out[31]_i_7_n_0 ;
  wire [3:0]out_d;
  wire out_reg0;
  wire \out_reg[0] ;
  wire \out_reg[0]_0 ;
  wire \out_reg[0]_1 ;
  wire \out_reg[22] ;
  wire \out_reg[31] ;
  wire \out_reg[31]_0 ;
  wire \out_reg[31]_1 ;
  wire \out_reg[31]_2 ;
  wire p_0_in;
  wire qnan0;
  wire qnan_d;
  wire qnan_r_a;
  wire qnan_r_b;
  wire qnan_reg_0;
  wire result_zero_sign;
  wire s00_axi_aclk;
  wire sign;
  wire snan0;
  wire snan_d;
  wire snan_r_a;
  wire snan_r_a0;
  wire snan_r_b;
  wire snan_r_b0;

  LUT5 #(
    .INIT(32'h80000000)) 
    expa_ff_i_1
       (.I0(expa_ff_reg_0[23]),
        .I1(expa_ff_reg_0[24]),
        .I2(expa_ff_reg_0[25]),
        .I3(expa_ff_reg_0[26]),
        .I4(expa_ff_i_2_n_0),
        .O(expa_ff0));
  LUT4 #(
    .INIT(16'h8000)) 
    expa_ff_i_2
       (.I0(expa_ff_reg_0[30]),
        .I1(expa_ff_reg_0[29]),
        .I2(expa_ff_reg_0[28]),
        .I3(expa_ff_reg_0[27]),
        .O(expa_ff_i_2_n_0));
  FDRE expa_ff_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(expa_ff0),
        .Q(expa_ff),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80000000)) 
    expb_ff_i_1
       (.I0(Q[23]),
        .I1(Q[24]),
        .I2(Q[25]),
        .I3(Q[26]),
        .I4(expb_ff_i_2_n_0),
        .O(expb_ff0));
  LUT4 #(
    .INIT(16'h8000)) 
    expb_ff_i_2
       (.I0(Q[30]),
        .I1(Q[29]),
        .I2(Q[28]),
        .I3(Q[27]),
        .O(expb_ff_i_2_n_0));
  FDRE expb_ff_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(expb_ff0),
        .Q(expb_ff),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    ind_i_1
       (.I0(infa_f_r),
        .I1(expa_ff),
        .I2(infb_f_r),
        .I3(expb_ff),
        .O(ind0));
  FDRE ind_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ind0),
        .Q(ind_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    inf_i_1
       (.I0(infa_f_r),
        .I1(expa_ff),
        .I2(infb_f_r),
        .I3(expb_ff),
        .O(inf0));
  FDRE inf_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(inf0),
        .Q(inf_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    infa_f_r_i_1
       (.I0(infa_f_r_i_2_n_0),
        .I1(expa_ff_reg_0[22]),
        .O(infa_f_r_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    infa_f_r_i_2
       (.I0(infa_f_r_i_3_n_0),
        .I1(infa_f_r_i_4_n_0),
        .I2(expa_ff_reg_0[3]),
        .I3(expa_ff_reg_0[2]),
        .I4(expa_ff_reg_0[5]),
        .I5(expa_ff_reg_0[4]),
        .O(infa_f_r_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    infa_f_r_i_3
       (.I0(infa_f_r_i_5_n_0),
        .I1(expa_ff_reg_0[11]),
        .I2(expa_ff_reg_0[10]),
        .I3(expa_ff_reg_0[13]),
        .I4(expa_ff_reg_0[12]),
        .I5(infa_f_r_i_6_n_0),
        .O(infa_f_r_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    infa_f_r_i_4
       (.I0(expa_ff_reg_0[7]),
        .I1(expa_ff_reg_0[6]),
        .I2(expa_ff_reg_0[9]),
        .I3(expa_ff_reg_0[8]),
        .O(infa_f_r_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    infa_f_r_i_5
       (.I0(expa_ff_reg_0[15]),
        .I1(expa_ff_reg_0[14]),
        .I2(expa_ff_reg_0[17]),
        .I3(expa_ff_reg_0[16]),
        .O(infa_f_r_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    infa_f_r_i_6
       (.I0(expa_ff_reg_0[20]),
        .I1(expa_ff_reg_0[21]),
        .I2(expa_ff_reg_0[18]),
        .I3(expa_ff_reg_0[19]),
        .I4(expa_ff_reg_0[1]),
        .I5(expa_ff_reg_0[0]),
        .O(infa_f_r_i_6_n_0));
  FDRE infa_f_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(infa_f_r_i_1_n_0),
        .Q(infa_f_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    infb_f_r_i_1
       (.I0(infb_f_r_i_2_n_0),
        .I1(Q[22]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    infb_f_r_i_2
       (.I0(infb_f_r_i_3_n_0),
        .I1(infb_f_r_i_4_n_0),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(infb_f_r_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    infb_f_r_i_3
       (.I0(infb_f_r_i_5_n_0),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(Q[13]),
        .I4(Q[12]),
        .I5(infb_f_r_i_6_n_0),
        .O(infb_f_r_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    infb_f_r_i_4
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[8]),
        .O(infb_f_r_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    infb_f_r_i_5
       (.I0(Q[15]),
        .I1(Q[14]),
        .I2(Q[17]),
        .I3(Q[16]),
        .O(infb_f_r_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    infb_f_r_i_6
       (.I0(Q[20]),
        .I1(Q[21]),
        .I2(Q[18]),
        .I3(Q[19]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(infb_f_r_i_6_n_0));
  FDRE infb_f_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(infb_f_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    opa_nan_i_1
       (.I0(infa_f_r_i_2_n_0),
        .I1(expa_ff_reg_0[22]),
        .I2(expa_ff0),
        .O(opa_nan0));
  FDRE opa_nan_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(opa_nan0),
        .Q(opa_nan),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    opb_nan_i_1
       (.I0(infb_f_r_i_2_n_0),
        .I1(Q[22]),
        .I2(expb_ff0),
        .O(opb_nan0));
  FDRE opb_nan_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(opb_nan0),
        .Q(opb_nan),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF4004)) 
    \out[0]_i_1 
       (.I0(inf_d),
        .I1(\out_reg[0] ),
        .I2(\out_reg[0]_0 ),
        .I3(\out_reg[0]_1 ),
        .I4(\out[22]_i_6_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \out[21]_i_1 
       (.I0(qnan_d),
        .I1(snan_d),
        .I2(inf_d),
        .O(qnan_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF44400040)) 
    \out[22]_i_1 
       (.I0(inf_d),
        .I1(\out_reg[0] ),
        .I2(\out_reg[22] ),
        .I3(\out_reg[0]_0 ),
        .I4(O),
        .I5(\out[22]_i_6_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFF08)) 
    \out[22]_i_6 
       (.I0(inf_d),
        .I1(ind_d),
        .I2(fasu_op_r2),
        .I3(qnan_d),
        .I4(snan_d),
        .O(\out[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0002)) 
    \out[31]_i_1 
       (.I0(\out[31]_i_2_n_0 ),
        .I1(\out[31]_i_3_n_0 ),
        .I2(\out_reg[31] ),
        .I3(\out_reg[31]_0 ),
        .I4(\out[31]_i_6_n_0 ),
        .I5(\out[31]_i_7_n_0 ),
        .O(out_reg0));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \out[31]_i_10 
       (.I0(\out[31]_i_3_0 ),
        .I1(inf_d),
        .I2(\out[31]_i_3_1 ),
        .I3(out_d[3]),
        .I4(\out[31]_i_3_2 ),
        .O(\out[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \out[31]_i_2 
       (.I0(result_zero_sign),
        .I1(ind_d),
        .I2(snan_d),
        .I3(qnan_d),
        .O(\out[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out[31]_i_3 
       (.I0(out_d[1]),
        .I1(out_d[0]),
        .I2(\out_reg[31]_1 ),
        .I3(out_d[2]),
        .I4(\out_reg[31]_2 ),
        .I5(\out[31]_i_10_n_0 ),
        .O(\out[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \out[31]_i_6 
       (.I0(sign),
        .I1(ind_d),
        .I2(snan_d),
        .I3(qnan_d),
        .O(\out[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \out[31]_i_7 
       (.I0(ind_d),
        .I1(snan_d),
        .I2(qnan_d),
        .I3(nan_sign),
        .O(\out[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    qnan_i_1
       (.I0(qnan_r_a),
        .I1(expa_ff),
        .I2(qnan_r_b),
        .I3(expb_ff),
        .O(qnan0));
  FDRE qnan_r_a_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(expa_ff_reg_0[22]),
        .Q(qnan_r_a),
        .R(1'b0));
  FDRE qnan_r_b_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(qnan_r_b),
        .R(1'b0));
  FDRE qnan_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(qnan0),
        .Q(qnan_d),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    snan_i_1
       (.I0(snan_r_a),
        .I1(expa_ff),
        .I2(snan_r_b),
        .I3(expb_ff),
        .O(snan0));
  LUT2 #(
    .INIT(4'h2)) 
    snan_r_a_i_1
       (.I0(infa_f_r_i_2_n_0),
        .I1(expa_ff_reg_0[22]),
        .O(snan_r_a0));
  FDRE snan_r_a_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(snan_r_a0),
        .Q(snan_r_a),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    snan_r_b_i_1
       (.I0(infb_f_r_i_2_n_0),
        .I1(Q[22]),
        .O(snan_r_b0));
  FDRE snan_r_b_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(snan_r_b0),
        .Q(snan_r_b),
        .R(1'b0));
  FDRE snan_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(snan0),
        .Q(snan_d),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_3,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fifo_generator_v13_2_3,Vivado 2018.3.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_0
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    data_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input srst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [8:0]data_count;

  wire clk;
  wire [8:0]data_count;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "1" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "510" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "509" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(data_count),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fpu
   (D,
    s00_axi_aclk,
    Q,
    \opb_r_reg[31]_0 );
  output [31:0]D;
  input s00_axi_aclk;
  input [31:0]Q;
  input [31:0]\opb_r_reg[31]_0 ;

  wire [31:0]D;
  wire [31:0]Q;
  wire co_d;
  wire [47:20]data0;
  wire [7:4]exp_diff2;
  wire [7:0]exp_fasu;
  wire \exp_r_reg_n_0_[0] ;
  wire \exp_r_reg_n_0_[1] ;
  wire \exp_r_reg_n_0_[2] ;
  wire \exp_r_reg_n_0_[3] ;
  wire \exp_r_reg_n_0_[4] ;
  wire \exp_r_reg_n_0_[5] ;
  wire \exp_r_reg_n_0_[6] ;
  wire \exp_r_reg_n_0_[7] ;
  wire expa_lt_expb;
  wire fasu_op;
  wire fasu_op_r1;
  wire fasu_op_r2;
  wire [26:0]fract_out_d;
  wire \fracta_out[25]_i_16_n_0 ;
  wire \fracta_out[25]_i_17_n_0 ;
  wire \fracta_out[25]_i_18_n_0 ;
  wire \fracta_out[25]_i_19_n_0 ;
  wire \fracta_out[25]_i_20_n_0 ;
  wire \fracta_out[25]_i_21_n_0 ;
  wire \fracta_out[25]_i_22_n_0 ;
  wire \fracta_out_reg[25]_i_14_n_1 ;
  wire \fracta_out_reg[25]_i_14_n_2 ;
  wire \fracta_out_reg[25]_i_14_n_3 ;
  wire nan_sign_d;
  wire opa_nan;
  wire [31:0]opa_r;
  wire opb_nan;
  wire [31:0]opb_r;
  wire [31:0]\opb_r_reg[31]_0 ;
  wire \out[0]_i_2_n_0 ;
  wire \out[10]_i_2_n_0 ;
  wire \out[10]_i_3_n_0 ;
  wire \out[10]_i_4_n_0 ;
  wire \out[11]_i_10_n_0 ;
  wire \out[11]_i_2_n_0 ;
  wire \out[11]_i_4_n_0 ;
  wire \out[11]_i_5_n_0 ;
  wire \out[11]_i_6_n_0 ;
  wire \out[11]_i_7_n_0 ;
  wire \out[11]_i_8_n_0 ;
  wire \out[11]_i_9_n_0 ;
  wire \out[12]_i_2_n_0 ;
  wire \out[12]_i_3_n_0 ;
  wire \out[12]_i_4_n_0 ;
  wire \out[13]_i_2_n_0 ;
  wire \out[13]_i_3_n_0 ;
  wire \out[13]_i_4_n_0 ;
  wire \out[14]_i_2_n_0 ;
  wire \out[14]_i_3_n_0 ;
  wire \out[14]_i_4_n_0 ;
  wire \out[15]_i_2_n_0 ;
  wire \out[15]_i_3_n_0 ;
  wire \out[15]_i_4_n_0 ;
  wire \out[16]_i_2_n_0 ;
  wire \out[16]_i_3_n_0 ;
  wire \out[16]_i_4_n_0 ;
  wire \out[17]_i_2_n_0 ;
  wire \out[17]_i_3_n_0 ;
  wire \out[17]_i_4_n_0 ;
  wire \out[18]_i_2_n_0 ;
  wire \out[18]_i_3_n_0 ;
  wire \out[18]_i_4_n_0 ;
  wire \out[18]_i_5_n_0 ;
  wire \out[18]_i_6_n_0 ;
  wire \out[18]_i_7_n_0 ;
  wire \out[19]_i_2_n_0 ;
  wire \out[19]_i_3_n_0 ;
  wire \out[19]_i_4_n_0 ;
  wire \out[19]_i_5_n_0 ;
  wire \out[19]_i_6_n_0 ;
  wire \out[20]_i_10_n_0 ;
  wire \out[20]_i_11_n_0 ;
  wire \out[20]_i_12_n_0 ;
  wire \out[20]_i_13_n_0 ;
  wire \out[20]_i_15_n_0 ;
  wire \out[20]_i_16_n_0 ;
  wire \out[20]_i_17_n_0 ;
  wire \out[20]_i_18_n_0 ;
  wire \out[20]_i_19_n_0 ;
  wire \out[20]_i_20_n_0 ;
  wire \out[20]_i_21_n_0 ;
  wire \out[20]_i_22_n_0 ;
  wire \out[20]_i_23_n_0 ;
  wire \out[20]_i_24_n_0 ;
  wire \out[20]_i_25_n_0 ;
  wire \out[20]_i_26_n_0 ;
  wire \out[20]_i_2_n_0 ;
  wire \out[20]_i_4_n_0 ;
  wire \out[20]_i_5_n_0 ;
  wire \out[20]_i_6_n_0 ;
  wire \out[20]_i_8_n_0 ;
  wire \out[20]_i_9_n_0 ;
  wire \out[21]_i_10_n_0 ;
  wire \out[21]_i_11_n_0 ;
  wire \out[21]_i_12_n_0 ;
  wire \out[21]_i_13_n_0 ;
  wire \out[21]_i_14_n_0 ;
  wire \out[21]_i_15_n_0 ;
  wire \out[21]_i_16_n_0 ;
  wire \out[21]_i_17_n_0 ;
  wire \out[21]_i_18_n_0 ;
  wire \out[21]_i_19_n_0 ;
  wire \out[21]_i_20_n_0 ;
  wire \out[21]_i_3_n_0 ;
  wire \out[21]_i_4_n_0 ;
  wire \out[21]_i_5_n_0 ;
  wire \out[21]_i_6_n_0 ;
  wire \out[21]_i_7_n_0 ;
  wire \out[21]_i_8_n_0 ;
  wire \out[21]_i_9_n_0 ;
  wire \out[22]_i_10_n_0 ;
  wire \out[22]_i_11_n_0 ;
  wire \out[22]_i_12_n_0 ;
  wire \out[22]_i_13_n_0 ;
  wire \out[22]_i_14_n_0 ;
  wire \out[22]_i_15_n_0 ;
  wire \out[22]_i_16_n_0 ;
  wire \out[22]_i_17_n_0 ;
  wire \out[22]_i_18_n_0 ;
  wire \out[22]_i_19_n_0 ;
  wire \out[22]_i_20_n_0 ;
  wire \out[22]_i_21_n_0 ;
  wire \out[22]_i_22_n_0 ;
  wire \out[22]_i_24_n_0 ;
  wire \out[22]_i_25_n_0 ;
  wire \out[22]_i_26_n_0 ;
  wire \out[22]_i_27_n_0 ;
  wire \out[22]_i_28_n_0 ;
  wire \out[22]_i_29_n_0 ;
  wire \out[22]_i_2_n_0 ;
  wire \out[22]_i_30_n_0 ;
  wire \out[22]_i_31_n_0 ;
  wire \out[22]_i_32_n_0 ;
  wire \out[22]_i_33_n_0 ;
  wire \out[22]_i_34_n_0 ;
  wire \out[22]_i_35_n_0 ;
  wire \out[22]_i_36_n_0 ;
  wire \out[22]_i_37_n_0 ;
  wire \out[22]_i_38_n_0 ;
  wire \out[22]_i_39_n_0 ;
  wire \out[22]_i_3_n_0 ;
  wire \out[22]_i_40_n_0 ;
  wire \out[22]_i_41_n_0 ;
  wire \out[22]_i_42_n_0 ;
  wire \out[22]_i_43_n_0 ;
  wire \out[22]_i_44_n_0 ;
  wire \out[22]_i_45_n_0 ;
  wire \out[22]_i_46_n_0 ;
  wire \out[22]_i_47_n_0 ;
  wire \out[22]_i_48_n_0 ;
  wire \out[22]_i_49_n_0 ;
  wire \out[22]_i_4_n_0 ;
  wire \out[22]_i_50_n_0 ;
  wire \out[22]_i_51_n_0 ;
  wire \out[22]_i_52_n_0 ;
  wire \out[22]_i_53_n_0 ;
  wire \out[22]_i_54_n_0 ;
  wire \out[22]_i_55_n_0 ;
  wire \out[22]_i_7_n_0 ;
  wire \out[22]_i_8_n_0 ;
  wire \out[22]_i_9_n_0 ;
  wire \out[23]_i_1_n_0 ;
  wire \out[26]_i_10_n_0 ;
  wire \out[26]_i_11_n_0 ;
  wire \out[26]_i_12_n_0 ;
  wire \out[26]_i_13_n_0 ;
  wire \out[26]_i_14_n_0 ;
  wire \out[26]_i_2_n_0 ;
  wire \out[26]_i_3_n_0 ;
  wire \out[26]_i_4_n_0 ;
  wire \out[26]_i_5_n_0 ;
  wire \out[26]_i_7_n_0 ;
  wire \out[26]_i_8_n_0 ;
  wire \out[26]_i_9_n_0 ;
  wire \out[29]_i_10_n_0 ;
  wire \out[29]_i_11_n_0 ;
  wire \out[29]_i_12_n_0 ;
  wire \out[29]_i_13_n_0 ;
  wire \out[29]_i_14_n_0 ;
  wire \out[29]_i_15_n_0 ;
  wire \out[29]_i_16_n_0 ;
  wire \out[29]_i_17_n_0 ;
  wire \out[29]_i_18_n_0 ;
  wire \out[29]_i_19_n_0 ;
  wire \out[29]_i_2_n_0 ;
  wire \out[29]_i_3_n_0 ;
  wire \out[29]_i_4_n_0 ;
  wire \out[29]_i_5_n_0 ;
  wire \out[29]_i_7_n_0 ;
  wire \out[29]_i_9_n_0 ;
  wire \out[2]_i_3_n_0 ;
  wire \out[31]_i_11_n_0 ;
  wire \out[31]_i_12_n_0 ;
  wire \out[31]_i_13_n_0 ;
  wire \out[31]_i_14_n_0 ;
  wire \out[31]_i_15_n_0 ;
  wire \out[31]_i_16_n_0 ;
  wire \out[31]_i_17_n_0 ;
  wire \out[31]_i_18_n_0 ;
  wire \out[31]_i_19_n_0 ;
  wire \out[31]_i_20_n_0 ;
  wire \out[31]_i_21_n_0 ;
  wire \out[31]_i_4_n_0 ;
  wire \out[31]_i_5_n_0 ;
  wire \out[31]_i_9_n_0 ;
  wire \out[3]_i_10_n_0 ;
  wire \out[3]_i_11_n_0 ;
  wire \out[3]_i_12_n_0 ;
  wire \out[3]_i_13_n_0 ;
  wire \out[3]_i_2_n_0 ;
  wire \out[3]_i_4_n_0 ;
  wire \out[3]_i_5_n_0 ;
  wire \out[3]_i_6_n_0 ;
  wire \out[3]_i_7_n_0 ;
  wire \out[3]_i_8_n_0 ;
  wire \out[3]_i_9_n_0 ;
  wire \out[4]_i_2_n_0 ;
  wire \out[4]_i_3_n_0 ;
  wire \out[4]_i_4_n_0 ;
  wire \out[4]_i_5_n_0 ;
  wire \out[5]_i_2_n_0 ;
  wire \out[5]_i_3_n_0 ;
  wire \out[6]_i_2_n_0 ;
  wire \out[6]_i_3_n_0 ;
  wire \out[6]_i_4_n_0 ;
  wire \out[7]_i_2_n_0 ;
  wire \out[7]_i_3_n_0 ;
  wire \out[7]_i_4_n_0 ;
  wire \out[7]_i_5_n_0 ;
  wire \out[8]_i_2_n_0 ;
  wire \out[8]_i_4_n_0 ;
  wire \out[8]_i_5_n_0 ;
  wire \out[8]_i_6_n_0 ;
  wire \out[8]_i_7_n_0 ;
  wire \out[8]_i_8_n_0 ;
  wire \out[8]_i_9_n_0 ;
  wire \out[9]_i_2_n_0 ;
  wire \out[9]_i_3_n_0 ;
  wire [30:1]out_d;
  wire out_reg0;
  wire \out_reg[11]_i_3_n_0 ;
  wire \out_reg[11]_i_3_n_1 ;
  wire \out_reg[11]_i_3_n_2 ;
  wire \out_reg[11]_i_3_n_3 ;
  wire \out_reg[20]_i_3_n_0 ;
  wire \out_reg[20]_i_3_n_1 ;
  wire \out_reg[20]_i_3_n_2 ;
  wire \out_reg[20]_i_3_n_3 ;
  wire \out_reg[20]_i_7_n_0 ;
  wire \out_reg[20]_i_7_n_1 ;
  wire \out_reg[20]_i_7_n_2 ;
  wire \out_reg[20]_i_7_n_3 ;
  wire \out_reg[22]_i_5_n_3 ;
  wire \out_reg[26]_i_6_n_0 ;
  wire \out_reg[26]_i_6_n_1 ;
  wire \out_reg[26]_i_6_n_2 ;
  wire \out_reg[26]_i_6_n_3 ;
  wire \out_reg[26]_i_6_n_4 ;
  wire \out_reg[26]_i_6_n_5 ;
  wire \out_reg[26]_i_6_n_6 ;
  wire \out_reg[26]_i_6_n_7 ;
  wire \out_reg[29]_i_6_n_0 ;
  wire \out_reg[29]_i_6_n_1 ;
  wire \out_reg[29]_i_6_n_2 ;
  wire \out_reg[29]_i_6_n_3 ;
  wire \out_reg[29]_i_6_n_4 ;
  wire \out_reg[29]_i_6_n_5 ;
  wire \out_reg[29]_i_6_n_6 ;
  wire \out_reg[29]_i_6_n_7 ;
  wire \out_reg[3]_i_3_n_0 ;
  wire \out_reg[3]_i_3_n_1 ;
  wire \out_reg[3]_i_3_n_2 ;
  wire \out_reg[3]_i_3_n_3 ;
  wire \out_reg[8]_i_3_n_0 ;
  wire \out_reg[8]_i_3_n_1 ;
  wire \out_reg[8]_i_3_n_2 ;
  wire \out_reg[8]_i_3_n_3 ;
  wire result_zero_sign_d;
  wire s00_axi_aclk;
  wire sign;
  wire sign_fasu;
  wire u0_n_1;
  wire u0_n_2;
  wire u0_n_3;
  wire u1_n_5;
  wire [8:8]\u4/exp_next_mi ;
  wire [1:0]\u4/fi_ldz ;
  wire [23:1]\u4/fract_out_pl1 ;
  wire [2:1]\u4/p_0_in41_in ;
  wire [3:3]\NLW_fracta_out_reg[25]_i_14_CO_UNCONNECTED ;
  wire [3:1]\NLW_out_reg[22]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_out_reg[22]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_out_reg[29]_i_8_CO_UNCONNECTED ;
  wire [3:1]\NLW_out_reg[29]_i_8_O_UNCONNECTED ;

  FDRE \exp_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_fasu[0]),
        .Q(\exp_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \exp_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_fasu[1]),
        .Q(\exp_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \exp_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_fasu[2]),
        .Q(\exp_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \exp_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_fasu[3]),
        .Q(\exp_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \exp_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_fasu[4]),
        .Q(\exp_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \exp_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_fasu[5]),
        .Q(\exp_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \exp_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_fasu[6]),
        .Q(\exp_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \exp_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_fasu[7]),
        .Q(\exp_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE fasu_op_r1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fasu_op),
        .Q(fasu_op_r1),
        .R(1'b0));
  FDRE fasu_op_r2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fasu_op_r1),
        .Q(fasu_op_r2),
        .R(1'b0));
  FDRE \fract_out_q_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[0]),
        .Q(data0[20]),
        .R(1'b0));
  FDRE \fract_out_q_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[10]),
        .Q(data0[30]),
        .R(1'b0));
  FDRE \fract_out_q_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[11]),
        .Q(data0[31]),
        .R(1'b0));
  FDRE \fract_out_q_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[12]),
        .Q(data0[32]),
        .R(1'b0));
  FDRE \fract_out_q_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[13]),
        .Q(data0[33]),
        .R(1'b0));
  FDRE \fract_out_q_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[14]),
        .Q(data0[34]),
        .R(1'b0));
  FDRE \fract_out_q_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[15]),
        .Q(data0[35]),
        .R(1'b0));
  FDRE \fract_out_q_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[16]),
        .Q(data0[36]),
        .R(1'b0));
  FDRE \fract_out_q_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[17]),
        .Q(data0[37]),
        .R(1'b0));
  FDRE \fract_out_q_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[18]),
        .Q(data0[38]),
        .R(1'b0));
  FDRE \fract_out_q_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[19]),
        .Q(data0[39]),
        .R(1'b0));
  FDRE \fract_out_q_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[1]),
        .Q(data0[21]),
        .R(1'b0));
  FDRE \fract_out_q_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[20]),
        .Q(data0[40]),
        .R(1'b0));
  FDRE \fract_out_q_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[21]),
        .Q(data0[41]),
        .R(1'b0));
  FDRE \fract_out_q_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[22]),
        .Q(data0[42]),
        .R(1'b0));
  FDRE \fract_out_q_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[23]),
        .Q(data0[43]),
        .R(1'b0));
  FDRE \fract_out_q_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[24]),
        .Q(data0[44]),
        .R(1'b0));
  FDRE \fract_out_q_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[25]),
        .Q(data0[45]),
        .R(1'b0));
  FDRE \fract_out_q_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[26]),
        .Q(data0[46]),
        .R(1'b0));
  FDRE \fract_out_q_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(co_d),
        .Q(data0[47]),
        .R(1'b0));
  FDRE \fract_out_q_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[2]),
        .Q(data0[22]),
        .R(1'b0));
  FDRE \fract_out_q_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[3]),
        .Q(data0[23]),
        .R(1'b0));
  FDRE \fract_out_q_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[4]),
        .Q(data0[24]),
        .R(1'b0));
  FDRE \fract_out_q_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[5]),
        .Q(data0[25]),
        .R(1'b0));
  FDRE \fract_out_q_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[6]),
        .Q(data0[26]),
        .R(1'b0));
  FDRE \fract_out_q_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[7]),
        .Q(data0[27]),
        .R(1'b0));
  FDRE \fract_out_q_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[8]),
        .Q(data0[28]),
        .R(1'b0));
  FDRE \fract_out_q_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fract_out_d[9]),
        .Q(data0[29]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h47)) 
    \fracta_out[25]_i_16 
       (.I0(opb_r[29]),
        .I1(expa_lt_expb),
        .I2(opa_r[29]),
        .O(\fracta_out[25]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \fracta_out[25]_i_17 
       (.I0(opb_r[28]),
        .I1(expa_lt_expb),
        .I2(opa_r[28]),
        .O(\fracta_out[25]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \fracta_out[25]_i_18 
       (.I0(opb_r[27]),
        .I1(expa_lt_expb),
        .I2(opa_r[27]),
        .O(\fracta_out[25]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fracta_out[25]_i_19 
       (.I0(opb_r[30]),
        .I1(opa_r[30]),
        .O(\fracta_out[25]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fracta_out[25]_i_20 
       (.I0(opb_r[29]),
        .I1(opa_r[29]),
        .O(\fracta_out[25]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fracta_out[25]_i_21 
       (.I0(opb_r[28]),
        .I1(opa_r[28]),
        .O(\fracta_out[25]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fracta_out[25]_i_22 
       (.I0(opb_r[27]),
        .I1(opa_r[27]),
        .O(\fracta_out[25]_i_22_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fracta_out_reg[25]_i_14 
       (.CI(u1_n_5),
        .CO({\NLW_fracta_out_reg[25]_i_14_CO_UNCONNECTED [3],\fracta_out_reg[25]_i_14_n_1 ,\fracta_out_reg[25]_i_14_n_2 ,\fracta_out_reg[25]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\fracta_out[25]_i_16_n_0 ,\fracta_out[25]_i_17_n_0 ,\fracta_out[25]_i_18_n_0 }),
        .O(exp_diff2),
        .S({\fracta_out[25]_i_19_n_0 ,\fracta_out[25]_i_20_n_0 ,\fracta_out[25]_i_21_n_0 ,\fracta_out[25]_i_22_n_0 }));
  FDRE \opa_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(opa_r[0]),
        .R(1'b0));
  FDRE \opa_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(opa_r[10]),
        .R(1'b0));
  FDRE \opa_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(opa_r[11]),
        .R(1'b0));
  FDRE \opa_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(opa_r[12]),
        .R(1'b0));
  FDRE \opa_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(opa_r[13]),
        .R(1'b0));
  FDRE \opa_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(opa_r[14]),
        .R(1'b0));
  FDRE \opa_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(opa_r[15]),
        .R(1'b0));
  FDRE \opa_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(opa_r[16]),
        .R(1'b0));
  FDRE \opa_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(opa_r[17]),
        .R(1'b0));
  FDRE \opa_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(opa_r[18]),
        .R(1'b0));
  FDRE \opa_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(opa_r[19]),
        .R(1'b0));
  FDRE \opa_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(opa_r[1]),
        .R(1'b0));
  FDRE \opa_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(opa_r[20]),
        .R(1'b0));
  FDRE \opa_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(opa_r[21]),
        .R(1'b0));
  FDRE \opa_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(opa_r[22]),
        .R(1'b0));
  FDRE \opa_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(opa_r[23]),
        .R(1'b0));
  FDRE \opa_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(opa_r[24]),
        .R(1'b0));
  FDRE \opa_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(opa_r[25]),
        .R(1'b0));
  FDRE \opa_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(opa_r[26]),
        .R(1'b0));
  FDRE \opa_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(opa_r[27]),
        .R(1'b0));
  FDRE \opa_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(opa_r[28]),
        .R(1'b0));
  FDRE \opa_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(opa_r[29]),
        .R(1'b0));
  FDRE \opa_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(opa_r[2]),
        .R(1'b0));
  FDRE \opa_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(opa_r[30]),
        .R(1'b0));
  FDRE \opa_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(opa_r[31]),
        .R(1'b0));
  FDRE \opa_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(opa_r[3]),
        .R(1'b0));
  FDRE \opa_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(opa_r[4]),
        .R(1'b0));
  FDRE \opa_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(opa_r[5]),
        .R(1'b0));
  FDRE \opa_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(opa_r[6]),
        .R(1'b0));
  FDRE \opa_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(opa_r[7]),
        .R(1'b0));
  FDRE \opa_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(opa_r[8]),
        .R(1'b0));
  FDRE \opa_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(opa_r[9]),
        .R(1'b0));
  FDRE \opb_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [0]),
        .Q(opb_r[0]),
        .R(1'b0));
  FDRE \opb_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [10]),
        .Q(opb_r[10]),
        .R(1'b0));
  FDRE \opb_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [11]),
        .Q(opb_r[11]),
        .R(1'b0));
  FDRE \opb_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [12]),
        .Q(opb_r[12]),
        .R(1'b0));
  FDRE \opb_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [13]),
        .Q(opb_r[13]),
        .R(1'b0));
  FDRE \opb_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [14]),
        .Q(opb_r[14]),
        .R(1'b0));
  FDRE \opb_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [15]),
        .Q(opb_r[15]),
        .R(1'b0));
  FDRE \opb_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [16]),
        .Q(opb_r[16]),
        .R(1'b0));
  FDRE \opb_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [17]),
        .Q(opb_r[17]),
        .R(1'b0));
  FDRE \opb_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [18]),
        .Q(opb_r[18]),
        .R(1'b0));
  FDRE \opb_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [19]),
        .Q(opb_r[19]),
        .R(1'b0));
  FDRE \opb_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [1]),
        .Q(opb_r[1]),
        .R(1'b0));
  FDRE \opb_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [20]),
        .Q(opb_r[20]),
        .R(1'b0));
  FDRE \opb_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [21]),
        .Q(opb_r[21]),
        .R(1'b0));
  FDRE \opb_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [22]),
        .Q(opb_r[22]),
        .R(1'b0));
  FDRE \opb_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [23]),
        .Q(opb_r[23]),
        .R(1'b0));
  FDRE \opb_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [24]),
        .Q(opb_r[24]),
        .R(1'b0));
  FDRE \opb_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [25]),
        .Q(opb_r[25]),
        .R(1'b0));
  FDRE \opb_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [26]),
        .Q(opb_r[26]),
        .R(1'b0));
  FDRE \opb_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [27]),
        .Q(opb_r[27]),
        .R(1'b0));
  FDRE \opb_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [28]),
        .Q(opb_r[28]),
        .R(1'b0));
  FDRE \opb_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [29]),
        .Q(opb_r[29]),
        .R(1'b0));
  FDRE \opb_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [2]),
        .Q(opb_r[2]),
        .R(1'b0));
  FDRE \opb_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [30]),
        .Q(opb_r[30]),
        .R(1'b0));
  FDRE \opb_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [31]),
        .Q(opb_r[31]),
        .R(1'b0));
  FDRE \opb_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [3]),
        .Q(opb_r[3]),
        .R(1'b0));
  FDRE \opb_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [4]),
        .Q(opb_r[4]),
        .R(1'b0));
  FDRE \opb_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [5]),
        .Q(opb_r[5]),
        .R(1'b0));
  FDRE \opb_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [6]),
        .Q(opb_r[6]),
        .R(1'b0));
  FDRE \opb_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [7]),
        .Q(opb_r[7]),
        .R(1'b0));
  FDRE \opb_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [8]),
        .Q(opb_r[8]),
        .R(1'b0));
  FDRE \opb_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\opb_r_reg[31]_0 [9]),
        .Q(opb_r[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hFF1D)) 
    \out[0]_i_2 
       (.I0(\out[22]_i_13_n_0 ),
        .I1(\out[22]_i_9_n_0 ),
        .I2(\out[22]_i_14_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .O(\out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out[10]_i_1 
       (.I0(\out[22]_i_2_n_0 ),
        .I1(\out[10]_i_2_n_0 ),
        .I2(\out[22]_i_4_n_0 ),
        .I3(\u4/fract_out_pl1 [10]),
        .O(out_d[10]));
  LUT6 #(
    .INIT(64'h0000004700FF0047)) 
    \out[10]_i_2 
       (.I0(\out[11]_i_4_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[11]_i_5_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[22]_i_9_n_0 ),
        .I5(\out[10]_i_3_n_0 ),
        .O(\out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \out[10]_i_3 
       (.I0(\out[16]_i_4_n_0 ),
        .I1(\out[22]_i_20_n_0 ),
        .I2(\out[12]_i_4_n_0 ),
        .I3(\out[14]_i_4_n_0 ),
        .I4(\out[10]_i_4_n_0 ),
        .I5(\out[20]_i_5_n_0 ),
        .O(\out[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDDCF)) 
    \out[10]_i_4 
       (.I0(data0[28]),
        .I1(\out[22]_i_27_n_0 ),
        .I2(data0[20]),
        .I3(\out[3]_i_11_n_0 ),
        .I4(\out[22]_i_18_n_0 ),
        .O(\out[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out[11]_i_1 
       (.I0(\out[22]_i_2_n_0 ),
        .I1(\out[11]_i_2_n_0 ),
        .I2(\out[22]_i_4_n_0 ),
        .I3(\u4/fract_out_pl1 [11]),
        .O(out_d[11]));
  LUT5 #(
    .INIT(32'hFFFFDDCF)) 
    \out[11]_i_10 
       (.I0(data0[29]),
        .I1(\out[22]_i_27_n_0 ),
        .I2(data0[21]),
        .I3(\out[3]_i_11_n_0 ),
        .I4(\out[22]_i_18_n_0 ),
        .O(\out[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00470047000000FF)) 
    \out[11]_i_2 
       (.I0(\out[11]_i_4_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[11]_i_5_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[12]_i_3_n_0 ),
        .I5(\out[22]_i_9_n_0 ),
        .O(\out[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out[11]_i_4 
       (.I0(\out[17]_i_4_n_0 ),
        .I1(\out[22]_i_20_n_0 ),
        .I2(\out[13]_i_4_n_0 ),
        .O(\out[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[11]_i_5 
       (.I0(\out[15]_i_4_n_0 ),
        .I1(\out[22]_i_20_n_0 ),
        .I2(\out[11]_i_10_n_0 ),
        .O(\out[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[11]_i_6 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[13]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[12]_i_3_n_0 ),
        .O(\out[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00470047000000FF)) 
    \out[11]_i_7 
       (.I0(\out[11]_i_4_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[11]_i_5_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[12]_i_3_n_0 ),
        .I5(\out[22]_i_9_n_0 ),
        .O(\out[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000004700FF0047)) 
    \out[11]_i_8 
       (.I0(\out[11]_i_4_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[11]_i_5_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[22]_i_9_n_0 ),
        .I5(\out[10]_i_3_n_0 ),
        .O(\out[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00470047000000FF)) 
    \out[11]_i_9 
       (.I0(\out[11]_i_5_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[9]_i_3_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[10]_i_3_n_0 ),
        .I5(\out[22]_i_9_n_0 ),
        .O(\out[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[12]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[12]_i_2_n_0 ),
        .O(out_d[12]));
  LUT6 #(
    .INIT(64'hFFFF000001510151)) 
    \out[12]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[13]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[12]_i_3_n_0 ),
        .I4(\u4/fract_out_pl1 [12]),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[12]_i_3 
       (.I0(\out[18]_i_7_n_0 ),
        .I1(\out[14]_i_4_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[16]_i_4_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .I5(\out[12]_i_4_n_0 ),
        .O(\out[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hFFFFDDCF)) 
    \out[12]_i_4 
       (.I0(data0[30]),
        .I1(\out[22]_i_27_n_0 ),
        .I2(data0[22]),
        .I3(\out[3]_i_11_n_0 ),
        .I4(\out[22]_i_18_n_0 ),
        .O(\out[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[13]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[13]_i_2_n_0 ),
        .O(out_d[13]));
  LUT6 #(
    .INIT(64'hFFFF000001510151)) 
    \out[13]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[14]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[13]_i_3_n_0 ),
        .I4(\u4/fract_out_pl1 [13]),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[13]_i_3 
       (.I0(\out[18]_i_6_n_0 ),
        .I1(\out[15]_i_4_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[17]_i_4_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .I5(\out[13]_i_4_n_0 ),
        .O(\out[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hFFDDFFCF)) 
    \out[13]_i_4 
       (.I0(data0[31]),
        .I1(\out[22]_i_27_n_0 ),
        .I2(data0[23]),
        .I3(\out[22]_i_18_n_0 ),
        .I4(\out[3]_i_11_n_0 ),
        .O(\out[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[14]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[14]_i_2_n_0 ),
        .O(out_d[14]));
  LUT6 #(
    .INIT(64'hFFFF000001510151)) 
    \out[14]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[15]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[14]_i_3_n_0 ),
        .I4(\u4/fract_out_pl1 [14]),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[14]_i_3 
       (.I0(\out[20]_i_15_n_0 ),
        .I1(\out[16]_i_4_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[18]_i_7_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .I5(\out[14]_i_4_n_0 ),
        .O(\out[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hFFFFDDCF)) 
    \out[14]_i_4 
       (.I0(data0[32]),
        .I1(\out[22]_i_27_n_0 ),
        .I2(data0[24]),
        .I3(\out[3]_i_11_n_0 ),
        .I4(\out[22]_i_18_n_0 ),
        .O(\out[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[15]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[15]_i_2_n_0 ),
        .O(out_d[15]));
  LUT6 #(
    .INIT(64'hFFFF000001510151)) 
    \out[15]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[16]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[15]_i_3_n_0 ),
        .I4(\u4/fract_out_pl1 [15]),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[15]_i_3 
       (.I0(\out[21]_i_17_n_0 ),
        .I1(\out[17]_i_4_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[18]_i_6_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .I5(\out[15]_i_4_n_0 ),
        .O(\out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hFFFFF1FD)) 
    \out[15]_i_4 
       (.I0(data0[25]),
        .I1(\out[3]_i_11_n_0 ),
        .I2(\out[22]_i_18_n_0 ),
        .I3(data0[33]),
        .I4(\out[22]_i_27_n_0 ),
        .O(\out[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[16]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[16]_i_2_n_0 ),
        .O(out_d[16]));
  LUT6 #(
    .INIT(64'hFFFF000001510151)) 
    \out[16]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[17]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[16]_i_3_n_0 ),
        .I4(\u4/fract_out_pl1 [16]),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[16]_i_3 
       (.I0(\out[20]_i_13_n_0 ),
        .I1(\out[18]_i_7_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[20]_i_15_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .I5(\out[16]_i_4_n_0 ),
        .O(\out[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \out[16]_i_4 
       (.I0(data0[34]),
        .I1(\out[3]_i_11_n_0 ),
        .I2(\out[22]_i_27_n_0 ),
        .I3(data0[26]),
        .I4(\out[22]_i_18_n_0 ),
        .O(\out[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[17]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[17]_i_2_n_0 ),
        .O(out_d[17]));
  LUT6 #(
    .INIT(64'hFFFF000001510151)) 
    \out[17]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[18]_i_4_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[17]_i_3_n_0 ),
        .I4(\u4/fract_out_pl1 [17]),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[17]_i_3 
       (.I0(\out[18]_i_5_n_0 ),
        .I1(\out[18]_i_6_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[21]_i_17_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .I5(\out[17]_i_4_n_0 ),
        .O(\out[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \out[17]_i_4 
       (.I0(data0[35]),
        .I1(\out[3]_i_11_n_0 ),
        .I2(\out[22]_i_27_n_0 ),
        .I3(data0[27]),
        .I4(\out[22]_i_18_n_0 ),
        .O(\out[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[18]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[18]_i_2_n_0 ),
        .O(out_d[18]));
  LUT6 #(
    .INIT(64'hFFFF000001510151)) 
    \out[18]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[18]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[18]_i_4_n_0 ),
        .I4(\u4/fract_out_pl1 [18]),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[18]_i_3 
       (.I0(\out[22]_i_21_n_0 ),
        .I1(\out[21]_i_17_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[18]_i_5_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .I5(\out[18]_i_6_n_0 ),
        .O(\out[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[18]_i_4 
       (.I0(\out[22]_i_25_n_0 ),
        .I1(\out[20]_i_15_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[20]_i_13_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .I5(\out[18]_i_7_n_0 ),
        .O(\out[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFAAAFFFFFBBFFBB)) 
    \out[18]_i_5 
       (.I0(\out[22]_i_18_n_0 ),
        .I1(data0[33]),
        .I2(data0[25]),
        .I3(\out[22]_i_27_n_0 ),
        .I4(data0[41]),
        .I5(\out[3]_i_11_n_0 ),
        .O(\out[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5353FFFFF0FF)) 
    \out[18]_i_6 
       (.I0(data0[21]),
        .I1(data0[37]),
        .I2(\out[22]_i_27_n_0 ),
        .I3(data0[29]),
        .I4(\out[22]_i_18_n_0 ),
        .I5(\out[3]_i_11_n_0 ),
        .O(\out[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5353FFFFF0FF)) 
    \out[18]_i_7 
       (.I0(data0[20]),
        .I1(data0[36]),
        .I2(\out[22]_i_27_n_0 ),
        .I3(data0[28]),
        .I4(\out[22]_i_18_n_0 ),
        .I5(\out[3]_i_11_n_0 ),
        .O(\out[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[19]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[19]_i_5_n_0 ),
        .O(out_d[19]));
  LUT6 #(
    .INIT(64'hDFFF2000FFFF0000)) 
    \out[19]_i_2 
       (.I0(\out[29]_i_2_n_0 ),
        .I1(\out[29]_i_3_n_0 ),
        .I2(\u4/fract_out_pl1 [23]),
        .I3(\out[22]_i_4_n_0 ),
        .I4(\out[21]_i_6_n_0 ),
        .I5(\out[29]_i_4_n_0 ),
        .O(\out[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h870F)) 
    \out[19]_i_3 
       (.I0(\u4/fract_out_pl1 [23]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\out[21]_i_8_n_0 ),
        .I3(\out[21]_i_9_n_0 ),
        .O(\out[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \out[19]_i_4 
       (.I0(\u4/fract_out_pl1 [23]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\out[29]_i_3_n_0 ),
        .I3(\out[29]_i_2_n_0 ),
        .O(\out[19]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[19]_i_5 
       (.I0(\u4/fract_out_pl1 [19]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\out[19]_i_6_n_0 ),
        .O(\out[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \out[19]_i_6 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[20]_i_6_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[20]_i_4_n_0 ),
        .I4(\out[22]_i_9_n_0 ),
        .I5(\out[18]_i_3_n_0 ),
        .O(\out[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out[1]_i_1 
       (.I0(\out[22]_i_2_n_0 ),
        .I1(\u4/p_0_in41_in [1]),
        .I2(\out[22]_i_4_n_0 ),
        .I3(\u4/fract_out_pl1 [1]),
        .O(out_d[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \out[1]_i_2 
       (.I0(\out[2]_i_3_n_0 ),
        .I1(\out[22]_i_9_n_0 ),
        .I2(\out[22]_i_13_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .O(\u4/p_0_in41_in [1]));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \out[20]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(\out[21]_i_4_n_0 ),
        .I2(\out[20]_i_2_n_0 ),
        .I3(\out[22]_i_4_n_0 ),
        .I4(\u4/fract_out_pl1 [20]),
        .O(out_d[20]));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[20]_i_10 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[18]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[18]_i_4_n_0 ),
        .O(\out[20]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[20]_i_11 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[18]_i_4_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[17]_i_3_n_0 ),
        .O(\out[20]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \out[20]_i_12 
       (.I0(data0[28]),
        .I1(data0[44]),
        .I2(\out[3]_i_11_n_0 ),
        .I3(data0[20]),
        .I4(\out[22]_i_27_n_0 ),
        .I5(data0[36]),
        .O(\out[20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFAAAFFFFFBBFFBB)) 
    \out[20]_i_13 
       (.I0(\out[22]_i_18_n_0 ),
        .I1(data0[32]),
        .I2(data0[24]),
        .I3(\out[22]_i_27_n_0 ),
        .I4(data0[40]),
        .I5(\out[3]_i_11_n_0 ),
        .O(\out[20]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFF00FF)) 
    \out[20]_i_14 
       (.I0(data0[42]),
        .I1(data0[41]),
        .I2(\out[20]_i_20_n_0 ),
        .I3(\out[20]_i_21_n_0 ),
        .I4(\out[20]_i_22_n_0 ),
        .I5(data0[47]),
        .O(\u4/fi_ldz [1]));
  LUT6 #(
    .INIT(64'hFFFF5353FFFFF0FF)) 
    \out[20]_i_15 
       (.I0(data0[22]),
        .I1(data0[38]),
        .I2(\out[22]_i_27_n_0 ),
        .I3(data0[30]),
        .I4(\out[22]_i_18_n_0 ),
        .I5(\out[3]_i_11_n_0 ),
        .O(\out[20]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[20]_i_16 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[17]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[16]_i_3_n_0 ),
        .O(\out[20]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[20]_i_17 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[16]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[15]_i_3_n_0 ),
        .O(\out[20]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[20]_i_18 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[15]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[14]_i_3_n_0 ),
        .O(\out[20]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[20]_i_19 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[14]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[13]_i_3_n_0 ),
        .O(\out[20]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00470047000000FF)) 
    \out[20]_i_2 
       (.I0(\out[20]_i_4_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[20]_i_6_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[21]_i_10_n_0 ),
        .I5(\out[22]_i_9_n_0 ),
        .O(\out[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h11111110)) 
    \out[20]_i_20 
       (.I0(data0[40]),
        .I1(data0[39]),
        .I2(\out[20]_i_23_n_0 ),
        .I3(data0[37]),
        .I4(data0[38]),
        .O(\out[20]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out[20]_i_21 
       (.I0(data0[45]),
        .I1(data0[46]),
        .O(\out[20]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out[20]_i_22 
       (.I0(data0[44]),
        .I1(data0[43]),
        .O(\out[20]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h11111110)) 
    \out[20]_i_23 
       (.I0(data0[35]),
        .I1(data0[36]),
        .I2(\out[20]_i_24_n_0 ),
        .I3(data0[34]),
        .I4(data0[33]),
        .O(\out[20]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110010)) 
    \out[20]_i_24 
       (.I0(data0[32]),
        .I1(data0[31]),
        .I2(\out[20]_i_25_n_0 ),
        .I3(\out[20]_i_26_n_0 ),
        .I4(data0[29]),
        .I5(data0[30]),
        .O(\out[20]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out[20]_i_25 
       (.I0(data0[27]),
        .I1(data0[28]),
        .O(\out[20]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110001)) 
    \out[20]_i_26 
       (.I0(data0[25]),
        .I1(data0[26]),
        .I2(data0[22]),
        .I3(data0[21]),
        .I4(data0[24]),
        .I5(data0[23]),
        .O(\out[20]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \out[20]_i_4 
       (.I0(\out[22]_i_18_n_0 ),
        .I1(\out[20]_i_12_n_0 ),
        .I2(\out[22]_i_20_n_0 ),
        .I3(\out[20]_i_13_n_0 ),
        .O(\out[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h410041FF)) 
    \out[20]_i_5 
       (.I0(\out[29]_i_7_n_0 ),
        .I1(\exp_r_reg_n_0_[1] ),
        .I2(\exp_r_reg_n_0_[0] ),
        .I3(\out[22]_i_17_n_0 ),
        .I4(\u4/fi_ldz [1]),
        .O(\out[20]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[20]_i_6 
       (.I0(\out[22]_i_25_n_0 ),
        .I1(\out[22]_i_20_n_0 ),
        .I2(\out[20]_i_15_n_0 ),
        .O(\out[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00470047000000FF)) 
    \out[20]_i_8 
       (.I0(\out[20]_i_4_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[20]_i_6_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[21]_i_10_n_0 ),
        .I5(\out[22]_i_9_n_0 ),
        .O(\out[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \out[20]_i_9 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[20]_i_6_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[20]_i_4_n_0 ),
        .I4(\out[22]_i_9_n_0 ),
        .I5(\out[18]_i_3_n_0 ),
        .O(\out[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \out[21]_i_10 
       (.I0(\out[22]_i_21_n_0 ),
        .I1(\out[22]_i_20_n_0 ),
        .I2(\out[21]_i_17_n_0 ),
        .I3(\out[22]_i_22_n_0 ),
        .I4(\out[20]_i_5_n_0 ),
        .O(\out[21]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \out[21]_i_11 
       (.I0(\out[29]_i_7_n_0 ),
        .I1(data0[47]),
        .I2(\u4/exp_next_mi ),
        .O(\out[21]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00008AAAAAAA8AAA)) 
    \out[21]_i_12 
       (.I0(\out[22]_i_9_n_0 ),
        .I1(\out[22]_i_30_n_0 ),
        .I2(\out[22]_i_28_n_0 ),
        .I3(\out[22]_i_20_n_0 ),
        .I4(\out[20]_i_5_n_0 ),
        .I5(\out[22]_i_33_n_0 ),
        .O(\out[21]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h0151)) 
    \out[21]_i_13 
       (.I0(\out[22]_i_9_n_0 ),
        .I1(\out[22]_i_32_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[3]_i_4_n_0 ),
        .O(\out[21]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF3F0F320)) 
    \out[21]_i_14 
       (.I0(\out[22]_i_32_n_0 ),
        .I1(\out[22]_i_9_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[21]_i_18_n_0 ),
        .I4(\out[21]_i_19_n_0 ),
        .I5(\out[21]_i_20_n_0 ),
        .O(\out[21]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F00FF55553333)) 
    \out[21]_i_15 
       (.I0(\out[22]_i_33_n_0 ),
        .I1(\out[21]_i_19_n_0 ),
        .I2(\out[22]_i_32_n_0 ),
        .I3(\out[21]_i_18_n_0 ),
        .I4(\out[20]_i_5_n_0 ),
        .I5(\out[22]_i_9_n_0 ),
        .O(\out[21]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \out[21]_i_16 
       (.I0(\exp_r_reg_n_0_[4] ),
        .I1(\exp_r_reg_n_0_[3] ),
        .I2(\exp_r_reg_n_0_[1] ),
        .I3(\exp_r_reg_n_0_[0] ),
        .I4(\exp_r_reg_n_0_[2] ),
        .O(\out[21]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5353FFFFF0FF)) 
    \out[21]_i_17 
       (.I0(data0[23]),
        .I1(data0[39]),
        .I2(\out[22]_i_27_n_0 ),
        .I3(data0[31]),
        .I4(\out[22]_i_18_n_0 ),
        .I5(\out[3]_i_11_n_0 ),
        .O(\out[21]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \out[21]_i_18 
       (.I0(\out[22]_i_27_n_0 ),
        .I1(data0[21]),
        .I2(\out[3]_i_11_n_0 ),
        .I3(\out[22]_i_18_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .O(\out[21]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \out[21]_i_19 
       (.I0(\out[22]_i_20_n_0 ),
        .I1(\out[3]_i_11_n_0 ),
        .I2(\out[22]_i_18_n_0 ),
        .I3(\out[22]_i_27_n_0 ),
        .I4(data0[22]),
        .O(\out[21]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \out[21]_i_2 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(\out[21]_i_4_n_0 ),
        .I2(\out[21]_i_5_n_0 ),
        .I3(\out[22]_i_4_n_0 ),
        .I4(\u4/fract_out_pl1 [21]),
        .O(out_d[21]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \out[21]_i_20 
       (.I0(\out[22]_i_27_n_0 ),
        .I1(data0[20]),
        .I2(\out[3]_i_11_n_0 ),
        .I3(\out[22]_i_18_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .O(\out[21]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF77F7F7FFFFFFFFF)) 
    \out[21]_i_3 
       (.I0(\out[26]_i_4_n_0 ),
        .I1(\out[26]_i_5_n_0 ),
        .I2(\out[26]_i_2_n_0 ),
        .I3(\out[22]_i_4_n_0 ),
        .I4(\u4/fract_out_pl1 [23]),
        .I5(\out[26]_i_3_n_0 ),
        .O(\out[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDFFDDDFF)) 
    \out[21]_i_4 
       (.I0(\out[29]_i_4_n_0 ),
        .I1(\out[21]_i_6_n_0 ),
        .I2(\out[21]_i_7_n_0 ),
        .I3(\out[21]_i_8_n_0 ),
        .I4(\out[21]_i_9_n_0 ),
        .I5(\out[29]_i_3_n_0 ),
        .O(\out[21]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h0151)) 
    \out[21]_i_5 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[22]_i_10_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[21]_i_10_n_0 ),
        .O(\out[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF950095FF)) 
    \out[21]_i_6 
       (.I0(\exp_r_reg_n_0_[7] ),
        .I1(\exp_r_reg_n_0_[6] ),
        .I2(\out[29]_i_9_n_0 ),
        .I3(data0[47]),
        .I4(\out_reg[29]_i_6_n_4 ),
        .I5(\out[21]_i_11_n_0 ),
        .O(\out[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDDFFFD)) 
    \out[21]_i_7 
       (.I0(\u4/fract_out_pl1 [23]),
        .I1(\out[22]_i_7_n_0 ),
        .I2(\out[21]_i_12_n_0 ),
        .I3(\out[21]_i_13_n_0 ),
        .I4(\out[21]_i_14_n_0 ),
        .I5(\out[21]_i_15_n_0 ),
        .O(\out[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h008800B8)) 
    \out[21]_i_8 
       (.I0(\out[21]_i_16_n_0 ),
        .I1(data0[47]),
        .I2(\out_reg[29]_i_6_n_7 ),
        .I3(\out[29]_i_7_n_0 ),
        .I4(\u4/exp_next_mi ),
        .O(\out[21]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \out[21]_i_9 
       (.I0(\out[26]_i_2_n_0 ),
        .I1(\out[26]_i_3_n_0 ),
        .I2(\out[26]_i_4_n_0 ),
        .I3(\out[26]_i_5_n_0 ),
        .O(\out[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \out[22]_i_10 
       (.I0(\out[22]_i_18_n_0 ),
        .I1(\out[22]_i_24_n_0 ),
        .I2(\out[22]_i_20_n_0 ),
        .I3(\out[22]_i_25_n_0 ),
        .I4(\out[20]_i_5_n_0 ),
        .I5(\out[20]_i_4_n_0 ),
        .O(\out[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFCFFFFFFF)) 
    \out[22]_i_11 
       (.I0(\out[22]_i_26_n_0 ),
        .I1(\out[22]_i_27_n_0 ),
        .I2(data0[21]),
        .I3(\out[22]_i_28_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .I5(\out[20]_i_5_n_0 ),
        .O(\out[22]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7000F00050005000)) 
    \out[22]_i_12 
       (.I0(\out[22]_i_29_n_0 ),
        .I1(\out[22]_i_30_n_0 ),
        .I2(\out[22]_i_20_n_0 ),
        .I3(\out[22]_i_28_n_0 ),
        .I4(\out[22]_i_31_n_0 ),
        .I5(\out[20]_i_5_n_0 ),
        .O(\out[22]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[22]_i_13 
       (.I0(\out[3]_i_4_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[22]_i_32_n_0 ),
        .O(\out[22]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8888B88888888888)) 
    \out[22]_i_14 
       (.I0(\out[22]_i_33_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[22]_i_20_n_0 ),
        .I3(\out[22]_i_28_n_0 ),
        .I4(\out[22]_i_27_n_0 ),
        .I5(data0[22]),
        .O(\out[22]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[22]_i_15 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[22]_i_8_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[22]_i_10_n_0 ),
        .O(\out[22]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[22]_i_16 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[22]_i_10_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[21]_i_10_n_0 ),
        .O(\out[22]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8888888A88888888)) 
    \out[22]_i_17 
       (.I0(\out[21]_i_6_n_0 ),
        .I1(\out[21]_i_11_n_0 ),
        .I2(\out[26]_i_5_n_0 ),
        .I3(\out[21]_i_8_n_0 ),
        .I4(\out[29]_i_4_n_0 ),
        .I5(\out[22]_i_34_n_0 ),
        .O(\out[22]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBFBF80888080)) 
    \out[22]_i_18 
       (.I0(\out[29]_i_5_n_0 ),
        .I1(\out[21]_i_6_n_0 ),
        .I2(\out[21]_i_11_n_0 ),
        .I3(\out[22]_i_35_n_0 ),
        .I4(\out[22]_i_34_n_0 ),
        .I5(\out[22]_i_36_n_0 ),
        .O(\out[22]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h101F5050101F5F5F)) 
    \out[22]_i_19 
       (.I0(data0[47]),
        .I1(data0[31]),
        .I2(\out[3]_i_11_n_0 ),
        .I3(data0[23]),
        .I4(\out[22]_i_27_n_0 ),
        .I5(data0[39]),
        .O(\out[22]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \out[22]_i_2 
       (.I0(\out[19]_i_4_n_0 ),
        .I1(\out[19]_i_3_n_0 ),
        .I2(\out[19]_i_2_n_0 ),
        .I3(out_d[29]),
        .I4(\out[21]_i_3_n_0 ),
        .O(\out[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC555C5C5C555C555)) 
    \out[22]_i_20 
       (.I0(\out[22]_i_37_n_0 ),
        .I1(\out[26]_i_7_n_0 ),
        .I2(\out[21]_i_6_n_0 ),
        .I3(\out[21]_i_11_n_0 ),
        .I4(\out[22]_i_35_n_0 ),
        .I5(\out[22]_i_34_n_0 ),
        .O(\out[22]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5F305F3F)) 
    \out[22]_i_21 
       (.I0(data0[27]),
        .I1(data0[43]),
        .I2(\out[3]_i_11_n_0 ),
        .I3(\out[22]_i_27_n_0 ),
        .I4(data0[35]),
        .I5(\out[22]_i_18_n_0 ),
        .O(\out[22]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \out[22]_i_22 
       (.I0(\out[22]_i_18_n_0 ),
        .I1(\out[22]_i_38_n_0 ),
        .I2(\out[22]_i_20_n_0 ),
        .I3(\out[18]_i_5_n_0 ),
        .O(\out[22]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABBBABBAAAA)) 
    \out[22]_i_23 
       (.I0(data0[47]),
        .I1(data0[46]),
        .I2(data0[45]),
        .I3(data0[44]),
        .I4(\out[22]_i_39_n_0 ),
        .I5(\out[22]_i_40_n_0 ),
        .O(\u4/fi_ldz [0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \out[22]_i_24 
       (.I0(data0[30]),
        .I1(data0[46]),
        .I2(\out[3]_i_11_n_0 ),
        .I3(data0[22]),
        .I4(\out[22]_i_27_n_0 ),
        .I5(data0[38]),
        .O(\out[22]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5F305F3F)) 
    \out[22]_i_25 
       (.I0(data0[26]),
        .I1(data0[42]),
        .I2(\out[3]_i_11_n_0 ),
        .I3(\out[22]_i_27_n_0 ),
        .I4(data0[34]),
        .I5(\out[22]_i_18_n_0 ),
        .O(\out[22]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \out[22]_i_26 
       (.I0(\out[22]_i_18_n_0 ),
        .I1(data0[23]),
        .I2(\out[22]_i_27_n_0 ),
        .I3(\out[3]_i_11_n_0 ),
        .O(\out[22]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBFBF80888080)) 
    \out[22]_i_27 
       (.I0(\out[21]_i_16_n_0 ),
        .I1(\out[21]_i_6_n_0 ),
        .I2(\out[21]_i_11_n_0 ),
        .I3(\out[22]_i_35_n_0 ),
        .I4(\out[22]_i_34_n_0 ),
        .I5(\out[22]_i_41_n_0 ),
        .O(\out[22]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[22]_i_28 
       (.I0(\out[3]_i_11_n_0 ),
        .I1(\out[22]_i_18_n_0 ),
        .O(\out[22]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \out[22]_i_29 
       (.I0(\out[22]_i_27_n_0 ),
        .I1(data0[20]),
        .O(\out[22]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h0151)) 
    \out[22]_i_3 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[22]_i_8_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[22]_i_10_n_0 ),
        .O(\out[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \out[22]_i_30 
       (.I0(\out[22]_i_27_n_0 ),
        .I1(data0[22]),
        .O(\out[22]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \out[22]_i_31 
       (.I0(\out[22]_i_27_n_0 ),
        .I1(data0[21]),
        .O(\out[22]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \out[22]_i_32 
       (.I0(\out[22]_i_20_n_0 ),
        .I1(\out[3]_i_11_n_0 ),
        .I2(\out[22]_i_27_n_0 ),
        .I3(data0[23]),
        .I4(\out[22]_i_18_n_0 ),
        .O(\out[22]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \out[22]_i_33 
       (.I0(data0[24]),
        .I1(\out[22]_i_20_n_0 ),
        .I2(\out[22]_i_18_n_0 ),
        .I3(\out[3]_i_11_n_0 ),
        .I4(data0[20]),
        .I5(\out[22]_i_27_n_0 ),
        .O(\out[22]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \out[22]_i_34 
       (.I0(\out[29]_i_3_n_0 ),
        .I1(\out[26]_i_3_n_0 ),
        .I2(\out[26]_i_2_n_0 ),
        .I3(\out[26]_i_4_n_0 ),
        .O(\out[22]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \out[22]_i_35 
       (.I0(\out[29]_i_4_n_0 ),
        .I1(\out[21]_i_8_n_0 ),
        .I2(\out[26]_i_5_n_0 ),
        .O(\out[22]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \out[22]_i_36 
       (.I0(\out[22]_i_41_n_0 ),
        .I1(\out[22]_i_42_n_0 ),
        .I2(\out[22]_i_43_n_0 ),
        .O(\out[22]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h01000101)) 
    \out[22]_i_37 
       (.I0(data0[47]),
        .I1(data0[45]),
        .I2(data0[46]),
        .I3(\out[22]_i_44_n_0 ),
        .I4(\out[22]_i_45_n_0 ),
        .O(\out[22]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \out[22]_i_38 
       (.I0(data0[29]),
        .I1(data0[45]),
        .I2(\out[3]_i_11_n_0 ),
        .I3(data0[21]),
        .I4(\out[22]_i_27_n_0 ),
        .I5(data0[37]),
        .O(\out[22]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h1111010111110100)) 
    \out[22]_i_39 
       (.I0(data0[38]),
        .I1(\out[22]_i_46_n_0 ),
        .I2(data0[36]),
        .I3(\out[22]_i_47_n_0 ),
        .I4(data0[37]),
        .I5(data0[35]),
        .O(\out[22]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077754040)) 
    \out[22]_i_4 
       (.I0(\out[22]_i_11_n_0 ),
        .I1(\out[22]_i_9_n_0 ),
        .I2(\out[22]_i_12_n_0 ),
        .I3(\out[22]_i_13_n_0 ),
        .I4(\out[22]_i_14_n_0 ),
        .I5(\out[22]_i_7_n_0 ),
        .O(\out[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F4)) 
    \out[22]_i_40 
       (.I0(data0[40]),
        .I1(data0[39]),
        .I2(data0[41]),
        .I3(data0[42]),
        .I4(data0[45]),
        .I5(data0[43]),
        .O(\out[22]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \out[22]_i_41 
       (.I0(\out[22]_i_48_n_0 ),
        .I1(\out[22]_i_49_n_0 ),
        .I2(data0[40]),
        .I3(data0[39]),
        .I4(data0[38]),
        .I5(data0[37]),
        .O(\out[22]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \out[22]_i_42 
       (.I0(data0[22]),
        .I1(data0[21]),
        .I2(data0[24]),
        .I3(data0[23]),
        .I4(data0[20]),
        .O(\out[22]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[22]_i_43 
       (.I0(data0[29]),
        .I1(data0[30]),
        .I2(data0[31]),
        .I3(data0[32]),
        .I4(\out[22]_i_50_n_0 ),
        .O(\out[22]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[22]_i_44 
       (.I0(data0[42]),
        .I1(data0[41]),
        .I2(data0[43]),
        .I3(data0[44]),
        .O(\out[22]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF777755555555)) 
    \out[22]_i_45 
       (.I0(\out[22]_i_51_n_0 ),
        .I1(\out[22]_i_52_n_0 ),
        .I2(data0[20]),
        .I3(\out[22]_i_53_n_0 ),
        .I4(\out[22]_i_50_n_0 ),
        .I5(\out[22]_i_49_n_0 ),
        .O(\out[22]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \out[22]_i_46 
       (.I0(data0[42]),
        .I1(data0[40]),
        .O(\out[22]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h55555510)) 
    \out[22]_i_47 
       (.I0(data0[34]),
        .I1(data0[32]),
        .I2(data0[31]),
        .I3(\out[22]_i_54_n_0 ),
        .I4(data0[33]),
        .O(\out[22]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \out[22]_i_48 
       (.I0(data0[47]),
        .I1(\out[20]_i_21_n_0 ),
        .I2(data0[44]),
        .I3(data0[43]),
        .I4(data0[41]),
        .I5(data0[42]),
        .O(\out[22]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out[22]_i_49 
       (.I0(data0[35]),
        .I1(data0[36]),
        .I2(data0[33]),
        .I3(data0[34]),
        .O(\out[22]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out[22]_i_50 
       (.I0(data0[28]),
        .I1(data0[27]),
        .I2(data0[25]),
        .I3(data0[26]),
        .O(\out[22]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out[22]_i_51 
       (.I0(data0[40]),
        .I1(data0[39]),
        .I2(data0[38]),
        .I3(data0[37]),
        .O(\out[22]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out[22]_i_52 
       (.I0(data0[32]),
        .I1(data0[31]),
        .I2(data0[30]),
        .I3(data0[29]),
        .O(\out[22]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out[22]_i_53 
       (.I0(data0[23]),
        .I1(data0[24]),
        .I2(data0[21]),
        .I3(data0[22]),
        .O(\out[22]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF54)) 
    \out[22]_i_54 
       (.I0(data0[28]),
        .I1(\out[22]_i_55_n_0 ),
        .I2(data0[27]),
        .I3(data0[29]),
        .I4(data0[30]),
        .I5(data0[32]),
        .O(\out[22]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h5555555511110010)) 
    \out[22]_i_55 
       (.I0(data0[26]),
        .I1(data0[24]),
        .I2(data0[21]),
        .I3(data0[22]),
        .I4(data0[23]),
        .I5(data0[25]),
        .O(\out[22]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'h04444440)) 
    \out[22]_i_7 
       (.I0(\out[29]_i_7_n_0 ),
        .I1(\out[22]_i_17_n_0 ),
        .I2(\exp_r_reg_n_0_[6] ),
        .I3(\out[29]_i_9_n_0 ),
        .I4(\exp_r_reg_n_0_[7] ),
        .O(\out[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \out[22]_i_8 
       (.I0(\out[22]_i_18_n_0 ),
        .I1(\out[22]_i_19_n_0 ),
        .I2(\out[22]_i_20_n_0 ),
        .I3(\out[22]_i_21_n_0 ),
        .I4(\out[20]_i_5_n_0 ),
        .I5(\out[22]_i_22_n_0 ),
        .O(\out[22]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    \out[22]_i_9 
       (.I0(\exp_r_reg_n_0_[0] ),
        .I1(\out[29]_i_7_n_0 ),
        .I2(\out[22]_i_17_n_0 ),
        .I3(\u4/fi_ldz [0]),
        .O(\out[22]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \out[23]_i_1 
       (.I0(\out[26]_i_2_n_0 ),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\u4/fract_out_pl1 [23]),
        .O(\out[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \out[24]_i_1 
       (.I0(\u4/fract_out_pl1 [23]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\out[26]_i_3_n_0 ),
        .I3(\out[26]_i_2_n_0 ),
        .O(out_d[24]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h78F0F0F0)) 
    \out[25]_i_1 
       (.I0(\u4/fract_out_pl1 [23]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\out[26]_i_4_n_0 ),
        .I3(\out[26]_i_2_n_0 ),
        .I4(\out[26]_i_3_n_0 ),
        .O(out_d[25]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out[26]_i_1 
       (.I0(\out[26]_i_2_n_0 ),
        .I1(\out[26]_i_3_n_0 ),
        .I2(\out[26]_i_4_n_0 ),
        .I3(\u4/fract_out_pl1 [23]),
        .I4(\out[22]_i_4_n_0 ),
        .I5(\out[26]_i_5_n_0 ),
        .O(out_d[26]));
  LUT2 #(
    .INIT(4'h6)) 
    \out[26]_i_10 
       (.I0(\u4/fi_ldz [0]),
        .I1(\u4/fi_ldz [1]),
        .O(\out[26]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \out[26]_i_11 
       (.I0(\out[3]_i_12_n_0 ),
        .I1(\out[29]_i_19_n_0 ),
        .I2(\out[26]_i_9_n_0 ),
        .I3(\exp_r_reg_n_0_[3] ),
        .O(\out[26]_i_11_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h1EE1E11E)) 
    \out[26]_i_12 
       (.I0(\u4/fi_ldz [0]),
        .I1(\u4/fi_ldz [1]),
        .I2(\out[22]_i_37_n_0 ),
        .I3(\exp_r_reg_n_0_[2] ),
        .I4(\out[26]_i_10_n_0 ),
        .O(\out[26]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out[26]_i_13 
       (.I0(\out[26]_i_10_n_0 ),
        .I1(\exp_r_reg_n_0_[1] ),
        .O(\out[26]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[26]_i_14 
       (.I0(\exp_r_reg_n_0_[0] ),
        .I1(\u4/fi_ldz [0]),
        .O(\out[26]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8A8BBABB8A88BAB8)) 
    \out[26]_i_2 
       (.I0(data0[46]),
        .I1(\out[29]_i_7_n_0 ),
        .I2(data0[47]),
        .I3(\u4/exp_next_mi ),
        .I4(\exp_r_reg_n_0_[0] ),
        .I5(\out_reg[26]_i_6_n_7 ),
        .O(\out[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h89CDCD8988CCCC88)) 
    \out[26]_i_3 
       (.I0(\out[29]_i_7_n_0 ),
        .I1(data0[47]),
        .I2(\u4/exp_next_mi ),
        .I3(\exp_r_reg_n_0_[0] ),
        .I4(\exp_r_reg_n_0_[1] ),
        .I5(\out_reg[26]_i_6_n_6 ),
        .O(\out[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h03110300)) 
    \out[26]_i_4 
       (.I0(\u4/exp_next_mi ),
        .I1(\out[29]_i_7_n_0 ),
        .I2(\out[26]_i_7_n_0 ),
        .I3(data0[47]),
        .I4(\out_reg[26]_i_6_n_5 ),
        .O(\out[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h01310030)) 
    \out[26]_i_5 
       (.I0(\u4/exp_next_mi ),
        .I1(\out[29]_i_7_n_0 ),
        .I2(data0[47]),
        .I3(\out[26]_i_8_n_0 ),
        .I4(\out_reg[26]_i_6_n_4 ),
        .O(\out[26]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \out[26]_i_7 
       (.I0(\exp_r_reg_n_0_[2] ),
        .I1(\exp_r_reg_n_0_[1] ),
        .I2(\exp_r_reg_n_0_[0] ),
        .O(\out[26]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \out[26]_i_8 
       (.I0(\exp_r_reg_n_0_[3] ),
        .I1(\exp_r_reg_n_0_[2] ),
        .I2(\exp_r_reg_n_0_[0] ),
        .I3(\exp_r_reg_n_0_[1] ),
        .O(\out[26]_i_8_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h1E00)) 
    \out[26]_i_9 
       (.I0(\u4/fi_ldz [0]),
        .I1(\u4/fi_ldz [1]),
        .I2(\out[22]_i_37_n_0 ),
        .I3(\exp_r_reg_n_0_[2] ),
        .O(\out[26]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out[27]_i_1 
       (.I0(\out[19]_i_3_n_0 ),
        .O(out_d[27]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \out[28]_i_1 
       (.I0(\out[19]_i_4_n_0 ),
        .O(out_d[28]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \out[29]_i_1 
       (.I0(\out[29]_i_2_n_0 ),
        .I1(\out[29]_i_3_n_0 ),
        .I2(\u4/fract_out_pl1 [23]),
        .I3(\out[22]_i_4_n_0 ),
        .I4(\out[29]_i_4_n_0 ),
        .O(out_d[29]));
  LUT2 #(
    .INIT(4'h2)) 
    \out[29]_i_10 
       (.I0(\exp_r_reg_n_0_[5] ),
        .I1(\out[22]_i_36_n_0 ),
        .O(\out[29]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7500)) 
    \out[29]_i_11 
       (.I0(\out[22]_i_41_n_0 ),
        .I1(\out[3]_i_12_n_0 ),
        .I2(\out[29]_i_19_n_0 ),
        .I3(\exp_r_reg_n_0_[4] ),
        .O(\out[29]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \out[29]_i_12 
       (.I0(\out[3]_i_12_n_0 ),
        .I1(\out[29]_i_19_n_0 ),
        .I2(\exp_r_reg_n_0_[3] ),
        .O(\out[29]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \out[29]_i_13 
       (.I0(\exp_r_reg_n_0_[6] ),
        .I1(\exp_r_reg_n_0_[7] ),
        .O(\out[29]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \out[29]_i_14 
       (.I0(\exp_r_reg_n_0_[5] ),
        .I1(\out[22]_i_36_n_0 ),
        .I2(\exp_r_reg_n_0_[6] ),
        .O(\out[29]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8AFF750075008AFF)) 
    \out[29]_i_15 
       (.I0(\out[22]_i_41_n_0 ),
        .I1(\out[3]_i_12_n_0 ),
        .I2(\out[29]_i_19_n_0 ),
        .I3(\exp_r_reg_n_0_[4] ),
        .I4(\out[22]_i_36_n_0 ),
        .I5(\exp_r_reg_n_0_[5] ),
        .O(\out[29]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h2B90D46F)) 
    \out[29]_i_16 
       (.I0(\out[3]_i_12_n_0 ),
        .I1(\out[29]_i_19_n_0 ),
        .I2(\exp_r_reg_n_0_[3] ),
        .I3(\out[22]_i_41_n_0 ),
        .I4(\exp_r_reg_n_0_[4] ),
        .O(\out[29]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[29]_i_17 
       (.I0(\exp_r_reg_n_0_[1] ),
        .I1(\exp_r_reg_n_0_[0] ),
        .I2(\exp_r_reg_n_0_[7] ),
        .I3(\exp_r_reg_n_0_[2] ),
        .O(\out[29]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out[29]_i_18 
       (.I0(\exp_r_reg_n_0_[7] ),
        .O(\out[29]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \out[29]_i_19 
       (.I0(\u4/fi_ldz [0]),
        .I1(\u4/fi_ldz [1]),
        .I2(\out[22]_i_37_n_0 ),
        .O(\out[29]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[29]_i_2 
       (.I0(\out[21]_i_9_n_0 ),
        .I1(\out[21]_i_8_n_0 ),
        .O(\out[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hFF77FF47)) 
    \out[29]_i_3 
       (.I0(\out[29]_i_5_n_0 ),
        .I1(data0[47]),
        .I2(\out_reg[29]_i_6_n_6 ),
        .I3(\out[29]_i_7_n_0 ),
        .I4(\u4/exp_next_mi ),
        .O(\out[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000606000006F60)) 
    \out[29]_i_4 
       (.I0(\exp_r_reg_n_0_[6] ),
        .I1(\out[29]_i_9_n_0 ),
        .I2(data0[47]),
        .I3(\out_reg[29]_i_6_n_5 ),
        .I4(\out[29]_i_7_n_0 ),
        .I5(\u4/exp_next_mi ),
        .O(\out[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \out[29]_i_5 
       (.I0(\exp_r_reg_n_0_[5] ),
        .I1(\exp_r_reg_n_0_[2] ),
        .I2(\exp_r_reg_n_0_[0] ),
        .I3(\exp_r_reg_n_0_[1] ),
        .I4(\exp_r_reg_n_0_[3] ),
        .I5(\exp_r_reg_n_0_[4] ),
        .O(\out[29]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \out[29]_i_7 
       (.I0(\exp_r_reg_n_0_[3] ),
        .I1(\exp_r_reg_n_0_[5] ),
        .I2(\exp_r_reg_n_0_[4] ),
        .I3(\exp_r_reg_n_0_[6] ),
        .I4(\out[29]_i_17_n_0 ),
        .O(\out[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \out[29]_i_9 
       (.I0(\exp_r_reg_n_0_[5] ),
        .I1(\exp_r_reg_n_0_[2] ),
        .I2(\exp_r_reg_n_0_[0] ),
        .I3(\exp_r_reg_n_0_[1] ),
        .I4(\exp_r_reg_n_0_[3] ),
        .I5(\exp_r_reg_n_0_[4] ),
        .O(\out[29]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out[2]_i_1 
       (.I0(\out[22]_i_2_n_0 ),
        .I1(\u4/p_0_in41_in [2]),
        .I2(\out[22]_i_4_n_0 ),
        .I3(\u4/fract_out_pl1 [2]),
        .O(out_d[2]));
  LUT6 #(
    .INIT(64'h00000000FF3A003A)) 
    \out[2]_i_2 
       (.I0(\out[3]_i_4_n_0 ),
        .I1(\out[3]_i_5_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[22]_i_9_n_0 ),
        .I4(\out[2]_i_3_n_0 ),
        .I5(\out[22]_i_7_n_0 ),
        .O(\u4/p_0_in41_in [2]));
  LUT3 #(
    .INIT(8'h3A)) 
    \out[2]_i_3 
       (.I0(\out[22]_i_33_n_0 ),
        .I1(\out[4]_i_5_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .O(\out[2]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out[30]_i_1 
       (.I0(\out[19]_i_2_n_0 ),
        .O(out_d[30]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[31]_i_11 
       (.I0(\u4/fract_out_pl1 [2]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\u4/p_0_in41_in [2]),
        .O(\out[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[31]_i_12 
       (.I0(\u4/fract_out_pl1 [3]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\out[3]_i_2_n_0 ),
        .O(\out[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[31]_i_13 
       (.I0(\out[0]_i_2_n_0 ),
        .I1(\out[22]_i_4_n_0 ),
        .O(\out[31]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[31]_i_14 
       (.I0(\u4/fract_out_pl1 [1]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\u4/p_0_in41_in [1]),
        .O(\out[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFF0EEE0)) 
    \out[31]_i_15 
       (.I0(\out[5]_i_2_n_0 ),
        .I1(\out[4]_i_2_n_0 ),
        .I2(\out[21]_i_3_n_0 ),
        .I3(\out[21]_i_4_n_0 ),
        .I4(\out[7]_i_2_n_0 ),
        .I5(\out[6]_i_2_n_0 ),
        .O(\out[31]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[31]_i_16 
       (.I0(\u4/fract_out_pl1 [10]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\out[10]_i_2_n_0 ),
        .O(\out[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[31]_i_17 
       (.I0(\u4/fract_out_pl1 [11]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\out[11]_i_2_n_0 ),
        .O(\out[31]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[31]_i_18 
       (.I0(\u4/fract_out_pl1 [8]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\out[8]_i_2_n_0 ),
        .O(\out[31]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[31]_i_19 
       (.I0(\u4/fract_out_pl1 [9]),
        .I1(\out[22]_i_4_n_0 ),
        .I2(\out[9]_i_2_n_0 ),
        .O(\out[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFF0EEE0)) 
    \out[31]_i_20 
       (.I0(\out[13]_i_2_n_0 ),
        .I1(\out[12]_i_2_n_0 ),
        .I2(\out[21]_i_3_n_0 ),
        .I3(\out[21]_i_4_n_0 ),
        .I4(\out[15]_i_2_n_0 ),
        .I5(\out[14]_i_2_n_0 ),
        .O(\out[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFDFC)) 
    \out[31]_i_21 
       (.I0(\out[21]_i_7_n_0 ),
        .I1(\out[21]_i_8_n_0 ),
        .I2(\out[26]_i_5_n_0 ),
        .I3(\out[26]_i_2_n_0 ),
        .I4(\out[26]_i_3_n_0 ),
        .I5(\out[26]_i_4_n_0 ),
        .O(\out[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0E0F0)) 
    \out[31]_i_4 
       (.I0(\out[31]_i_11_n_0 ),
        .I1(\out[31]_i_12_n_0 ),
        .I2(\out[22]_i_2_n_0 ),
        .I3(\out[31]_i_13_n_0 ),
        .I4(\out[31]_i_14_n_0 ),
        .I5(\out[31]_i_15_n_0 ),
        .O(\out[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0F0E0)) 
    \out[31]_i_5 
       (.I0(\out[31]_i_16_n_0 ),
        .I1(\out[31]_i_17_n_0 ),
        .I2(\out[22]_i_2_n_0 ),
        .I3(\out[31]_i_18_n_0 ),
        .I4(\out[31]_i_19_n_0 ),
        .I5(\out[31]_i_20_n_0 ),
        .O(\out[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEEE000E0)) 
    \out[31]_i_8 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(\out[21]_i_4_n_0 ),
        .I2(\out[22]_i_3_n_0 ),
        .I3(\out[22]_i_4_n_0 ),
        .I4(\u4/fract_out_pl1 [22]),
        .O(out_d[22]));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFF0EEE0)) 
    \out[31]_i_9 
       (.I0(\out[17]_i_2_n_0 ),
        .I1(\out[16]_i_2_n_0 ),
        .I2(\out[21]_i_3_n_0 ),
        .I3(\out[21]_i_4_n_0 ),
        .I4(\out[19]_i_5_n_0 ),
        .I5(\out[18]_i_2_n_0 ),
        .O(\out[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out[3]_i_1 
       (.I0(\out[22]_i_2_n_0 ),
        .I1(\out[3]_i_2_n_0 ),
        .I2(\out[22]_i_4_n_0 ),
        .I3(\u4/fract_out_pl1 [3]),
        .O(out_d[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \out[3]_i_10 
       (.I0(\out[2]_i_3_n_0 ),
        .I1(\out[22]_i_9_n_0 ),
        .I2(\out[22]_i_13_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .O(\out[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h80888080BFBBBFBF)) 
    \out[3]_i_11 
       (.I0(\out[26]_i_8_n_0 ),
        .I1(\out[21]_i_6_n_0 ),
        .I2(\out[21]_i_11_n_0 ),
        .I3(\out[22]_i_35_n_0 ),
        .I4(\out[22]_i_34_n_0 ),
        .I5(\out[3]_i_12_n_0 ),
        .O(\out[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h08AA)) 
    \out[3]_i_12 
       (.I0(\out[22]_i_48_n_0 ),
        .I1(\out[22]_i_43_n_0 ),
        .I2(\out[22]_i_42_n_0 ),
        .I3(\out[3]_i_13_n_0 ),
        .O(\out[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[3]_i_13 
       (.I0(data0[37]),
        .I1(data0[38]),
        .I2(data0[39]),
        .I3(data0[40]),
        .I4(\out[22]_i_49_n_0 ),
        .O(\out[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h003A003A000000FF)) 
    \out[3]_i_2 
       (.I0(\out[3]_i_4_n_0 ),
        .I1(\out[3]_i_5_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[4]_i_3_n_0 ),
        .I5(\out[22]_i_9_n_0 ),
        .O(\out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B000800)) 
    \out[3]_i_4 
       (.I0(data0[25]),
        .I1(\out[22]_i_20_n_0 ),
        .I2(\out[22]_i_18_n_0 ),
        .I3(\out[3]_i_11_n_0 ),
        .I4(data0[21]),
        .I5(\out[22]_i_27_n_0 ),
        .O(\out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1FFFDFF)) 
    \out[3]_i_5 
       (.I0(data0[23]),
        .I1(\out[22]_i_20_n_0 ),
        .I2(\out[22]_i_18_n_0 ),
        .I3(\out[3]_i_11_n_0 ),
        .I4(data0[27]),
        .I5(\out[22]_i_27_n_0 ),
        .O(\out[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out[3]_i_6 
       (.I0(\out[0]_i_2_n_0 ),
        .O(\out[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[3]_i_7 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[5]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[4]_i_3_n_0 ),
        .O(\out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h003A003A000000FF)) 
    \out[3]_i_8 
       (.I0(\out[3]_i_4_n_0 ),
        .I1(\out[3]_i_5_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[4]_i_3_n_0 ),
        .I5(\out[22]_i_9_n_0 ),
        .O(\out[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF3A003A)) 
    \out[3]_i_9 
       (.I0(\out[3]_i_4_n_0 ),
        .I1(\out[3]_i_5_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[22]_i_9_n_0 ),
        .I4(\out[2]_i_3_n_0 ),
        .I5(\out[22]_i_7_n_0 ),
        .O(\out[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[4]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[4]_i_2_n_0 ),
        .O(out_d[4]));
  LUT6 #(
    .INIT(64'hFFFF000001510151)) 
    \out[4]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[5]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[4]_i_3_n_0 ),
        .I4(\u4/fract_out_pl1 [4]),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0DDFFFFF0DD0000)) 
    \out[4]_i_3 
       (.I0(\out[22]_i_28_n_0 ),
        .I1(\out[4]_i_4_n_0 ),
        .I2(\out[10]_i_4_n_0 ),
        .I3(\out[22]_i_20_n_0 ),
        .I4(\out[20]_i_5_n_0 ),
        .I5(\out[4]_i_5_n_0 ),
        .O(\out[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \out[4]_i_4 
       (.I0(\out[22]_i_27_n_0 ),
        .I1(data0[24]),
        .O(\out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1FFFDFF)) 
    \out[4]_i_5 
       (.I0(data0[22]),
        .I1(\out[22]_i_20_n_0 ),
        .I2(\out[22]_i_18_n_0 ),
        .I3(\out[3]_i_11_n_0 ),
        .I4(data0[26]),
        .I5(\out[22]_i_27_n_0 ),
        .O(\out[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[5]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[5]_i_2_n_0 ),
        .O(out_d[5]));
  LUT6 #(
    .INIT(64'hFFFF000001510151)) 
    \out[5]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[6]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[5]_i_3_n_0 ),
        .I4(\u4/fract_out_pl1 [5]),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    \out[5]_i_3 
       (.I0(\out[7]_i_5_n_0 ),
        .I1(\out[11]_i_10_n_0 ),
        .I2(\out[22]_i_20_n_0 ),
        .I3(\out[20]_i_5_n_0 ),
        .I4(\out[3]_i_5_n_0 ),
        .O(\out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[6]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[6]_i_2_n_0 ),
        .O(out_d[6]));
  LUT6 #(
    .INIT(64'hFFFF000001510151)) 
    \out[6]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[7]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[6]_i_3_n_0 ),
        .I4(\u4/fract_out_pl1 [6]),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFC0C0505F505F)) 
    \out[6]_i_3 
       (.I0(\out[8]_i_9_n_0 ),
        .I1(\out[12]_i_4_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[6]_i_4_n_0 ),
        .I4(\out[10]_i_4_n_0 ),
        .I5(\out[22]_i_20_n_0 ),
        .O(\out[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \out[6]_i_4 
       (.I0(\out[22]_i_18_n_0 ),
        .I1(\out[3]_i_11_n_0 ),
        .I2(data0[24]),
        .I3(\out[22]_i_27_n_0 ),
        .O(\out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000000)) 
    \out[7]_i_1 
       (.I0(\out[21]_i_3_n_0 ),
        .I1(out_d[29]),
        .I2(\out[19]_i_2_n_0 ),
        .I3(\out[19]_i_3_n_0 ),
        .I4(\out[19]_i_4_n_0 ),
        .I5(\out[7]_i_2_n_0 ),
        .O(out_d[7]));
  LUT6 #(
    .INIT(64'hFFFF000001510151)) 
    \out[7]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[8]_i_4_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[7]_i_3_n_0 ),
        .I4(\u4/fract_out_pl1 [7]),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFC0C0505F505F)) 
    \out[7]_i_3 
       (.I0(\out[7]_i_4_n_0 ),
        .I1(\out[13]_i_4_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[7]_i_5_n_0 ),
        .I4(\out[11]_i_10_n_0 ),
        .I5(\out[22]_i_20_n_0 ),
        .O(\out[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \out[7]_i_4 
       (.I0(\out[22]_i_18_n_0 ),
        .I1(\out[3]_i_11_n_0 ),
        .I2(data0[27]),
        .I3(\out[22]_i_27_n_0 ),
        .O(\out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \out[7]_i_5 
       (.I0(\out[3]_i_11_n_0 ),
        .I1(\out[22]_i_18_n_0 ),
        .I2(data0[25]),
        .I3(\out[22]_i_27_n_0 ),
        .O(\out[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out[8]_i_1 
       (.I0(\out[22]_i_2_n_0 ),
        .I1(\out[8]_i_2_n_0 ),
        .I2(\out[22]_i_4_n_0 ),
        .I3(\u4/fract_out_pl1 [8]),
        .O(out_d[8]));
  LUT6 #(
    .INIT(64'h0000004700FF0047)) 
    \out[8]_i_2 
       (.I0(\out[11]_i_5_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[9]_i_3_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[22]_i_9_n_0 ),
        .I5(\out[8]_i_4_n_0 ),
        .O(\out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFA0A0C0CFC0CF)) 
    \out[8]_i_4 
       (.I0(\out[14]_i_4_n_0 ),
        .I1(\out[10]_i_4_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(\out[8]_i_9_n_0 ),
        .I4(\out[12]_i_4_n_0 ),
        .I5(\out[22]_i_20_n_0 ),
        .O(\out[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000004700FF0047)) 
    \out[8]_i_5 
       (.I0(\out[11]_i_5_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[9]_i_3_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[22]_i_9_n_0 ),
        .I5(\out[8]_i_4_n_0 ),
        .O(\out[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[8]_i_6 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[8]_i_4_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[7]_i_3_n_0 ),
        .O(\out[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[8]_i_7 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[7]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[6]_i_3_n_0 ),
        .O(\out[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0151)) 
    \out[8]_i_8 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[6]_i_3_n_0 ),
        .I2(\out[22]_i_9_n_0 ),
        .I3(\out[5]_i_3_n_0 ),
        .O(\out[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \out[8]_i_9 
       (.I0(\out[22]_i_18_n_0 ),
        .I1(\out[3]_i_11_n_0 ),
        .I2(data0[26]),
        .I3(\out[22]_i_27_n_0 ),
        .O(\out[8]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \out[9]_i_1 
       (.I0(\out[22]_i_2_n_0 ),
        .I1(\out[9]_i_2_n_0 ),
        .I2(\out[22]_i_4_n_0 ),
        .I3(\u4/fract_out_pl1 [9]),
        .O(out_d[9]));
  LUT6 #(
    .INIT(64'h00470047000000FF)) 
    \out[9]_i_2 
       (.I0(\out[11]_i_5_n_0 ),
        .I1(\out[20]_i_5_n_0 ),
        .I2(\out[9]_i_3_n_0 ),
        .I3(\out[22]_i_7_n_0 ),
        .I4(\out[10]_i_3_n_0 ),
        .I5(\out[22]_i_9_n_0 ),
        .O(\out[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00F7F7)) 
    \out[9]_i_3 
       (.I0(\out[22]_i_28_n_0 ),
        .I1(data0[27]),
        .I2(\out[22]_i_27_n_0 ),
        .I3(\out[13]_i_4_n_0 ),
        .I4(\out[22]_i_20_n_0 ),
        .O(\out[9]_i_3_n_0 ));
  FDRE \out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(u0_n_2),
        .Q(D[0]),
        .R(1'b0));
  FDRE \out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[10]),
        .Q(D[10]),
        .R(u0_n_3));
  FDRE \out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[11]),
        .Q(D[11]),
        .R(u0_n_3));
  CARRY4 \out_reg[11]_i_3 
       (.CI(\out_reg[8]_i_3_n_0 ),
        .CO({\out_reg[11]_i_3_n_0 ,\out_reg[11]_i_3_n_1 ,\out_reg[11]_i_3_n_2 ,\out_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\u4/fract_out_pl1 [12:9]),
        .S({\out[11]_i_6_n_0 ,\out[11]_i_7_n_0 ,\out[11]_i_8_n_0 ,\out[11]_i_9_n_0 }));
  FDRE \out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[12]),
        .Q(D[12]),
        .R(u0_n_3));
  FDRE \out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[13]),
        .Q(D[13]),
        .R(u0_n_3));
  FDRE \out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[14]),
        .Q(D[14]),
        .R(u0_n_3));
  FDRE \out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[15]),
        .Q(D[15]),
        .R(u0_n_3));
  FDRE \out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[16]),
        .Q(D[16]),
        .R(u0_n_3));
  FDRE \out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[17]),
        .Q(D[17]),
        .R(u0_n_3));
  FDRE \out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[18]),
        .Q(D[18]),
        .R(u0_n_3));
  FDRE \out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[19]),
        .Q(D[19]),
        .R(u0_n_3));
  FDRE \out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[1]),
        .Q(D[1]),
        .R(u0_n_3));
  FDRE \out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[20]),
        .Q(D[20]),
        .R(u0_n_3));
  CARRY4 \out_reg[20]_i_3 
       (.CI(\out_reg[20]_i_7_n_0 ),
        .CO({\out_reg[20]_i_3_n_0 ,\out_reg[20]_i_3_n_1 ,\out_reg[20]_i_3_n_2 ,\out_reg[20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\u4/fract_out_pl1 [20:17]),
        .S({\out[20]_i_8_n_0 ,\out[20]_i_9_n_0 ,\out[20]_i_10_n_0 ,\out[20]_i_11_n_0 }));
  CARRY4 \out_reg[20]_i_7 
       (.CI(\out_reg[11]_i_3_n_0 ),
        .CO({\out_reg[20]_i_7_n_0 ,\out_reg[20]_i_7_n_1 ,\out_reg[20]_i_7_n_2 ,\out_reg[20]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\u4/fract_out_pl1 [16:13]),
        .S({\out[20]_i_16_n_0 ,\out[20]_i_17_n_0 ,\out[20]_i_18_n_0 ,\out[20]_i_19_n_0 }));
  FDRE \out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[21]),
        .Q(D[21]),
        .R(u0_n_3));
  FDRE \out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(u0_n_1),
        .Q(D[22]),
        .R(1'b0));
  CARRY4 \out_reg[22]_i_5 
       (.CI(\out_reg[20]_i_3_n_0 ),
        .CO({\NLW_out_reg[22]_i_5_CO_UNCONNECTED [3],\u4/fract_out_pl1 [23],\NLW_out_reg[22]_i_5_CO_UNCONNECTED [1],\out_reg[22]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_out_reg[22]_i_5_O_UNCONNECTED [3:2],\u4/fract_out_pl1 [22:21]}),
        .S({1'b0,1'b1,\out[22]_i_15_n_0 ,\out[22]_i_16_n_0 }));
  FDSE \out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\out[23]_i_1_n_0 ),
        .Q(D[23]),
        .S(u0_n_3));
  FDSE \out_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[24]),
        .Q(D[24]),
        .S(u0_n_3));
  FDSE \out_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[25]),
        .Q(D[25]),
        .S(u0_n_3));
  FDSE \out_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[26]),
        .Q(D[26]),
        .S(u0_n_3));
  CARRY4 \out_reg[26]_i_6 
       (.CI(1'b0),
        .CO({\out_reg[26]_i_6_n_0 ,\out_reg[26]_i_6_n_1 ,\out_reg[26]_i_6_n_2 ,\out_reg[26]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\out[26]_i_9_n_0 ,\out[26]_i_10_n_0 ,\exp_r_reg_n_0_[1] ,\exp_r_reg_n_0_[0] }),
        .O({\out_reg[26]_i_6_n_4 ,\out_reg[26]_i_6_n_5 ,\out_reg[26]_i_6_n_6 ,\out_reg[26]_i_6_n_7 }),
        .S({\out[26]_i_11_n_0 ,\out[26]_i_12_n_0 ,\out[26]_i_13_n_0 ,\out[26]_i_14_n_0 }));
  FDSE \out_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[27]),
        .Q(D[27]),
        .S(u0_n_3));
  FDSE \out_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[28]),
        .Q(D[28]),
        .S(u0_n_3));
  FDSE \out_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[29]),
        .Q(D[29]),
        .S(u0_n_3));
  CARRY4 \out_reg[29]_i_6 
       (.CI(\out_reg[26]_i_6_n_0 ),
        .CO({\out_reg[29]_i_6_n_0 ,\out_reg[29]_i_6_n_1 ,\out_reg[29]_i_6_n_2 ,\out_reg[29]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\exp_r_reg_n_0_[6] ,\out[29]_i_10_n_0 ,\out[29]_i_11_n_0 ,\out[29]_i_12_n_0 }),
        .O({\out_reg[29]_i_6_n_4 ,\out_reg[29]_i_6_n_5 ,\out_reg[29]_i_6_n_6 ,\out_reg[29]_i_6_n_7 }),
        .S({\out[29]_i_13_n_0 ,\out[29]_i_14_n_0 ,\out[29]_i_15_n_0 ,\out[29]_i_16_n_0 }));
  CARRY4 \out_reg[29]_i_8 
       (.CI(\out_reg[29]_i_6_n_0 ),
        .CO(\NLW_out_reg[29]_i_8_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_out_reg[29]_i_8_O_UNCONNECTED [3:1],\u4/exp_next_mi }),
        .S({1'b0,1'b0,1'b0,\out[29]_i_18_n_0 }));
  FDRE \out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[2]),
        .Q(D[2]),
        .R(u0_n_3));
  FDSE \out_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[30]),
        .Q(D[30]),
        .S(u0_n_3));
  FDRE \out_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_reg0),
        .Q(D[31]),
        .R(1'b0));
  FDRE \out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[3]),
        .Q(D[3]),
        .R(u0_n_3));
  CARRY4 \out_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\out_reg[3]_i_3_n_0 ,\out_reg[3]_i_3_n_1 ,\out_reg[3]_i_3_n_2 ,\out_reg[3]_i_3_n_3 }),
        .CYINIT(\out[3]_i_6_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\u4/fract_out_pl1 [4:1]),
        .S({\out[3]_i_7_n_0 ,\out[3]_i_8_n_0 ,\out[3]_i_9_n_0 ,\out[3]_i_10_n_0 }));
  FDRE \out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[4]),
        .Q(D[4]),
        .R(u0_n_3));
  FDRE \out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[5]),
        .Q(D[5]),
        .R(u0_n_3));
  FDRE \out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[6]),
        .Q(D[6]),
        .R(u0_n_3));
  FDRE \out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[7]),
        .Q(D[7]),
        .R(u0_n_3));
  FDRE \out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[8]),
        .Q(D[8]),
        .R(u0_n_3));
  CARRY4 \out_reg[8]_i_3 
       (.CI(\out_reg[3]_i_3_n_0 ),
        .CO({\out_reg[8]_i_3_n_0 ,\out_reg[8]_i_3_n_1 ,\out_reg[8]_i_3_n_2 ,\out_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\u4/fract_out_pl1 [8:5]),
        .S({\out[8]_i_5_n_0 ,\out[8]_i_6_n_0 ,\out[8]_i_7_n_0 ,\out[8]_i_8_n_0 }));
  FDRE \out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(out_d[9]),
        .Q(D[9]),
        .R(u0_n_3));
  FDRE sign_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sign_fasu),
        .Q(sign),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_except u0
       (.D({u0_n_1,u0_n_2}),
        .O(\u4/fract_out_pl1 [22]),
        .Q(opb_r[30:0]),
        .expa_ff_reg_0(opa_r[30:0]),
        .fasu_op_r2(fasu_op_r2),
        .nan_sign(nan_sign_d),
        .opa_nan(opa_nan),
        .opb_nan(opb_nan),
        .\out[31]_i_3_0 (\out[31]_i_21_n_0 ),
        .\out[31]_i_3_1 (\out[19]_i_2_n_0 ),
        .\out[31]_i_3_2 (\out[19]_i_4_n_0 ),
        .out_d({out_d[29],out_d[22:20]}),
        .out_reg0(out_reg0),
        .\out_reg[0] (\out[22]_i_2_n_0 ),
        .\out_reg[0]_0 (\out[22]_i_4_n_0 ),
        .\out_reg[0]_1 (\out[0]_i_2_n_0 ),
        .\out_reg[22] (\out[22]_i_3_n_0 ),
        .\out_reg[31] (\out[31]_i_4_n_0 ),
        .\out_reg[31]_0 (\out[31]_i_5_n_0 ),
        .\out_reg[31]_1 (\out[23]_i_1_n_0 ),
        .\out_reg[31]_2 (\out[31]_i_9_n_0 ),
        .qnan_reg_0(u0_n_3),
        .result_zero_sign(result_zero_sign_d),
        .s00_axi_aclk(s00_axi_aclk),
        .sign(sign));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pre_norm u1
       (.CO(expa_lt_expb),
        .O(exp_diff2),
        .Q(opa_r),
        .\exp_dn_out_reg[7]_0 (exp_fasu),
        .fasu_op(fasu_op),
        .nan_sign(nan_sign_d),
        .opa_nan(opa_nan),
        .\opa_r_reg[23] (u1_n_5),
        .opb_nan(opb_nan),
        .result_zero_sign(result_zero_sign_d),
        .s00_axi_aclk(s00_axi_aclk),
        .sign_fasu(sign_fasu),
        .signb_r_reg_0(opb_r),
        .sum0({co_d,fract_out_d}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pre_norm
   (sign_fasu,
    nan_sign,
    result_zero_sign,
    fasu_op,
    CO,
    \opa_r_reg[23] ,
    \exp_dn_out_reg[7]_0 ,
    sum0,
    s00_axi_aclk,
    Q,
    signb_r_reg_0,
    O,
    opb_nan,
    opa_nan);
  output sign_fasu;
  output nan_sign;
  output result_zero_sign;
  output fasu_op;
  output [0:0]CO;
  output [0:0]\opa_r_reg[23] ;
  output [7:0]\exp_dn_out_reg[7]_0 ;
  output [27:0]sum0;
  input s00_axi_aclk;
  input [31:0]Q;
  input [31:0]signb_r_reg_0;
  input [3:0]O;
  input opb_nan;
  input opa_nan;

  wire [0:0]CO;
  wire [3:0]O;
  wire [31:0]Q;
  wire add_d;
  wire [3:0]exp_diff2;
  wire exp_dn_out0;
  wire exp_dn_out1;
  wire \exp_dn_out[7]_i_3_n_0 ;
  wire \exp_dn_out[7]_i_4_n_0 ;
  wire \exp_dn_out[7]_i_5_n_0 ;
  wire \exp_dn_out[7]_i_6_n_0 ;
  wire [7:0]\exp_dn_out_reg[7]_0 ;
  wire [7:0]exp_large;
  wire fasu_op;
  wire \fract_out_q[11]_i_2_n_0 ;
  wire \fract_out_q[11]_i_3_n_0 ;
  wire \fract_out_q[11]_i_4_n_0 ;
  wire \fract_out_q[11]_i_5_n_0 ;
  wire \fract_out_q[15]_i_2_n_0 ;
  wire \fract_out_q[15]_i_3_n_0 ;
  wire \fract_out_q[15]_i_4_n_0 ;
  wire \fract_out_q[15]_i_5_n_0 ;
  wire \fract_out_q[19]_i_2_n_0 ;
  wire \fract_out_q[19]_i_3_n_0 ;
  wire \fract_out_q[19]_i_4_n_0 ;
  wire \fract_out_q[19]_i_5_n_0 ;
  wire \fract_out_q[23]_i_2_n_0 ;
  wire \fract_out_q[23]_i_3_n_0 ;
  wire \fract_out_q[23]_i_4_n_0 ;
  wire \fract_out_q[23]_i_5_n_0 ;
  wire \fract_out_q[27]_i_3_n_0 ;
  wire \fract_out_q[27]_i_4_n_0 ;
  wire \fract_out_q[27]_i_5_n_0 ;
  wire \fract_out_q[3]_i_2_n_0 ;
  wire \fract_out_q[3]_i_3_n_0 ;
  wire \fract_out_q[3]_i_4_n_0 ;
  wire \fract_out_q[3]_i_5_n_0 ;
  wire \fract_out_q[3]_i_6_n_0 ;
  wire \fract_out_q[7]_i_2_n_0 ;
  wire \fract_out_q[7]_i_3_n_0 ;
  wire \fract_out_q[7]_i_4_n_0 ;
  wire \fract_out_q[7]_i_5_n_0 ;
  wire \fract_out_q_reg[11]_i_1_n_0 ;
  wire \fract_out_q_reg[11]_i_1_n_1 ;
  wire \fract_out_q_reg[11]_i_1_n_2 ;
  wire \fract_out_q_reg[11]_i_1_n_3 ;
  wire \fract_out_q_reg[15]_i_1_n_0 ;
  wire \fract_out_q_reg[15]_i_1_n_1 ;
  wire \fract_out_q_reg[15]_i_1_n_2 ;
  wire \fract_out_q_reg[15]_i_1_n_3 ;
  wire \fract_out_q_reg[19]_i_1_n_0 ;
  wire \fract_out_q_reg[19]_i_1_n_1 ;
  wire \fract_out_q_reg[19]_i_1_n_2 ;
  wire \fract_out_q_reg[19]_i_1_n_3 ;
  wire \fract_out_q_reg[23]_i_1_n_0 ;
  wire \fract_out_q_reg[23]_i_1_n_1 ;
  wire \fract_out_q_reg[23]_i_1_n_2 ;
  wire \fract_out_q_reg[23]_i_1_n_3 ;
  wire \fract_out_q_reg[27]_i_1_n_1 ;
  wire \fract_out_q_reg[27]_i_1_n_2 ;
  wire \fract_out_q_reg[27]_i_1_n_3 ;
  wire \fract_out_q_reg[3]_i_1_n_0 ;
  wire \fract_out_q_reg[3]_i_1_n_1 ;
  wire \fract_out_q_reg[3]_i_1_n_2 ;
  wire \fract_out_q_reg[3]_i_1_n_3 ;
  wire \fract_out_q_reg[7]_i_1_n_0 ;
  wire \fract_out_q_reg[7]_i_1_n_1 ;
  wire \fract_out_q_reg[7]_i_1_n_2 ;
  wire \fract_out_q_reg[7]_i_1_n_3 ;
  wire [26:0]fracta;
  wire fracta_eq_fractb;
  wire fracta_eq_fractb_i_10_n_0;
  wire fracta_eq_fractb_i_3_n_0;
  wire fracta_eq_fractb_i_4_n_0;
  wire fracta_eq_fractb_i_5_n_0;
  wire fracta_eq_fractb_i_6_n_0;
  wire fracta_eq_fractb_i_7_n_0;
  wire fracta_eq_fractb_i_8_n_0;
  wire fracta_eq_fractb_i_9_n_0;
  wire fracta_eq_fractb_reg_i_1_n_1;
  wire fracta_eq_fractb_reg_i_1_n_2;
  wire fracta_eq_fractb_reg_i_1_n_3;
  wire fracta_eq_fractb_reg_i_2_n_0;
  wire fracta_eq_fractb_reg_i_2_n_1;
  wire fracta_eq_fractb_reg_i_2_n_2;
  wire fracta_eq_fractb_reg_i_2_n_3;
  wire fracta_lt_fractb;
  wire fracta_lt_fractb_i_10_n_0;
  wire fracta_lt_fractb_i_12_n_0;
  wire fracta_lt_fractb_i_13_n_0;
  wire fracta_lt_fractb_i_14_n_0;
  wire fracta_lt_fractb_i_15_n_0;
  wire fracta_lt_fractb_i_16_n_0;
  wire fracta_lt_fractb_i_17_n_0;
  wire fracta_lt_fractb_i_18_n_0;
  wire fracta_lt_fractb_i_19_n_0;
  wire fracta_lt_fractb_i_20_n_0;
  wire fracta_lt_fractb_i_21_n_0;
  wire fracta_lt_fractb_i_22_n_0;
  wire fracta_lt_fractb_i_23_n_0;
  wire fracta_lt_fractb_i_24_n_0;
  wire fracta_lt_fractb_i_25_n_0;
  wire fracta_lt_fractb_i_26_n_0;
  wire fracta_lt_fractb_i_27_n_0;
  wire fracta_lt_fractb_i_3_n_0;
  wire fracta_lt_fractb_i_4_n_0;
  wire fracta_lt_fractb_i_5_n_0;
  wire fracta_lt_fractb_i_6_n_0;
  wire fracta_lt_fractb_i_7_n_0;
  wire fracta_lt_fractb_i_8_n_0;
  wire fracta_lt_fractb_i_9_n_0;
  wire fracta_lt_fractb_reg_i_11_n_0;
  wire fracta_lt_fractb_reg_i_11_n_1;
  wire fracta_lt_fractb_reg_i_11_n_2;
  wire fracta_lt_fractb_reg_i_11_n_3;
  wire fracta_lt_fractb_reg_i_1_n_0;
  wire fracta_lt_fractb_reg_i_1_n_1;
  wire fracta_lt_fractb_reg_i_1_n_2;
  wire fracta_lt_fractb_reg_i_1_n_3;
  wire fracta_lt_fractb_reg_i_2_n_0;
  wire fracta_lt_fractb_reg_i_2_n_1;
  wire fracta_lt_fractb_reg_i_2_n_2;
  wire fracta_lt_fractb_reg_i_2_n_3;
  wire [26:26]fracta_n;
  wire \fracta_out[0]_i_10_n_0 ;
  wire \fracta_out[0]_i_11_n_0 ;
  wire \fracta_out[0]_i_12_n_0 ;
  wire \fracta_out[0]_i_13_n_0 ;
  wire \fracta_out[0]_i_14_n_0 ;
  wire \fracta_out[0]_i_15_n_0 ;
  wire \fracta_out[0]_i_16_n_0 ;
  wire \fracta_out[0]_i_17_n_0 ;
  wire \fracta_out[0]_i_18_n_0 ;
  wire \fracta_out[0]_i_19_n_0 ;
  wire \fracta_out[0]_i_20_n_0 ;
  wire \fracta_out[0]_i_21_n_0 ;
  wire \fracta_out[0]_i_22_n_0 ;
  wire \fracta_out[0]_i_23_n_0 ;
  wire \fracta_out[0]_i_24_n_0 ;
  wire \fracta_out[0]_i_25_n_0 ;
  wire \fracta_out[0]_i_26_n_0 ;
  wire \fracta_out[0]_i_27_n_0 ;
  wire \fracta_out[0]_i_28_n_0 ;
  wire \fracta_out[0]_i_29_n_0 ;
  wire \fracta_out[0]_i_30_n_0 ;
  wire \fracta_out[0]_i_31_n_0 ;
  wire \fracta_out[0]_i_32_n_0 ;
  wire \fracta_out[0]_i_33_n_0 ;
  wire \fracta_out[0]_i_34_n_0 ;
  wire \fracta_out[0]_i_35_n_0 ;
  wire \fracta_out[0]_i_36_n_0 ;
  wire \fracta_out[0]_i_37_n_0 ;
  wire \fracta_out[0]_i_38_n_0 ;
  wire \fracta_out[0]_i_39_n_0 ;
  wire \fracta_out[0]_i_3_n_0 ;
  wire \fracta_out[0]_i_40_n_0 ;
  wire \fracta_out[0]_i_41_n_0 ;
  wire \fracta_out[0]_i_42_n_0 ;
  wire \fracta_out[0]_i_43_n_0 ;
  wire \fracta_out[0]_i_4_n_0 ;
  wire \fracta_out[0]_i_5_n_0 ;
  wire \fracta_out[0]_i_7_n_0 ;
  wire \fracta_out[0]_i_8_n_0 ;
  wire \fracta_out[0]_i_9_n_0 ;
  wire \fracta_out[10]_i_2_n_0 ;
  wire \fracta_out[10]_i_3_n_0 ;
  wire \fracta_out[10]_i_4_n_0 ;
  wire \fracta_out[10]_i_5_n_0 ;
  wire \fracta_out[10]_i_6_n_0 ;
  wire \fracta_out[10]_i_7_n_0 ;
  wire \fracta_out[11]_i_2_n_0 ;
  wire \fracta_out[11]_i_3_n_0 ;
  wire \fracta_out[11]_i_4_n_0 ;
  wire \fracta_out[12]_i_2_n_0 ;
  wire \fracta_out[12]_i_3_n_0 ;
  wire \fracta_out[12]_i_4_n_0 ;
  wire \fracta_out[12]_i_5_n_0 ;
  wire \fracta_out[12]_i_6_n_0 ;
  wire \fracta_out[12]_i_7_n_0 ;
  wire \fracta_out[12]_i_8_n_0 ;
  wire \fracta_out[12]_i_9_n_0 ;
  wire \fracta_out[13]_i_2_n_0 ;
  wire \fracta_out[13]_i_3_n_0 ;
  wire \fracta_out[13]_i_4_n_0 ;
  wire \fracta_out[13]_i_5_n_0 ;
  wire \fracta_out[13]_i_6_n_0 ;
  wire \fracta_out[13]_i_7_n_0 ;
  wire \fracta_out[14]_i_10_n_0 ;
  wire \fracta_out[14]_i_2_n_0 ;
  wire \fracta_out[14]_i_3_n_0 ;
  wire \fracta_out[14]_i_4_n_0 ;
  wire \fracta_out[14]_i_5_n_0 ;
  wire \fracta_out[14]_i_6_n_0 ;
  wire \fracta_out[14]_i_7_n_0 ;
  wire \fracta_out[14]_i_8_n_0 ;
  wire \fracta_out[14]_i_9_n_0 ;
  wire \fracta_out[15]_i_2_n_0 ;
  wire \fracta_out[15]_i_3_n_0 ;
  wire \fracta_out[15]_i_4_n_0 ;
  wire \fracta_out[15]_i_5_n_0 ;
  wire \fracta_out[16]_i_2_n_0 ;
  wire \fracta_out[16]_i_3_n_0 ;
  wire \fracta_out[16]_i_4_n_0 ;
  wire \fracta_out[16]_i_5_n_0 ;
  wire \fracta_out[17]_i_2_n_0 ;
  wire \fracta_out[17]_i_3_n_0 ;
  wire \fracta_out[17]_i_4_n_0 ;
  wire \fracta_out[18]_i_2_n_0 ;
  wire \fracta_out[18]_i_3_n_0 ;
  wire \fracta_out[18]_i_4_n_0 ;
  wire \fracta_out[19]_i_2_n_0 ;
  wire \fracta_out[19]_i_3_n_0 ;
  wire \fracta_out[19]_i_4_n_0 ;
  wire \fracta_out[19]_i_5_n_0 ;
  wire \fracta_out[1]_i_2_n_0 ;
  wire \fracta_out[1]_i_3_n_0 ;
  wire \fracta_out[1]_i_4_n_0 ;
  wire \fracta_out[1]_i_5_n_0 ;
  wire \fracta_out[20]_i_2_n_0 ;
  wire \fracta_out[20]_i_3_n_0 ;
  wire \fracta_out[20]_i_4_n_0 ;
  wire \fracta_out[21]_i_2_n_0 ;
  wire \fracta_out[21]_i_3_n_0 ;
  wire \fracta_out[21]_i_4_n_0 ;
  wire \fracta_out[22]_i_2_n_0 ;
  wire \fracta_out[22]_i_3_n_0 ;
  wire \fracta_out[22]_i_4_n_0 ;
  wire \fracta_out[22]_i_5_n_0 ;
  wire \fracta_out[23]_i_2_n_0 ;
  wire \fracta_out[23]_i_3_n_0 ;
  wire \fracta_out[23]_i_4_n_0 ;
  wire \fracta_out[23]_i_5_n_0 ;
  wire \fracta_out[23]_i_6_n_0 ;
  wire \fracta_out[24]_i_2_n_0 ;
  wire \fracta_out[24]_i_3_n_0 ;
  wire \fracta_out[24]_i_4_n_0 ;
  wire \fracta_out[25]_i_10_n_0 ;
  wire \fracta_out[25]_i_11_n_0 ;
  wire \fracta_out[25]_i_12_n_0 ;
  wire \fracta_out[25]_i_13_n_0 ;
  wire \fracta_out[25]_i_15_n_0 ;
  wire \fracta_out[25]_i_3_n_0 ;
  wire \fracta_out[25]_i_4_n_0 ;
  wire \fracta_out[25]_i_5_n_0 ;
  wire \fracta_out[25]_i_6_n_0 ;
  wire \fracta_out[25]_i_7_n_0 ;
  wire \fracta_out[25]_i_8_n_0 ;
  wire \fracta_out[25]_i_9_n_0 ;
  wire \fracta_out[26]_i_10_n_0 ;
  wire \fracta_out[26]_i_11_n_0 ;
  wire \fracta_out[26]_i_12_n_0 ;
  wire \fracta_out[26]_i_13_n_0 ;
  wire \fracta_out[26]_i_14_n_0 ;
  wire \fracta_out[26]_i_15_n_0 ;
  wire \fracta_out[26]_i_17_n_0 ;
  wire \fracta_out[26]_i_18_n_0 ;
  wire \fracta_out[26]_i_19_n_0 ;
  wire \fracta_out[26]_i_21_n_0 ;
  wire \fracta_out[26]_i_22_n_0 ;
  wire \fracta_out[26]_i_23_n_0 ;
  wire \fracta_out[26]_i_24_n_0 ;
  wire \fracta_out[26]_i_25_n_0 ;
  wire \fracta_out[26]_i_26_n_0 ;
  wire \fracta_out[26]_i_27_n_0 ;
  wire \fracta_out[26]_i_28_n_0 ;
  wire \fracta_out[26]_i_29_n_0 ;
  wire \fracta_out[26]_i_30_n_0 ;
  wire \fracta_out[26]_i_31_n_0 ;
  wire \fracta_out[26]_i_32_n_0 ;
  wire \fracta_out[26]_i_33_n_0 ;
  wire \fracta_out[26]_i_34_n_0 ;
  wire \fracta_out[26]_i_35_n_0 ;
  wire \fracta_out[26]_i_36_n_0 ;
  wire \fracta_out[26]_i_37_n_0 ;
  wire \fracta_out[26]_i_38_n_0 ;
  wire \fracta_out[26]_i_39_n_0 ;
  wire \fracta_out[26]_i_41_n_0 ;
  wire \fracta_out[26]_i_42_n_0 ;
  wire \fracta_out[26]_i_43_n_0 ;
  wire \fracta_out[26]_i_44_n_0 ;
  wire \fracta_out[26]_i_45_n_0 ;
  wire \fracta_out[26]_i_46_n_0 ;
  wire \fracta_out[26]_i_47_n_0 ;
  wire \fracta_out[26]_i_48_n_0 ;
  wire \fracta_out[26]_i_49_n_0 ;
  wire \fracta_out[26]_i_50_n_0 ;
  wire \fracta_out[26]_i_51_n_0 ;
  wire \fracta_out[26]_i_52_n_0 ;
  wire \fracta_out[26]_i_53_n_0 ;
  wire \fracta_out[26]_i_54_n_0 ;
  wire \fracta_out[26]_i_55_n_0 ;
  wire \fracta_out[26]_i_56_n_0 ;
  wire \fracta_out[26]_i_57_n_0 ;
  wire \fracta_out[26]_i_58_n_0 ;
  wire \fracta_out[26]_i_59_n_0 ;
  wire \fracta_out[26]_i_5_n_0 ;
  wire \fracta_out[26]_i_60_n_0 ;
  wire \fracta_out[26]_i_61_n_0 ;
  wire \fracta_out[26]_i_62_n_0 ;
  wire \fracta_out[26]_i_63_n_0 ;
  wire \fracta_out[26]_i_6_n_0 ;
  wire \fracta_out[26]_i_7_n_0 ;
  wire \fracta_out[26]_i_8_n_0 ;
  wire \fracta_out[2]_i_2_n_0 ;
  wire \fracta_out[2]_i_3_n_0 ;
  wire \fracta_out[2]_i_4_n_0 ;
  wire \fracta_out[2]_i_5_n_0 ;
  wire \fracta_out[3]_i_2_n_0 ;
  wire \fracta_out[3]_i_3_n_0 ;
  wire \fracta_out[3]_i_4_n_0 ;
  wire \fracta_out[3]_i_5_n_0 ;
  wire \fracta_out[3]_i_6_n_0 ;
  wire \fracta_out[3]_i_7_n_0 ;
  wire \fracta_out[3]_i_8_n_0 ;
  wire \fracta_out[3]_i_9_n_0 ;
  wire \fracta_out[4]_i_2_n_0 ;
  wire \fracta_out[4]_i_3_n_0 ;
  wire \fracta_out[4]_i_4_n_0 ;
  wire \fracta_out[4]_i_5_n_0 ;
  wire \fracta_out[5]_i_2_n_0 ;
  wire \fracta_out[5]_i_3_n_0 ;
  wire \fracta_out[5]_i_4_n_0 ;
  wire \fracta_out[5]_i_5_n_0 ;
  wire \fracta_out[5]_i_6_n_0 ;
  wire \fracta_out[5]_i_7_n_0 ;
  wire \fracta_out[6]_i_2_n_0 ;
  wire \fracta_out[6]_i_3_n_0 ;
  wire \fracta_out[6]_i_4_n_0 ;
  wire \fracta_out[6]_i_5_n_0 ;
  wire \fracta_out[6]_i_6_n_0 ;
  wire \fracta_out[6]_i_7_n_0 ;
  wire \fracta_out[6]_i_8_n_0 ;
  wire \fracta_out[7]_i_2_n_0 ;
  wire \fracta_out[7]_i_3_n_0 ;
  wire \fracta_out[7]_i_4_n_0 ;
  wire \fracta_out[7]_i_5_n_0 ;
  wire \fracta_out[8]_i_2_n_0 ;
  wire \fracta_out[8]_i_3_n_0 ;
  wire \fracta_out[8]_i_4_n_0 ;
  wire \fracta_out[8]_i_5_n_0 ;
  wire \fracta_out[8]_i_6_n_0 ;
  wire \fracta_out[9]_i_2_n_0 ;
  wire \fracta_out[9]_i_3_n_0 ;
  wire \fracta_out[9]_i_4_n_0 ;
  wire \fracta_out_reg[0]_i_2_n_0 ;
  wire \fracta_out_reg[0]_i_6_n_0 ;
  wire \fracta_out_reg[25]_i_2_n_1 ;
  wire \fracta_out_reg[25]_i_2_n_2 ;
  wire \fracta_out_reg[25]_i_2_n_3 ;
  wire \fracta_out_reg[26]_i_16_n_1 ;
  wire \fracta_out_reg[26]_i_16_n_2 ;
  wire \fracta_out_reg[26]_i_16_n_3 ;
  wire \fracta_out_reg[26]_i_20_n_0 ;
  wire \fracta_out_reg[26]_i_20_n_1 ;
  wire \fracta_out_reg[26]_i_20_n_2 ;
  wire \fracta_out_reg[26]_i_20_n_3 ;
  wire \fracta_out_reg[26]_i_3_n_3 ;
  wire \fracta_out_reg[26]_i_40_n_0 ;
  wire \fracta_out_reg[26]_i_40_n_1 ;
  wire \fracta_out_reg[26]_i_40_n_2 ;
  wire \fracta_out_reg[26]_i_40_n_3 ;
  wire \fracta_out_reg[26]_i_9_n_0 ;
  wire \fracta_out_reg[26]_i_9_n_1 ;
  wire \fracta_out_reg[26]_i_9_n_2 ;
  wire \fracta_out_reg[26]_i_9_n_3 ;
  wire [26:0]fracta_s;
  wire [26:0]fractb;
  wire fractb_lt_fracta;
  wire [26:26]fractb_n;
  wire [26:0]fractb_s;
  wire nan_sign;
  wire nan_sign10;
  wire nan_sign_i_1_n_0;
  wire opa_nan;
  wire [0:0]\opa_r_reg[23] ;
  wire opb_nan;
  wire result_zero_sign;
  wire s00_axi_aclk;
  wire sign_d;
  wire sign_fasu;
  wire signa_r;
  wire signb_r;
  wire [31:0]signb_r_reg_0;
  wire [27:0]sum0;
  wire \u3/p_1_in ;
  wire [3:3]\NLW_fract_out_q_reg[27]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_fracta_eq_fractb_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_fracta_eq_fractb_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_fracta_lt_fractb_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_fracta_lt_fractb_reg_i_11_O_UNCONNECTED;
  wire [3:0]NLW_fracta_lt_fractb_reg_i_2_O_UNCONNECTED;
  wire [3:0]\NLW_fracta_out_reg[25]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_fracta_out_reg[26]_i_20_O_UNCONNECTED ;
  wire [3:2]\NLW_fracta_out_reg[26]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_fracta_out_reg[26]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_fracta_out_reg[26]_i_40_O_UNCONNECTED ;
  wire [3:0]\NLW_fracta_out_reg[26]_i_9_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \exp_dn_out[0]_i_1 
       (.I0(Q[23]),
        .I1(CO),
        .I2(signb_r_reg_0[23]),
        .O(exp_large[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exp_dn_out[1]_i_1 
       (.I0(Q[24]),
        .I1(CO),
        .I2(signb_r_reg_0[24]),
        .O(exp_large[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exp_dn_out[2]_i_1 
       (.I0(Q[25]),
        .I1(CO),
        .I2(signb_r_reg_0[25]),
        .O(exp_large[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exp_dn_out[3]_i_1 
       (.I0(Q[26]),
        .I1(CO),
        .I2(signb_r_reg_0[26]),
        .O(exp_large[3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exp_dn_out[4]_i_1 
       (.I0(Q[27]),
        .I1(CO),
        .I2(signb_r_reg_0[27]),
        .O(exp_large[4]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exp_dn_out[5]_i_1 
       (.I0(Q[28]),
        .I1(CO),
        .I2(signb_r_reg_0[28]),
        .O(exp_large[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exp_dn_out[6]_i_1 
       (.I0(Q[29]),
        .I1(CO),
        .I2(signb_r_reg_0[29]),
        .O(exp_large[6]));
  LUT5 #(
    .INIT(32'h00002800)) 
    \exp_dn_out[7]_i_1 
       (.I0(exp_dn_out1),
        .I1(signb_r_reg_0[31]),
        .I2(Q[31]),
        .I3(\exp_dn_out[7]_i_3_n_0 ),
        .I4(\exp_dn_out[7]_i_4_n_0 ),
        .O(exp_dn_out0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \exp_dn_out[7]_i_2 
       (.I0(Q[30]),
        .I1(CO),
        .I2(signb_r_reg_0[30]),
        .O(exp_large[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \exp_dn_out[7]_i_3 
       (.I0(signb_r_reg_0[26]),
        .I1(Q[26]),
        .I2(signb_r_reg_0[25]),
        .I3(Q[25]),
        .O(\exp_dn_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFFFFFF)) 
    \exp_dn_out[7]_i_4 
       (.I0(Q[29]),
        .I1(signb_r_reg_0[29]),
        .I2(Q[30]),
        .I3(signb_r_reg_0[30]),
        .I4(\exp_dn_out[7]_i_5_n_0 ),
        .I5(\exp_dn_out[7]_i_6_n_0 ),
        .O(\exp_dn_out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \exp_dn_out[7]_i_5 
       (.I0(signb_r_reg_0[28]),
        .I1(Q[28]),
        .I2(signb_r_reg_0[27]),
        .I3(Q[27]),
        .O(\exp_dn_out[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \exp_dn_out[7]_i_6 
       (.I0(signb_r_reg_0[24]),
        .I1(Q[24]),
        .I2(signb_r_reg_0[23]),
        .I3(Q[23]),
        .O(\exp_dn_out[7]_i_6_n_0 ));
  FDRE \exp_dn_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_large[0]),
        .Q(\exp_dn_out_reg[7]_0 [0]),
        .R(exp_dn_out0));
  FDRE \exp_dn_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_large[1]),
        .Q(\exp_dn_out_reg[7]_0 [1]),
        .R(exp_dn_out0));
  FDRE \exp_dn_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_large[2]),
        .Q(\exp_dn_out_reg[7]_0 [2]),
        .R(exp_dn_out0));
  FDRE \exp_dn_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_large[3]),
        .Q(\exp_dn_out_reg[7]_0 [3]),
        .R(exp_dn_out0));
  FDRE \exp_dn_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_large[4]),
        .Q(\exp_dn_out_reg[7]_0 [4]),
        .R(exp_dn_out0));
  FDRE \exp_dn_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_large[5]),
        .Q(\exp_dn_out_reg[7]_0 [5]),
        .R(exp_dn_out0));
  FDRE \exp_dn_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_large[6]),
        .Q(\exp_dn_out_reg[7]_0 [6]),
        .R(exp_dn_out0));
  FDRE \exp_dn_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_large[7]),
        .Q(\exp_dn_out_reg[7]_0 [7]),
        .R(exp_dn_out0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h9)) 
    fasu_op_i_1
       (.I0(signb_r_reg_0[31]),
        .I1(Q[31]),
        .O(add_d));
  FDRE fasu_op_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(add_d),
        .Q(fasu_op),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[11]_i_2 
       (.I0(fractb[11]),
        .I1(fasu_op),
        .I2(fracta[11]),
        .O(\fract_out_q[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[11]_i_3 
       (.I0(fractb[10]),
        .I1(fasu_op),
        .I2(fracta[10]),
        .O(\fract_out_q[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[11]_i_4 
       (.I0(fractb[9]),
        .I1(fasu_op),
        .I2(fracta[9]),
        .O(\fract_out_q[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[11]_i_5 
       (.I0(fractb[8]),
        .I1(fasu_op),
        .I2(fracta[8]),
        .O(\fract_out_q[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[15]_i_2 
       (.I0(fractb[15]),
        .I1(fasu_op),
        .I2(fracta[15]),
        .O(\fract_out_q[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[15]_i_3 
       (.I0(fractb[14]),
        .I1(fasu_op),
        .I2(fracta[14]),
        .O(\fract_out_q[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[15]_i_4 
       (.I0(fractb[13]),
        .I1(fasu_op),
        .I2(fracta[13]),
        .O(\fract_out_q[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[15]_i_5 
       (.I0(fractb[12]),
        .I1(fasu_op),
        .I2(fracta[12]),
        .O(\fract_out_q[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[19]_i_2 
       (.I0(fractb[19]),
        .I1(fasu_op),
        .I2(fracta[19]),
        .O(\fract_out_q[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[19]_i_3 
       (.I0(fractb[18]),
        .I1(fasu_op),
        .I2(fracta[18]),
        .O(\fract_out_q[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[19]_i_4 
       (.I0(fractb[17]),
        .I1(fasu_op),
        .I2(fracta[17]),
        .O(\fract_out_q[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[19]_i_5 
       (.I0(fractb[16]),
        .I1(fasu_op),
        .I2(fracta[16]),
        .O(\fract_out_q[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[23]_i_2 
       (.I0(fractb[23]),
        .I1(fasu_op),
        .I2(fracta[23]),
        .O(\fract_out_q[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[23]_i_3 
       (.I0(fractb[22]),
        .I1(fasu_op),
        .I2(fracta[22]),
        .O(\fract_out_q[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[23]_i_4 
       (.I0(fractb[21]),
        .I1(fasu_op),
        .I2(fracta[21]),
        .O(\fract_out_q[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[23]_i_5 
       (.I0(fractb[20]),
        .I1(fasu_op),
        .I2(fracta[20]),
        .O(\fract_out_q[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fract_out_q[27]_i_2 
       (.I0(fasu_op),
        .O(\u3/p_1_in ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[27]_i_3 
       (.I0(fractb[26]),
        .I1(fasu_op),
        .I2(fracta[26]),
        .O(\fract_out_q[27]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[27]_i_4 
       (.I0(fractb[25]),
        .I1(fasu_op),
        .I2(fracta[25]),
        .O(\fract_out_q[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[27]_i_5 
       (.I0(fractb[24]),
        .I1(fasu_op),
        .I2(fracta[24]),
        .O(\fract_out_q[27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fract_out_q[3]_i_2 
       (.I0(fasu_op),
        .O(\fract_out_q[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[3]_i_3 
       (.I0(fractb[3]),
        .I1(fasu_op),
        .I2(fracta[3]),
        .O(\fract_out_q[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[3]_i_4 
       (.I0(fractb[2]),
        .I1(fasu_op),
        .I2(fracta[2]),
        .O(\fract_out_q[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[3]_i_5 
       (.I0(fractb[1]),
        .I1(fasu_op),
        .I2(fracta[1]),
        .O(\fract_out_q[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fract_out_q[3]_i_6 
       (.I0(fractb[0]),
        .O(\fract_out_q[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[7]_i_2 
       (.I0(fractb[7]),
        .I1(fasu_op),
        .I2(fracta[7]),
        .O(\fract_out_q[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[7]_i_3 
       (.I0(fractb[6]),
        .I1(fasu_op),
        .I2(fracta[6]),
        .O(\fract_out_q[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[7]_i_4 
       (.I0(fractb[5]),
        .I1(fasu_op),
        .I2(fracta[5]),
        .O(\fract_out_q[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \fract_out_q[7]_i_5 
       (.I0(fractb[4]),
        .I1(fasu_op),
        .I2(fracta[4]),
        .O(\fract_out_q[7]_i_5_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fract_out_q_reg[11]_i_1 
       (.CI(\fract_out_q_reg[7]_i_1_n_0 ),
        .CO({\fract_out_q_reg[11]_i_1_n_0 ,\fract_out_q_reg[11]_i_1_n_1 ,\fract_out_q_reg[11]_i_1_n_2 ,\fract_out_q_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(fracta[11:8]),
        .O(sum0[11:8]),
        .S({\fract_out_q[11]_i_2_n_0 ,\fract_out_q[11]_i_3_n_0 ,\fract_out_q[11]_i_4_n_0 ,\fract_out_q[11]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fract_out_q_reg[15]_i_1 
       (.CI(\fract_out_q_reg[11]_i_1_n_0 ),
        .CO({\fract_out_q_reg[15]_i_1_n_0 ,\fract_out_q_reg[15]_i_1_n_1 ,\fract_out_q_reg[15]_i_1_n_2 ,\fract_out_q_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(fracta[15:12]),
        .O(sum0[15:12]),
        .S({\fract_out_q[15]_i_2_n_0 ,\fract_out_q[15]_i_3_n_0 ,\fract_out_q[15]_i_4_n_0 ,\fract_out_q[15]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fract_out_q_reg[19]_i_1 
       (.CI(\fract_out_q_reg[15]_i_1_n_0 ),
        .CO({\fract_out_q_reg[19]_i_1_n_0 ,\fract_out_q_reg[19]_i_1_n_1 ,\fract_out_q_reg[19]_i_1_n_2 ,\fract_out_q_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(fracta[19:16]),
        .O(sum0[19:16]),
        .S({\fract_out_q[19]_i_2_n_0 ,\fract_out_q[19]_i_3_n_0 ,\fract_out_q[19]_i_4_n_0 ,\fract_out_q[19]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fract_out_q_reg[23]_i_1 
       (.CI(\fract_out_q_reg[19]_i_1_n_0 ),
        .CO({\fract_out_q_reg[23]_i_1_n_0 ,\fract_out_q_reg[23]_i_1_n_1 ,\fract_out_q_reg[23]_i_1_n_2 ,\fract_out_q_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(fracta[23:20]),
        .O(sum0[23:20]),
        .S({\fract_out_q[23]_i_2_n_0 ,\fract_out_q[23]_i_3_n_0 ,\fract_out_q[23]_i_4_n_0 ,\fract_out_q[23]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fract_out_q_reg[27]_i_1 
       (.CI(\fract_out_q_reg[23]_i_1_n_0 ),
        .CO({\NLW_fract_out_q_reg[27]_i_1_CO_UNCONNECTED [3],\fract_out_q_reg[27]_i_1_n_1 ,\fract_out_q_reg[27]_i_1_n_2 ,\fract_out_q_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,fracta[26:24]}),
        .O(sum0[27:24]),
        .S({\u3/p_1_in ,\fract_out_q[27]_i_3_n_0 ,\fract_out_q[27]_i_4_n_0 ,\fract_out_q[27]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fract_out_q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\fract_out_q_reg[3]_i_1_n_0 ,\fract_out_q_reg[3]_i_1_n_1 ,\fract_out_q_reg[3]_i_1_n_2 ,\fract_out_q_reg[3]_i_1_n_3 }),
        .CYINIT(fracta[0]),
        .DI({fracta[3:1],\fract_out_q[3]_i_2_n_0 }),
        .O(sum0[3:0]),
        .S({\fract_out_q[3]_i_3_n_0 ,\fract_out_q[3]_i_4_n_0 ,\fract_out_q[3]_i_5_n_0 ,\fract_out_q[3]_i_6_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fract_out_q_reg[7]_i_1 
       (.CI(\fract_out_q_reg[3]_i_1_n_0 ),
        .CO({\fract_out_q_reg[7]_i_1_n_0 ,\fract_out_q_reg[7]_i_1_n_1 ,\fract_out_q_reg[7]_i_1_n_2 ,\fract_out_q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(fracta[7:4]),
        .O(sum0[7:4]),
        .S({\fract_out_q[7]_i_2_n_0 ,\fract_out_q[7]_i_3_n_0 ,\fract_out_q[7]_i_4_n_0 ,\fract_out_q[7]_i_5_n_0 }));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fracta_eq_fractb_i_10
       (.I0(Q[0]),
        .I1(signb_r_reg_0[0]),
        .I2(Q[1]),
        .I3(signb_r_reg_0[1]),
        .I4(signb_r_reg_0[2]),
        .I5(Q[2]),
        .O(fracta_eq_fractb_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_eq_fractb_i_3
       (.I0(signb_r_reg_0[21]),
        .I1(Q[21]),
        .I2(signb_r_reg_0[22]),
        .I3(Q[22]),
        .O(fracta_eq_fractb_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fracta_eq_fractb_i_4
       (.I0(signb_r_reg_0[20]),
        .I1(Q[20]),
        .I2(Q[18]),
        .I3(signb_r_reg_0[18]),
        .I4(Q[19]),
        .I5(signb_r_reg_0[19]),
        .O(fracta_eq_fractb_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fracta_eq_fractb_i_5
       (.I0(Q[16]),
        .I1(signb_r_reg_0[16]),
        .I2(Q[17]),
        .I3(signb_r_reg_0[17]),
        .I4(signb_r_reg_0[15]),
        .I5(Q[15]),
        .O(fracta_eq_fractb_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fracta_eq_fractb_i_6
       (.I0(signb_r_reg_0[14]),
        .I1(Q[14]),
        .I2(Q[12]),
        .I3(signb_r_reg_0[12]),
        .I4(Q[13]),
        .I5(signb_r_reg_0[13]),
        .O(fracta_eq_fractb_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fracta_eq_fractb_i_7
       (.I0(Q[10]),
        .I1(signb_r_reg_0[10]),
        .I2(Q[11]),
        .I3(signb_r_reg_0[11]),
        .I4(signb_r_reg_0[9]),
        .I5(Q[9]),
        .O(fracta_eq_fractb_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fracta_eq_fractb_i_8
       (.I0(signb_r_reg_0[8]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(signb_r_reg_0[6]),
        .I4(Q[7]),
        .I5(signb_r_reg_0[7]),
        .O(fracta_eq_fractb_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fracta_eq_fractb_i_9
       (.I0(Q[4]),
        .I1(signb_r_reg_0[4]),
        .I2(Q[5]),
        .I3(signb_r_reg_0[5]),
        .I4(signb_r_reg_0[3]),
        .I5(Q[3]),
        .O(fracta_eq_fractb_i_9_n_0));
  FDRE fracta_eq_fractb_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(exp_dn_out1),
        .Q(fracta_eq_fractb),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 fracta_eq_fractb_reg_i_1
       (.CI(fracta_eq_fractb_reg_i_2_n_0),
        .CO({exp_dn_out1,fracta_eq_fractb_reg_i_1_n_1,fracta_eq_fractb_reg_i_1_n_2,fracta_eq_fractb_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fracta_eq_fractb_reg_i_1_O_UNCONNECTED[3:0]),
        .S({fracta_eq_fractb_i_3_n_0,fracta_eq_fractb_i_4_n_0,fracta_eq_fractb_i_5_n_0,fracta_eq_fractb_i_6_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 fracta_eq_fractb_reg_i_2
       (.CI(1'b0),
        .CO({fracta_eq_fractb_reg_i_2_n_0,fracta_eq_fractb_reg_i_2_n_1,fracta_eq_fractb_reg_i_2_n_2,fracta_eq_fractb_reg_i_2_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fracta_eq_fractb_reg_i_2_O_UNCONNECTED[3:0]),
        .S({fracta_eq_fractb_i_7_n_0,fracta_eq_fractb_i_8_n_0,fracta_eq_fractb_i_9_n_0,fracta_eq_fractb_i_10_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_lt_fractb_i_10
       (.I0(signb_r_reg_0[17]),
        .I1(Q[17]),
        .I2(signb_r_reg_0[16]),
        .I3(Q[16]),
        .O(fracta_lt_fractb_i_10_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fracta_lt_fractb_i_12
       (.I0(Q[15]),
        .I1(signb_r_reg_0[15]),
        .I2(signb_r_reg_0[14]),
        .I3(Q[14]),
        .O(fracta_lt_fractb_i_12_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fracta_lt_fractb_i_13
       (.I0(Q[13]),
        .I1(signb_r_reg_0[13]),
        .I2(signb_r_reg_0[12]),
        .I3(Q[12]),
        .O(fracta_lt_fractb_i_13_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fracta_lt_fractb_i_14
       (.I0(Q[11]),
        .I1(signb_r_reg_0[11]),
        .I2(signb_r_reg_0[10]),
        .I3(Q[10]),
        .O(fracta_lt_fractb_i_14_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fracta_lt_fractb_i_15
       (.I0(Q[9]),
        .I1(signb_r_reg_0[9]),
        .I2(signb_r_reg_0[8]),
        .I3(Q[8]),
        .O(fracta_lt_fractb_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_lt_fractb_i_16
       (.I0(signb_r_reg_0[14]),
        .I1(Q[14]),
        .I2(signb_r_reg_0[15]),
        .I3(Q[15]),
        .O(fracta_lt_fractb_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_lt_fractb_i_17
       (.I0(signb_r_reg_0[13]),
        .I1(Q[13]),
        .I2(signb_r_reg_0[12]),
        .I3(Q[12]),
        .O(fracta_lt_fractb_i_17_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_lt_fractb_i_18
       (.I0(signb_r_reg_0[11]),
        .I1(Q[11]),
        .I2(signb_r_reg_0[10]),
        .I3(Q[10]),
        .O(fracta_lt_fractb_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_lt_fractb_i_19
       (.I0(signb_r_reg_0[8]),
        .I1(Q[8]),
        .I2(signb_r_reg_0[9]),
        .I3(Q[9]),
        .O(fracta_lt_fractb_i_19_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fracta_lt_fractb_i_20
       (.I0(Q[7]),
        .I1(signb_r_reg_0[7]),
        .I2(signb_r_reg_0[6]),
        .I3(Q[6]),
        .O(fracta_lt_fractb_i_20_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fracta_lt_fractb_i_21
       (.I0(Q[5]),
        .I1(signb_r_reg_0[5]),
        .I2(signb_r_reg_0[4]),
        .I3(Q[4]),
        .O(fracta_lt_fractb_i_21_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fracta_lt_fractb_i_22
       (.I0(Q[3]),
        .I1(signb_r_reg_0[3]),
        .I2(signb_r_reg_0[2]),
        .I3(Q[2]),
        .O(fracta_lt_fractb_i_22_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fracta_lt_fractb_i_23
       (.I0(Q[1]),
        .I1(signb_r_reg_0[1]),
        .I2(signb_r_reg_0[0]),
        .I3(Q[0]),
        .O(fracta_lt_fractb_i_23_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_lt_fractb_i_24
       (.I0(signb_r_reg_0[7]),
        .I1(Q[7]),
        .I2(signb_r_reg_0[6]),
        .I3(Q[6]),
        .O(fracta_lt_fractb_i_24_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_lt_fractb_i_25
       (.I0(signb_r_reg_0[5]),
        .I1(Q[5]),
        .I2(signb_r_reg_0[4]),
        .I3(Q[4]),
        .O(fracta_lt_fractb_i_25_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_lt_fractb_i_26
       (.I0(signb_r_reg_0[2]),
        .I1(Q[2]),
        .I2(signb_r_reg_0[3]),
        .I3(Q[3]),
        .O(fracta_lt_fractb_i_26_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_lt_fractb_i_27
       (.I0(signb_r_reg_0[1]),
        .I1(Q[1]),
        .I2(signb_r_reg_0[0]),
        .I3(Q[0]),
        .O(fracta_lt_fractb_i_27_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    fracta_lt_fractb_i_3
       (.I0(signb_r_reg_0[22]),
        .I1(Q[22]),
        .O(fracta_lt_fractb_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fracta_lt_fractb_i_4
       (.I0(Q[21]),
        .I1(signb_r_reg_0[21]),
        .I2(signb_r_reg_0[20]),
        .I3(Q[20]),
        .O(fracta_lt_fractb_i_4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fracta_lt_fractb_i_5
       (.I0(Q[19]),
        .I1(signb_r_reg_0[19]),
        .I2(signb_r_reg_0[18]),
        .I3(Q[18]),
        .O(fracta_lt_fractb_i_5_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fracta_lt_fractb_i_6
       (.I0(Q[17]),
        .I1(signb_r_reg_0[17]),
        .I2(signb_r_reg_0[16]),
        .I3(Q[16]),
        .O(fracta_lt_fractb_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fracta_lt_fractb_i_7
       (.I0(signb_r_reg_0[22]),
        .I1(Q[22]),
        .O(fracta_lt_fractb_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_lt_fractb_i_8
       (.I0(signb_r_reg_0[20]),
        .I1(Q[20]),
        .I2(signb_r_reg_0[21]),
        .I3(Q[21]),
        .O(fracta_lt_fractb_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fracta_lt_fractb_i_9
       (.I0(signb_r_reg_0[19]),
        .I1(Q[19]),
        .I2(signb_r_reg_0[18]),
        .I3(Q[18]),
        .O(fracta_lt_fractb_i_9_n_0));
  FDRE fracta_lt_fractb_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_lt_fractb_reg_i_1_n_0),
        .Q(fracta_lt_fractb),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 fracta_lt_fractb_reg_i_1
       (.CI(fracta_lt_fractb_reg_i_2_n_0),
        .CO({fracta_lt_fractb_reg_i_1_n_0,fracta_lt_fractb_reg_i_1_n_1,fracta_lt_fractb_reg_i_1_n_2,fracta_lt_fractb_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({fracta_lt_fractb_i_3_n_0,fracta_lt_fractb_i_4_n_0,fracta_lt_fractb_i_5_n_0,fracta_lt_fractb_i_6_n_0}),
        .O(NLW_fracta_lt_fractb_reg_i_1_O_UNCONNECTED[3:0]),
        .S({fracta_lt_fractb_i_7_n_0,fracta_lt_fractb_i_8_n_0,fracta_lt_fractb_i_9_n_0,fracta_lt_fractb_i_10_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 fracta_lt_fractb_reg_i_11
       (.CI(1'b0),
        .CO({fracta_lt_fractb_reg_i_11_n_0,fracta_lt_fractb_reg_i_11_n_1,fracta_lt_fractb_reg_i_11_n_2,fracta_lt_fractb_reg_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({fracta_lt_fractb_i_20_n_0,fracta_lt_fractb_i_21_n_0,fracta_lt_fractb_i_22_n_0,fracta_lt_fractb_i_23_n_0}),
        .O(NLW_fracta_lt_fractb_reg_i_11_O_UNCONNECTED[3:0]),
        .S({fracta_lt_fractb_i_24_n_0,fracta_lt_fractb_i_25_n_0,fracta_lt_fractb_i_26_n_0,fracta_lt_fractb_i_27_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 fracta_lt_fractb_reg_i_2
       (.CI(fracta_lt_fractb_reg_i_11_n_0),
        .CO({fracta_lt_fractb_reg_i_2_n_0,fracta_lt_fractb_reg_i_2_n_1,fracta_lt_fractb_reg_i_2_n_2,fracta_lt_fractb_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({fracta_lt_fractb_i_12_n_0,fracta_lt_fractb_i_13_n_0,fracta_lt_fractb_i_14_n_0,fracta_lt_fractb_i_15_n_0}),
        .O(NLW_fracta_lt_fractb_reg_i_2_O_UNCONNECTED[3:0]),
        .S({fracta_lt_fractb_i_16_n_0,fracta_lt_fractb_i_17_n_0,fracta_lt_fractb_i_18_n_0,fracta_lt_fractb_i_19_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \fracta_out[0]_i_1 
       (.I0(fractb_lt_fracta),
        .I1(CO),
        .I2(\fracta_out_reg[0]_i_2_n_0 ),
        .O(fracta_s[0]));
  LUT6 #(
    .INIT(64'h040444FF04FF44FF)) 
    \fracta_out[0]_i_10 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[0]_i_18_n_0 ),
        .I2(\fracta_out[6]_i_6_n_0 ),
        .I3(\fracta_out[0]_i_24_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[10]_i_6_n_0 ),
        .O(\fracta_out[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D8FF00FF)) 
    \fracta_out[0]_i_11 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(\fracta_out[0]_i_25_n_0 ),
        .I2(\fracta_out[0]_i_26_n_0 ),
        .I3(\fracta_out[0]_i_27_n_0 ),
        .I4(\fracta_out[26]_i_18_n_0 ),
        .I5(\fracta_out[26]_i_7_n_0 ),
        .O(\fracta_out[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFCFFF0FF80)) 
    \fracta_out[0]_i_12 
       (.I0(\fracta_out[22]_i_4_n_0 ),
        .I1(\fracta_out[25]_i_15_n_0 ),
        .I2(\fracta_out[26]_i_18_n_0 ),
        .I3(\fracta_out[0]_i_28_n_0 ),
        .I4(\fracta_out[12]_i_6_n_0 ),
        .I5(\fracta_out[12]_i_5_n_0 ),
        .O(\fracta_out[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFA50EEEEFA504444)) 
    \fracta_out[0]_i_13 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(Q[13]),
        .I2(signb_r_reg_0[13]),
        .I3(signb_r_reg_0[15]),
        .I4(CO),
        .I5(Q[15]),
        .O(\fracta_out[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \fracta_out[0]_i_14 
       (.I0(\fracta_out[25]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[26]_i_6_n_0 ),
        .O(\fracta_out[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFDDFDFDDDDDDDDD)) 
    \fracta_out[0]_i_15 
       (.I0(\fracta_out[0]_i_18_n_0 ),
        .I1(\fracta_out[0]_i_19_n_0 ),
        .I2(Q[13]),
        .I3(signb_r_reg_0[13]),
        .I4(CO),
        .I5(\fracta_out[25]_i_15_n_0 ),
        .O(\fracta_out[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \fracta_out[0]_i_16 
       (.I0(\fracta_out[0]_i_18_n_0 ),
        .I1(\fracta_out[0]_i_28_n_0 ),
        .I2(\fracta_out[22]_i_4_n_0 ),
        .I3(\fracta_out[22]_i_5_n_0 ),
        .I4(\fracta_out[0]_i_29_n_0 ),
        .I5(\fracta_out[0]_i_19_n_0 ),
        .O(\fracta_out[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \fracta_out[0]_i_17 
       (.I0(\fracta_out[0]_i_30_n_0 ),
        .I1(\fracta_out[0]_i_31_n_0 ),
        .I2(\fracta_out[0]_i_32_n_0 ),
        .I3(\fracta_out[14]_i_6_n_0 ),
        .I4(\fracta_out[14]_i_9_n_0 ),
        .I5(\fracta_out[0]_i_25_n_0 ),
        .O(\fracta_out[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \fracta_out[0]_i_18 
       (.I0(\fracta_out[0]_i_33_n_0 ),
        .I1(signb_r_reg_0[4]),
        .I2(CO),
        .I3(Q[4]),
        .I4(signb_r_reg_0[3]),
        .I5(Q[3]),
        .O(\fracta_out[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD8)) 
    \fracta_out[0]_i_19 
       (.I0(CO),
        .I1(signb_r_reg_0[11]),
        .I2(Q[11]),
        .I3(\fracta_out[14]_i_9_n_0 ),
        .I4(\fracta_out[0]_i_26_n_0 ),
        .I5(\fracta_out[0]_i_34_n_0 ),
        .O(\fracta_out[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFAFFFFFFFA)) 
    \fracta_out[0]_i_20 
       (.I0(\fracta_out[22]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_17_n_0 ),
        .I2(\fracta_out[0]_i_35_n_0 ),
        .I3(\fracta_out[0]_i_36_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[0]_i_37_n_0 ),
        .O(\fracta_out[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \fracta_out[0]_i_21 
       (.I0(signb_r_reg_0[18]),
        .I1(CO),
        .I2(Q[18]),
        .I3(signb_r_reg_0[17]),
        .I4(Q[17]),
        .I5(\fracta_out[0]_i_28_n_0 ),
        .O(\fracta_out[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h330177013301FF01)) 
    \fracta_out[0]_i_22 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(\fracta_out[26]_i_18_n_0 ),
        .I2(\fracta_out[2]_i_5_n_0 ),
        .I3(\fracta_out[0]_i_38_n_0 ),
        .I4(\fracta_out[5]_i_7_n_0 ),
        .I5(\fracta_out[6]_i_7_n_0 ),
        .O(\fracta_out[0]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \fracta_out[0]_i_23 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(Q[0]),
        .I2(CO),
        .I3(signb_r_reg_0[0]),
        .O(\fracta_out[0]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFFE2)) 
    \fracta_out[0]_i_24 
       (.I0(Q[6]),
        .I1(CO),
        .I2(signb_r_reg_0[6]),
        .I3(\fracta_out[0]_i_30_n_0 ),
        .O(\fracta_out[0]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFCAAFC)) 
    \fracta_out[0]_i_25 
       (.I0(signb_r_reg_0[11]),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(CO),
        .I4(signb_r_reg_0[10]),
        .O(\fracta_out[0]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFCAAFC)) 
    \fracta_out[0]_i_26 
       (.I0(signb_r_reg_0[9]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(CO),
        .I4(signb_r_reg_0[10]),
        .O(\fracta_out[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h10101010101F1010)) 
    \fracta_out[0]_i_27 
       (.I0(\fracta_out[0]_i_30_n_0 ),
        .I1(\fracta_out[0]_i_32_n_0 ),
        .I2(\fracta_out[25]_i_15_n_0 ),
        .I3(\fracta_out[0]_i_34_n_0 ),
        .I4(\fracta_out[0]_i_39_n_0 ),
        .I5(\fracta_out[2]_i_5_n_0 ),
        .O(\fracta_out[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFAEFEFEFEA)) 
    \fracta_out[0]_i_28 
       (.I0(\fracta_out[0]_i_40_n_0 ),
        .I1(signb_r_reg_0[14]),
        .I2(CO),
        .I3(Q[14]),
        .I4(Q[13]),
        .I5(signb_r_reg_0[13]),
        .O(\fracta_out[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \fracta_out[0]_i_29 
       (.I0(Q[17]),
        .I1(signb_r_reg_0[17]),
        .I2(Q[18]),
        .I3(CO),
        .I4(signb_r_reg_0[18]),
        .O(\fracta_out[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h3030FFBA30307530)) 
    \fracta_out[0]_i_3 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[16]_i_5_n_0 ),
        .I2(\fracta_out[0]_i_5_n_0 ),
        .I3(\fracta_out_reg[0]_i_6_n_0 ),
        .I4(\fracta_out[0]_i_7_n_0 ),
        .I5(\fracta_out[0]_i_8_n_0 ),
        .O(\fracta_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAEFFFFFFFF)) 
    \fracta_out[0]_i_30 
       (.I0(\fracta_out[6]_i_6_n_0 ),
        .I1(Q[4]),
        .I2(CO),
        .I3(signb_r_reg_0[4]),
        .I4(\fracta_out[0]_i_41_n_0 ),
        .I5(\fracta_out[0]_i_38_n_0 ),
        .O(\fracta_out[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    \fracta_out[0]_i_31 
       (.I0(signb_r_reg_0[21]),
        .I1(CO),
        .I2(Q[21]),
        .I3(signb_r_reg_0[20]),
        .I4(Q[20]),
        .I5(\fracta_out[0]_i_37_n_0 ),
        .O(\fracta_out[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFFFFFFFAFCFC)) 
    \fracta_out[0]_i_32 
       (.I0(signb_r_reg_0[9]),
        .I1(Q[9]),
        .I2(\fracta_out[0]_i_42_n_0 ),
        .I3(signb_r_reg_0[6]),
        .I4(CO),
        .I5(Q[6]),
        .O(\fracta_out[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \fracta_out[0]_i_33 
       (.I0(signb_r_reg_0[0]),
        .I1(CO),
        .I2(Q[0]),
        .I3(signb_r_reg_0[1]),
        .I4(Q[1]),
        .I5(\fracta_out[5]_i_7_n_0 ),
        .O(\fracta_out[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEFFFFAEFEA)) 
    \fracta_out[0]_i_34 
       (.I0(\fracta_out[0]_i_42_n_0 ),
        .I1(signb_r_reg_0[5]),
        .I2(CO),
        .I3(Q[5]),
        .I4(signb_r_reg_0[6]),
        .I5(Q[6]),
        .O(\fracta_out[0]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[0]_i_35 
       (.I0(signb_r_reg_0[22]),
        .I1(CO),
        .I2(Q[22]),
        .O(\fracta_out[0]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \fracta_out[0]_i_36 
       (.I0(Q[20]),
        .I1(signb_r_reg_0[20]),
        .I2(Q[21]),
        .I3(CO),
        .I4(signb_r_reg_0[21]),
        .O(\fracta_out[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001015)) 
    \fracta_out[0]_i_37 
       (.I0(\fracta_out[0]_i_40_n_0 ),
        .I1(signb_r_reg_0[14]),
        .I2(CO),
        .I3(Q[14]),
        .I4(\fracta_out[0]_i_29_n_0 ),
        .I5(\fracta_out[22]_i_4_n_0 ),
        .O(\fracta_out[0]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \fracta_out[0]_i_38 
       (.I0(Q[1]),
        .I1(signb_r_reg_0[1]),
        .I2(Q[0]),
        .I3(CO),
        .I4(signb_r_reg_0[0]),
        .O(\fracta_out[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \fracta_out[0]_i_39 
       (.I0(signb_r_reg_0[2]),
        .I1(CO),
        .I2(Q[2]),
        .I3(signb_r_reg_0[1]),
        .I4(Q[1]),
        .I5(\fracta_out[0]_i_43_n_0 ),
        .O(\fracta_out[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEF)) 
    \fracta_out[0]_i_4 
       (.I0(\fracta_out[0]_i_9_n_0 ),
        .I1(\fracta_out[0]_i_10_n_0 ),
        .I2(\fracta_out[26]_i_7_n_0 ),
        .I3(\fracta_out[8]_i_5_n_0 ),
        .I4(\fracta_out[26]_i_6_n_0 ),
        .I5(\fracta_out[0]_i_11_n_0 ),
        .O(\fracta_out[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \fracta_out[0]_i_40 
       (.I0(Q[15]),
        .I1(signb_r_reg_0[15]),
        .I2(Q[16]),
        .I3(CO),
        .I4(signb_r_reg_0[16]),
        .O(\fracta_out[0]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \fracta_out[0]_i_41 
       (.I0(Q[3]),
        .I1(signb_r_reg_0[3]),
        .I2(Q[2]),
        .I3(CO),
        .I4(signb_r_reg_0[2]),
        .O(\fracta_out[0]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \fracta_out[0]_i_42 
       (.I0(Q[7]),
        .I1(signb_r_reg_0[7]),
        .I2(Q[8]),
        .I3(CO),
        .I4(signb_r_reg_0[8]),
        .O(\fracta_out[0]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \fracta_out[0]_i_43 
       (.I0(Q[3]),
        .I1(signb_r_reg_0[3]),
        .I2(Q[4]),
        .I3(CO),
        .I4(signb_r_reg_0[4]),
        .O(\fracta_out[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h000000003333555F)) 
    \fracta_out[0]_i_5 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[0]_i_12_n_0 ),
        .I2(\fracta_out[0]_i_13_n_0 ),
        .I3(\fracta_out[14]_i_7_n_0 ),
        .I4(\fracta_out[0]_i_14_n_0 ),
        .I5(\fracta_out[0]_i_15_n_0 ),
        .O(\fracta_out[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \fracta_out[0]_i_7 
       (.I0(\fracta_out[26]_i_6_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[24]_i_3_n_0 ),
        .O(\fracta_out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0002002200020000)) 
    \fracta_out[0]_i_8 
       (.I0(\fracta_out[0]_i_18_n_0 ),
        .I1(\fracta_out[0]_i_19_n_0 ),
        .I2(\fracta_out[14]_i_6_n_0 ),
        .I3(\fracta_out[0]_i_20_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[0]_i_21_n_0 ),
        .O(\fracta_out[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h55000C00FF000C00)) 
    \fracta_out[0]_i_9 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[0]_i_22_n_0 ),
        .I2(\fracta_out[4]_i_4_n_0 ),
        .I3(\fracta_out[26]_i_6_n_0 ),
        .I4(\fracta_out[26]_i_7_n_0 ),
        .I5(\fracta_out[0]_i_23_n_0 ),
        .O(\fracta_out[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hF3C0B8B8)) 
    \fracta_out[10]_i_1 
       (.I0(Q[7]),
        .I1(CO),
        .I2(\fracta_out[10]_i_2_n_0 ),
        .I3(signb_r_reg_0[7]),
        .I4(fractb_lt_fracta),
        .O(fracta_s[10]));
  LUT6 #(
    .INIT(64'hAFA0A0A0C0C0C0C0)) 
    \fracta_out[10]_i_2 
       (.I0(\fracta_out[10]_i_3_n_0 ),
        .I1(\fracta_out[10]_i_4_n_0 ),
        .I2(\fracta_out[25]_i_4_n_0 ),
        .I3(\fracta_out[26]_i_7_n_0 ),
        .I4(\fracta_out[26]_i_5_n_0 ),
        .I5(\fracta_out[26]_i_6_n_0 ),
        .O(\fracta_out[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[10]_i_3 
       (.I0(\fracta_out[10]_i_5_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[14]_i_4_n_0 ),
        .O(\fracta_out[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[10]_i_4 
       (.I0(\fracta_out[14]_i_5_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[22]_i_3_n_0 ),
        .O(\fracta_out[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEDCBA9876543210)) 
    \fracta_out[10]_i_5 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(\fracta_out[26]_i_18_n_0 ),
        .I2(\fracta_out[10]_i_6_n_0 ),
        .I3(\fracta_out[10]_i_7_n_0 ),
        .I4(\fracta_out[12]_i_9_n_0 ),
        .I5(\fracta_out[13]_i_7_n_0 ),
        .O(\fracta_out[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[10]_i_6 
       (.I0(signb_r_reg_0[7]),
        .I1(CO),
        .I2(Q[7]),
        .O(\fracta_out[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[10]_i_7 
       (.I0(signb_r_reg_0[8]),
        .I1(CO),
        .I2(Q[8]),
        .O(\fracta_out[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \fracta_out[11]_i_1 
       (.I0(\fracta_out[11]_i_2_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[11]_i_3_n_0 ),
        .O(fracta_s[11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \fracta_out[11]_i_2 
       (.I0(signb_r_reg_0[8]),
        .I1(\fracta_out[11]_i_4_n_0 ),
        .I2(CO),
        .O(\fracta_out[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[11]_i_3 
       (.I0(Q[8]),
        .I1(CO),
        .I2(\fracta_out[11]_i_4_n_0 ),
        .O(\fracta_out[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFB800B800000000)) 
    \fracta_out[11]_i_4 
       (.I0(\fracta_out[19]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[23]_i_4_n_0 ),
        .I3(\fracta_out[26]_i_6_n_0 ),
        .I4(\fracta_out[3]_i_4_n_0 ),
        .I5(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hF3C0B8B8)) 
    \fracta_out[12]_i_1 
       (.I0(Q[9]),
        .I1(CO),
        .I2(\fracta_out[12]_i_2_n_0 ),
        .I3(signb_r_reg_0[9]),
        .I4(fractb_lt_fracta),
        .O(fracta_s[12]));
  LUT6 #(
    .INIT(64'hFFB800B800000000)) 
    \fracta_out[12]_i_2 
       (.I0(\fracta_out[12]_i_3_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[24]_i_3_n_0 ),
        .I3(\fracta_out[26]_i_6_n_0 ),
        .I4(\fracta_out[12]_i_4_n_0 ),
        .I5(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEDCBA9876543210)) 
    \fracta_out[12]_i_3 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(\fracta_out[26]_i_18_n_0 ),
        .I2(\fracta_out[12]_i_5_n_0 ),
        .I3(\fracta_out[12]_i_6_n_0 ),
        .I4(\fracta_out[22]_i_4_n_0 ),
        .I5(\fracta_out[22]_i_5_n_0 ),
        .O(\fracta_out[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[12]_i_4 
       (.I0(\fracta_out[12]_i_7_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[12]_i_8_n_0 ),
        .O(\fracta_out[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[12]_i_5 
       (.I0(signb_r_reg_0[17]),
        .I1(CO),
        .I2(Q[17]),
        .O(\fracta_out[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[12]_i_6 
       (.I0(signb_r_reg_0[18]),
        .I1(CO),
        .I2(Q[18]),
        .O(\fracta_out[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEDCBA9876543210)) 
    \fracta_out[12]_i_7 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(\fracta_out[26]_i_18_n_0 ),
        .I2(\fracta_out[12]_i_9_n_0 ),
        .I3(\fracta_out[13]_i_7_n_0 ),
        .I4(\fracta_out[14]_i_8_n_0 ),
        .I5(\fracta_out[14]_i_9_n_0 ),
        .O(\fracta_out[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEDCBA9876543210)) 
    \fracta_out[12]_i_8 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(\fracta_out[26]_i_18_n_0 ),
        .I2(\fracta_out[14]_i_6_n_0 ),
        .I3(\fracta_out[14]_i_7_n_0 ),
        .I4(\fracta_out[14]_i_10_n_0 ),
        .I5(\fracta_out[19]_i_5_n_0 ),
        .O(\fracta_out[12]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \fracta_out[12]_i_9 
       (.I0(Q[9]),
        .I1(signb_r_reg_0[9]),
        .I2(CO),
        .O(\fracta_out[12]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \fracta_out[13]_i_1 
       (.I0(\fracta_out[13]_i_2_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[13]_i_3_n_0 ),
        .O(fracta_s[13]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \fracta_out[13]_i_2 
       (.I0(signb_r_reg_0[10]),
        .I1(\fracta_out[13]_i_4_n_0 ),
        .I2(CO),
        .O(\fracta_out[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[13]_i_3 
       (.I0(Q[10]),
        .I1(CO),
        .I2(\fracta_out[13]_i_4_n_0 ),
        .O(\fracta_out[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8FF0000000000)) 
    \fracta_out[13]_i_4 
       (.I0(\fracta_out[13]_i_5_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[13]_i_6_n_0 ),
        .I3(\fracta_out[21]_i_3_n_0 ),
        .I4(\fracta_out[26]_i_6_n_0 ),
        .I5(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEE44FAFAEE445050)) 
    \fracta_out[13]_i_5 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[14]_i_8_n_0 ),
        .I2(\fracta_out[13]_i_7_n_0 ),
        .I3(\fracta_out[14]_i_6_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[14]_i_9_n_0 ),
        .O(\fracta_out[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEE44FAFAEE445050)) 
    \fracta_out[13]_i_6 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[14]_i_10_n_0 ),
        .I2(\fracta_out[14]_i_7_n_0 ),
        .I3(\fracta_out[12]_i_5_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[19]_i_5_n_0 ),
        .O(\fracta_out[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[13]_i_7 
       (.I0(signb_r_reg_0[10]),
        .I1(CO),
        .I2(Q[10]),
        .O(\fracta_out[13]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hF3C0B8B8)) 
    \fracta_out[14]_i_1 
       (.I0(Q[11]),
        .I1(CO),
        .I2(\fracta_out[14]_i_2_n_0 ),
        .I3(signb_r_reg_0[11]),
        .I4(fractb_lt_fracta),
        .O(fracta_s[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[14]_i_10 
       (.I0(signb_r_reg_0[15]),
        .I1(CO),
        .I2(Q[15]),
        .O(\fracta_out[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFB800B800000000)) 
    \fracta_out[14]_i_2 
       (.I0(\fracta_out[22]_i_3_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[26]_i_5_n_0 ),
        .I3(\fracta_out[26]_i_6_n_0 ),
        .I4(\fracta_out[14]_i_3_n_0 ),
        .I5(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[14]_i_3 
       (.I0(\fracta_out[14]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[14]_i_5_n_0 ),
        .O(\fracta_out[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE4FFE4AAE455E400)) 
    \fracta_out[14]_i_4 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(\fracta_out[14]_i_6_n_0 ),
        .I2(\fracta_out[14]_i_7_n_0 ),
        .I3(\fracta_out[26]_i_18_n_0 ),
        .I4(\fracta_out[14]_i_8_n_0 ),
        .I5(\fracta_out[14]_i_9_n_0 ),
        .O(\fracta_out[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEDCBA9876543210)) 
    \fracta_out[14]_i_5 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(\fracta_out[26]_i_18_n_0 ),
        .I2(\fracta_out[14]_i_10_n_0 ),
        .I3(\fracta_out[19]_i_5_n_0 ),
        .I4(\fracta_out[12]_i_5_n_0 ),
        .I5(\fracta_out[12]_i_6_n_0 ),
        .O(\fracta_out[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \fracta_out[14]_i_6 
       (.I0(Q[13]),
        .I1(signb_r_reg_0[13]),
        .I2(CO),
        .O(\fracta_out[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[14]_i_7 
       (.I0(signb_r_reg_0[14]),
        .I1(CO),
        .I2(Q[14]),
        .O(\fracta_out[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \fracta_out[14]_i_8 
       (.I0(Q[11]),
        .I1(signb_r_reg_0[11]),
        .I2(CO),
        .O(\fracta_out[14]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[14]_i_9 
       (.I0(signb_r_reg_0[12]),
        .I1(CO),
        .I2(Q[12]),
        .O(\fracta_out[14]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \fracta_out[15]_i_1 
       (.I0(\fracta_out[15]_i_2_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[15]_i_3_n_0 ),
        .O(fracta_s[15]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \fracta_out[15]_i_2 
       (.I0(signb_r_reg_0[12]),
        .I1(\fracta_out[15]_i_4_n_0 ),
        .I2(CO),
        .O(\fracta_out[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[15]_i_3 
       (.I0(Q[12]),
        .I1(CO),
        .I2(\fracta_out[15]_i_4_n_0 ),
        .O(\fracta_out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hF8080000)) 
    \fracta_out[15]_i_4 
       (.I0(\fracta_out[26]_i_7_n_0 ),
        .I1(\fracta_out[23]_i_4_n_0 ),
        .I2(\fracta_out[26]_i_6_n_0 ),
        .I3(\fracta_out[15]_i_5_n_0 ),
        .I4(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[15]_i_5 
       (.I0(\fracta_out[3]_i_9_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[19]_i_4_n_0 ),
        .O(\fracta_out[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[16]_i_1 
       (.I0(\fracta_out[16]_i_2_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[16]_i_3_n_0 ),
        .O(fracta_s[16]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[16]_i_2 
       (.I0(\fracta_out[16]_i_4_n_0 ),
        .I1(CO),
        .I2(signb_r_reg_0[13]),
        .O(\fracta_out[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[16]_i_3 
       (.I0(Q[13]),
        .I1(CO),
        .I2(\fracta_out[16]_i_4_n_0 ),
        .O(\fracta_out[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hA8880000)) 
    \fracta_out[16]_i_4 
       (.I0(\fracta_out[16]_i_5_n_0 ),
        .I1(\fracta_out[26]_i_6_n_0 ),
        .I2(\fracta_out[26]_i_7_n_0 ),
        .I3(\fracta_out[24]_i_3_n_0 ),
        .I4(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fracta_out[16]_i_5 
       (.I0(\fracta_out[8]_i_6_n_0 ),
        .I1(\fracta_out[26]_i_6_n_0 ),
        .O(\fracta_out[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fracta_out[17]_i_1 
       (.I0(signb_r_reg_0[14]),
        .I1(fractb_lt_fracta),
        .I2(Q[14]),
        .I3(CO),
        .I4(\fracta_out[17]_i_2_n_0 ),
        .O(fracta_s[17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fracta_out[17]_i_2 
       (.I0(\fracta_out[17]_i_3_n_0 ),
        .I1(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \fracta_out[17]_i_3 
       (.I0(\fracta_out[17]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_6_n_0 ),
        .I2(\fracta_out[25]_i_13_n_0 ),
        .I3(\fracta_out[26]_i_7_n_0 ),
        .O(\fracta_out[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[17]_i_4 
       (.I0(\fracta_out[13]_i_6_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[21]_i_4_n_0 ),
        .O(\fracta_out[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[18]_i_1 
       (.I0(\fracta_out[18]_i_2_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[18]_i_3_n_0 ),
        .O(fracta_s[18]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \fracta_out[18]_i_2 
       (.I0(\fracta_out[18]_i_4_n_0 ),
        .I1(\fracta_out[25]_i_4_n_0 ),
        .I2(CO),
        .I3(signb_r_reg_0[15]),
        .O(\fracta_out[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF088)) 
    \fracta_out[18]_i_3 
       (.I0(\fracta_out[18]_i_4_n_0 ),
        .I1(\fracta_out[25]_i_4_n_0 ),
        .I2(Q[15]),
        .I3(CO),
        .O(\fracta_out[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \fracta_out[18]_i_4 
       (.I0(\fracta_out[10]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_6_n_0 ),
        .I2(\fracta_out[26]_i_5_n_0 ),
        .I3(\fracta_out[26]_i_7_n_0 ),
        .O(\fracta_out[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fracta_out[19]_i_1 
       (.I0(signb_r_reg_0[16]),
        .I1(fractb_lt_fracta),
        .I2(Q[16]),
        .I3(CO),
        .I4(\fracta_out[19]_i_2_n_0 ),
        .O(fracta_s[19]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fracta_out[19]_i_2 
       (.I0(\fracta_out[25]_i_4_n_0 ),
        .I1(\fracta_out[19]_i_3_n_0 ),
        .O(\fracta_out[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \fracta_out[19]_i_3 
       (.I0(\fracta_out[19]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[23]_i_4_n_0 ),
        .I3(\fracta_out[26]_i_6_n_0 ),
        .O(\fracta_out[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEE44FAFAEE445050)) 
    \fracta_out[19]_i_4 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[12]_i_5_n_0 ),
        .I2(\fracta_out[19]_i_5_n_0 ),
        .I3(\fracta_out[22]_i_4_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[12]_i_6_n_0 ),
        .O(\fracta_out[19]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[19]_i_5 
       (.I0(signb_r_reg_0[16]),
        .I1(CO),
        .I2(Q[16]),
        .O(\fracta_out[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \fracta_out[1]_i_1 
       (.I0(fractb_lt_fracta),
        .I1(\fracta_out[1]_i_2_n_0 ),
        .I2(CO),
        .O(fracta_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fracta_out[1]_i_2 
       (.I0(\fracta_out[1]_i_3_n_0 ),
        .I1(\fracta_out[26]_i_6_n_0 ),
        .I2(\fracta_out[1]_i_4_n_0 ),
        .I3(\fracta_out[25]_i_4_n_0 ),
        .I4(\fracta_out[17]_i_3_n_0 ),
        .O(\fracta_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \fracta_out[1]_i_3 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[2]_i_5_n_0 ),
        .I2(\fracta_out[25]_i_15_n_0 ),
        .I3(\fracta_out[1]_i_5_n_0 ),
        .I4(\fracta_out[26]_i_7_n_0 ),
        .I5(\fracta_out[5]_i_5_n_0 ),
        .O(\fracta_out[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[1]_i_4 
       (.I0(\fracta_out[5]_i_6_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[13]_i_5_n_0 ),
        .O(\fracta_out[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[1]_i_5 
       (.I0(signb_r_reg_0[1]),
        .I1(CO),
        .I2(Q[1]),
        .O(\fracta_out[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[20]_i_1 
       (.I0(\fracta_out[20]_i_2_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[20]_i_3_n_0 ),
        .O(fracta_s[20]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \fracta_out[20]_i_2 
       (.I0(\fracta_out[20]_i_4_n_0 ),
        .I1(\fracta_out[25]_i_4_n_0 ),
        .I2(CO),
        .I3(signb_r_reg_0[17]),
        .O(\fracta_out[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF088)) 
    \fracta_out[20]_i_3 
       (.I0(\fracta_out[20]_i_4_n_0 ),
        .I1(\fracta_out[25]_i_4_n_0 ),
        .I2(Q[17]),
        .I3(CO),
        .O(\fracta_out[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \fracta_out[20]_i_4 
       (.I0(\fracta_out[12]_i_3_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[24]_i_3_n_0 ),
        .I3(\fracta_out[26]_i_6_n_0 ),
        .O(\fracta_out[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fracta_out[21]_i_1 
       (.I0(signb_r_reg_0[18]),
        .I1(fractb_lt_fracta),
        .I2(Q[18]),
        .I3(CO),
        .I4(\fracta_out[21]_i_2_n_0 ),
        .O(fracta_s[21]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \fracta_out[21]_i_2 
       (.I0(\fracta_out[26]_i_6_n_0 ),
        .I1(\fracta_out[21]_i_3_n_0 ),
        .I2(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[21]_i_3 
       (.I0(\fracta_out[21]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[25]_i_13_n_0 ),
        .O(\fracta_out[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEA4540)) 
    \fracta_out[21]_i_4 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[22]_i_4_n_0 ),
        .I2(\fracta_out[25]_i_15_n_0 ),
        .I3(\fracta_out[12]_i_6_n_0 ),
        .I4(\fracta_out[23]_i_6_n_0 ),
        .O(\fracta_out[21]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hF3C0B8B8)) 
    \fracta_out[22]_i_1 
       (.I0(Q[19]),
        .I1(CO),
        .I2(\fracta_out[22]_i_2_n_0 ),
        .I3(signb_r_reg_0[19]),
        .I4(fractb_lt_fracta),
        .O(fracta_s[22]));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \fracta_out[22]_i_2 
       (.I0(\fracta_out[22]_i_3_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[26]_i_5_n_0 ),
        .I3(\fracta_out[26]_i_6_n_0 ),
        .I4(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCFCAC5C0)) 
    \fracta_out[22]_i_3 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(\fracta_out[24]_i_4_n_0 ),
        .I2(\fracta_out[26]_i_18_n_0 ),
        .I3(\fracta_out[22]_i_4_n_0 ),
        .I4(\fracta_out[22]_i_5_n_0 ),
        .O(\fracta_out[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \fracta_out[22]_i_4 
       (.I0(Q[19]),
        .I1(signb_r_reg_0[19]),
        .I2(CO),
        .O(\fracta_out[22]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[22]_i_5 
       (.I0(signb_r_reg_0[20]),
        .I1(CO),
        .I2(Q[20]),
        .O(\fracta_out[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[23]_i_1 
       (.I0(\fracta_out[23]_i_2_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[23]_i_3_n_0 ),
        .O(fracta_s[23]));
  LUT6 #(
    .INIT(64'hC0000000AAAAAAAA)) 
    \fracta_out[23]_i_2 
       (.I0(signb_r_reg_0[20]),
        .I1(\fracta_out[26]_i_6_n_0 ),
        .I2(\fracta_out[26]_i_7_n_0 ),
        .I3(\fracta_out[23]_i_4_n_0 ),
        .I4(\fracta_out[25]_i_4_n_0 ),
        .I5(CO),
        .O(\fracta_out[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \fracta_out[23]_i_3 
       (.I0(Q[20]),
        .I1(CO),
        .I2(\fracta_out[26]_i_6_n_0 ),
        .I3(\fracta_out[26]_i_7_n_0 ),
        .I4(\fracta_out[23]_i_4_n_0 ),
        .I5(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[23]_i_4 
       (.I0(\fracta_out[23]_i_5_n_0 ),
        .I1(\fracta_out[26]_i_18_n_0 ),
        .I2(\fracta_out[23]_i_6_n_0 ),
        .O(\fracta_out[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \fracta_out[23]_i_5 
       (.I0(\fracta_out[26]_i_17_n_0 ),
        .I1(\fracta_out[25]_i_15_n_0 ),
        .I2(signb_r_reg_0[22]),
        .I3(CO),
        .I4(Q[22]),
        .O(\fracta_out[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFA504444FA50)) 
    \fracta_out[23]_i_6 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(signb_r_reg_0[20]),
        .I2(Q[20]),
        .I3(Q[21]),
        .I4(CO),
        .I5(signb_r_reg_0[21]),
        .O(\fracta_out[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fracta_out[24]_i_1 
       (.I0(signb_r_reg_0[21]),
        .I1(fractb_lt_fracta),
        .I2(Q[21]),
        .I3(CO),
        .I4(\fracta_out[24]_i_2_n_0 ),
        .O(fracta_s[24]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \fracta_out[24]_i_2 
       (.I0(\fracta_out[26]_i_6_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[24]_i_3_n_0 ),
        .I3(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h57550200)) 
    \fracta_out[24]_i_3 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[26]_i_15_n_0 ),
        .I2(exp_diff2[0]),
        .I3(\fracta_out[26]_i_17_n_0 ),
        .I4(\fracta_out[24]_i_4_n_0 ),
        .O(\fracta_out[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \fracta_out[24]_i_4 
       (.I0(signb_r_reg_0[22]),
        .I1(Q[22]),
        .I2(\fracta_out[25]_i_15_n_0 ),
        .I3(Q[21]),
        .I4(CO),
        .I5(signb_r_reg_0[21]),
        .O(\fracta_out[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCBB308830883088)) 
    \fracta_out[25]_i_1 
       (.I0(signb_r_reg_0[22]),
        .I1(fractb_lt_fracta),
        .I2(Q[22]),
        .I3(CO),
        .I4(\fracta_out[25]_i_3_n_0 ),
        .I5(\fracta_out[25]_i_4_n_0 ),
        .O(fracta_s[25]));
  LUT4 #(
    .INIT(16'h9009)) 
    \fracta_out[25]_i_10 
       (.I0(signb_r_reg_0[28]),
        .I1(Q[28]),
        .I2(signb_r_reg_0[27]),
        .I3(Q[27]),
        .O(\fracta_out[25]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \fracta_out[25]_i_11 
       (.I0(signb_r_reg_0[26]),
        .I1(Q[26]),
        .I2(signb_r_reg_0[25]),
        .I3(Q[25]),
        .O(\fracta_out[25]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \fracta_out[25]_i_12 
       (.I0(signb_r_reg_0[24]),
        .I1(Q[24]),
        .I2(signb_r_reg_0[23]),
        .I3(Q[23]),
        .O(\fracta_out[25]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \fracta_out[25]_i_13 
       (.I0(Q[22]),
        .I1(CO),
        .I2(signb_r_reg_0[22]),
        .I3(\fracta_out[25]_i_15_n_0 ),
        .I4(\fracta_out[26]_i_17_n_0 ),
        .I5(\fracta_out[26]_i_18_n_0 ),
        .O(\fracta_out[25]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \fracta_out[25]_i_15 
       (.I0(\fracta_out[26]_i_8_n_0 ),
        .I1(\fracta_out[26]_i_14_n_0 ),
        .I2(\fracta_out[26]_i_15_n_0 ),
        .I3(exp_diff2[0]),
        .O(\fracta_out[25]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \fracta_out[25]_i_3 
       (.I0(\fracta_out[25]_i_13_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[26]_i_6_n_0 ),
        .O(\fracta_out[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h111111111111111F)) 
    \fracta_out[25]_i_4 
       (.I0(\fracta_out[26]_i_8_n_0 ),
        .I1(\fracta_out[26]_i_14_n_0 ),
        .I2(O[2]),
        .I3(O[1]),
        .I4(O[3]),
        .I5(O[0]),
        .O(\fracta_out[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \fracta_out[25]_i_5 
       (.I0(Q[30]),
        .I1(signb_r_reg_0[30]),
        .I2(Q[29]),
        .I3(signb_r_reg_0[29]),
        .O(\fracta_out[25]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \fracta_out[25]_i_6 
       (.I0(Q[28]),
        .I1(signb_r_reg_0[28]),
        .I2(Q[27]),
        .I3(signb_r_reg_0[27]),
        .O(\fracta_out[25]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \fracta_out[25]_i_7 
       (.I0(Q[26]),
        .I1(signb_r_reg_0[26]),
        .I2(Q[25]),
        .I3(signb_r_reg_0[25]),
        .O(\fracta_out[25]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \fracta_out[25]_i_8 
       (.I0(Q[24]),
        .I1(signb_r_reg_0[24]),
        .I2(Q[23]),
        .I3(signb_r_reg_0[23]),
        .O(\fracta_out[25]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \fracta_out[25]_i_9 
       (.I0(signb_r_reg_0[30]),
        .I1(Q[30]),
        .I2(signb_r_reg_0[29]),
        .I3(Q[29]),
        .O(\fracta_out[25]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[26]_i_1 
       (.I0(fractb_n),
        .I1(fractb_lt_fracta),
        .I2(fracta_n),
        .O(fracta_s[26]));
  LUT2 #(
    .INIT(4'h2)) 
    \fracta_out[26]_i_10 
       (.I0(fractb_n),
        .I1(fracta_n),
        .O(\fracta_out[26]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h222222B2BB2222B2)) 
    \fracta_out[26]_i_11 
       (.I0(\fracta_out[26]_i_29_n_0 ),
        .I1(\fracta_out[26]_i_30_n_0 ),
        .I2(signb_r_reg_0[21]),
        .I3(\fracta_out[24]_i_2_n_0 ),
        .I4(CO),
        .I5(Q[21]),
        .O(\fracta_out[26]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fracta_out[26]_i_12 
       (.I0(fracta_n),
        .I1(fractb_n),
        .O(\fracta_out[26]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9099090090000999)) 
    \fracta_out[26]_i_13 
       (.I0(\fracta_out[26]_i_30_n_0 ),
        .I1(\fracta_out[26]_i_29_n_0 ),
        .I2(Q[21]),
        .I3(CO),
        .I4(\fracta_out[24]_i_2_n_0 ),
        .I5(signb_r_reg_0[21]),
        .O(\fracta_out[26]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \fracta_out[26]_i_14 
       (.I0(Q[26]),
        .I1(Q[29]),
        .I2(Q[25]),
        .I3(Q[30]),
        .I4(\fracta_out[26]_i_31_n_0 ),
        .O(\fracta_out[26]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \fracta_out[26]_i_15 
       (.I0(O[3]),
        .I1(O[1]),
        .I2(O[2]),
        .I3(exp_diff2[3]),
        .I4(exp_diff2[2]),
        .I5(O[0]),
        .O(\fracta_out[26]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[26]_i_17 
       (.I0(\fracta_out[26]_i_8_n_0 ),
        .I1(CO),
        .I2(\fracta_out[26]_i_14_n_0 ),
        .O(\fracta_out[26]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \fracta_out[26]_i_18 
       (.I0(\fracta_out[26]_i_8_n_0 ),
        .I1(\fracta_out[26]_i_14_n_0 ),
        .I2(\fracta_out[26]_i_15_n_0 ),
        .I3(exp_diff2[1]),
        .O(\fracta_out[26]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fracta_out[26]_i_19 
       (.I0(signb_r_reg_0[25]),
        .I1(signb_r_reg_0[23]),
        .I2(signb_r_reg_0[28]),
        .I3(signb_r_reg_0[26]),
        .O(\fracta_out[26]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \fracta_out[26]_i_2 
       (.I0(\fracta_out[25]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_5_n_0 ),
        .I2(\fracta_out[26]_i_6_n_0 ),
        .I3(\fracta_out[26]_i_7_n_0 ),
        .I4(CO),
        .I5(\fracta_out[26]_i_8_n_0 ),
        .O(fractb_n));
  LUT6 #(
    .INIT(64'h43400000FFFF4340)) 
    \fracta_out[26]_i_21 
       (.I0(Q[19]),
        .I1(CO),
        .I2(\fracta_out[22]_i_2_n_0 ),
        .I3(signb_r_reg_0[19]),
        .I4(\fracta_out[23]_i_2_n_0 ),
        .I5(\fracta_out[23]_i_3_n_0 ),
        .O(\fracta_out[26]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h02C202C2CBFB02C2)) 
    \fracta_out[26]_i_22 
       (.I0(signb_r_reg_0[18]),
        .I1(\fracta_out[21]_i_2_n_0 ),
        .I2(CO),
        .I3(Q[18]),
        .I4(\fracta_out[20]_i_2_n_0 ),
        .I5(\fracta_out[20]_i_3_n_0 ),
        .O(\fracta_out[26]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h02C202C2CBFB02C2)) 
    \fracta_out[26]_i_23 
       (.I0(signb_r_reg_0[16]),
        .I1(\fracta_out[19]_i_2_n_0 ),
        .I2(CO),
        .I3(Q[16]),
        .I4(\fracta_out[18]_i_2_n_0 ),
        .I5(\fracta_out[18]_i_3_n_0 ),
        .O(\fracta_out[26]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h02C202C2CBFB02C2)) 
    \fracta_out[26]_i_24 
       (.I0(signb_r_reg_0[14]),
        .I1(\fracta_out[17]_i_2_n_0 ),
        .I2(CO),
        .I3(Q[14]),
        .I4(\fracta_out[16]_i_2_n_0 ),
        .I5(\fracta_out[16]_i_3_n_0 ),
        .O(\fracta_out[26]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hB48700000000B487)) 
    \fracta_out[26]_i_25 
       (.I0(Q[19]),
        .I1(CO),
        .I2(\fracta_out[22]_i_2_n_0 ),
        .I3(signb_r_reg_0[19]),
        .I4(\fracta_out[23]_i_3_n_0 ),
        .I5(\fracta_out[23]_i_2_n_0 ),
        .O(\fracta_out[26]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hC93900000000C939)) 
    \fracta_out[26]_i_26 
       (.I0(signb_r_reg_0[18]),
        .I1(\fracta_out[21]_i_2_n_0 ),
        .I2(CO),
        .I3(Q[18]),
        .I4(\fracta_out[20]_i_3_n_0 ),
        .I5(\fracta_out[20]_i_2_n_0 ),
        .O(\fracta_out[26]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hC93900000000C939)) 
    \fracta_out[26]_i_27 
       (.I0(signb_r_reg_0[16]),
        .I1(\fracta_out[19]_i_2_n_0 ),
        .I2(CO),
        .I3(Q[16]),
        .I4(\fracta_out[18]_i_3_n_0 ),
        .I5(\fracta_out[18]_i_2_n_0 ),
        .O(\fracta_out[26]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hC93900000000C939)) 
    \fracta_out[26]_i_28 
       (.I0(signb_r_reg_0[14]),
        .I1(\fracta_out[17]_i_2_n_0 ),
        .I2(CO),
        .I3(Q[14]),
        .I4(\fracta_out[16]_i_3_n_0 ),
        .I5(\fracta_out[16]_i_2_n_0 ),
        .O(\fracta_out[26]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hC0AA)) 
    \fracta_out[26]_i_29 
       (.I0(signb_r_reg_0[22]),
        .I1(\fracta_out[25]_i_3_n_0 ),
        .I2(\fracta_out[25]_i_4_n_0 ),
        .I3(CO),
        .O(\fracta_out[26]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \fracta_out[26]_i_30 
       (.I0(Q[22]),
        .I1(CO),
        .I2(\fracta_out[25]_i_3_n_0 ),
        .I3(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[26]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fracta_out[26]_i_31 
       (.I0(Q[28]),
        .I1(Q[23]),
        .I2(Q[27]),
        .I3(Q[24]),
        .O(\fracta_out[26]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \fracta_out[26]_i_32 
       (.I0(signb_r_reg_0[26]),
        .I1(CO),
        .I2(Q[26]),
        .O(\fracta_out[26]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \fracta_out[26]_i_33 
       (.I0(signb_r_reg_0[25]),
        .I1(CO),
        .I2(Q[25]),
        .O(\fracta_out[26]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \fracta_out[26]_i_34 
       (.I0(signb_r_reg_0[24]),
        .I1(CO),
        .I2(Q[24]),
        .O(\fracta_out[26]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fracta_out[26]_i_35 
       (.I0(\fracta_out[26]_i_8_n_0 ),
        .I1(\fracta_out[26]_i_14_n_0 ),
        .O(\fracta_out[26]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fracta_out[26]_i_36 
       (.I0(signb_r_reg_0[26]),
        .I1(Q[26]),
        .O(\fracta_out[26]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fracta_out[26]_i_37 
       (.I0(signb_r_reg_0[25]),
        .I1(Q[25]),
        .O(\fracta_out[26]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \fracta_out[26]_i_38 
       (.I0(signb_r_reg_0[24]),
        .I1(Q[24]),
        .O(\fracta_out[26]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h88877787)) 
    \fracta_out[26]_i_39 
       (.I0(\fracta_out[26]_i_14_n_0 ),
        .I1(\fracta_out[26]_i_8_n_0 ),
        .I2(Q[23]),
        .I3(CO),
        .I4(signb_r_reg_0[23]),
        .O(\fracta_out[26]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \fracta_out[26]_i_4 
       (.I0(\fracta_out[26]_i_14_n_0 ),
        .I1(CO),
        .I2(\fracta_out[25]_i_4_n_0 ),
        .I3(\fracta_out[26]_i_5_n_0 ),
        .I4(\fracta_out[26]_i_6_n_0 ),
        .I5(\fracta_out[26]_i_7_n_0 ),
        .O(fracta_n));
  LUT6 #(
    .INIT(64'h000043404340FFFF)) 
    \fracta_out[26]_i_41 
       (.I0(Q[11]),
        .I1(CO),
        .I2(\fracta_out[14]_i_2_n_0 ),
        .I3(signb_r_reg_0[11]),
        .I4(\fracta_out[15]_i_2_n_0 ),
        .I5(\fracta_out[15]_i_3_n_0 ),
        .O(\fracta_out[26]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h000043404340FFFF)) 
    \fracta_out[26]_i_42 
       (.I0(Q[9]),
        .I1(CO),
        .I2(\fracta_out[12]_i_2_n_0 ),
        .I3(signb_r_reg_0[9]),
        .I4(\fracta_out[13]_i_2_n_0 ),
        .I5(\fracta_out[13]_i_3_n_0 ),
        .O(\fracta_out[26]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h000043404340FFFF)) 
    \fracta_out[26]_i_43 
       (.I0(Q[7]),
        .I1(CO),
        .I2(\fracta_out[10]_i_2_n_0 ),
        .I3(signb_r_reg_0[7]),
        .I4(\fracta_out[11]_i_2_n_0 ),
        .I5(\fracta_out[11]_i_3_n_0 ),
        .O(\fracta_out[26]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h4444F444)) 
    \fracta_out[26]_i_44 
       (.I0(\fracta_out[9]_i_3_n_0 ),
        .I1(\fracta_out[9]_i_2_n_0 ),
        .I2(\fracta_out[26]_i_57_n_0 ),
        .I3(\fracta_out[8]_i_2_n_0 ),
        .I4(\fracta_out[8]_i_3_n_0 ),
        .O(\fracta_out[26]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h6066060060000666)) 
    \fracta_out[26]_i_45 
       (.I0(\fracta_out[15]_i_2_n_0 ),
        .I1(\fracta_out[15]_i_3_n_0 ),
        .I2(Q[11]),
        .I3(CO),
        .I4(\fracta_out[14]_i_2_n_0 ),
        .I5(signb_r_reg_0[11]),
        .O(\fracta_out[26]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h6066060060000666)) 
    \fracta_out[26]_i_46 
       (.I0(\fracta_out[13]_i_2_n_0 ),
        .I1(\fracta_out[13]_i_3_n_0 ),
        .I2(Q[9]),
        .I3(CO),
        .I4(\fracta_out[12]_i_2_n_0 ),
        .I5(signb_r_reg_0[9]),
        .O(\fracta_out[26]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h6066060060000666)) 
    \fracta_out[26]_i_47 
       (.I0(\fracta_out[11]_i_2_n_0 ),
        .I1(\fracta_out[11]_i_3_n_0 ),
        .I2(Q[7]),
        .I3(CO),
        .I4(\fracta_out[10]_i_2_n_0 ),
        .I5(signb_r_reg_0[7]),
        .O(\fracta_out[26]_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \fracta_out[26]_i_48 
       (.I0(\fracta_out[26]_i_57_n_0 ),
        .I1(\fracta_out[8]_i_3_n_0 ),
        .I2(\fracta_out[8]_i_2_n_0 ),
        .O(\fracta_out[26]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h43400000FFFF4340)) 
    \fracta_out[26]_i_49 
       (.I0(Q[3]),
        .I1(CO),
        .I2(\fracta_out[6]_i_2_n_0 ),
        .I3(signb_r_reg_0[3]),
        .I4(\fracta_out[7]_i_2_n_0 ),
        .I5(\fracta_out[7]_i_3_n_0 ),
        .O(\fracta_out[26]_i_49_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \fracta_out[26]_i_5 
       (.I0(\fracta_out[26]_i_15_n_0 ),
        .I1(exp_diff2[0]),
        .I2(\fracta_out[26]_i_17_n_0 ),
        .I3(\fracta_out[26]_i_18_n_0 ),
        .O(\fracta_out[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h43400000FFFF4340)) 
    \fracta_out[26]_i_50 
       (.I0(Q[1]),
        .I1(CO),
        .I2(\fracta_out[4]_i_2_n_0 ),
        .I3(signb_r_reg_0[1]),
        .I4(\fracta_out[5]_i_2_n_0 ),
        .I5(\fracta_out[5]_i_3_n_0 ),
        .O(\fracta_out[26]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h8C3B8C08)) 
    \fracta_out[26]_i_51 
       (.I0(\fracta_out[2]_i_2_n_0 ),
        .I1(CO),
        .I2(Q[0]),
        .I3(\fracta_out[3]_i_2_n_0 ),
        .I4(signb_r_reg_0[0]),
        .O(\fracta_out[26]_i_51_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \fracta_out[26]_i_52 
       (.I0(\fracta_out_reg[0]_i_2_n_0 ),
        .I1(\fracta_out[1]_i_2_n_0 ),
        .I2(CO),
        .O(\fracta_out[26]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h9099090090000999)) 
    \fracta_out[26]_i_53 
       (.I0(\fracta_out[7]_i_2_n_0 ),
        .I1(\fracta_out[7]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(CO),
        .I4(\fracta_out[6]_i_2_n_0 ),
        .I5(signb_r_reg_0[3]),
        .O(\fracta_out[26]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hB48700000000B487)) 
    \fracta_out[26]_i_54 
       (.I0(Q[1]),
        .I1(CO),
        .I2(\fracta_out[4]_i_2_n_0 ),
        .I3(signb_r_reg_0[1]),
        .I4(\fracta_out[5]_i_3_n_0 ),
        .I5(\fracta_out[5]_i_2_n_0 ),
        .O(\fracta_out[26]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h0000B487)) 
    \fracta_out[26]_i_55 
       (.I0(Q[0]),
        .I1(CO),
        .I2(\fracta_out[3]_i_2_n_0 ),
        .I3(signb_r_reg_0[0]),
        .I4(\fracta_out[2]_i_2_n_0 ),
        .O(\fracta_out[26]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \fracta_out[26]_i_56 
       (.I0(\fracta_out_reg[0]_i_2_n_0 ),
        .I1(\fracta_out[1]_i_2_n_0 ),
        .O(\fracta_out[26]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h22E2EEE2DD1D111D)) 
    \fracta_out[26]_i_57 
       (.I0(signb_r_reg_0[6]),
        .I1(CO),
        .I2(\fracta_out[25]_i_3_n_0 ),
        .I3(\fracta_out[25]_i_4_n_0 ),
        .I4(\fracta_out[26]_i_58_n_0 ),
        .I5(\fracta_out[9]_i_3_n_0 ),
        .O(\fracta_out[26]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fracta_out[26]_i_58 
       (.I0(\fracta_out[26]_i_59_n_0 ),
        .I1(\fracta_out[26]_i_60_n_0 ),
        .I2(\fracta_out[26]_i_6_n_0 ),
        .I3(\fracta_out[26]_i_61_n_0 ),
        .I4(\fracta_out[26]_i_7_n_0 ),
        .I5(\fracta_out[26]_i_62_n_0 ),
        .O(\fracta_out[26]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h11BB050511BBAFAF)) 
    \fracta_out[26]_i_59 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[10]_i_6_n_0 ),
        .I2(\fracta_out[6]_i_5_n_0 ),
        .I3(\fracta_out[12]_i_9_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[10]_i_7_n_0 ),
        .O(\fracta_out[26]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h111111111111111F)) 
    \fracta_out[26]_i_6 
       (.I0(\fracta_out[26]_i_8_n_0 ),
        .I1(\fracta_out[26]_i_14_n_0 ),
        .I2(O[2]),
        .I3(O[1]),
        .I4(O[3]),
        .I5(exp_diff2[3]),
        .O(\fracta_out[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h11BB050511BBAFAF)) 
    \fracta_out[26]_i_60 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[14]_i_8_n_0 ),
        .I2(\fracta_out[13]_i_7_n_0 ),
        .I3(\fracta_out[14]_i_6_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[14]_i_9_n_0 ),
        .O(\fracta_out[26]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h11BB050511BBAFAF)) 
    \fracta_out[26]_i_61 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[14]_i_10_n_0 ),
        .I2(\fracta_out[14]_i_7_n_0 ),
        .I3(\fracta_out[12]_i_5_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[19]_i_5_n_0 ),
        .O(\fracta_out[26]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB05AF111105AF)) 
    \fracta_out[26]_i_62 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[22]_i_4_n_0 ),
        .I2(\fracta_out[12]_i_6_n_0 ),
        .I3(\fracta_out[22]_i_5_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[26]_i_63_n_0 ),
        .O(\fracta_out[26]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \fracta_out[26]_i_63 
       (.I0(signb_r_reg_0[21]),
        .I1(CO),
        .I2(Q[21]),
        .O(\fracta_out[26]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'hFF1F)) 
    \fracta_out[26]_i_7 
       (.I0(\fracta_out[26]_i_8_n_0 ),
        .I1(\fracta_out[26]_i_14_n_0 ),
        .I2(exp_diff2[2]),
        .I3(\fracta_out[26]_i_15_n_0 ),
        .O(\fracta_out[26]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \fracta_out[26]_i_8 
       (.I0(signb_r_reg_0[24]),
        .I1(signb_r_reg_0[27]),
        .I2(signb_r_reg_0[29]),
        .I3(signb_r_reg_0[30]),
        .I4(\fracta_out[26]_i_19_n_0 ),
        .O(\fracta_out[26]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \fracta_out[2]_i_1 
       (.I0(fractb_lt_fracta),
        .I1(\fracta_out[2]_i_2_n_0 ),
        .I2(CO),
        .O(fracta_s[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fracta_out[2]_i_2 
       (.I0(\fracta_out[2]_i_3_n_0 ),
        .I1(\fracta_out[26]_i_6_n_0 ),
        .I2(\fracta_out[10]_i_3_n_0 ),
        .I3(\fracta_out[25]_i_4_n_0 ),
        .I4(\fracta_out[18]_i_4_n_0 ),
        .O(\fracta_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAC0FFFFCAC00000)) 
    \fracta_out[2]_i_3 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(\fracta_out[2]_i_4_n_0 ),
        .I2(\fracta_out[26]_i_18_n_0 ),
        .I3(\fracta_out[2]_i_5_n_0 ),
        .I4(\fracta_out[26]_i_7_n_0 ),
        .I5(\fracta_out[6]_i_4_n_0 ),
        .O(\fracta_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEE44FAFAEE445050)) 
    \fracta_out[2]_i_4 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(signb_r_reg_0[1]),
        .I2(Q[1]),
        .I3(signb_r_reg_0[2]),
        .I4(CO),
        .I5(Q[2]),
        .O(\fracta_out[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[2]_i_5 
       (.I0(signb_r_reg_0[0]),
        .I1(CO),
        .I2(Q[0]),
        .O(\fracta_out[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF3C0B8B8)) 
    \fracta_out[3]_i_1 
       (.I0(Q[0]),
        .I1(CO),
        .I2(\fracta_out[3]_i_2_n_0 ),
        .I3(signb_r_reg_0[0]),
        .I4(fractb_lt_fracta),
        .O(fracta_s[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fracta_out[3]_i_2 
       (.I0(\fracta_out[3]_i_3_n_0 ),
        .I1(\fracta_out[26]_i_6_n_0 ),
        .I2(\fracta_out[3]_i_4_n_0 ),
        .I3(\fracta_out[25]_i_4_n_0 ),
        .I4(\fracta_out[19]_i_3_n_0 ),
        .O(\fracta_out[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE4FFE400)) 
    \fracta_out[3]_i_3 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[3]_i_5_n_0 ),
        .I2(\fracta_out[3]_i_6_n_0 ),
        .I3(\fracta_out[26]_i_7_n_0 ),
        .I4(\fracta_out[3]_i_7_n_0 ),
        .O(\fracta_out[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[3]_i_4 
       (.I0(\fracta_out[3]_i_8_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[3]_i_9_n_0 ),
        .O(\fracta_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fracta_out[3]_i_5 
       (.I0(signb_r_reg_0[1]),
        .I1(Q[1]),
        .I2(\fracta_out[25]_i_15_n_0 ),
        .I3(signb_r_reg_0[0]),
        .I4(CO),
        .I5(Q[0]),
        .O(\fracta_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fracta_out[3]_i_6 
       (.I0(signb_r_reg_0[3]),
        .I1(Q[3]),
        .I2(\fracta_out[25]_i_15_n_0 ),
        .I3(signb_r_reg_0[2]),
        .I4(CO),
        .I5(Q[2]),
        .O(\fracta_out[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fracta_out[3]_i_7 
       (.I0(\fracta_out[10]_i_6_n_0 ),
        .I1(\fracta_out[6]_i_5_n_0 ),
        .I2(\fracta_out[26]_i_18_n_0 ),
        .I3(\fracta_out[6]_i_6_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[6]_i_8_n_0 ),
        .O(\fracta_out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEE44FAFAEE445050)) 
    \fracta_out[3]_i_8 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[12]_i_9_n_0 ),
        .I2(\fracta_out[10]_i_7_n_0 ),
        .I3(\fracta_out[14]_i_8_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[13]_i_7_n_0 ),
        .O(\fracta_out[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEE44FAFAEE445050)) 
    \fracta_out[3]_i_9 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[14]_i_6_n_0 ),
        .I2(\fracta_out[14]_i_9_n_0 ),
        .I3(\fracta_out[14]_i_10_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[14]_i_7_n_0 ),
        .O(\fracta_out[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hF3C0B8B8)) 
    \fracta_out[4]_i_1 
       (.I0(Q[1]),
        .I1(CO),
        .I2(\fracta_out[4]_i_2_n_0 ),
        .I3(signb_r_reg_0[1]),
        .I4(fractb_lt_fracta),
        .O(fracta_s[4]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[4]_i_2 
       (.I0(\fracta_out[4]_i_3_n_0 ),
        .I1(\fracta_out[25]_i_4_n_0 ),
        .I2(\fracta_out[20]_i_4_n_0 ),
        .O(\fracta_out[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fracta_out[4]_i_3 
       (.I0(\fracta_out[4]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[4]_i_5_n_0 ),
        .I3(\fracta_out[26]_i_6_n_0 ),
        .I4(\fracta_out[12]_i_4_n_0 ),
        .O(\fracta_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEDCBA9876543210)) 
    \fracta_out[4]_i_4 
       (.I0(\fracta_out[25]_i_15_n_0 ),
        .I1(\fracta_out[26]_i_18_n_0 ),
        .I2(\fracta_out[1]_i_5_n_0 ),
        .I3(\fracta_out[5]_i_7_n_0 ),
        .I4(\fracta_out[6]_i_7_n_0 ),
        .I5(\fracta_out[6]_i_8_n_0 ),
        .O(\fracta_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFA504444FA50)) 
    \fracta_out[4]_i_5 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[6]_i_5_n_0 ),
        .I2(\fracta_out[6]_i_6_n_0 ),
        .I3(\fracta_out[10]_i_6_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[10]_i_7_n_0 ),
        .O(\fracta_out[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[5]_i_1 
       (.I0(\fracta_out[5]_i_2_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[5]_i_3_n_0 ),
        .O(fracta_s[5]));
  LUT6 #(
    .INIT(64'hF088FFFFF0880000)) 
    \fracta_out[5]_i_2 
       (.I0(\fracta_out[26]_i_6_n_0 ),
        .I1(\fracta_out[21]_i_3_n_0 ),
        .I2(\fracta_out[5]_i_4_n_0 ),
        .I3(\fracta_out[25]_i_4_n_0 ),
        .I4(CO),
        .I5(signb_r_reg_0[2]),
        .O(\fracta_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F088F088)) 
    \fracta_out[5]_i_3 
       (.I0(\fracta_out[26]_i_6_n_0 ),
        .I1(\fracta_out[21]_i_3_n_0 ),
        .I2(\fracta_out[5]_i_4_n_0 ),
        .I3(\fracta_out[25]_i_4_n_0 ),
        .I4(Q[2]),
        .I5(CO),
        .O(\fracta_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \fracta_out[5]_i_4 
       (.I0(\fracta_out[13]_i_5_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[13]_i_6_n_0 ),
        .I3(\fracta_out[5]_i_5_n_0 ),
        .I4(\fracta_out[5]_i_6_n_0 ),
        .I5(\fracta_out[26]_i_6_n_0 ),
        .O(\fracta_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEE44FAFAEE445050)) 
    \fracta_out[5]_i_5 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[6]_i_7_n_0 ),
        .I2(\fracta_out[5]_i_7_n_0 ),
        .I3(\fracta_out[6]_i_6_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[6]_i_8_n_0 ),
        .O(\fracta_out[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEE44FAFAEE445050)) 
    \fracta_out[5]_i_6 
       (.I0(\fracta_out[26]_i_18_n_0 ),
        .I1(\fracta_out[10]_i_6_n_0 ),
        .I2(\fracta_out[6]_i_5_n_0 ),
        .I3(\fracta_out[12]_i_9_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[10]_i_7_n_0 ),
        .O(\fracta_out[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[5]_i_7 
       (.I0(signb_r_reg_0[2]),
        .I1(CO),
        .I2(Q[2]),
        .O(\fracta_out[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hF3C0B8B8)) 
    \fracta_out[6]_i_1 
       (.I0(Q[3]),
        .I1(CO),
        .I2(\fracta_out[6]_i_2_n_0 ),
        .I3(signb_r_reg_0[3]),
        .I4(fractb_lt_fracta),
        .O(fracta_s[6]));
  LUT6 #(
    .INIT(64'hFFFF0000B800B800)) 
    \fracta_out[6]_i_2 
       (.I0(\fracta_out[22]_i_3_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[26]_i_5_n_0 ),
        .I3(\fracta_out[26]_i_6_n_0 ),
        .I4(\fracta_out[6]_i_3_n_0 ),
        .I5(\fracta_out[25]_i_4_n_0 ),
        .O(\fracta_out[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fracta_out[6]_i_3 
       (.I0(\fracta_out[6]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[10]_i_5_n_0 ),
        .I3(\fracta_out[26]_i_6_n_0 ),
        .I4(\fracta_out[14]_i_3_n_0 ),
        .O(\fracta_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \fracta_out[6]_i_4 
       (.I0(\fracta_out[6]_i_5_n_0 ),
        .I1(\fracta_out[6]_i_6_n_0 ),
        .I2(\fracta_out[26]_i_18_n_0 ),
        .I3(\fracta_out[6]_i_7_n_0 ),
        .I4(\fracta_out[25]_i_15_n_0 ),
        .I5(\fracta_out[6]_i_8_n_0 ),
        .O(\fracta_out[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[6]_i_5 
       (.I0(signb_r_reg_0[6]),
        .I1(CO),
        .I2(Q[6]),
        .O(\fracta_out[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[6]_i_6 
       (.I0(signb_r_reg_0[5]),
        .I1(CO),
        .I2(Q[5]),
        .O(\fracta_out[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[6]_i_7 
       (.I0(signb_r_reg_0[3]),
        .I1(CO),
        .I2(Q[3]),
        .O(\fracta_out[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[6]_i_8 
       (.I0(signb_r_reg_0[4]),
        .I1(CO),
        .I2(Q[4]),
        .O(\fracta_out[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[7]_i_1 
       (.I0(\fracta_out[7]_i_2_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[7]_i_3_n_0 ),
        .O(fracta_s[7]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[7]_i_2 
       (.I0(\fracta_out[7]_i_4_n_0 ),
        .I1(CO),
        .I2(signb_r_reg_0[4]),
        .O(\fracta_out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[7]_i_3 
       (.I0(Q[4]),
        .I1(CO),
        .I2(\fracta_out[7]_i_4_n_0 ),
        .O(\fracta_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0A0A0C0C0C0C0)) 
    \fracta_out[7]_i_4 
       (.I0(\fracta_out[7]_i_5_n_0 ),
        .I1(\fracta_out[15]_i_5_n_0 ),
        .I2(\fracta_out[25]_i_4_n_0 ),
        .I3(\fracta_out[23]_i_4_n_0 ),
        .I4(\fracta_out[26]_i_7_n_0 ),
        .I5(\fracta_out[26]_i_6_n_0 ),
        .O(\fracta_out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[7]_i_5 
       (.I0(\fracta_out[3]_i_7_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[3]_i_8_n_0 ),
        .O(\fracta_out[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[8]_i_1 
       (.I0(\fracta_out[8]_i_2_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[8]_i_3_n_0 ),
        .O(fracta_s[8]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[8]_i_2 
       (.I0(\fracta_out[8]_i_4_n_0 ),
        .I1(CO),
        .I2(signb_r_reg_0[5]),
        .O(\fracta_out[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[8]_i_3 
       (.I0(Q[5]),
        .I1(CO),
        .I2(\fracta_out[8]_i_4_n_0 ),
        .O(\fracta_out[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0A0A0C0C0C0C0)) 
    \fracta_out[8]_i_4 
       (.I0(\fracta_out[8]_i_5_n_0 ),
        .I1(\fracta_out[8]_i_6_n_0 ),
        .I2(\fracta_out[25]_i_4_n_0 ),
        .I3(\fracta_out[24]_i_3_n_0 ),
        .I4(\fracta_out[26]_i_7_n_0 ),
        .I5(\fracta_out[26]_i_6_n_0 ),
        .O(\fracta_out[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[8]_i_5 
       (.I0(\fracta_out[4]_i_5_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[12]_i_7_n_0 ),
        .O(\fracta_out[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[8]_i_6 
       (.I0(\fracta_out[12]_i_8_n_0 ),
        .I1(\fracta_out[26]_i_7_n_0 ),
        .I2(\fracta_out[12]_i_3_n_0 ),
        .O(\fracta_out[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[9]_i_1 
       (.I0(\fracta_out[9]_i_2_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[9]_i_3_n_0 ),
        .O(fracta_s[9]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[9]_i_2 
       (.I0(\fracta_out[9]_i_4_n_0 ),
        .I1(CO),
        .I2(signb_r_reg_0[6]),
        .O(\fracta_out[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fracta_out[9]_i_3 
       (.I0(Q[6]),
        .I1(CO),
        .I2(\fracta_out[9]_i_4_n_0 ),
        .O(\fracta_out[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fracta_out[9]_i_4 
       (.I0(\fracta_out[1]_i_4_n_0 ),
        .I1(\fracta_out[26]_i_6_n_0 ),
        .I2(\fracta_out[17]_i_4_n_0 ),
        .I3(\fracta_out[25]_i_4_n_0 ),
        .I4(\fracta_out[25]_i_3_n_0 ),
        .O(\fracta_out[9]_i_4_n_0 ));
  FDRE \fracta_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[0]),
        .Q(fracta[0]),
        .R(1'b0));
  MUXF7 \fracta_out_reg[0]_i_2 
       (.I0(\fracta_out[0]_i_3_n_0 ),
        .I1(\fracta_out[0]_i_4_n_0 ),
        .O(\fracta_out_reg[0]_i_2_n_0 ),
        .S(\fracta_out[25]_i_4_n_0 ));
  MUXF7 \fracta_out_reg[0]_i_6 
       (.I0(\fracta_out[0]_i_16_n_0 ),
        .I1(\fracta_out[0]_i_17_n_0 ),
        .O(\fracta_out_reg[0]_i_6_n_0 ),
        .S(\fracta_out[25]_i_15_n_0 ));
  FDRE \fracta_out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[10]),
        .Q(fracta[10]),
        .R(1'b0));
  FDRE \fracta_out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[11]),
        .Q(fracta[11]),
        .R(1'b0));
  FDRE \fracta_out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[12]),
        .Q(fracta[12]),
        .R(1'b0));
  FDRE \fracta_out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[13]),
        .Q(fracta[13]),
        .R(1'b0));
  FDRE \fracta_out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[14]),
        .Q(fracta[14]),
        .R(1'b0));
  FDRE \fracta_out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[15]),
        .Q(fracta[15]),
        .R(1'b0));
  FDRE \fracta_out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[16]),
        .Q(fracta[16]),
        .R(1'b0));
  FDRE \fracta_out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[17]),
        .Q(fracta[17]),
        .R(1'b0));
  FDRE \fracta_out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[18]),
        .Q(fracta[18]),
        .R(1'b0));
  FDRE \fracta_out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[19]),
        .Q(fracta[19]),
        .R(1'b0));
  FDRE \fracta_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[1]),
        .Q(fracta[1]),
        .R(1'b0));
  FDRE \fracta_out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[20]),
        .Q(fracta[20]),
        .R(1'b0));
  FDRE \fracta_out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[21]),
        .Q(fracta[21]),
        .R(1'b0));
  FDRE \fracta_out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[22]),
        .Q(fracta[22]),
        .R(1'b0));
  FDRE \fracta_out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[23]),
        .Q(fracta[23]),
        .R(1'b0));
  FDRE \fracta_out_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[24]),
        .Q(fracta[24]),
        .R(1'b0));
  FDRE \fracta_out_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[25]),
        .Q(fracta[25]),
        .R(1'b0));
  CARRY4 \fracta_out_reg[25]_i_2 
       (.CI(1'b0),
        .CO({CO,\fracta_out_reg[25]_i_2_n_1 ,\fracta_out_reg[25]_i_2_n_2 ,\fracta_out_reg[25]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\fracta_out[25]_i_5_n_0 ,\fracta_out[25]_i_6_n_0 ,\fracta_out[25]_i_7_n_0 ,\fracta_out[25]_i_8_n_0 }),
        .O(\NLW_fracta_out_reg[25]_i_2_O_UNCONNECTED [3:0]),
        .S({\fracta_out[25]_i_9_n_0 ,\fracta_out[25]_i_10_n_0 ,\fracta_out[25]_i_11_n_0 ,\fracta_out[25]_i_12_n_0 }));
  FDRE \fracta_out_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[26]),
        .Q(fracta[26]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fracta_out_reg[26]_i_16 
       (.CI(1'b0),
        .CO({\opa_r_reg[23] ,\fracta_out_reg[26]_i_16_n_1 ,\fracta_out_reg[26]_i_16_n_2 ,\fracta_out_reg[26]_i_16_n_3 }),
        .CYINIT(exp_large[0]),
        .DI({\fracta_out[26]_i_32_n_0 ,\fracta_out[26]_i_33_n_0 ,\fracta_out[26]_i_34_n_0 ,\fracta_out[26]_i_35_n_0 }),
        .O(exp_diff2),
        .S({\fracta_out[26]_i_36_n_0 ,\fracta_out[26]_i_37_n_0 ,\fracta_out[26]_i_38_n_0 ,\fracta_out[26]_i_39_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fracta_out_reg[26]_i_20 
       (.CI(\fracta_out_reg[26]_i_40_n_0 ),
        .CO({\fracta_out_reg[26]_i_20_n_0 ,\fracta_out_reg[26]_i_20_n_1 ,\fracta_out_reg[26]_i_20_n_2 ,\fracta_out_reg[26]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\fracta_out[26]_i_41_n_0 ,\fracta_out[26]_i_42_n_0 ,\fracta_out[26]_i_43_n_0 ,\fracta_out[26]_i_44_n_0 }),
        .O(\NLW_fracta_out_reg[26]_i_20_O_UNCONNECTED [3:0]),
        .S({\fracta_out[26]_i_45_n_0 ,\fracta_out[26]_i_46_n_0 ,\fracta_out[26]_i_47_n_0 ,\fracta_out[26]_i_48_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fracta_out_reg[26]_i_3 
       (.CI(\fracta_out_reg[26]_i_9_n_0 ),
        .CO({\NLW_fracta_out_reg[26]_i_3_CO_UNCONNECTED [3:2],fractb_lt_fracta,\fracta_out_reg[26]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\fracta_out[26]_i_10_n_0 ,\fracta_out[26]_i_11_n_0 }),
        .O(\NLW_fracta_out_reg[26]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\fracta_out[26]_i_12_n_0 ,\fracta_out[26]_i_13_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fracta_out_reg[26]_i_40 
       (.CI(1'b0),
        .CO({\fracta_out_reg[26]_i_40_n_0 ,\fracta_out_reg[26]_i_40_n_1 ,\fracta_out_reg[26]_i_40_n_2 ,\fracta_out_reg[26]_i_40_n_3 }),
        .CYINIT(1'b0),
        .DI({\fracta_out[26]_i_49_n_0 ,\fracta_out[26]_i_50_n_0 ,\fracta_out[26]_i_51_n_0 ,\fracta_out[26]_i_52_n_0 }),
        .O(\NLW_fracta_out_reg[26]_i_40_O_UNCONNECTED [3:0]),
        .S({\fracta_out[26]_i_53_n_0 ,\fracta_out[26]_i_54_n_0 ,\fracta_out[26]_i_55_n_0 ,\fracta_out[26]_i_56_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \fracta_out_reg[26]_i_9 
       (.CI(\fracta_out_reg[26]_i_20_n_0 ),
        .CO({\fracta_out_reg[26]_i_9_n_0 ,\fracta_out_reg[26]_i_9_n_1 ,\fracta_out_reg[26]_i_9_n_2 ,\fracta_out_reg[26]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\fracta_out[26]_i_21_n_0 ,\fracta_out[26]_i_22_n_0 ,\fracta_out[26]_i_23_n_0 ,\fracta_out[26]_i_24_n_0 }),
        .O(\NLW_fracta_out_reg[26]_i_9_O_UNCONNECTED [3:0]),
        .S({\fracta_out[26]_i_25_n_0 ,\fracta_out[26]_i_26_n_0 ,\fracta_out[26]_i_27_n_0 ,\fracta_out[26]_i_28_n_0 }));
  FDRE \fracta_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[2]),
        .Q(fracta[2]),
        .R(1'b0));
  FDRE \fracta_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[3]),
        .Q(fracta[3]),
        .R(1'b0));
  FDRE \fracta_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[4]),
        .Q(fracta[4]),
        .R(1'b0));
  FDRE \fracta_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[5]),
        .Q(fracta[5]),
        .R(1'b0));
  FDRE \fracta_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[6]),
        .Q(fracta[6]),
        .R(1'b0));
  FDRE \fracta_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[7]),
        .Q(fracta[7]),
        .R(1'b0));
  FDRE \fracta_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[8]),
        .Q(fracta[8]),
        .R(1'b0));
  FDRE \fracta_out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fracta_s[9]),
        .Q(fracta[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \fractb_out[0]_i_1 
       (.I0(fractb_lt_fracta),
        .I1(CO),
        .I2(\fracta_out_reg[0]_i_2_n_0 ),
        .O(fractb_s[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hB8B8F3C0)) 
    \fractb_out[10]_i_1 
       (.I0(Q[7]),
        .I1(CO),
        .I2(\fracta_out[10]_i_2_n_0 ),
        .I3(signb_r_reg_0[7]),
        .I4(fractb_lt_fracta),
        .O(fractb_s[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \fractb_out[11]_i_1 
       (.I0(\fracta_out[11]_i_3_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[11]_i_2_n_0 ),
        .O(fractb_s[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8B8F3C0)) 
    \fractb_out[12]_i_1 
       (.I0(Q[9]),
        .I1(CO),
        .I2(\fracta_out[12]_i_2_n_0 ),
        .I3(signb_r_reg_0[9]),
        .I4(fractb_lt_fracta),
        .O(fractb_s[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \fractb_out[13]_i_1 
       (.I0(\fracta_out[13]_i_3_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[13]_i_2_n_0 ),
        .O(fractb_s[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hB8B8F3C0)) 
    \fractb_out[14]_i_1 
       (.I0(Q[11]),
        .I1(CO),
        .I2(\fracta_out[14]_i_2_n_0 ),
        .I3(signb_r_reg_0[11]),
        .I4(fractb_lt_fracta),
        .O(fractb_s[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \fractb_out[15]_i_1 
       (.I0(\fracta_out[15]_i_3_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[15]_i_2_n_0 ),
        .O(fractb_s[15]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fractb_out[16]_i_1 
       (.I0(\fracta_out[16]_i_3_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[16]_i_2_n_0 ),
        .O(fractb_s[16]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hBF83BC80)) 
    \fractb_out[17]_i_1 
       (.I0(Q[14]),
        .I1(fractb_lt_fracta),
        .I2(CO),
        .I3(\fracta_out[17]_i_2_n_0 ),
        .I4(signb_r_reg_0[14]),
        .O(fractb_s[17]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fractb_out[18]_i_1 
       (.I0(\fracta_out[18]_i_3_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[18]_i_2_n_0 ),
        .O(fractb_s[18]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hBF83BC80)) 
    \fractb_out[19]_i_1 
       (.I0(Q[16]),
        .I1(fractb_lt_fracta),
        .I2(CO),
        .I3(\fracta_out[19]_i_2_n_0 ),
        .I4(signb_r_reg_0[16]),
        .O(fractb_s[19]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \fractb_out[1]_i_1 
       (.I0(fractb_lt_fracta),
        .I1(\fracta_out[1]_i_2_n_0 ),
        .I2(CO),
        .O(fractb_s[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fractb_out[20]_i_1 
       (.I0(\fracta_out[20]_i_3_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[20]_i_2_n_0 ),
        .O(fractb_s[20]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hBF83BC80)) 
    \fractb_out[21]_i_1 
       (.I0(Q[18]),
        .I1(fractb_lt_fracta),
        .I2(CO),
        .I3(\fracta_out[21]_i_2_n_0 ),
        .I4(signb_r_reg_0[18]),
        .O(fractb_s[21]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hB8B8F3C0)) 
    \fractb_out[22]_i_1 
       (.I0(Q[19]),
        .I1(CO),
        .I2(\fracta_out[22]_i_2_n_0 ),
        .I3(signb_r_reg_0[19]),
        .I4(fractb_lt_fracta),
        .O(fractb_s[22]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fractb_out[23]_i_1 
       (.I0(\fracta_out[23]_i_3_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[23]_i_2_n_0 ),
        .O(fractb_s[23]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hB8F3B8C0)) 
    \fractb_out[24]_i_1 
       (.I0(Q[21]),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[24]_i_2_n_0 ),
        .I3(CO),
        .I4(signb_r_reg_0[21]),
        .O(fractb_s[24]));
  LUT6 #(
    .INIT(64'hBB888888FC303030)) 
    \fractb_out[25]_i_1 
       (.I0(Q[22]),
        .I1(fractb_lt_fracta),
        .I2(signb_r_reg_0[22]),
        .I3(\fracta_out[25]_i_3_n_0 ),
        .I4(\fracta_out[25]_i_4_n_0 ),
        .I5(CO),
        .O(fractb_s[25]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fractb_out[26]_i_1 
       (.I0(fracta_n),
        .I1(fractb_lt_fracta),
        .I2(fractb_n),
        .O(fractb_s[26]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \fractb_out[2]_i_1 
       (.I0(fractb_lt_fracta),
        .I1(\fracta_out[2]_i_2_n_0 ),
        .I2(CO),
        .O(fractb_s[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hB8B8F3C0)) 
    \fractb_out[3]_i_1 
       (.I0(Q[0]),
        .I1(CO),
        .I2(\fracta_out[3]_i_2_n_0 ),
        .I3(signb_r_reg_0[0]),
        .I4(fractb_lt_fracta),
        .O(fractb_s[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hB8B8F3C0)) 
    \fractb_out[4]_i_1 
       (.I0(Q[1]),
        .I1(CO),
        .I2(\fracta_out[4]_i_2_n_0 ),
        .I3(signb_r_reg_0[1]),
        .I4(fractb_lt_fracta),
        .O(fractb_s[4]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fractb_out[5]_i_1 
       (.I0(\fracta_out[5]_i_3_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[5]_i_2_n_0 ),
        .O(fractb_s[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hB8B8F3C0)) 
    \fractb_out[6]_i_1 
       (.I0(Q[3]),
        .I1(CO),
        .I2(\fracta_out[6]_i_2_n_0 ),
        .I3(signb_r_reg_0[3]),
        .I4(fractb_lt_fracta),
        .O(fractb_s[6]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fractb_out[7]_i_1 
       (.I0(\fracta_out[7]_i_3_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[7]_i_2_n_0 ),
        .O(fractb_s[7]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fractb_out[8]_i_1 
       (.I0(\fracta_out[8]_i_3_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[8]_i_2_n_0 ),
        .O(fractb_s[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fractb_out[9]_i_1 
       (.I0(\fracta_out[9]_i_3_n_0 ),
        .I1(fractb_lt_fracta),
        .I2(\fracta_out[9]_i_2_n_0 ),
        .O(fractb_s[9]));
  FDRE \fractb_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[0]),
        .Q(fractb[0]),
        .R(1'b0));
  FDRE \fractb_out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[10]),
        .Q(fractb[10]),
        .R(1'b0));
  FDRE \fractb_out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[11]),
        .Q(fractb[11]),
        .R(1'b0));
  FDRE \fractb_out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[12]),
        .Q(fractb[12]),
        .R(1'b0));
  FDRE \fractb_out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[13]),
        .Q(fractb[13]),
        .R(1'b0));
  FDRE \fractb_out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[14]),
        .Q(fractb[14]),
        .R(1'b0));
  FDRE \fractb_out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[15]),
        .Q(fractb[15]),
        .R(1'b0));
  FDRE \fractb_out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[16]),
        .Q(fractb[16]),
        .R(1'b0));
  FDRE \fractb_out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[17]),
        .Q(fractb[17]),
        .R(1'b0));
  FDRE \fractb_out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[18]),
        .Q(fractb[18]),
        .R(1'b0));
  FDRE \fractb_out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[19]),
        .Q(fractb[19]),
        .R(1'b0));
  FDRE \fractb_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[1]),
        .Q(fractb[1]),
        .R(1'b0));
  FDRE \fractb_out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[20]),
        .Q(fractb[20]),
        .R(1'b0));
  FDRE \fractb_out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[21]),
        .Q(fractb[21]),
        .R(1'b0));
  FDRE \fractb_out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[22]),
        .Q(fractb[22]),
        .R(1'b0));
  FDRE \fractb_out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[23]),
        .Q(fractb[23]),
        .R(1'b0));
  FDRE \fractb_out_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[24]),
        .Q(fractb[24]),
        .R(1'b0));
  FDRE \fractb_out_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[25]),
        .Q(fractb[25]),
        .R(1'b0));
  FDRE \fractb_out_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[26]),
        .Q(fractb[26]),
        .R(1'b0));
  FDRE \fractb_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[2]),
        .Q(fractb[2]),
        .R(1'b0));
  FDRE \fractb_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[3]),
        .Q(fractb[3]),
        .R(1'b0));
  FDRE \fractb_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[4]),
        .Q(fractb[4]),
        .R(1'b0));
  FDRE \fractb_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[5]),
        .Q(fractb[5]),
        .R(1'b0));
  FDRE \fractb_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[6]),
        .Q(fractb[6]),
        .R(1'b0));
  FDRE \fractb_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[7]),
        .Q(fractb[7]),
        .R(1'b0));
  FDRE \fractb_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[8]),
        .Q(fractb[8]),
        .R(1'b0));
  FDRE \fractb_out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fractb_s[9]),
        .Q(fractb[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF1F0F40F00000)) 
    nan_sign_i_1
       (.I0(fracta_eq_fractb),
        .I1(fracta_lt_fractb),
        .I2(opb_nan),
        .I3(opa_nan),
        .I4(signb_r),
        .I5(signa_r),
        .O(nan_sign_i_1_n_0));
  FDRE nan_sign_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(nan_sign_i_1_n_0),
        .Q(nan_sign),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    result_zero_sign_i_1
       (.I0(signa_r),
        .I1(signb_r),
        .O(nan_sign10));
  FDRE result_zero_sign_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(nan_sign10),
        .Q(result_zero_sign),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sign_i_1
       (.I0(signb_r_reg_0[31]),
        .I1(fractb_lt_fracta),
        .I2(Q[31]),
        .O(sign_d));
  FDRE sign_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sign_d),
        .Q(sign_fasu),
        .R(1'b0));
  FDRE signa_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(signa_r),
        .R(1'b0));
  FDRE signb_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(signb_r_reg_0[31]),
        .Q(signb_r),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spam_detection_inference_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    spam_prob,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_aresetn,
    write_done,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [31:0]spam_prob;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input write_done;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [1:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire [1:0]cnt_1;
  wire \cnt_1[0]_i_1_n_0 ;
  wire \cnt_1[1]_i_1_n_0 ;
  wire [31:0]fifo_din;
  wire [31:0]fifo_dout;
  wire fifo_empty;
  wire fifo_rd_en;
  wire fifo_rd_en_i_1_n_0;
  wire fifo_wr_en;
  wire fpu_out_valid_i_1_n_0;
  wire fpu_out_valid_reg_n_0;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire spam_detection_inference_v1_0_S00_AXI_inst_n_1;
  wire spam_fpu_done;
  wire spam_fpu_done_i_1_n_0;
  wire [31:0]spam_opa;
  wire spam_opa0;
  wire [31:0]spam_opb;
  wire [31:0]spam_out;
  wire [31:0]spam_prob;
  wire write_done;
  wire NLW_spam_prob_buffer_full_UNCONNECTED;
  wire [8:0]NLW_spam_prob_buffer_data_count_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_1[0]_i_1 
       (.I0(fifo_empty),
        .I1(write_done),
        .I2(cnt_1[0]),
        .O(\cnt_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_1[1]_i_1 
       (.I0(cnt_1[0]),
        .I1(write_done),
        .I2(fifo_empty),
        .I3(cnt_1[1]),
        .O(\cnt_1[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_1[0]_i_1_n_0 ),
        .Q(cnt_1[0]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt_1[1]_i_1_n_0 ),
        .Q(cnt_1[1]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    fifo_rd_en_i_1
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(fifo_empty),
        .I3(fifo_rd_en),
        .O(fifo_rd_en_i_1_n_0));
  FDRE fifo_rd_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fifo_rd_en_i_1_n_0),
        .Q(fifo_rd_en),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fpu fpu_0
       (.D(spam_out),
        .Q(spam_opa),
        .\opb_r_reg[31]_0 (spam_opb),
        .s00_axi_aclk(s00_axi_aclk));
  LUT4 #(
    .INIT(16'hD500)) 
    fpu_out_valid_i_1
       (.I0(s00_axi_aresetn),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(fpu_out_valid_reg_n_0),
        .O(fpu_out_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fpu_out_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fpu_out_valid_i_1_n_0),
        .Q(fpu_out_valid_reg_n_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spam_detection_inference_v1_0_S00_AXI spam_detection_inference_v1_0_S00_AXI_inst
       (.Q(fifo_din),
        .SR(spam_detection_inference_v1_0_S00_AXI_inst_n_1),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .wr_en(fifo_wr_en));
  LUT6 #(
    .INIT(64'h8FFFFFFF80000000)) 
    spam_fpu_done_i_1
       (.I0(cnt_1[1]),
        .I1(cnt_1[0]),
        .I2(s00_axi_aresetn),
        .I3(fifo_empty),
        .I4(write_done),
        .I5(spam_fpu_done),
        .O(spam_fpu_done_i_1_n_0));
  FDRE spam_fpu_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spam_fpu_done_i_1_n_0),
        .Q(spam_fpu_done),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \spam_opa[31]_i_1 
       (.I0(fpu_out_valid_reg_n_0),
        .I1(fifo_empty),
        .O(spam_opa0));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[0] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[0]),
        .Q(spam_opa[0]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[10] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[10]),
        .Q(spam_opa[10]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[11] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[11]),
        .Q(spam_opa[11]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[12] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[12]),
        .Q(spam_opa[12]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[13] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[13]),
        .Q(spam_opa[13]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[14] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[14]),
        .Q(spam_opa[14]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[15] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[15]),
        .Q(spam_opa[15]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[16] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[16]),
        .Q(spam_opa[16]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[17] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[17]),
        .Q(spam_opa[17]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[18] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[18]),
        .Q(spam_opa[18]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[19] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[19]),
        .Q(spam_opa[19]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[1] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[1]),
        .Q(spam_opa[1]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[20] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[20]),
        .Q(spam_opa[20]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[21] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[21]),
        .Q(spam_opa[21]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[22] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[22]),
        .Q(spam_opa[22]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[23] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[23]),
        .Q(spam_opa[23]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[24] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[24]),
        .Q(spam_opa[24]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[25] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[25]),
        .Q(spam_opa[25]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[26] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[26]),
        .Q(spam_opa[26]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[27] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[27]),
        .Q(spam_opa[27]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[28] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[28]),
        .Q(spam_opa[28]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[29] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[29]),
        .Q(spam_opa[29]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[2] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[2]),
        .Q(spam_opa[2]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[30] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[30]),
        .Q(spam_opa[30]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[31] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[31]),
        .Q(spam_opa[31]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[3] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[3]),
        .Q(spam_opa[3]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[4] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[4]),
        .Q(spam_opa[4]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[5] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[5]),
        .Q(spam_opa[5]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[6] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[6]),
        .Q(spam_opa[6]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[7] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[7]),
        .Q(spam_opa[7]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[8] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[8]),
        .Q(spam_opa[8]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opa_reg[9] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(spam_out[9]),
        .Q(spam_opa[9]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[0] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[0]),
        .Q(spam_opb[0]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[10] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[10]),
        .Q(spam_opb[10]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[11] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[11]),
        .Q(spam_opb[11]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[12] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[12]),
        .Q(spam_opb[12]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[13] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[13]),
        .Q(spam_opb[13]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[14] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[14]),
        .Q(spam_opb[14]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[15] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[15]),
        .Q(spam_opb[15]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[16] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[16]),
        .Q(spam_opb[16]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[17] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[17]),
        .Q(spam_opb[17]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[18] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[18]),
        .Q(spam_opb[18]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[19] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[19]),
        .Q(spam_opb[19]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[1] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[1]),
        .Q(spam_opb[1]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[20] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[20]),
        .Q(spam_opb[20]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[21] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[21]),
        .Q(spam_opb[21]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[22] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[22]),
        .Q(spam_opb[22]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[23] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[23]),
        .Q(spam_opb[23]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[24] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[24]),
        .Q(spam_opb[24]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[25] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[25]),
        .Q(spam_opb[25]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[26] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[26]),
        .Q(spam_opb[26]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[27] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[27]),
        .Q(spam_opb[27]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[28] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[28]),
        .Q(spam_opb[28]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[29] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[29]),
        .Q(spam_opb[29]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[2] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[2]),
        .Q(spam_opb[2]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[30] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[30]),
        .Q(spam_opb[30]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[31] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[31]),
        .Q(spam_opb[31]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[3] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[3]),
        .Q(spam_opb[3]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[4] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[4]),
        .Q(spam_opb[4]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[5] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[5]),
        .Q(spam_opb[5]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[6] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[6]),
        .Q(spam_opb[6]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[7] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[7]),
        .Q(spam_opb[7]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[8] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[8]),
        .Q(spam_opb[8]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \spam_opb_reg[9] 
       (.C(s00_axi_aclk),
        .CE(spam_opa0),
        .D(fifo_dout[9]),
        .Q(spam_opb[9]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  (* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_3,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_3,Vivado 2018.3.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_0 spam_prob_buffer
       (.clk(s00_axi_aclk),
        .data_count(NLW_spam_prob_buffer_data_count_UNCONNECTED[8:0]),
        .din(fifo_din),
        .dout(fifo_dout),
        .empty(fifo_empty),
        .full(NLW_spam_prob_buffer_full_UNCONNECTED),
        .rd_en(fifo_rd_en),
        .srst(s00_axi_aresetn),
        .wr_en(fifo_wr_en));
  FDRE \spam_result_reg[0] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[0]),
        .Q(spam_prob[0]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[10] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[10]),
        .Q(spam_prob[10]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[11] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[11]),
        .Q(spam_prob[11]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[12] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[12]),
        .Q(spam_prob[12]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[13] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[13]),
        .Q(spam_prob[13]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[14] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[14]),
        .Q(spam_prob[14]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[15] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[15]),
        .Q(spam_prob[15]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[16] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[16]),
        .Q(spam_prob[16]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[17] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[17]),
        .Q(spam_prob[17]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[18] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[18]),
        .Q(spam_prob[18]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[19] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[19]),
        .Q(spam_prob[19]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[1] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[1]),
        .Q(spam_prob[1]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[20] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[20]),
        .Q(spam_prob[20]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[21] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[21]),
        .Q(spam_prob[21]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[22] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[22]),
        .Q(spam_prob[22]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[23] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[23]),
        .Q(spam_prob[23]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[24] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[24]),
        .Q(spam_prob[24]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[25] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[25]),
        .Q(spam_prob[25]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[26] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[26]),
        .Q(spam_prob[26]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[27] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[27]),
        .Q(spam_prob[27]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[28] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[28]),
        .Q(spam_prob[28]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[29] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[29]),
        .Q(spam_prob[29]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[2] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[2]),
        .Q(spam_prob[2]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[30] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[30]),
        .Q(spam_prob[30]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[31] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[31]),
        .Q(spam_prob[31]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[3] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[3]),
        .Q(spam_prob[3]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[4] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[4]),
        .Q(spam_prob[4]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[5] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[5]),
        .Q(spam_prob[5]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[6] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[6]),
        .Q(spam_prob[6]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[7] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[7]),
        .Q(spam_prob[7]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[8] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[8]),
        .Q(spam_prob[8]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
  FDRE \spam_result_reg[9] 
       (.C(s00_axi_aclk),
        .CE(spam_fpu_done),
        .D(spam_out[9]),
        .Q(spam_prob[9]),
        .R(spam_detection_inference_v1_0_S00_AXI_inst_n_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spam_detection_inference_v1_0_S00_AXI
   (axi_awready_reg_0,
    SR,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    wr_en,
    s00_axi_rvalid,
    Q,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_wdata,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr);
  output axi_awready_reg_0;
  output [0:0]SR;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output wr_en;
  output s00_axi_rvalid;
  output [31:0]Q;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input [31:0]s00_axi_wdata;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_araddr;

  wire [31:0]Q;
  wire [0:0]SR;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[25]_i_7_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[26]_i_7_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[27]_i_7_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[28]_i_7_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[29]_i_7_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[30]_i_7_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_3_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_3_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_3_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_3_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_3_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_3_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_3_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_3_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_3_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_3_n_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_3_n_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_3_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_3_n_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_3_n_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_2_n_0 ;
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [3:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out__0;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:0]sel0;
  wire [31:0]slv_reg10;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [31:0]slv_reg11;
  wire \slv_reg11[15]_i_1_n_0 ;
  wire \slv_reg11[23]_i_1_n_0 ;
  wire \slv_reg11[31]_i_1_n_0 ;
  wire \slv_reg11[7]_i_1_n_0 ;
  wire [31:0]slv_reg12;
  wire \slv_reg12[15]_i_1_n_0 ;
  wire \slv_reg12[23]_i_1_n_0 ;
  wire \slv_reg12[31]_i_1_n_0 ;
  wire \slv_reg12[7]_i_1_n_0 ;
  wire [31:0]slv_reg13;
  wire \slv_reg13[15]_i_1_n_0 ;
  wire \slv_reg13[23]_i_1_n_0 ;
  wire \slv_reg13[31]_i_1_n_0 ;
  wire \slv_reg13[7]_i_1_n_0 ;
  wire [31:0]slv_reg14;
  wire \slv_reg14[15]_i_1_n_0 ;
  wire \slv_reg14[23]_i_1_n_0 ;
  wire \slv_reg14[31]_i_1_n_0 ;
  wire \slv_reg14[7]_i_1_n_0 ;
  wire [31:0]slv_reg15;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire \slv_reg1[0]_i_1_n_0 ;
  wire \slv_reg1[0]_i_2_n_0 ;
  wire \slv_reg1[0]_i_3_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire [31:0]slv_reg8;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire [31:0]slv_reg9;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire wr_en;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(SR));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(SR));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(SR));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in[3]),
        .R(SR));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(wr_en),
        .I4(sel0[0]),
        .I5(Q[0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(slv_reg11[0]),
        .I1(slv_reg10[0]),
        .I2(sel0[1]),
        .I3(slv_reg9[0]),
        .I4(sel0[0]),
        .I5(slv_reg8[0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(slv_reg15[0]),
        .I1(slv_reg14[0]),
        .I2(sel0[1]),
        .I3(slv_reg13[0]),
        .I4(sel0[0]),
        .I5(slv_reg12[0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[10]_i_4 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(Q[10]),
        .I4(sel0[0]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_5 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_6 
       (.I0(slv_reg11[10]),
        .I1(slv_reg10[10]),
        .I2(sel0[1]),
        .I3(slv_reg9[10]),
        .I4(sel0[0]),
        .I5(slv_reg8[10]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(slv_reg15[10]),
        .I1(slv_reg14[10]),
        .I2(sel0[1]),
        .I3(slv_reg13[10]),
        .I4(sel0[0]),
        .I5(slv_reg12[10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[11]_i_4 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(Q[11]),
        .I4(sel0[0]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_5 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_6 
       (.I0(slv_reg11[11]),
        .I1(slv_reg10[11]),
        .I2(sel0[1]),
        .I3(slv_reg9[11]),
        .I4(sel0[0]),
        .I5(slv_reg8[11]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(slv_reg15[11]),
        .I1(slv_reg14[11]),
        .I2(sel0[1]),
        .I3(slv_reg13[11]),
        .I4(sel0[0]),
        .I5(slv_reg12[11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[12]_i_4 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(Q[12]),
        .I4(sel0[0]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_5 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_6 
       (.I0(slv_reg11[12]),
        .I1(slv_reg10[12]),
        .I2(sel0[1]),
        .I3(slv_reg9[12]),
        .I4(sel0[0]),
        .I5(slv_reg8[12]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(slv_reg15[12]),
        .I1(slv_reg14[12]),
        .I2(sel0[1]),
        .I3(slv_reg13[12]),
        .I4(sel0[0]),
        .I5(slv_reg12[12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[13]_i_4 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(Q[13]),
        .I4(sel0[0]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_5 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_6 
       (.I0(slv_reg11[13]),
        .I1(slv_reg10[13]),
        .I2(sel0[1]),
        .I3(slv_reg9[13]),
        .I4(sel0[0]),
        .I5(slv_reg8[13]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(slv_reg15[13]),
        .I1(slv_reg14[13]),
        .I2(sel0[1]),
        .I3(slv_reg13[13]),
        .I4(sel0[0]),
        .I5(slv_reg12[13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[14]_i_4 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(Q[14]),
        .I4(sel0[0]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_5 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(slv_reg11[14]),
        .I1(slv_reg10[14]),
        .I2(sel0[1]),
        .I3(slv_reg9[14]),
        .I4(sel0[0]),
        .I5(slv_reg8[14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(slv_reg15[14]),
        .I1(slv_reg14[14]),
        .I2(sel0[1]),
        .I3(slv_reg13[14]),
        .I4(sel0[0]),
        .I5(slv_reg12[14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[15]_i_4 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(Q[15]),
        .I4(sel0[0]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_6 
       (.I0(slv_reg11[15]),
        .I1(slv_reg10[15]),
        .I2(sel0[1]),
        .I3(slv_reg9[15]),
        .I4(sel0[0]),
        .I5(slv_reg8[15]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(slv_reg15[15]),
        .I1(slv_reg14[15]),
        .I2(sel0[1]),
        .I3(slv_reg13[15]),
        .I4(sel0[0]),
        .I5(slv_reg12[15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[16]_i_4 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(Q[16]),
        .I4(sel0[0]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_6 
       (.I0(slv_reg11[16]),
        .I1(slv_reg10[16]),
        .I2(sel0[1]),
        .I3(slv_reg9[16]),
        .I4(sel0[0]),
        .I5(slv_reg8[16]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_7 
       (.I0(slv_reg15[16]),
        .I1(slv_reg14[16]),
        .I2(sel0[1]),
        .I3(slv_reg13[16]),
        .I4(sel0[0]),
        .I5(slv_reg12[16]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[17]_i_4 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(Q[17]),
        .I4(sel0[0]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_6 
       (.I0(slv_reg11[17]),
        .I1(slv_reg10[17]),
        .I2(sel0[1]),
        .I3(slv_reg9[17]),
        .I4(sel0[0]),
        .I5(slv_reg8[17]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_7 
       (.I0(slv_reg15[17]),
        .I1(slv_reg14[17]),
        .I2(sel0[1]),
        .I3(slv_reg13[17]),
        .I4(sel0[0]),
        .I5(slv_reg12[17]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[18]_i_4 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(Q[18]),
        .I4(sel0[0]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_6 
       (.I0(slv_reg11[18]),
        .I1(slv_reg10[18]),
        .I2(sel0[1]),
        .I3(slv_reg9[18]),
        .I4(sel0[0]),
        .I5(slv_reg8[18]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_7 
       (.I0(slv_reg15[18]),
        .I1(slv_reg14[18]),
        .I2(sel0[1]),
        .I3(slv_reg13[18]),
        .I4(sel0[0]),
        .I5(slv_reg12[18]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[19]_i_4 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(Q[19]),
        .I4(sel0[0]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_6 
       (.I0(slv_reg11[19]),
        .I1(slv_reg10[19]),
        .I2(sel0[1]),
        .I3(slv_reg9[19]),
        .I4(sel0[0]),
        .I5(slv_reg8[19]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_7 
       (.I0(slv_reg15[19]),
        .I1(slv_reg14[19]),
        .I2(sel0[1]),
        .I3(slv_reg13[19]),
        .I4(sel0[0]),
        .I5(slv_reg12[19]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_4 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(Q[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(slv_reg11[1]),
        .I1(slv_reg10[1]),
        .I2(sel0[1]),
        .I3(slv_reg9[1]),
        .I4(sel0[0]),
        .I5(slv_reg8[1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(slv_reg15[1]),
        .I1(slv_reg14[1]),
        .I2(sel0[1]),
        .I3(slv_reg13[1]),
        .I4(sel0[0]),
        .I5(slv_reg12[1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[20]_i_4 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(Q[20]),
        .I4(sel0[0]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_6 
       (.I0(slv_reg11[20]),
        .I1(slv_reg10[20]),
        .I2(sel0[1]),
        .I3(slv_reg9[20]),
        .I4(sel0[0]),
        .I5(slv_reg8[20]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_7 
       (.I0(slv_reg15[20]),
        .I1(slv_reg14[20]),
        .I2(sel0[1]),
        .I3(slv_reg13[20]),
        .I4(sel0[0]),
        .I5(slv_reg12[20]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[21]_i_4 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(Q[21]),
        .I4(sel0[0]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_6 
       (.I0(slv_reg11[21]),
        .I1(slv_reg10[21]),
        .I2(sel0[1]),
        .I3(slv_reg9[21]),
        .I4(sel0[0]),
        .I5(slv_reg8[21]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_7 
       (.I0(slv_reg15[21]),
        .I1(slv_reg14[21]),
        .I2(sel0[1]),
        .I3(slv_reg13[21]),
        .I4(sel0[0]),
        .I5(slv_reg12[21]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[22]_i_4 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(Q[22]),
        .I4(sel0[0]),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_6 
       (.I0(slv_reg11[22]),
        .I1(slv_reg10[22]),
        .I2(sel0[1]),
        .I3(slv_reg9[22]),
        .I4(sel0[0]),
        .I5(slv_reg8[22]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_7 
       (.I0(slv_reg15[22]),
        .I1(slv_reg14[22]),
        .I2(sel0[1]),
        .I3(slv_reg13[22]),
        .I4(sel0[0]),
        .I5(slv_reg12[22]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[23]_i_4 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(Q[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_6 
       (.I0(slv_reg11[23]),
        .I1(slv_reg10[23]),
        .I2(sel0[1]),
        .I3(slv_reg9[23]),
        .I4(sel0[0]),
        .I5(slv_reg8[23]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_7 
       (.I0(slv_reg15[23]),
        .I1(slv_reg14[23]),
        .I2(sel0[1]),
        .I3(slv_reg13[23]),
        .I4(sel0[0]),
        .I5(slv_reg12[23]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[24]_i_4 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(Q[24]),
        .I4(sel0[0]),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_6 
       (.I0(slv_reg11[24]),
        .I1(slv_reg10[24]),
        .I2(sel0[1]),
        .I3(slv_reg9[24]),
        .I4(sel0[0]),
        .I5(slv_reg8[24]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_7 
       (.I0(slv_reg15[24]),
        .I1(slv_reg14[24]),
        .I2(sel0[1]),
        .I3(slv_reg13[24]),
        .I4(sel0[0]),
        .I5(slv_reg12[24]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[25]_i_4 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(Q[25]),
        .I4(sel0[0]),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_6 
       (.I0(slv_reg11[25]),
        .I1(slv_reg10[25]),
        .I2(sel0[1]),
        .I3(slv_reg9[25]),
        .I4(sel0[0]),
        .I5(slv_reg8[25]),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_7 
       (.I0(slv_reg15[25]),
        .I1(slv_reg14[25]),
        .I2(sel0[1]),
        .I3(slv_reg13[25]),
        .I4(sel0[0]),
        .I5(slv_reg12[25]),
        .O(\axi_rdata[25]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[26]_i_4 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(Q[26]),
        .I4(sel0[0]),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_6 
       (.I0(slv_reg11[26]),
        .I1(slv_reg10[26]),
        .I2(sel0[1]),
        .I3(slv_reg9[26]),
        .I4(sel0[0]),
        .I5(slv_reg8[26]),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_7 
       (.I0(slv_reg15[26]),
        .I1(slv_reg14[26]),
        .I2(sel0[1]),
        .I3(slv_reg13[26]),
        .I4(sel0[0]),
        .I5(slv_reg12[26]),
        .O(\axi_rdata[26]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[27]_i_4 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(Q[27]),
        .I4(sel0[0]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_6 
       (.I0(slv_reg11[27]),
        .I1(slv_reg10[27]),
        .I2(sel0[1]),
        .I3(slv_reg9[27]),
        .I4(sel0[0]),
        .I5(slv_reg8[27]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_7 
       (.I0(slv_reg15[27]),
        .I1(slv_reg14[27]),
        .I2(sel0[1]),
        .I3(slv_reg13[27]),
        .I4(sel0[0]),
        .I5(slv_reg12[27]),
        .O(\axi_rdata[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[28]_i_4 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(Q[28]),
        .I4(sel0[0]),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_6 
       (.I0(slv_reg11[28]),
        .I1(slv_reg10[28]),
        .I2(sel0[1]),
        .I3(slv_reg9[28]),
        .I4(sel0[0]),
        .I5(slv_reg8[28]),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_7 
       (.I0(slv_reg15[28]),
        .I1(slv_reg14[28]),
        .I2(sel0[1]),
        .I3(slv_reg13[28]),
        .I4(sel0[0]),
        .I5(slv_reg12[28]),
        .O(\axi_rdata[28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[29]_i_4 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(Q[29]),
        .I4(sel0[0]),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_6 
       (.I0(slv_reg11[29]),
        .I1(slv_reg10[29]),
        .I2(sel0[1]),
        .I3(slv_reg9[29]),
        .I4(sel0[0]),
        .I5(slv_reg8[29]),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_7 
       (.I0(slv_reg15[29]),
        .I1(slv_reg14[29]),
        .I2(sel0[1]),
        .I3(slv_reg13[29]),
        .I4(sel0[0]),
        .I5(slv_reg12[29]),
        .O(\axi_rdata[29]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[2]_i_4 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(Q[2]),
        .I4(sel0[0]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .I5(slv_reg4[2]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_6 
       (.I0(slv_reg11[2]),
        .I1(slv_reg10[2]),
        .I2(sel0[1]),
        .I3(slv_reg9[2]),
        .I4(sel0[0]),
        .I5(slv_reg8[2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(slv_reg15[2]),
        .I1(slv_reg14[2]),
        .I2(sel0[1]),
        .I3(slv_reg13[2]),
        .I4(sel0[0]),
        .I5(slv_reg12[2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[30]_i_4 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(Q[30]),
        .I4(sel0[0]),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_6 
       (.I0(slv_reg11[30]),
        .I1(slv_reg10[30]),
        .I2(sel0[1]),
        .I3(slv_reg9[30]),
        .I4(sel0[0]),
        .I5(slv_reg8[30]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_7 
       (.I0(slv_reg15[30]),
        .I1(slv_reg14[30]),
        .I2(sel0[1]),
        .I3(slv_reg13[30]),
        .I4(sel0[0]),
        .I5(slv_reg12[30]),
        .O(\axi_rdata[30]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[31]_i_4 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(Q[31]),
        .I4(sel0[0]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_5 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(slv_reg11[31]),
        .I1(slv_reg10[31]),
        .I2(sel0[1]),
        .I3(slv_reg9[31]),
        .I4(sel0[0]),
        .I5(slv_reg8[31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(slv_reg15[31]),
        .I1(slv_reg14[31]),
        .I2(sel0[1]),
        .I3(slv_reg13[31]),
        .I4(sel0[0]),
        .I5(slv_reg12[31]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[3]_i_4 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(Q[3]),
        .I4(sel0[0]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(slv_reg4[3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_6 
       (.I0(slv_reg11[3]),
        .I1(slv_reg10[3]),
        .I2(sel0[1]),
        .I3(slv_reg9[3]),
        .I4(sel0[0]),
        .I5(slv_reg8[3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(slv_reg15[3]),
        .I1(slv_reg14[3]),
        .I2(sel0[1]),
        .I3(slv_reg13[3]),
        .I4(sel0[0]),
        .I5(slv_reg12[3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[4]_i_4 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(Q[4]),
        .I4(sel0[0]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_5 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(slv_reg4[4]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_6 
       (.I0(slv_reg11[4]),
        .I1(slv_reg10[4]),
        .I2(sel0[1]),
        .I3(slv_reg9[4]),
        .I4(sel0[0]),
        .I5(slv_reg8[4]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(slv_reg15[4]),
        .I1(slv_reg14[4]),
        .I2(sel0[1]),
        .I3(slv_reg13[4]),
        .I4(sel0[0]),
        .I5(slv_reg12[4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[5]_i_4 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(Q[5]),
        .I4(sel0[0]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_5 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(slv_reg4[5]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_6 
       (.I0(slv_reg11[5]),
        .I1(slv_reg10[5]),
        .I2(sel0[1]),
        .I3(slv_reg9[5]),
        .I4(sel0[0]),
        .I5(slv_reg8[5]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_7 
       (.I0(slv_reg15[5]),
        .I1(slv_reg14[5]),
        .I2(sel0[1]),
        .I3(slv_reg13[5]),
        .I4(sel0[0]),
        .I5(slv_reg12[5]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[6]_i_4 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(Q[6]),
        .I4(sel0[0]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_5 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4[6]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(slv_reg11[6]),
        .I1(slv_reg10[6]),
        .I2(sel0[1]),
        .I3(slv_reg9[6]),
        .I4(sel0[0]),
        .I5(slv_reg8[6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(slv_reg15[6]),
        .I1(slv_reg14[6]),
        .I2(sel0[1]),
        .I3(slv_reg13[6]),
        .I4(sel0[0]),
        .I5(slv_reg12[6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[7]_i_4 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(Q[7]),
        .I4(sel0[0]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_5 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4[7]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_6 
       (.I0(slv_reg11[7]),
        .I1(slv_reg10[7]),
        .I2(sel0[1]),
        .I3(slv_reg9[7]),
        .I4(sel0[0]),
        .I5(slv_reg8[7]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(slv_reg15[7]),
        .I1(slv_reg14[7]),
        .I2(sel0[1]),
        .I3(slv_reg13[7]),
        .I4(sel0[0]),
        .I5(slv_reg12[7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[8]_i_4 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(sel0[1]),
        .I3(Q[8]),
        .I4(sel0[0]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_5 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_6 
       (.I0(slv_reg11[8]),
        .I1(slv_reg10[8]),
        .I2(sel0[1]),
        .I3(slv_reg9[8]),
        .I4(sel0[0]),
        .I5(slv_reg8[8]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(slv_reg15[8]),
        .I1(slv_reg14[8]),
        .I2(sel0[1]),
        .I3(slv_reg13[8]),
        .I4(sel0[0]),
        .I5(slv_reg12[8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[9]_i_4 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(Q[9]),
        .I4(sel0[0]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_5 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_6 
       (.I0(slv_reg11[9]),
        .I1(slv_reg10[9]),
        .I2(sel0[1]),
        .I3(slv_reg9[9]),
        .I4(sel0[0]),
        .I5(slv_reg8[9]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(slv_reg15[9]),
        .I1(slv_reg14[9]),
        .I2(sel0[1]),
        .I3(slv_reg13[9]),
        .I4(sel0[0]),
        .I5(slv_reg12[9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[0]),
        .Q(s00_axi_rdata[0]),
        .R(SR));
  MUXF8 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0]_i_3_n_0 ),
        .O(reg_data_out__0[0]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_4_n_0 ),
        .I1(\axi_rdata[0]_i_5_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_6_n_0 ),
        .I1(\axi_rdata[0]_i_7_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[10]),
        .Q(s00_axi_rdata[10]),
        .R(SR));
  MUXF8 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(\axi_rdata_reg[10]_i_3_n_0 ),
        .O(reg_data_out__0[10]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_4_n_0 ),
        .I1(\axi_rdata[10]_i_5_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[10]_i_3 
       (.I0(\axi_rdata[10]_i_6_n_0 ),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .O(\axi_rdata_reg[10]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[11]),
        .Q(s00_axi_rdata[11]),
        .R(SR));
  MUXF8 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11]_i_3_n_0 ),
        .O(reg_data_out__0[11]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_4_n_0 ),
        .I1(\axi_rdata[11]_i_5_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[11]_i_3 
       (.I0(\axi_rdata[11]_i_6_n_0 ),
        .I1(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata_reg[11]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[12]),
        .Q(s00_axi_rdata[12]),
        .R(SR));
  MUXF8 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(\axi_rdata_reg[12]_i_3_n_0 ),
        .O(reg_data_out__0[12]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_4_n_0 ),
        .I1(\axi_rdata[12]_i_5_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_6_n_0 ),
        .I1(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata_reg[12]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[13]),
        .Q(s00_axi_rdata[13]),
        .R(SR));
  MUXF8 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata_reg[13]_i_2_n_0 ),
        .I1(\axi_rdata_reg[13]_i_3_n_0 ),
        .O(reg_data_out__0[13]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_4_n_0 ),
        .I1(\axi_rdata[13]_i_5_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[13]_i_3 
       (.I0(\axi_rdata[13]_i_6_n_0 ),
        .I1(\axi_rdata[13]_i_7_n_0 ),
        .O(\axi_rdata_reg[13]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[14]),
        .Q(s00_axi_rdata[14]),
        .R(SR));
  MUXF8 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata_reg[14]_i_2_n_0 ),
        .I1(\axi_rdata_reg[14]_i_3_n_0 ),
        .O(reg_data_out__0[14]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_4_n_0 ),
        .I1(\axi_rdata[14]_i_5_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_6_n_0 ),
        .I1(\axi_rdata[14]_i_7_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[15]),
        .Q(s00_axi_rdata[15]),
        .R(SR));
  MUXF8 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata_reg[15]_i_2_n_0 ),
        .I1(\axi_rdata_reg[15]_i_3_n_0 ),
        .O(reg_data_out__0[15]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_4_n_0 ),
        .I1(\axi_rdata[15]_i_5_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_6_n_0 ),
        .I1(\axi_rdata[15]_i_7_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[16]),
        .Q(s00_axi_rdata[16]),
        .R(SR));
  MUXF8 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata_reg[16]_i_2_n_0 ),
        .I1(\axi_rdata_reg[16]_i_3_n_0 ),
        .O(reg_data_out__0[16]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_4_n_0 ),
        .I1(\axi_rdata[16]_i_5_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[16]_i_3 
       (.I0(\axi_rdata[16]_i_6_n_0 ),
        .I1(\axi_rdata[16]_i_7_n_0 ),
        .O(\axi_rdata_reg[16]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[17]),
        .Q(s00_axi_rdata[17]),
        .R(SR));
  MUXF8 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata_reg[17]_i_2_n_0 ),
        .I1(\axi_rdata_reg[17]_i_3_n_0 ),
        .O(reg_data_out__0[17]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_4_n_0 ),
        .I1(\axi_rdata[17]_i_5_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[17]_i_3 
       (.I0(\axi_rdata[17]_i_6_n_0 ),
        .I1(\axi_rdata[17]_i_7_n_0 ),
        .O(\axi_rdata_reg[17]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[18]),
        .Q(s00_axi_rdata[18]),
        .R(SR));
  MUXF8 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata_reg[18]_i_2_n_0 ),
        .I1(\axi_rdata_reg[18]_i_3_n_0 ),
        .O(reg_data_out__0[18]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_4_n_0 ),
        .I1(\axi_rdata[18]_i_5_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[18]_i_3 
       (.I0(\axi_rdata[18]_i_6_n_0 ),
        .I1(\axi_rdata[18]_i_7_n_0 ),
        .O(\axi_rdata_reg[18]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[19]),
        .Q(s00_axi_rdata[19]),
        .R(SR));
  MUXF8 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata_reg[19]_i_2_n_0 ),
        .I1(\axi_rdata_reg[19]_i_3_n_0 ),
        .O(reg_data_out__0[19]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_4_n_0 ),
        .I1(\axi_rdata[19]_i_5_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[19]_i_3 
       (.I0(\axi_rdata[19]_i_6_n_0 ),
        .I1(\axi_rdata[19]_i_7_n_0 ),
        .O(\axi_rdata_reg[19]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[1]),
        .Q(s00_axi_rdata[1]),
        .R(SR));
  MUXF8 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1]_i_3_n_0 ),
        .O(reg_data_out__0[1]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_4_n_0 ),
        .I1(\axi_rdata[1]_i_5_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_6_n_0 ),
        .I1(\axi_rdata[1]_i_7_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[20]),
        .Q(s00_axi_rdata[20]),
        .R(SR));
  MUXF8 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata_reg[20]_i_2_n_0 ),
        .I1(\axi_rdata_reg[20]_i_3_n_0 ),
        .O(reg_data_out__0[20]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_4_n_0 ),
        .I1(\axi_rdata[20]_i_5_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[20]_i_3 
       (.I0(\axi_rdata[20]_i_6_n_0 ),
        .I1(\axi_rdata[20]_i_7_n_0 ),
        .O(\axi_rdata_reg[20]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[21]),
        .Q(s00_axi_rdata[21]),
        .R(SR));
  MUXF8 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata_reg[21]_i_2_n_0 ),
        .I1(\axi_rdata_reg[21]_i_3_n_0 ),
        .O(reg_data_out__0[21]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_4_n_0 ),
        .I1(\axi_rdata[21]_i_5_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[21]_i_3 
       (.I0(\axi_rdata[21]_i_6_n_0 ),
        .I1(\axi_rdata[21]_i_7_n_0 ),
        .O(\axi_rdata_reg[21]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[22]),
        .Q(s00_axi_rdata[22]),
        .R(SR));
  MUXF8 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata_reg[22]_i_2_n_0 ),
        .I1(\axi_rdata_reg[22]_i_3_n_0 ),
        .O(reg_data_out__0[22]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_4_n_0 ),
        .I1(\axi_rdata[22]_i_5_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[22]_i_3 
       (.I0(\axi_rdata[22]_i_6_n_0 ),
        .I1(\axi_rdata[22]_i_7_n_0 ),
        .O(\axi_rdata_reg[22]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[23]),
        .Q(s00_axi_rdata[23]),
        .R(SR));
  MUXF8 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata_reg[23]_i_2_n_0 ),
        .I1(\axi_rdata_reg[23]_i_3_n_0 ),
        .O(reg_data_out__0[23]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_4_n_0 ),
        .I1(\axi_rdata[23]_i_5_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[23]_i_3 
       (.I0(\axi_rdata[23]_i_6_n_0 ),
        .I1(\axi_rdata[23]_i_7_n_0 ),
        .O(\axi_rdata_reg[23]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[24]),
        .Q(s00_axi_rdata[24]),
        .R(SR));
  MUXF8 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata_reg[24]_i_2_n_0 ),
        .I1(\axi_rdata_reg[24]_i_3_n_0 ),
        .O(reg_data_out__0[24]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_4_n_0 ),
        .I1(\axi_rdata[24]_i_5_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_6_n_0 ),
        .I1(\axi_rdata[24]_i_7_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[25]),
        .Q(s00_axi_rdata[25]),
        .R(SR));
  MUXF8 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata_reg[25]_i_2_n_0 ),
        .I1(\axi_rdata_reg[25]_i_3_n_0 ),
        .O(reg_data_out__0[25]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_4_n_0 ),
        .I1(\axi_rdata[25]_i_5_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[25]_i_3 
       (.I0(\axi_rdata[25]_i_6_n_0 ),
        .I1(\axi_rdata[25]_i_7_n_0 ),
        .O(\axi_rdata_reg[25]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[26]),
        .Q(s00_axi_rdata[26]),
        .R(SR));
  MUXF8 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata_reg[26]_i_2_n_0 ),
        .I1(\axi_rdata_reg[26]_i_3_n_0 ),
        .O(reg_data_out__0[26]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_4_n_0 ),
        .I1(\axi_rdata[26]_i_5_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[26]_i_3 
       (.I0(\axi_rdata[26]_i_6_n_0 ),
        .I1(\axi_rdata[26]_i_7_n_0 ),
        .O(\axi_rdata_reg[26]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[27]),
        .Q(s00_axi_rdata[27]),
        .R(SR));
  MUXF8 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata_reg[27]_i_2_n_0 ),
        .I1(\axi_rdata_reg[27]_i_3_n_0 ),
        .O(reg_data_out__0[27]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_4_n_0 ),
        .I1(\axi_rdata[27]_i_5_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[27]_i_3 
       (.I0(\axi_rdata[27]_i_6_n_0 ),
        .I1(\axi_rdata[27]_i_7_n_0 ),
        .O(\axi_rdata_reg[27]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[28]),
        .Q(s00_axi_rdata[28]),
        .R(SR));
  MUXF8 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata_reg[28]_i_2_n_0 ),
        .I1(\axi_rdata_reg[28]_i_3_n_0 ),
        .O(reg_data_out__0[28]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_4_n_0 ),
        .I1(\axi_rdata[28]_i_5_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[28]_i_3 
       (.I0(\axi_rdata[28]_i_6_n_0 ),
        .I1(\axi_rdata[28]_i_7_n_0 ),
        .O(\axi_rdata_reg[28]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[29]),
        .Q(s00_axi_rdata[29]),
        .R(SR));
  MUXF8 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata_reg[29]_i_2_n_0 ),
        .I1(\axi_rdata_reg[29]_i_3_n_0 ),
        .O(reg_data_out__0[29]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_4_n_0 ),
        .I1(\axi_rdata[29]_i_5_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[29]_i_3 
       (.I0(\axi_rdata[29]_i_6_n_0 ),
        .I1(\axi_rdata[29]_i_7_n_0 ),
        .O(\axi_rdata_reg[29]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[2]),
        .Q(s00_axi_rdata[2]),
        .R(SR));
  MUXF8 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[2]_i_3_n_0 ),
        .O(reg_data_out__0[2]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata[2]_i_4_n_0 ),
        .I1(\axi_rdata[2]_i_5_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_6_n_0 ),
        .I1(\axi_rdata[2]_i_7_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[30]),
        .Q(s00_axi_rdata[30]),
        .R(SR));
  MUXF8 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata_reg[30]_i_2_n_0 ),
        .I1(\axi_rdata_reg[30]_i_3_n_0 ),
        .O(reg_data_out__0[30]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_4_n_0 ),
        .I1(\axi_rdata[30]_i_5_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[30]_i_3 
       (.I0(\axi_rdata[30]_i_6_n_0 ),
        .I1(\axi_rdata[30]_i_7_n_0 ),
        .O(\axi_rdata_reg[30]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[31]),
        .Q(s00_axi_rdata[31]),
        .R(SR));
  MUXF8 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata_reg[31]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31]_i_3_n_0 ),
        .O(reg_data_out__0[31]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[31]_i_2 
       (.I0(\axi_rdata[31]_i_4_n_0 ),
        .I1(\axi_rdata[31]_i_5_n_0 ),
        .O(\axi_rdata_reg[31]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata[31]_i_7_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[3]),
        .Q(s00_axi_rdata[3]),
        .R(SR));
  MUXF8 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[3]_i_3_n_0 ),
        .O(reg_data_out__0[3]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_4_n_0 ),
        .I1(\axi_rdata[3]_i_5_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_6_n_0 ),
        .I1(\axi_rdata[3]_i_7_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[4]),
        .Q(s00_axi_rdata[4]),
        .R(SR));
  MUXF8 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(\axi_rdata_reg[4]_i_3_n_0 ),
        .O(reg_data_out__0[4]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_4_n_0 ),
        .I1(\axi_rdata[4]_i_5_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata[4]_i_6_n_0 ),
        .I1(\axi_rdata[4]_i_7_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[5]),
        .Q(s00_axi_rdata[5]),
        .R(SR));
  MUXF8 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[5]_i_3_n_0 ),
        .O(reg_data_out__0[5]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_4_n_0 ),
        .I1(\axi_rdata[5]_i_5_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata[5]_i_6_n_0 ),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[6]),
        .Q(s00_axi_rdata[6]),
        .R(SR));
  MUXF8 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[6]_i_3_n_0 ),
        .O(reg_data_out__0[6]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata[6]_i_4_n_0 ),
        .I1(\axi_rdata[6]_i_5_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_6_n_0 ),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[7]),
        .Q(s00_axi_rdata[7]),
        .R(SR));
  MUXF8 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(\axi_rdata_reg[7]_i_3_n_0 ),
        .O(reg_data_out__0[7]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_4_n_0 ),
        .I1(\axi_rdata[7]_i_5_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_6_n_0 ),
        .I1(\axi_rdata[7]_i_7_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[8]),
        .Q(s00_axi_rdata[8]),
        .R(SR));
  MUXF8 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[8]_i_3_n_0 ),
        .O(reg_data_out__0[8]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(\axi_rdata[8]_i_5_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_6_n_0 ),
        .I1(\axi_rdata[8]_i_7_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out__0[9]),
        .Q(s00_axi_rdata[9]),
        .R(SR));
  MUXF8 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[9]_i_3_n_0 ),
        .O(reg_data_out__0[9]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata[9]_i_4_n_0 ),
        .I1(\axi_rdata[9]_i_5_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_6_n_0 ),
        .I1(\axi_rdata[9]_i_7_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(sel0[2]));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(SR));
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg10[0]),
        .R(SR));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg10[10]),
        .R(SR));
  FDRE \slv_reg10_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg10[11]),
        .R(SR));
  FDRE \slv_reg10_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg10[12]),
        .R(SR));
  FDRE \slv_reg10_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg10[13]),
        .R(SR));
  FDRE \slv_reg10_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg10[14]),
        .R(SR));
  FDRE \slv_reg10_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg10[15]),
        .R(SR));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg10[16]),
        .R(SR));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg10[17]),
        .R(SR));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg10[18]),
        .R(SR));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg10[19]),
        .R(SR));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg10[1]),
        .R(SR));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg10[20]),
        .R(SR));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg10[21]),
        .R(SR));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg10[22]),
        .R(SR));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg10[23]),
        .R(SR));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg10[24]),
        .R(SR));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg10[25]),
        .R(SR));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg10[26]),
        .R(SR));
  FDRE \slv_reg10_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg10[27]),
        .R(SR));
  FDRE \slv_reg10_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg10[28]),
        .R(SR));
  FDRE \slv_reg10_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg10[29]),
        .R(SR));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg10[2]),
        .R(SR));
  FDRE \slv_reg10_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg10[30]),
        .R(SR));
  FDRE \slv_reg10_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg10[31]),
        .R(SR));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg10[3]),
        .R(SR));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg10[4]),
        .R(SR));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg10[5]),
        .R(SR));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg10[6]),
        .R(SR));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg10[7]),
        .R(SR));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg10[8]),
        .R(SR));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg10[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[7]_i_1_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg11[0]),
        .R(SR));
  FDRE \slv_reg11_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg11[10]),
        .R(SR));
  FDRE \slv_reg11_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg11[11]),
        .R(SR));
  FDRE \slv_reg11_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg11[12]),
        .R(SR));
  FDRE \slv_reg11_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg11[13]),
        .R(SR));
  FDRE \slv_reg11_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg11[14]),
        .R(SR));
  FDRE \slv_reg11_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg11[15]),
        .R(SR));
  FDRE \slv_reg11_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg11[16]),
        .R(SR));
  FDRE \slv_reg11_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg11[17]),
        .R(SR));
  FDRE \slv_reg11_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg11[18]),
        .R(SR));
  FDRE \slv_reg11_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg11[19]),
        .R(SR));
  FDRE \slv_reg11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg11[1]),
        .R(SR));
  FDRE \slv_reg11_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg11[20]),
        .R(SR));
  FDRE \slv_reg11_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg11[21]),
        .R(SR));
  FDRE \slv_reg11_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg11[22]),
        .R(SR));
  FDRE \slv_reg11_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg11[23]),
        .R(SR));
  FDRE \slv_reg11_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg11[24]),
        .R(SR));
  FDRE \slv_reg11_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg11[25]),
        .R(SR));
  FDRE \slv_reg11_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg11[26]),
        .R(SR));
  FDRE \slv_reg11_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg11[27]),
        .R(SR));
  FDRE \slv_reg11_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg11[28]),
        .R(SR));
  FDRE \slv_reg11_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg11[29]),
        .R(SR));
  FDRE \slv_reg11_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg11[2]),
        .R(SR));
  FDRE \slv_reg11_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg11[30]),
        .R(SR));
  FDRE \slv_reg11_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg11[31]),
        .R(SR));
  FDRE \slv_reg11_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg11[3]),
        .R(SR));
  FDRE \slv_reg11_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg11[4]),
        .R(SR));
  FDRE \slv_reg11_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg11[5]),
        .R(SR));
  FDRE \slv_reg11_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg11[6]),
        .R(SR));
  FDRE \slv_reg11_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg11[7]),
        .R(SR));
  FDRE \slv_reg11_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg11[8]),
        .R(SR));
  FDRE \slv_reg11_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg11[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[7]_i_1_n_0 ));
  FDRE \slv_reg12_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg12[0]),
        .R(SR));
  FDRE \slv_reg12_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg12[10]),
        .R(SR));
  FDRE \slv_reg12_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg12[11]),
        .R(SR));
  FDRE \slv_reg12_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg12[12]),
        .R(SR));
  FDRE \slv_reg12_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg12[13]),
        .R(SR));
  FDRE \slv_reg12_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg12[14]),
        .R(SR));
  FDRE \slv_reg12_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg12[15]),
        .R(SR));
  FDRE \slv_reg12_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg12[16]),
        .R(SR));
  FDRE \slv_reg12_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg12[17]),
        .R(SR));
  FDRE \slv_reg12_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg12[18]),
        .R(SR));
  FDRE \slv_reg12_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg12[19]),
        .R(SR));
  FDRE \slv_reg12_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg12[1]),
        .R(SR));
  FDRE \slv_reg12_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg12[20]),
        .R(SR));
  FDRE \slv_reg12_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg12[21]),
        .R(SR));
  FDRE \slv_reg12_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg12[22]),
        .R(SR));
  FDRE \slv_reg12_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg12[23]),
        .R(SR));
  FDRE \slv_reg12_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg12[24]),
        .R(SR));
  FDRE \slv_reg12_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg12[25]),
        .R(SR));
  FDRE \slv_reg12_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg12[26]),
        .R(SR));
  FDRE \slv_reg12_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg12[27]),
        .R(SR));
  FDRE \slv_reg12_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg12[28]),
        .R(SR));
  FDRE \slv_reg12_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg12[29]),
        .R(SR));
  FDRE \slv_reg12_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg12[2]),
        .R(SR));
  FDRE \slv_reg12_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg12[30]),
        .R(SR));
  FDRE \slv_reg12_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg12[31]),
        .R(SR));
  FDRE \slv_reg12_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg12[3]),
        .R(SR));
  FDRE \slv_reg12_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg12[4]),
        .R(SR));
  FDRE \slv_reg12_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg12[5]),
        .R(SR));
  FDRE \slv_reg12_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg12[6]),
        .R(SR));
  FDRE \slv_reg12_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg12[7]),
        .R(SR));
  FDRE \slv_reg12_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg12[8]),
        .R(SR));
  FDRE \slv_reg12_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg12[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[1]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[3]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[7]_i_1_n_0 ));
  FDRE \slv_reg13_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg13[0]),
        .R(SR));
  FDRE \slv_reg13_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg13[10]),
        .R(SR));
  FDRE \slv_reg13_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg13[11]),
        .R(SR));
  FDRE \slv_reg13_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg13[12]),
        .R(SR));
  FDRE \slv_reg13_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg13[13]),
        .R(SR));
  FDRE \slv_reg13_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg13[14]),
        .R(SR));
  FDRE \slv_reg13_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg13[15]),
        .R(SR));
  FDRE \slv_reg13_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg13[16]),
        .R(SR));
  FDRE \slv_reg13_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg13[17]),
        .R(SR));
  FDRE \slv_reg13_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg13[18]),
        .R(SR));
  FDRE \slv_reg13_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg13[19]),
        .R(SR));
  FDRE \slv_reg13_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg13[1]),
        .R(SR));
  FDRE \slv_reg13_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg13[20]),
        .R(SR));
  FDRE \slv_reg13_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg13[21]),
        .R(SR));
  FDRE \slv_reg13_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg13[22]),
        .R(SR));
  FDRE \slv_reg13_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg13[23]),
        .R(SR));
  FDRE \slv_reg13_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg13[24]),
        .R(SR));
  FDRE \slv_reg13_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg13[25]),
        .R(SR));
  FDRE \slv_reg13_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg13[26]),
        .R(SR));
  FDRE \slv_reg13_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg13[27]),
        .R(SR));
  FDRE \slv_reg13_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg13[28]),
        .R(SR));
  FDRE \slv_reg13_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg13[29]),
        .R(SR));
  FDRE \slv_reg13_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg13[2]),
        .R(SR));
  FDRE \slv_reg13_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg13[30]),
        .R(SR));
  FDRE \slv_reg13_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg13[31]),
        .R(SR));
  FDRE \slv_reg13_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg13[3]),
        .R(SR));
  FDRE \slv_reg13_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg13[4]),
        .R(SR));
  FDRE \slv_reg13_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg13[5]),
        .R(SR));
  FDRE \slv_reg13_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg13[6]),
        .R(SR));
  FDRE \slv_reg13_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg13[7]),
        .R(SR));
  FDRE \slv_reg13_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg13[8]),
        .R(SR));
  FDRE \slv_reg13_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg13[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[7]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg14[0]),
        .R(SR));
  FDRE \slv_reg14_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg14[10]),
        .R(SR));
  FDRE \slv_reg14_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg14[11]),
        .R(SR));
  FDRE \slv_reg14_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg14[12]),
        .R(SR));
  FDRE \slv_reg14_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg14[13]),
        .R(SR));
  FDRE \slv_reg14_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg14[14]),
        .R(SR));
  FDRE \slv_reg14_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg14[15]),
        .R(SR));
  FDRE \slv_reg14_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg14[16]),
        .R(SR));
  FDRE \slv_reg14_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg14[17]),
        .R(SR));
  FDRE \slv_reg14_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg14[18]),
        .R(SR));
  FDRE \slv_reg14_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg14[19]),
        .R(SR));
  FDRE \slv_reg14_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg14[1]),
        .R(SR));
  FDRE \slv_reg14_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg14[20]),
        .R(SR));
  FDRE \slv_reg14_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg14[21]),
        .R(SR));
  FDRE \slv_reg14_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg14[22]),
        .R(SR));
  FDRE \slv_reg14_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg14[23]),
        .R(SR));
  FDRE \slv_reg14_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg14[24]),
        .R(SR));
  FDRE \slv_reg14_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg14[25]),
        .R(SR));
  FDRE \slv_reg14_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg14[26]),
        .R(SR));
  FDRE \slv_reg14_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg14[27]),
        .R(SR));
  FDRE \slv_reg14_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg14[28]),
        .R(SR));
  FDRE \slv_reg14_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg14[29]),
        .R(SR));
  FDRE \slv_reg14_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg14[2]),
        .R(SR));
  FDRE \slv_reg14_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg14[30]),
        .R(SR));
  FDRE \slv_reg14_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg14[31]),
        .R(SR));
  FDRE \slv_reg14_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg14[3]),
        .R(SR));
  FDRE \slv_reg14_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg14[4]),
        .R(SR));
  FDRE \slv_reg14_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg14[5]),
        .R(SR));
  FDRE \slv_reg14_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg14[6]),
        .R(SR));
  FDRE \slv_reg14_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg14[7]),
        .R(SR));
  FDRE \slv_reg14_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg14[8]),
        .R(SR));
  FDRE \slv_reg14_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg14[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[7]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg15[0]),
        .R(SR));
  FDRE \slv_reg15_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg15[10]),
        .R(SR));
  FDRE \slv_reg15_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg15[11]),
        .R(SR));
  FDRE \slv_reg15_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg15[12]),
        .R(SR));
  FDRE \slv_reg15_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg15[13]),
        .R(SR));
  FDRE \slv_reg15_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg15[14]),
        .R(SR));
  FDRE \slv_reg15_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg15[15]),
        .R(SR));
  FDRE \slv_reg15_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg15[16]),
        .R(SR));
  FDRE \slv_reg15_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg15[17]),
        .R(SR));
  FDRE \slv_reg15_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg15[18]),
        .R(SR));
  FDRE \slv_reg15_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg15[19]),
        .R(SR));
  FDRE \slv_reg15_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg15[1]),
        .R(SR));
  FDRE \slv_reg15_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg15[20]),
        .R(SR));
  FDRE \slv_reg15_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg15[21]),
        .R(SR));
  FDRE \slv_reg15_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg15[22]),
        .R(SR));
  FDRE \slv_reg15_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg15[23]),
        .R(SR));
  FDRE \slv_reg15_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg15[24]),
        .R(SR));
  FDRE \slv_reg15_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg15[25]),
        .R(SR));
  FDRE \slv_reg15_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg15[26]),
        .R(SR));
  FDRE \slv_reg15_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg15[27]),
        .R(SR));
  FDRE \slv_reg15_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg15[28]),
        .R(SR));
  FDRE \slv_reg15_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg15[29]),
        .R(SR));
  FDRE \slv_reg15_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg15[2]),
        .R(SR));
  FDRE \slv_reg15_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg15[30]),
        .R(SR));
  FDRE \slv_reg15_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg15[31]),
        .R(SR));
  FDRE \slv_reg15_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg15[3]),
        .R(SR));
  FDRE \slv_reg15_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg15[4]),
        .R(SR));
  FDRE \slv_reg15_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg15[5]),
        .R(SR));
  FDRE \slv_reg15_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg15[6]),
        .R(SR));
  FDRE \slv_reg15_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg15[7]),
        .R(SR));
  FDRE \slv_reg15_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg15[8]),
        .R(SR));
  FDRE \slv_reg15_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg15[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg1[0]_i_1 
       (.I0(\slv_reg1[0]_i_2_n_0 ),
        .I1(axi_wready_reg_0),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_aresetn),
        .O(\slv_reg1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \slv_reg1[0]_i_2 
       (.I0(s00_axi_wdata[0]),
        .I1(p_0_in[0]),
        .I2(\slv_reg1[0]_i_3_n_0 ),
        .I3(p_0_in[3]),
        .I4(p_0_in[1]),
        .I5(wr_en),
        .O(\slv_reg1[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \slv_reg1[0]_i_3 
       (.I0(p_0_in[2]),
        .I1(s00_axi_wstrb[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg1[0]_i_3_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg1[0]_i_1_n_0 ),
        .Q(wr_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(SR));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(SR));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(SR));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(SR));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(SR));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(SR));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(SR));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(SR));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(SR));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(SR));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(SR));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(SR));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(SR));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(SR));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(SR));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(SR));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(SR));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(SR));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(SR));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(SR));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(SR));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(SR));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(SR));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(SR));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(SR));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(SR));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(SR));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(SR));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(SR));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(SR));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(SR));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(SR));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(SR));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(SR));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(SR));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(SR));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(SR));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(SR));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(SR));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(SR));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(SR));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(SR));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(SR));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(SR));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(SR));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(SR));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(SR));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(SR));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(SR));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(SR));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(SR));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(SR));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(SR));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(SR));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(SR));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(SR));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(SR));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(SR));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(SR));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(SR));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(SR));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(SR));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(SR));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(SR));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(SR));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(SR));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(SR));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(SR));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(SR));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(SR));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(SR));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(SR));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(SR));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(SR));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(SR));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(SR));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(SR));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(SR));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(SR));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(SR));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(SR));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(SR));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(SR));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(SR));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(SR));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(SR));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(SR));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(SR));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(SR));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(SR));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(SR));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(SR));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(SR));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(SR));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(SR));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(SR));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(SR));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(SR));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(SR));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(SR));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(SR));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(SR));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(SR));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(SR));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(SR));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(SR));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(SR));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(SR));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(SR));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(SR));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(SR));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(SR));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(SR));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(SR));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(SR));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(SR));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(SR));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(SR));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(SR));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(SR));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(SR));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(SR));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(SR));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(SR));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(SR));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(SR));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(SR));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(SR));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(SR));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(SR));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(SR));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(SR));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(SR));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(SR));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(SR));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(SR));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(SR));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(SR));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(SR));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(SR));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(SR));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(SR));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(SR));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(SR));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(SR));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(SR));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(SR));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(SR));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(SR));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(SR));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(SR));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(SR));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(SR));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(SR));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg8[0]),
        .R(SR));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg8[10]),
        .R(SR));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg8[11]),
        .R(SR));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg8[12]),
        .R(SR));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg8[13]),
        .R(SR));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg8[14]),
        .R(SR));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg8[15]),
        .R(SR));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg8[16]),
        .R(SR));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg8[17]),
        .R(SR));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg8[18]),
        .R(SR));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg8[19]),
        .R(SR));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg8[1]),
        .R(SR));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg8[20]),
        .R(SR));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg8[21]),
        .R(SR));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg8[22]),
        .R(SR));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg8[23]),
        .R(SR));
  FDRE \slv_reg8_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg8[24]),
        .R(SR));
  FDRE \slv_reg8_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg8[25]),
        .R(SR));
  FDRE \slv_reg8_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg8[26]),
        .R(SR));
  FDRE \slv_reg8_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg8[27]),
        .R(SR));
  FDRE \slv_reg8_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg8[28]),
        .R(SR));
  FDRE \slv_reg8_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg8[29]),
        .R(SR));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg8[2]),
        .R(SR));
  FDRE \slv_reg8_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg8[30]),
        .R(SR));
  FDRE \slv_reg8_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg8[31]),
        .R(SR));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg8[3]),
        .R(SR));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg8[4]),
        .R(SR));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg8[5]),
        .R(SR));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg8[6]),
        .R(SR));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg8[7]),
        .R(SR));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg8[8]),
        .R(SR));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg8[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg9[0]),
        .R(SR));
  FDRE \slv_reg9_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg9[10]),
        .R(SR));
  FDRE \slv_reg9_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg9[11]),
        .R(SR));
  FDRE \slv_reg9_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg9[12]),
        .R(SR));
  FDRE \slv_reg9_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg9[13]),
        .R(SR));
  FDRE \slv_reg9_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg9[14]),
        .R(SR));
  FDRE \slv_reg9_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg9[15]),
        .R(SR));
  FDRE \slv_reg9_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg9[16]),
        .R(SR));
  FDRE \slv_reg9_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg9[17]),
        .R(SR));
  FDRE \slv_reg9_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg9[18]),
        .R(SR));
  FDRE \slv_reg9_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg9[19]),
        .R(SR));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg9[1]),
        .R(SR));
  FDRE \slv_reg9_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg9[20]),
        .R(SR));
  FDRE \slv_reg9_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg9[21]),
        .R(SR));
  FDRE \slv_reg9_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg9[22]),
        .R(SR));
  FDRE \slv_reg9_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg9[23]),
        .R(SR));
  FDRE \slv_reg9_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg9[24]),
        .R(SR));
  FDRE \slv_reg9_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg9[25]),
        .R(SR));
  FDRE \slv_reg9_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg9[26]),
        .R(SR));
  FDRE \slv_reg9_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg9[27]),
        .R(SR));
  FDRE \slv_reg9_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg9[28]),
        .R(SR));
  FDRE \slv_reg9_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg9[29]),
        .R(SR));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg9[2]),
        .R(SR));
  FDRE \slv_reg9_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg9[30]),
        .R(SR));
  FDRE \slv_reg9_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg9[31]),
        .R(SR));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg9[3]),
        .R(SR));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg9[4]),
        .R(SR));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg9[5]),
        .R(SR));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg9[6]),
        .R(SR));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg9[7]),
        .R(SR));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg9[8]),
        .R(SR));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg9[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
  LUT1 #(
    .INIT(2'h1)) 
    \spam_result[31]_i_1 
       (.I0(s00_axi_aresetn),
        .O(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (dout,
    clk,
    tmp_ram_rd_en,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    din);
  output [31:0]dout;
  input clk;
  input tmp_ram_rd_en;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input srst;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  input [31:0]din;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (dout,
    clk,
    tmp_ram_rd_en,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    din);
  output [31:0]dout;
  input clk;
  input tmp_ram_rd_en;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input srst;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  input [31:0]din;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper
   (dout,
    clk,
    tmp_ram_rd_en,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ,
    din);
  output [31:0]dout;
  input clk;
  input tmp_ram_rd_en;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input srst;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ;
  input [31:0]din;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 ;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI(din[15:0]),
        .DIBDI(din[31:16]),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(dout[15:0]),
        .DOBDO(dout[31:16]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(tmp_ram_rd_en),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(srst),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 }));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (dout,
    clk,
    tmp_ram_rd_en,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    din);
  output [31:0]dout;
  input clk;
  input tmp_ram_rd_en;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input srst;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  input [31:0]din;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2
   (dout,
    clk,
    tmp_ram_rd_en,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    din);
  output [31:0]dout;
  input clk;
  input tmp_ram_rd_en;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input srst;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  input [31:0]din;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth
   (dout,
    clk,
    tmp_ram_rd_en,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    din);
  output [31:0]dout;
  input clk;
  input tmp_ram_rd_en;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input srst;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  input [31:0]din;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare
   (comp0,
    \gmux.gm[4].gms.ms_0 ,
    v1_reg);
  output comp0;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire [0:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\gmux.gm[4].gms.ms_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_0
   (ram_full_comb,
    \gmux.gm[4].gms.ms_0 ,
    v1_reg_0,
    wr_en,
    comp0,
    ram_full_i_reg,
    rd_en,
    out);
  output ram_full_comb;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]v1_reg_0;
  input wr_en;
  input comp0;
  input ram_full_i_reg;
  input rd_en;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire out;
  wire ram_full_comb;
  wire ram_full_i_reg;
  wire rd_en;
  wire [0:0]v1_reg_0;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\gmux.gm[4].gms.ms_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0}));
  LUT6 #(
    .INIT(64'hFF0FFFFF88008888)) 
    ram_full_fb_i_i_1
       (.I0(wr_en),
        .I1(comp1),
        .I2(comp0),
        .I3(ram_full_i_reg),
        .I4(rd_en),
        .I5(out),
        .O(ram_full_comb));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_1
   (comp0,
    \gmux.gm[1].gms.ms_0 ,
    \gmux.gm[2].gms.ms_0 ,
    \gmux.gm[3].gms.ms_0 ,
    \gmux.gm[4].gms.ms_0 ,
    ram_empty_i_reg);
  output comp0;
  input \gmux.gm[1].gms.ms_0 ;
  input \gmux.gm[2].gms.ms_0 ;
  input \gmux.gm[3].gms.ms_0 ;
  input \gmux.gm[4].gms.ms_0 ;
  input ram_empty_i_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire \gmux.gm[1].gms.ms_0 ;
  wire \gmux.gm[2].gms.ms_0 ;
  wire \gmux.gm[3].gms.ms_0 ;
  wire \gmux.gm[4].gms.ms_0 ;
  wire ram_empty_i_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S({\gmux.gm[4].gms.ms_0 ,\gmux.gm[3].gms.ms_0 ,\gmux.gm[2].gms.ms_0 ,\gmux.gm[1].gms.ms_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],ram_empty_i_reg}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_2
   (fifo_rd_en_reg,
    v1_reg,
    ram_empty_i_reg,
    rd_en,
    comp0,
    ram_empty_i_reg_0,
    wr_en,
    out);
  output fifo_rd_en_reg;
  input [3:0]v1_reg;
  input [0:0]ram_empty_i_reg;
  input rd_en;
  input comp0;
  input ram_empty_i_reg_0;
  input wr_en;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire fifo_rd_en_reg;
  wire out;
  wire [0:0]ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire rd_en;
  wire [3:0]v1_reg;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],ram_empty_i_reg}));
  LUT6 #(
    .INIT(64'hFF0FFFFF88008888)) 
    ram_empty_fb_i_i_1
       (.I0(rd_en),
        .I1(comp1),
        .I2(comp0),
        .I3(ram_empty_i_reg_0),
        .I4(wr_en),
        .I5(out),
        .O(fifo_rd_en_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dc_ss
   (Q,
    out,
    rd_en,
    srst,
    E,
    clk);
  output [8:0]Q;
  input out;
  input rd_en;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [8:0]Q;
  wire clk;
  wire out;
  wire rd_en;
  wire srst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_updn_cntr \gsym_dc.dc 
       (.E(E),
        .Q(Q),
        .clk(clk),
        .out(out),
        .rd_en(rd_en),
        .srst(srst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo
   (data_count,
    dout,
    empty,
    full,
    rd_en,
    clk,
    srst,
    din,
    wr_en);
  output [8:0]data_count;
  output [31:0]dout;
  output empty;
  output full;
  input rd_en;
  input clk;
  input srst;
  input [31:0]din;
  input wr_en;

  wire clk;
  wire [8:0]data_count;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.wr_n_0 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_22 ;
  wire \grss.gdc.dc/cntr_en ;
  wire [4:4]\grss.rsts/c2/v1_reg ;
  wire [3:0]\gwss.wsts/c0/v1_reg ;
  wire [3:0]\gwss.wsts/c1/v1_reg ;
  wire [8:0]p_0_out;
  wire [8:0]p_11_out;
  wire [7:0]p_12_out;
  wire p_17_out;
  wire p_2_out;
  wire rd_en;
  wire [8:8]rd_pntr_plus1;
  wire srst;
  wire tmp_ram_rd_en;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(\grss.gdc.dc/cntr_en ),
        .Q(data_count),
        .clk(clk),
        .empty(empty),
        .\gc0.count_d1_reg[8] (p_0_out),
        .\gc0.count_reg[8] (rd_pntr_plus1),
        .\gmux.gm[3].gms.ms (p_11_out[7:0]),
        .\gmux.gm[3].gms.ms_0 (p_12_out),
        .out(p_2_out),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gl0.wr_n_22 ),
        .ram_empty_i_reg_0(\grss.rsts/c2/v1_reg ),
        .ram_empty_i_reg_1(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .rd_en(rd_en),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.E(\grss.gdc.dc/cntr_en ),
        .Q(p_12_out),
        .clk(clk),
        .full(full),
        .\gcc0.gc0.count_d1_reg[8] (p_11_out),
        .\gcc0.gc0.count_d1_reg[8]_0 (\grss.rsts/c2/v1_reg ),
        .\gcc0.gc0.count_d1_reg[8]_1 (\gntv_or_sync_fifo.gl0.wr_n_22 ),
        .\gmux.gm[4].gms.ms (\gwss.wsts/c0/v1_reg ),
        .\gmux.gm[4].gms.ms_0 (\gwss.wsts/c1/v1_reg ),
        .\gmux.gm[4].gms.ms_1 (p_0_out[8]),
        .\gmux.gm[4].gms.ms_2 (rd_pntr_plus1),
        .out(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .ram_full_i_reg(p_2_out),
        .rd_en(rd_en),
        .\slv_reg1_reg[0] (p_17_out),
        .srst(srst),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory \gntv_or_sync_fifo.mem 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (p_17_out),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (p_0_out),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 (p_11_out),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top
   (DATA_COUNT,
    dout,
    empty,
    full,
    rd_en,
    clk,
    srst,
    din,
    wr_en);
  output [8:0]DATA_COUNT;
  output [31:0]dout;
  output empty;
  output full;
  input rd_en;
  input clk;
  input srst;
  input [31:0]din;
  input wr_en;

  wire [8:0]DATA_COUNT;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo \grf.rf 
       (.clk(clk),
        .data_count(DATA_COUNT),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "9" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "32" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "32" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "1" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "0" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "1" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "510" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "509" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "9" *) 
(* C_RD_DEPTH = "512" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "9" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "9" *) 
(* C_WR_DEPTH = "512" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "9" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [31:0]din;
  input wr_en;
  input rd_en;
  input [8:0]prog_empty_thresh;
  input [8:0]prog_empty_thresh_assert;
  input [8:0]prog_empty_thresh_negate;
  input [8:0]prog_full_thresh;
  input [8:0]prog_full_thresh_assert;
  input [8:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [31:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [8:0]data_count;
  output [8:0]rd_data_count;
  output [8:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [8:0]data_count;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_synth inst_fifo_gen
       (.clk(clk),
        .data_count(data_count),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_synth
   (data_count,
    dout,
    empty,
    full,
    rd_en,
    clk,
    srst,
    din,
    wr_en);
  output [8:0]data_count;
  output [31:0]dout;
  output empty;
  output full;
  input rd_en;
  input clk;
  input srst;
  input [31:0]din;
  input wr_en;

  wire clk;
  wire [8:0]data_count;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top \gconvfifo.rf 
       (.DATA_COUNT(data_count),
        .clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory
   (dout,
    clk,
    tmp_ram_rd_en,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    din);
  output [31:0]dout;
  input clk;
  input tmp_ram_rd_en;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input srst;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  input [31:0]din;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire clk;
  wire [31:0]din;
  wire [31:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 \gbm.gbmg.gbmga.ngecc.bmg 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr
   (\gc0.count_reg[8]_0 ,
    v1_reg,
    Q,
    v1_reg_1,
    v1_reg_0,
    \gc0.count_d1_reg[0]_0 ,
    \gc0.count_d1_reg[2]_0 ,
    \gc0.count_d1_reg[4]_0 ,
    \gc0.count_d1_reg[6]_0 ,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[3].gms.ms_0 ,
    srst,
    E,
    clk);
  output [0:0]\gc0.count_reg[8]_0 ;
  output [3:0]v1_reg;
  output [8:0]Q;
  output [3:0]v1_reg_1;
  output [3:0]v1_reg_0;
  output \gc0.count_d1_reg[0]_0 ;
  output \gc0.count_d1_reg[2]_0 ;
  output \gc0.count_d1_reg[4]_0 ;
  output \gc0.count_d1_reg[6]_0 ;
  input [7:0]\gmux.gm[3].gms.ms ;
  input [7:0]\gmux.gm[3].gms.ms_0 ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [8:0]Q;
  wire clk;
  wire \gc0.count[8]_i_2_n_0 ;
  wire \gc0.count_d1_reg[0]_0 ;
  wire \gc0.count_d1_reg[2]_0 ;
  wire \gc0.count_d1_reg[4]_0 ;
  wire \gc0.count_d1_reg[6]_0 ;
  wire [0:0]\gc0.count_reg[8]_0 ;
  wire [7:0]\gmux.gm[3].gms.ms ;
  wire [7:0]\gmux.gm[3].gms.ms_0 ;
  wire [8:0]plusOp;
  wire [7:0]rd_pntr_plus1;
  wire srst;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire [3:0]v1_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .I5(rd_pntr_plus1[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[8]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(\gc0.count[8]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .I2(rd_pntr_plus1[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gc0.count[8]_i_2_n_0 ),
        .I2(rd_pntr_plus1[7]),
        .I3(\gc0.count_reg[8]_0 ),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[8]_i_2 
       (.I0(rd_pntr_plus1[5]),
        .I1(rd_pntr_plus1[3]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(rd_pntr_plus1[2]),
        .I5(rd_pntr_plus1[4]),
        .O(\gc0.count[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[7]),
        .Q(Q[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\gc0.count_reg[8]_0 ),
        .Q(Q[8]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(rd_pntr_plus1[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(clk),
        .CE(E),
        .D(plusOp[5]),
        .Q(rd_pntr_plus1[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(clk),
        .CE(E),
        .D(plusOp[6]),
        .Q(rd_pntr_plus1[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(clk),
        .CE(E),
        .D(plusOp[7]),
        .Q(rd_pntr_plus1[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(clk),
        .CE(E),
        .D(plusOp[8]),
        .Q(\gc0.count_reg[8]_0 ),
        .R(srst));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(\gmux.gm[3].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[3].gms.ms [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(\gmux.gm[3].gms.ms [0]),
        .I2(rd_pntr_plus1[1]),
        .I3(\gmux.gm[3].gms.ms [1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(Q[0]),
        .I1(\gmux.gm[3].gms.ms_0 [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[3].gms.ms_0 [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(Q[0]),
        .I1(\gmux.gm[3].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[3].gms.ms [1]),
        .O(\gc0.count_d1_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(\gmux.gm[3].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[3].gms.ms [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[2]),
        .I1(\gmux.gm[3].gms.ms [2]),
        .I2(rd_pntr_plus1[3]),
        .I3(\gmux.gm[3].gms.ms [3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(Q[2]),
        .I1(\gmux.gm[3].gms.ms_0 [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[3].gms.ms_0 [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(Q[2]),
        .I1(\gmux.gm[3].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[3].gms.ms [3]),
        .O(\gc0.count_d1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(\gmux.gm[3].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[3].gms.ms [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[4]),
        .I1(\gmux.gm[3].gms.ms [4]),
        .I2(rd_pntr_plus1[5]),
        .I3(\gmux.gm[3].gms.ms [5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(Q[4]),
        .I1(\gmux.gm[3].gms.ms_0 [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[3].gms.ms_0 [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(Q[4]),
        .I1(\gmux.gm[3].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[3].gms.ms [5]),
        .O(\gc0.count_d1_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(\gmux.gm[3].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[3].gms.ms [7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gmux.gm[3].gms.ms [6]),
        .I2(rd_pntr_plus1[7]),
        .I3(\gmux.gm[3].gms.ms [7]),
        .O(v1_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(Q[6]),
        .I1(\gmux.gm[3].gms.ms_0 [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[3].gms.ms_0 [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(Q[6]),
        .I1(\gmux.gm[3].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[3].gms.ms [7]),
        .O(\gc0.count_d1_reg[6]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic
   (out,
    empty,
    Q,
    tmp_ram_rd_en,
    \gc0.count_reg[8] ,
    v1_reg,
    \gc0.count_d1_reg[8] ,
    v1_reg_0,
    ram_empty_i_reg,
    ram_empty_i_reg_0,
    srst,
    clk,
    rd_en,
    ram_empty_i_reg_1,
    wr_en,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[3].gms.ms_0 ,
    E);
  output out;
  output empty;
  output [8:0]Q;
  output tmp_ram_rd_en;
  output [0:0]\gc0.count_reg[8] ;
  output [3:0]v1_reg;
  output [8:0]\gc0.count_d1_reg[8] ;
  output [3:0]v1_reg_0;
  input ram_empty_i_reg;
  input [0:0]ram_empty_i_reg_0;
  input srst;
  input clk;
  input rd_en;
  input ram_empty_i_reg_1;
  input wr_en;
  input [7:0]\gmux.gm[3].gms.ms ;
  input [7:0]\gmux.gm[3].gms.ms_0 ;
  input [0:0]E;

  wire [0:0]E;
  wire [8:0]Q;
  wire [3:0]\c2/v1_reg ;
  wire clk;
  wire empty;
  wire [8:0]\gc0.count_d1_reg[8] ;
  wire [0:0]\gc0.count_reg[8] ;
  wire [7:0]\gmux.gm[3].gms.ms ;
  wire [7:0]\gmux.gm[3].gms.ms_0 ;
  wire out;
  wire p_7_out;
  wire ram_empty_i_reg;
  wire [0:0]ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire rd_en;
  wire rpntr_n_22;
  wire rpntr_n_23;
  wire rpntr_n_24;
  wire rpntr_n_25;
  wire srst;
  wire tmp_ram_rd_en;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dc_ss \grss.gdc.dc 
       (.E(E),
        .Q(Q),
        .clk(clk),
        .out(out),
        .rd_en(rd_en),
        .srst(srst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss \grss.rsts 
       (.E(p_7_out),
        .clk(clk),
        .empty(empty),
        .\gmux.gm[1].gms.ms (rpntr_n_22),
        .\gmux.gm[2].gms.ms (rpntr_n_23),
        .\gmux.gm[3].gms.ms (rpntr_n_24),
        .\gmux.gm[4].gms.ms (rpntr_n_25),
        .out(out),
        .ram_empty_i_reg_0(ram_empty_i_reg),
        .ram_empty_i_reg_1(ram_empty_i_reg_0),
        .ram_empty_i_reg_2(ram_empty_i_reg_1),
        .rd_en(rd_en),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .v1_reg(\c2/v1_reg ),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr rpntr
       (.E(p_7_out),
        .Q(\gc0.count_d1_reg[8] ),
        .clk(clk),
        .\gc0.count_d1_reg[0]_0 (rpntr_n_22),
        .\gc0.count_d1_reg[2]_0 (rpntr_n_23),
        .\gc0.count_d1_reg[4]_0 (rpntr_n_24),
        .\gc0.count_d1_reg[6]_0 (rpntr_n_25),
        .\gc0.count_reg[8]_0 (\gc0.count_reg[8] ),
        .\gmux.gm[3].gms.ms (\gmux.gm[3].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms_0 ),
        .srst(srst),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .v1_reg_1(\c2/v1_reg ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss
   (out,
    empty,
    tmp_ram_rd_en,
    E,
    \gmux.gm[1].gms.ms ,
    \gmux.gm[2].gms.ms ,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[4].gms.ms ,
    ram_empty_i_reg_0,
    v1_reg,
    ram_empty_i_reg_1,
    srst,
    clk,
    rd_en,
    ram_empty_i_reg_2,
    wr_en);
  output out;
  output empty;
  output tmp_ram_rd_en;
  output [0:0]E;
  input \gmux.gm[1].gms.ms ;
  input \gmux.gm[2].gms.ms ;
  input \gmux.gm[3].gms.ms ;
  input \gmux.gm[4].gms.ms ;
  input ram_empty_i_reg_0;
  input [3:0]v1_reg;
  input [0:0]ram_empty_i_reg_1;
  input srst;
  input clk;
  input rd_en;
  input ram_empty_i_reg_2;
  input wr_en;

  wire [0:0]E;
  wire c2_n_0;
  wire clk;
  wire comp0;
  wire \gmux.gm[1].gms.ms ;
  wire \gmux.gm[2].gms.ms ;
  wire \gmux.gm[3].gms.ms ;
  wire \gmux.gm[4].gms.ms ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire [0:0]ram_empty_i_reg_1;
  wire ram_empty_i_reg_2;
  wire rd_en;
  wire srst;
  wire tmp_ram_rd_en;
  wire [3:0]v1_reg;
  wire wr_en;

  assign empty = ram_empty_i;
  assign out = ram_empty_fb_i;
  LUT3 #(
    .INIT(8'hF4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1 
       (.I0(ram_empty_fb_i),
        .I1(rd_en),
        .I2(srst),
        .O(tmp_ram_rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_1 c1
       (.comp0(comp0),
        .\gmux.gm[1].gms.ms_0 (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms_0 (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .ram_empty_i_reg(ram_empty_i_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_2 c2
       (.comp0(comp0),
        .fifo_rd_en_reg(c2_n_0),
        .out(ram_empty_fb_i),
        .ram_empty_i_reg(ram_empty_i_reg_1),
        .ram_empty_i_reg_0(ram_empty_i_reg_2),
        .rd_en(rd_en),
        .v1_reg(v1_reg),
        .wr_en(wr_en));
  LUT2 #(
    .INIT(4'h2)) 
    \gc0.count_d1[8]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_fb_i),
        .S(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_i),
        .S(srst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_updn_cntr
   (Q,
    out,
    rd_en,
    srst,
    E,
    clk);
  output [8:0]Q;
  input out;
  input rd_en;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [8:0]Q;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[4]_i_6_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire \count[8]_i_6_n_0 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_2_n_1 ;
  wire \count_reg[8]_i_2_n_2 ;
  wire \count_reg[8]_i_2_n_3 ;
  wire \count_reg[8]_i_2_n_4 ;
  wire \count_reg[8]_i_2_n_5 ;
  wire \count_reg[8]_i_2_n_6 ;
  wire \count_reg[8]_i_2_n_7 ;
  wire out;
  wire rd_en;
  wire srst;
  wire [3:3]\NLW_count_reg[8]_i_2_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[4]_i_2 
       (.I0(Q[1]),
        .O(\count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_3 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\count[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \count[4]_i_6 
       (.I0(Q[1]),
        .I1(out),
        .I2(rd_en),
        .O(\count[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_3 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_4 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_5 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\count[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[8]_i_6 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\count[8]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(Q[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(E),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(Q[4]),
        .R(srst));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\count[4]_i_2_n_0 }),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 ,\count[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(E),
        .D(\count_reg[8]_i_2_n_7 ),
        .Q(Q[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(E),
        .D(\count_reg[8]_i_2_n_6 ),
        .Q(Q[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(E),
        .D(\count_reg[8]_i_2_n_5 ),
        .Q(Q[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(E),
        .D(\count_reg[8]_i_2_n_4 ),
        .Q(Q[8]),
        .R(srst));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \count_reg[8]_i_2 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\NLW_count_reg[8]_i_2_CO_UNCONNECTED [3],\count_reg[8]_i_2_n_1 ,\count_reg[8]_i_2_n_2 ,\count_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O({\count_reg[8]_i_2_n_4 ,\count_reg[8]_i_2_n_5 ,\count_reg[8]_i_2_n_6 ,\count_reg[8]_i_2_n_7 }),
        .S({\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 ,\count[8]_i_6_n_0 }));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr
   (Q,
    v1_reg,
    \gcc0.gc0.count_d1_reg[8]_0 ,
    \gcc0.gc0.count_d1_reg[8]_1 ,
    v1_reg_0,
    \gcc0.gc0.count_d1_reg[8]_2 ,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    srst,
    E,
    clk);
  output [7:0]Q;
  output [0:0]v1_reg;
  output [8:0]\gcc0.gc0.count_d1_reg[8]_0 ;
  output [0:0]\gcc0.gc0.count_d1_reg[8]_1 ;
  output [0:0]v1_reg_0;
  output \gcc0.gc0.count_d1_reg[8]_2 ;
  input [0:0]\gmux.gm[4].gms.ms ;
  input [0:0]\gmux.gm[4].gms.ms_0 ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [7:0]Q;
  wire clk;
  wire \gcc0.gc0.count[8]_i_2_n_0 ;
  wire [8:0]\gcc0.gc0.count_d1_reg[8]_0 ;
  wire [0:0]\gcc0.gc0.count_d1_reg[8]_1 ;
  wire \gcc0.gc0.count_d1_reg[8]_2 ;
  wire [0:0]\gmux.gm[4].gms.ms ;
  wire [0:0]\gmux.gm[4].gms.ms_0 ;
  wire [8:8]p_12_out;
  wire [8:0]plusOp__0;
  wire srst;
  wire [0:0]v1_reg;
  wire [0:0]v1_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gcc0.gc0.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[6]_i_1 
       (.I0(\gcc0.gc0.count[8]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[7]_i_1 
       (.I0(\gcc0.gc0.count[8]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[8]_i_1 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count[8]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(p_12_out),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gcc0.gc0.count[8]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gcc0.gc0.count[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(Q[0]),
        .Q(\gcc0.gc0.count_d1_reg[8]_0 [0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(Q[1]),
        .Q(\gcc0.gc0.count_d1_reg[8]_0 [1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(Q[2]),
        .Q(\gcc0.gc0.count_d1_reg[8]_0 [2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(Q[3]),
        .Q(\gcc0.gc0.count_d1_reg[8]_0 [3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .D(Q[4]),
        .Q(\gcc0.gc0.count_d1_reg[8]_0 [4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[5] 
       (.C(clk),
        .CE(E),
        .D(Q[5]),
        .Q(\gcc0.gc0.count_d1_reg[8]_0 [5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[6] 
       (.C(clk),
        .CE(E),
        .D(Q[6]),
        .Q(\gcc0.gc0.count_d1_reg[8]_0 [6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[7] 
       (.C(clk),
        .CE(E),
        .D(Q[7]),
        .Q(\gcc0.gc0.count_d1_reg[8]_0 [7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[8] 
       (.C(clk),
        .CE(E),
        .D(p_12_out),
        .Q(\gcc0.gc0.count_d1_reg[8]_0 [8]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(Q[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(Q[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(Q[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[5] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[5]),
        .Q(Q[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[6] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[6]),
        .Q(Q[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[7] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[7]),
        .Q(Q[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[8] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[8]),
        .Q(p_12_out),
        .R(srst));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(\gcc0.gc0.count_d1_reg[8]_0 [8]),
        .I1(\gmux.gm[4].gms.ms ),
        .O(v1_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(\gcc0.gc0.count_d1_reg[8]_0 [8]),
        .I1(\gmux.gm[4].gms.ms_0 ),
        .O(\gcc0.gc0.count_d1_reg[8]_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(p_12_out),
        .I1(\gmux.gm[4].gms.ms ),
        .O(v1_reg_0));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(\gcc0.gc0.count_d1_reg[8]_0 [8]),
        .I1(\gmux.gm[4].gms.ms ),
        .O(\gcc0.gc0.count_d1_reg[8]_2 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic
   (out,
    full,
    E,
    \slv_reg1_reg[0] ,
    Q,
    \gcc0.gc0.count_d1_reg[8] ,
    \gcc0.gc0.count_d1_reg[8]_0 ,
    \gcc0.gc0.count_d1_reg[8]_1 ,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    srst,
    clk,
    wr_en,
    ram_full_i_reg,
    rd_en,
    \gmux.gm[4].gms.ms_1 ,
    \gmux.gm[4].gms.ms_2 );
  output out;
  output full;
  output [0:0]E;
  output [0:0]\slv_reg1_reg[0] ;
  output [7:0]Q;
  output [8:0]\gcc0.gc0.count_d1_reg[8] ;
  output [0:0]\gcc0.gc0.count_d1_reg[8]_0 ;
  output \gcc0.gc0.count_d1_reg[8]_1 ;
  input [3:0]\gmux.gm[4].gms.ms ;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input srst;
  input clk;
  input wr_en;
  input ram_full_i_reg;
  input rd_en;
  input [0:0]\gmux.gm[4].gms.ms_1 ;
  input [0:0]\gmux.gm[4].gms.ms_2 ;

  wire [0:0]E;
  wire [7:0]Q;
  wire [4:4]\c0/v1_reg ;
  wire [4:4]\c1/v1_reg ;
  wire clk;
  wire full;
  wire [8:0]\gcc0.gc0.count_d1_reg[8] ;
  wire [0:0]\gcc0.gc0.count_d1_reg[8]_0 ;
  wire \gcc0.gc0.count_d1_reg[8]_1 ;
  wire [3:0]\gmux.gm[4].gms.ms ;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire [0:0]\gmux.gm[4].gms.ms_1 ;
  wire [0:0]\gmux.gm[4].gms.ms_2 ;
  wire out;
  wire ram_full_i_reg;
  wire rd_en;
  wire [0:0]\slv_reg1_reg[0] ;
  wire srst;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss \gwss.wsts 
       (.E(E),
        .clk(clk),
        .full(full),
        .\gmux.gm[4].gms.ms (\gmux.gm[4].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_0 ),
        .out(out),
        .ram_full_i_reg_0(ram_full_i_reg),
        .rd_en(rd_en),
        .\slv_reg1_reg[0] (\slv_reg1_reg[0] ),
        .srst(srst),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr wpntr
       (.E(\slv_reg1_reg[0] ),
        .Q(Q),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[8]_0 (\gcc0.gc0.count_d1_reg[8] ),
        .\gcc0.gc0.count_d1_reg[8]_1 (\gcc0.gc0.count_d1_reg[8]_0 ),
        .\gcc0.gc0.count_d1_reg[8]_2 (\gcc0.gc0.count_d1_reg[8]_1 ),
        .\gmux.gm[4].gms.ms (\gmux.gm[4].gms.ms_1 ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_2 ),
        .srst(srst),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss
   (out,
    full,
    E,
    \slv_reg1_reg[0] ,
    \gmux.gm[4].gms.ms ,
    v1_reg,
    \gmux.gm[4].gms.ms_0 ,
    v1_reg_0,
    srst,
    clk,
    wr_en,
    ram_full_i_reg_0,
    rd_en);
  output out;
  output full;
  output [0:0]E;
  output [0:0]\slv_reg1_reg[0] ;
  input [3:0]\gmux.gm[4].gms.ms ;
  input [0:0]v1_reg;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]v1_reg_0;
  input srst;
  input clk;
  input wr_en;
  input ram_full_i_reg_0;
  input rd_en;

  wire [0:0]E;
  wire clk;
  wire comp0;
  wire [3:0]\gmux.gm[4].gms.ms ;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_full_comb;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire rd_en;
  wire [0:0]\slv_reg1_reg[0] ;
  wire srst;
  wire [0:0]v1_reg;
  wire [0:0]v1_reg_0;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(\slv_reg1_reg[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare c0
       (.comp0(comp0),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .v1_reg(v1_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_0 c1
       (.comp0(comp0),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_0 ),
        .out(ram_full_fb_i),
        .ram_full_comb(ram_full_comb),
        .ram_full_i_reg(ram_full_i_reg_0),
        .rd_en(rd_en),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en));
  LUT4 #(
    .INIT(16'h4B44)) 
    \count[8]_i_1 
       (.I0(ram_full_fb_i),
        .I1(wr_en),
        .I2(ram_full_i_reg_0),
        .I3(rd_en),
        .O(E));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_comb),
        .Q(ram_full_fb_i),
        .R(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_comb),
        .Q(ram_full_i),
        .R(srst));
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
