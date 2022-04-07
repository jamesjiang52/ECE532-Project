// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Mar 12 16:24:58 2022
// Host        : BA3145WS18 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jiangja5/hash_server/hash_server.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_2/bd_929b_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_929b_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module bd_929b_c_shift_ram_0_0
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
  bd_929b_c_shift_ram_0_0_c_shift_ram_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_929b_c_shift_ram_0_0_c_shift_ram_v12_0_12
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
  bd_929b_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv i_synth
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
pudM8H3Yrr52mOpuJvC7mE2OAoVhPl20efOLzec4Zi8Ljwjny8xpxHs1i4OJp6TOFsgMGPbnvUpo
hCXx9OzKkrbRCWwQ//Hj1c+5mEJRvUcEoLhYoJyTzUFVyDRVvwVyHp1hM46FIScBpsHhiqn5tnh0
4DEVEfUF796s0r8TEGt09VNKWElQZu0R2/zJ0Zh4ynlX0hXGfLFm9mBJm/SpDImVL/U646V9xc6Y
+uSpQ/iPIE1hp4/CXV3WGh/aNTfp0BpUO5tZkH40+G6lBsW9QtV27tTizV/z2fVvWXpanoDYlrT+
if4bvlYQDmc370BpElUJTQDBb5lHImM6gPTIWQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N0F41qZroeZDy7asWo8oiEUiEYv+Eob6xk/fKEd4O1+mFZVtCfbU+6TZ38CL8ZMUZ5Xb5htnEu/s
d2SjqVL8v7TVZIfxsP7VHvEUN6iLKA3NWrkBFaOOJ8+DiHFRZMFUzF4rDbYNzXiL/AMKH54piTm6
MXygPj9ymXPGwC0EbTwSU4n/p0Z46hWzobMh69xNdUvuYTJ14QpxLi/VEWagPbmy2r1wBWLoHUDa
//F5QjxmixclScD17c4AM2I2K3Mc6NT5+ky0hfhrxEt6pnyQkofil2WSA4QLFlRQZHs3ALrUqHSE
ws/0aaRkrSyoI/4/ZibxsUEA/U/EaHiHL0TYTQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4640)
`pragma protect data_block
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
+aAoW6T8nRuORaslobckYvrcwPhJS0o=
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
