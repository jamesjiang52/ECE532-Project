// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Mar 12 16:26:11 2022
// Host        : BA3145WS18 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jiangja5/hash_server/hash_server.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_3/bd_929b_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_929b_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module bd_929b_c_counter_binary_0_0
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_929b_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1100000000000000000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1100000000000000000000" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_929b_c_counter_binary_0_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_929b_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
fVPTYpjMQbp8Wicgrw7sJpLUiuoAX4UVdTbdo70nK9OK+7prVGMlMK3IDUPetzgVsRZ6HBRdXHnh
oqSpruFqRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V8yBtaAUzGOHOo+H94tylzZ4Q/Q/UFBEMQcWSOAyqCqy0Vc4lefODfkAgSZ2UdqoRBNDtypBpiik
IqNewK8ouFSlJG51YJfjDF2etpg1+V5wCGPNxYwMbdVQGQ5NektteDAXv6SaYb0FgETMxey4KSPN
e8AIdUpeoUJyzPCpK50=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yCAra44GtwykZ8W5FdunQODfPnu2cH6FhpfXoxDS0CTfRbOV3ZiFFg4TUi7uj4pSLHsiZ+zreKw7
cleU27p6cHhZCdai7E0EkzGilZEiI9EKVlxKRcoYL6LdtnHVgkZl46XiCVi/Ejnkf5lpXOlBlAou
KdT8dROosAcqIRIY8AkZ3yfY5umGvDegBVzWbfXLAvMxLnLzMz8WL/gWwW0zQpnLYYg22N0TJrLt
uPGjWR0REiif6nwuaEHVIFI7JhyQpcehgDVXpKZYse3RhAvjcWNJYRpQJJoQhom1jOT9nlDb9YlQ
vHFH4T8Xfae8M7bflW4p6IObjTpukUZFbOzPpA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kF3oebiolAQ9ZPhPlcNV/+FQGMcC2d4krlmLW9050SYrgyJbYR5aONti/fUuyDWKUoAc9gtHPq87
7Ozj/6VdAIN2n/7T4Iib612UPZ/BdtTYZwq1ezOEE6spCaupdkLCPaT3GWLKzvRGbBGqTosAUZAI
XIuYBnsoc/rqyJofpzVDNRXBpAKlaeIP+mC1qpir8T7Tws8DJChXJTFqUo2rNrGBJ+c1XGt6S1x1
p8n0dy4JAv+u5CeP0E9k+PUfczmt/WFlwmSX5SBwFm8jHNigfaWT8skLkCK8gTx4Lj4LwKJq4o/0
MRVBDGzjSicMxZHKKp03CqdPoXrRwxZddRSL8w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aZoF8QXznN6G768IAoQYyEiNOBwcFDD9chuWODYE7vxynkttA34UwR1hpLIeKlc1e9TIoMsW7n7b
Y7Ff1FnHzhRxoXod6z43BHQwiRit2P81m+UJyYJMq0BPXJe4JPMss1gI/6x/nrMyZiAVkb0ohXFN
nso5TeQhw63CGa3Kr8PbeMaWWAYrUi4gOb5nlnNWYgV2cvyFfUzMsaPLXoRvMTXJ1XV20s0yAbty
2ZvE6ZHISzitkTpqNZGKVLD2gXt8O7Ymxr0uZhPv72Zp5rpSD4Ls7I35IcAXgzOF9z4KVX6GGEkD
6I2Q8VQ+uZJO9udK6+q/v/e7Q8pBqdGKbEQC2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
E8/jGxrlfOGG9LK4wuUUu594L68yP8IPTi3ex7YqsLJiH03MgY0fiGPc18bNwR82r5Xx9uGXsOyT
5R0uz2bhIwYBMb0M+52x7RQiwsF86ZUG4kvTtCCYJVJ0aOhi5vCkZIVPDKhR0LvzqTW8ZgsC4vJf
YnmZhFrto1FTYCZdyvY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j+h+8f+ahW/WaD0+1qP7QLjYiVroG4+pqmnv+NmdKT4vctxbs9iFiYWnB254QsnlHpWsr6CmXooR
yviBFJweG5sSUzl55jvNWNMwkpXnaq2bVJiyJUhRv0BKyCTFTu/nU7lfCqejDTBeNvh9CSpqv2iY
9eyjfkk24o30JC7I8U+htXpUw/9bxkRoQMpZBQFU9OUnACY4WtImEG7joDOj4pJMizYmIIZ1uFBx
4UldwdaJVtl7zeTBxpaTozPoIdvp4es/Vzez+7/jucgFndlt6tZawXug8sxpa0dcz0NxOSsF2nkm
53pgpv1nOdSjspYCew87ICWc4Jix/rr8untHGQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lL8RNhm5dTZYdsG7+ADxzrExNSREsLkcLSYKaVivwOCmdq1AYuuuEZZSIFgEhPybaxNGB7Wp5ave
xip+9Da6gxEoN5vmBTeAzcKvY9L/UfiyGsFF8MNIcI/Pzd/5gCTJKhn7RIquhaJW8hDEqs4P2pZJ
bAvusJLbpsORyLEUXwpFxdqM2ajVduDVHC5N2ihckvGQJQRDUnKQ8gDQcDm+sstf6ber9LxnoUQM
FnAsbs6A6MprkpCMoDXFdTeY4lBQ6ihLl33mkMOL5Yxt2CbnRnGuRgGQkidNugglcDU5aLDPKnX1
d4iPMfHTq8xmvNsFmzrwKQybRFK2Lnp2vAti5A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gXj0bGOmWecJbs964LuQF38DgySCPKXkjpPSLmDUdoUwJ5QuyuleIG1Z6C+9MjDbxXPF7roDl89v
UJHaNfiCeuvoW3YkiIyEcgEX6QvOY1kRDGxE112yGaxXP/PzIsVk8t2NUcY42XYlK4gNl9+c5oB1
hMouKoA1+m2UMsi0Hca9JY1Ljtz27f+g9PwsuBBHKi9IXXvAz9mVDH8XEK4Ex/cbHz4uJ0DCj4Wo
LQrlBuDYQppHCl7gXOQQBNO66yr+S0G3S24zGkAx8h5ke9VHKcnpkc5k6yTf1Or7V6sZrF0CK+1f
qV9rNixyfJdcWhrdslDKg3+XFRUMB0Fhu4sI0w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12624)
`pragma protect data_block
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
YG4n1gCfZmrpEll17ilwAVK3yz681xl8lT2m
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
