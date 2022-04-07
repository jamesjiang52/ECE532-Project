// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Mar 12 16:24:57 2022
// Host        : BA3145WS18 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_929b_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_929b_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dOi6VY5D1/sdj+MA23a00mQh3ZKf0dcEKM2Zy2FinLlOm2+KQ1uADaoo3k3nb8kUQ7wpkF3beqRE
8PfeHcn0wA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
feHNIgRfdDisHsZ68q5ITWd2OfvIf5ylsDTxdimXVYA7ebQ0q+hcSksNa+/hhRPhoFzXqwHM/Qpl
3brbV2RxuJuc38roZSqT2WTxhiHrmEAgLixS4Tk4nkCMYvpY8HowH0qXwfE+ztSCmBm+JiY20ZuO
Md/an1vbqEVFR96fBG4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wJpgv0YPxM9rcnJb88eNF1QlcCuz2BOE1JQfGGNUR/f6/JjbwpxciLu4BO00dTnvjZlYvJdVTxV4
1cV1ZBBQbO3GttRjvxR97uX0cQ1iCapk+YqYWMT0vAiiisAQkTRO1eChUiEpCOsFeO7Lb9D61/P2
A0O+XvjfusaZoQkoWDPS15DQFJEBzXZ2UFXApA3+xA0xxLcAmHyFHYnL4HuAT+5Q9hIWuSAz0eLV
UZOtvE9s9NwWE+YgJ5/zXkWDdA/Y/gSTE67gu//AIaGWHyGobsWaepQLxcNdBjcJQoZzIh3TYHtM
XSQ6YgefDmtIgM47FNHkoT8CVv2JoJjNac9qCg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BWeyWLqYO0Np2IT8iE7DNPkHCfdCxzCoFH9NjxT/ntsBAyo/xbbPQoB84T5CnZk8z+DSHA5VK0zH
gGd7/oCb8EL5pIP4suuMFBAbVROrV+d4gZvKNxvNj6PXX2JYi/QPt8qTrfEAb/gPScN/qS0GefEX
Qfjg5dXB8/G+UnqjZxTiAzaZLNTRfsah4cMbebxyzQ0pHD9pVwaR/ZDiWjdjPBKqvDjm4CYcmQRS
fpmR3LcHtqk78Sy+kHWS8LDS0qs9ofOXw5oK27eNoR/Ua9EXuYckLmG6sgLcMpwepo7n9noSV/wc
VXs3lLhoO9y1uyzp1sfWv8vFAJCzs6Yt/4mjmg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VR99LzRdFWVcAq630Y7EFJRWQc95NvBiiG4gSJwhRmT1/xIsUwXsB0IgETo3hhtRpmONs4u/A9gr
WUtUyhABXvsexa+/srZm3hPY1uk51B2PSh4KTLi7YgfRMSetR8td/41CO+rhn2THz5HXx9R3iYw/
COHnLU9IDyPyiphL2Y0nHqiJgtzVG30bir5mRljyoNSwht5DgRVHlUMTItehc7+72q2PBiUJudXg
QnLZ6HVdzvBeXUYnQLHYHMXehifbIgWDqN8XMtE5N6tyjgaffHNm9GmwT6YOiZ0bdkq3hFfgPv4g
FvSi7q8lqRsQf/1LAWxd1cS2Z4PRo5HGI3lFxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
d2CGkFfJikZgaCIdQX2KTqCfSnK+q/1odHeipUFKo3oDNQyUCy5NY/8q11fk0pyKvgOxqJM/2iKh
CkHahNFXhVGHrpWD8YZ8fMQG7y/xxyU0LmBUOR2Nxhg8KLbVsGwzhzKY9/LpAOij485oex2Im7dQ
LJ06qfjOhjOy408hjUI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mBm7GXflll37i5i8mo/ka1qz/dYi5x27FmlBQUUsnGJTLO6X55r12lwvWQf+mOfIvw5S9RWAJ3MG
t7y/ZEt7r2gmOAn19Ah6TUgQ+f74R7tzqLGdrLliQ4woWO6i7YqKU8XnZYQxB4RN2cxUgJ7oqw46
0zTi2oVE351BkvXzA0RFyv17rvaoWTbAb+Z+lm3pNJmWqpAbvUyAYDbyT0IgRPf0k8MPH0Rs6W2+
+Iws7a5f0qZBiOvgftuu5ooUbW9UGZjixdKdQ218xDqXiIZLWBRJ1hx8DxMZyVCjeK/FaXbc0VaT
7QJwubx75RPO2g0KC3Yj5ngfsXxgheoucI52hw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bh6f1Y8lg+jqSNttHPvcMlyt1Ezfy61UtiYs6+pPbDD+6o9gGGvw/khj0ai6YX65kN7NQ4TxGFR0
uqVTaAuks9ncUNaght+B2s8RzyksPmbWmWQF3kuPojzkuADbxjrNSHtEZIuXMRXXs+ykCP0aKI8m
K7gYjeTImakIVf3nnfLDVeW0HLtnv4w2Bkxy2PbuVDNp6nrErRB6wu69oThvGHECfv5yhmVd5hMe
u9y3rvKfcw1rzcG7fe3lKjE1n5itdEFobBrt4fi2hbZDi6a9ciuqIqM37lv8SRqA34SliiabbNYB
bqhAECotwNrx/GDids9tSaPlINMNNQXmM8kxGQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u0dBUBwxCYhXMmu2GBsth/rL9rahIEvX112guVpsGPoILWXjumfXn4qBbeu2TcBg+6i/gKGLus8j
NcMNOFj8vku2Tk7IBnuSpzXanfQOFY+pNTt2/8al4ar4Qg4gZBDbiNefHlGekhw50Xmoo4muIqTi
SoH+fi7KvTKKlinf9ZzVUVnJE+XoQOK7yBTEP9syI6xd8oHMJGpjHfhV/ktuxxzYj7G9NmwNJeAB
SD+P020x9nPUP09XcCjXoEA/q2eFjlT6/CIs6Q4W0/Ui6qmndhed5Hb/QdRCnGQoiXqEMxjWdZPI
9JR70Ijk6jLIOUM6knlOTWpHnegtbtegSa4r2Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4576)
`pragma protect data_block
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
JhAbsmui+VHbasmM+XPdQA==
`pragma protect end_protected
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
