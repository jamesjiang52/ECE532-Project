// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Sat Mar 12 16:26:10 2022
// Host        : BA3145WS18 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_929b_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_929b_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
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
A1drw/WCGjGljHRSIZ+hD+Y7glqCaiV3aUsjp6xozQUjZYg4ECHbA6ym9dBW9eXJUm3XLaSWTGSU
4/Kqfx5cpoKWsJ9qIe2PTI2R19L/Ih4RQGf9koT/oGl94FksvY5b+Rub1eNjLTsy8GR5ZFLHkEsD
lw+GkYbJ0wgpZBdy2kW6sr1T6n2zl2kU1xLwDkk7rPzIVDErPSg40Vr5QSM5vDzx9N7s0Hff3ksi
38qX9c7Yz5l3XbyoZJpRbFq6aGccczi1A8yD2CZ09xaudnnCaKFxAG6zEiMJcoYUYgGf/C2rOjT4
t42yvfsJDqWdYDHggeSrOBOQJpoQKYKeMFvU7Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C9I7JnfCLj9yZttamI/eQFV0PPqPGJgZj0HJ/vgyNNI70+1y2mIODuCdCj0vtyZeQ9z5oUEj9//0
GbuWTFVbL9eLSxSJ/vWCDBAOsac+YGfda4k3tBoEymKBEYgr0D6CKWxy2ZIxY31Dairapgb+7usY
IY7UOKG4x8COVuMhXLWhht7Cb1b8v0Xl0qOFFBmOUj7yhyrfDtNcbfl8W83ypAfdvuvwT+uDLW/W
j2gzVE/9Ry9DC2R+HZFxAo/PZXrn+IQIMPetkNrHB5DFDDrPz3v0renuxWBGzkEVrdpDcL6h3VMQ
c9qgCGOvbhWZLB29nanU5Rls3WR5BmESSagdpA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12448)
`pragma protect data_block
rfMfwVtf/L5IZaEfwxvJwc5qyjDpfAwONetsTURSXoWX5M/4oUDgbT5i7MuHrjlNPup4Gxt/KnOG
UFkeVFdV6uto94NJ0OhN87oCOKn6WZxF03pyw+1FQgPDD8Yf3AKKgSyWrj7a1jSgb6PVL8gxjQDX
J8cxBTvN8hPLioxPWXtSpB/ShSknwX2Uihur6t0TiCqsquHGjl9yPxWnvcA7ecGBD2a3jJK0ySeX
WtJ0c0eUBrwo/aSjXejfdfqAaguBSSUzM+13qHXR0Uc4tQ/5ydJ3a4TGQyTtYLmjSW0twCyAaNZI
1SsAJW+w4GqKkXqtLj4XDEAuu1IOtSLlMUu+Ywn9NRaHYnkJc/YqaGRP9zsXj3Dn8QlKsZv4rdCc
65IO16sMAEUURzl1R2Ezw1E7eO8dcHF3Y97u8ZUrvJX00sYo48F3bz2oUbOR9aGbsi3shry99/hc
P1J02TosMttvCGeEysrjJemSTpL/6EiQxqE7+lfJs59SPKtWdlkptpb/h+rpXt68NGUE5fHn2kA1
NFXBnKGwWWB3lhvvTp16Fb8h4o4RWM4PtJuLOn6mPBmrWc52B4+gldJJoq1WWIitlaKbhFzMLlAU
DpmO+K8oVMW+X2w6hn4BUcOzjv+edc9pi7dlO/aimuIsECNgi0y1MRD/NMWumvUiJJ/A1Hfnxr2M
l5nzpFu7WyifW4jFgSyeyTJwJ1xbpQJC33nU3rt/iW18JmUE3VTgcwkbxEfvx/l9s4dukApSMzFk
r5YaDyJ26FQjnqSWn52xq1NjnzYVrgOmm1AkOuhN3NCxksDdlUK4/OdeBImkmjeYyTWdYZjse1Zu
70uafJx/9OdZY35YsQOLuLLXXM8kWsupg9cLP5gEbXmWNnV11it7qTL+eZwZbLNgB7420jPcM61Y
ZtNyD57sKZpYz5awiQbZMYes+/YrnLDOMSlibotyckk6ntJPnlQb1JbA/tYtediyoerxs2fIBwHL
44BSY8FJdXb8/5PGzzZE7oleSy/ROx2PU2k2GMi7aBCyhP8ZTle5b9583g5J8Y3jOVS+7ByIuEH4
CKS2EgovJbrrfsJH4yAhB4kgwDellGRZDyWy586TtvJ/DYVCm6ZnFTbhMECJKgkWy4cbKmqkWwKs
pX1BvAVBTwg04PAEzBJZEcReAxFz6dkT1V934h/4Y7C4ZuQsi1c/lllY6KDyTqJkPXtrY664zX1r
kLSlR+TWtScX8Qru/G4b3yQYuj56hoL+G8LoFtqmov+h/N8hImbdbuqSy8i1ZH6p5FcFEki5QcSR
oo8FDGPGwczNuTb1b13/fLGpM2ZscdNj7ept9piOMtaZgqI+zi/AwtZcgRsF8lNwNvsgzCO2T6Am
iEWBgshoO2WTrjhgWOGEegSuqGndDgmKPRqwYfIyMt64Kuub2wx+Tm7PBM6Yw4Ttzp9mXdVzt7tk
U79bMCQ1bqukl8AJGEKsPIIubaOK5NkGdPyJfmOs+xcEmwXL3WjU6kG1WP4KhvFC8pD1SGAA34GP
JBEsjobfor8qtEG1RQWLaFm8FLgViP2jNbES2x7M4pViiwRLxfPo5uowX8NXaaGqvISWlxbnOayt
/E3s1suMF2Fz3zxWcHGwWwk95GkiMcSxM/SCujK8UTOfruXzWfS4/wlN8nzhmcamIQPdiHDDeIS/
HFf6zyck38EK5cOkREXITz9FrYBUVzjGVYhMdNUctwGfB2OwJrwk7J5Tu+o5DzOL4bTI8cZLeVpd
/5U08V/Fs7RAum2rlLZ0kGxqNz1xhMztQZbY6vMPleHrZ0/rsMe2h8/tN5X6VaQHY+BciHoKXLDv
IHoG39SlPQWtkNM3xhKLfpyhy3G2nvzcwnVvPPftUyxFFvy7YGU7difXxeyxsBWiw6StlFXSGaPK
YeXBk1Q+OCjgvB/LuJibKzwV4lkvUhUnT15/YPHhoZriOsp+QUwYRd9271QEnCyY/JhlEoluGKft
DtXwaX6h3hMBLFQOJ2qATwmz2VMh+OuPkmgtsiWrgA9CIMle2toGLd5AV1SZOhZ8xkv8G3vJhFT6
N1+ZPWuQhYuXoxAWb3EfFARgPyBULdEtnkU6p9INEIiuIO9gMiEoMsLKOurHXtY301u5y1C7LyKA
sBJRoYOYgB0+8HmD53awkVA6bMZ+WznSIsWgIjpoA5YsbkDfAKJ50eae2c9RNBiXr0Rpzq0SF826
/nd/NmqkQLMsW69pVUHxrKzJp1oU2w8KN5LplQSnG6fnL0vOH0NVmkVpjcFqMAEbc+zGSQe3SuFr
SF3GMVtAKUApUqksZRE3m9dlLY/W3JEnO8+Q/+iq/g+Uewm307LO5Jvv2CmRrolKCOfc4zowlPTT
VJbyzSEo4YSEkcVLPQ63jkimk9z/ffa0Ssp1PVDRLfj1xQR2cLnytfFOFvQ3arKAtzLqv3iMPIk1
NblMKYFdxMtzPCRb+OJBfFqYqDfQHzRGSnjiQ0cRBzHGEbphV07dmXC6JSWw5kRidg2ndisbGgCm
uvay0onr6spRUmegMBh9ugRJYclWoB09AFwIt7I/SeYCsfznlrVav2jLKwB00nFxgKAWWTNLqBDg
br2//fUiHf548KccHyVkVYStxkPqlNF5quU+N7KVuM9r5Kk+FUDQ/LXO+MBSl69xM7ZqmtzCaFVP
0L+UvQvQZgIYW1ryNJri3MYUMdZVCpc0Q3rWPeq3ccCcbj1b0Zf3AqMNZgGuEkA7VMNEadWRe4rM
qT0H0AtJDrEJD9nDW92a7qBfu5XI6UDSZ3Qf6+5MAOrPEAuzEHFy9ChV8SKhVyIQhxz1nlPYjhzS
v/aXSnkhSikxkqjTu704c1QHlr4uwg62lNOxRBy7P+MYWJMgh9s4Py8LhTJwXeBhu/rBuE3z2/DU
S5oFfNQftzM9TEyOGTowQZxp5+zIDeog0nRuiFNLUW4l92ZoOjI5YBXHKIXWJhKLrjdj6S3lZOZA
l3wqYciBlvknROK6A1NF3KeMlcr7Xb0y6fBHURGCdA3KGq4XHWDuoJ2cW/y/wrX8EsraxrHfgFLU
/3RzdSF6mlSExCysRYA5paCvzcw5Do3tGQrrC+16Ci10exRQ8/BGIeZOSR7S7LF9x6qZAVwpct4H
glvF2pbATYrnm5fjNBvOgxwu+7DR+s3HujCfzrsmJ08X/RQYVOj2GRxy7aycij3yL6BoHyAXnqYC
OMjHSZtf3xL6Nu2RphC9mIxAXS1jChrLUS4rnOVu+gl+rMELRYf1MoDbysXsQwGCedpohuNmmCpO
MJV5alRBqRgfXYbZbc24E19dVnE8aMT+nbnOTBkURHyr7otb0fiL3q5y5yITHeezYDL9z5aASXT6
DFQY6aN374qUi3P89WWZFGWo9X8CeT/RLHzRfYstmrKmeM7UZvKhpBcGdxM6tuXRisGLC4OIbC4e
cJRbX33aOlvd+q4RkXK4TWN4ruBVM7ATb3VHbD16ZD1eJMM1mfVR8AI8xAQayibMfUcwUTJ1jgIM
/moo5sSvE27hd8yv+TvJoBxQuSI1kQ4bNqkRkmTuv0PDgcuWh2cO3kh5WgLl+qKgIPEB1aufuBJH
F9z2Pki485INYMr9N3+6PIUckhA6ev/2ZHEZgRhsv3aiiPDkqakKduPNVA3XOnhH86dBbCPkjj6C
4zwRjrb3oCps3jfB/BR1DglkrrITY6CYbkL7ez6uBuN96gpc/93gATR2r6NEOP9JQ2VvOeHdq37+
crPCehDys6idpUqACm80ze6YYkK398NWH0K4/1v/zNx1w7VnPCtQdcbvszk8QkPN2oranS6X1j3m
Z2glHv5yRyKNCxSbD1HpOkVMP1cEjdW0R/W+v/t8exYluU9P/KcLWAKIg6fdWAkJ/X0X2Lsv8dg7
yU9CGLeYms0c4P0BSACO7s0NYbC44UvHSC1ci+Mib+m6HGoW0azJGBIaYI4+xGAViG6J5V+jLFjv
IaFoSQ/31N5xRRYAZ1kGJVypcSdHovLmidtz5ReaK0YSMHgOOy1XpK5cPlYVKRE3jwz9hTg4yI2u
jHR2wLDAXHeA8UalrS72vaKGdwuyKnWXBviQVjNJ/hFmllVkRp750gI+7eBM2CKiQHxAA0iWPumw
3TOSpBPWP1M0UniYearEJkGQ2pS29vCh0c2rqbGWsC6EYBdIpZLeSp63c3lW6WHcPeQRTylMY2D0
6GyX3XQT91Hx52Yn/BSaV42s+C/4KLgKwZNzvc5brtuyliIRKuAlpcZOTYTuVeNdeLSSI+U/tZKA
eiGTqt/Geln7VXNhz6uJkT7aTPG/B+lZWGAZTE1heAYZwZ15qttIqimEWFAJKxxWMGpS2y001H2x
YgDBc/2duJSI9o91XhQcA7RaLgo0fHDr/POhQIpVVWbzL6LxyVnqipPij7ndNW1j0KYku3jgx1r9
DHkBVk6ms2g1Z7NyIsQQZ8WaFnWl75CBBhKZD6h3nw1w2gDKbDePcImyI6nqRSVnV6XvdIC2/wvF
EPN0vhQsuS06KucXIijsVBHX+DHpVuwlMhP/HmoZZFYl60IQcGNF7oKoymvxcisF/EbGCVmb2oMk
plUTZG0CMx8wubBsOArd5MCLmn+AZCPKQPBg7535cJu7iNRwoqIyQW1ECwFVfH3o5Xm052kS8bVp
iWKnxDgaw2odrylRWjJQmz/zC9ahmBP8qS1sbIVCd6v0fqmTKUAtuEx4ytjkYlTZ3uXCrmz1i5O9
PL3nXxbgS//M4RbIyVcMm9GxVkXGnFuq8u65FuwKwABaBRrMnM1FP47hP7y6gM7c14Q61I8ICANG
tBWTqjFInmb48lHBdZBoP15ss3Rt0Ws7X8EDaEVZjbRuKB16M9ZrqvVWY0VfkJLSRAs/fdZ79h27
d9XEYi3JfJkziNTqp0u1c1xNk+qdJTObk6zbm1br9WPtlPedk3/v2aDRuTG4CBeY36B548Zrh2aA
NJ1UAUCAq+L5/k5h4RQBVG1L7Q446SAP/4nSJUDQmvLHfXeS1nHeWIQPzFOgOv7Rwad6XIZDucHd
PkkSzN2ASVpTmBZ4itzZZvTUtzn+80sJx9cO9Wfu5H0tCNG4t5bkqLq9yape+EiHFOf38Do2AdNk
uU811RBBAAN/E2JP28h0D01IzWlKJM0Sn8chJOp0d6aiWQay6wqmmki/3zzo01+dZnNyh7zV8rmy
8SeGShHiIqZZHIz4bG1G+9D+b8/0ShmxqhZ/atf8KZlpV0H/dNVv68n0/d99mjiDck2zIi8a9h2V
0TI9Xf5YRAyRPL43JP4g3lgCGpUWrc3Unz3tGwXZg/+RopRq7xA7ByD2dstVPyeFg8M10HpNXi+c
MUHE/Fm1MfQQN083Ln/7STHq15R7P6DWPbbYAot2XPb/ShJaKjLTFyTcMdL4ibjOzXI/l/4Q6yaP
lUzjS/71saXUuRwmrVdopryuGBzvrOE6A6+6XyASwWtGJ6NS97EjEr1wlp9va4rxq4VjWjlU8To6
0X7nDXHElaQcLPK3GSoVnq0ehDxl5J+FYSoc0VlVjflf8KN9ZDbA5K6fDv302l9q3MgpY4pxO16A
fw+31B3JM3P4nxyPhzEJk5gG0u/MhkZhZXTbL1sWbamMJBbYzMa+Mep3235x3kBDne51Eh/5zUJV
s/9h1yp0Uo+NuBFHKQhYfUnzKLgbUyNGI2fnXXdZVLvSuCeEIirNV2zwpFMFfJfrCT1zd9snosBq
YjyEjWsNJ0NMP6ILabikADhPu4pKW5jNc5lRS9EpXbLrnQMS5LnMINKoXF9+R0lax3XQMfDhfjjC
s/sFhTsGj0AVOp3jyDyzODzeJ+SVSxZO7/zhBbfHSzZp+GnyeOfFkf4jqigQXAlS05sbu3umwOjK
4PIoGAhPUWMW5lVklJ9miIc8+IxLzBpBYeN72APztopbwhnL/C/PV5Pt8/6UigxAumAyPOXxEDWb
3KN6OWjIr0tjR7Lunar3gbhh373/w8fig+1oXGwM3K7mf0qunA1Y02TYjBFwdOwTC6VajzThVVmy
bEqo9HWvDcE0ZWauG9rto/KYYqmfsDxuoFIoMqeDu9OKHC3m7cXjpz2GBOwD7yGPykZl672QrwhQ
onMr8uZWXGC7606Qg2wCe/o28P1OCItLcDolw/s27nAEhJk3G4unLSA5OZRzIEN5Aa1ZA7TKh2mb
6N2BpElChTMVST63GN0NqigYSlkyeuw1gnn5VTTTVGYdJaldn/CPy80Eihq7BNdEn5Wv3yr7Agtp
dhPXl9TS4Kd3Mr9P7iKAClUhb+zvT3XXWaEah/Kqe45l6cmPBVDnLY67aVboDKUi1McUztIgdLIU
FUxOehg8Ujeuf7/hUZgQnCrOgTdAfYKofRVT+JhXAqO5Fv7cbcpcnzvGKBlnZPcnJIOHyjg3aWzm
7gHBHvrB8sUDvHfLOrfgno76YcdzhHM7yd1McGVejW9yZn4OQZqU2EmXGrqtKK9GiGdNArbfc5kH
gkVhBTFPjCNsPUfnzGOa96Ks7iBdbtUULmI5ZCCUTrN2mg3ioQ6wjR+VpMoKQvEogIWkAdEvCi4V
oO8U5IDpnU0KXUCqB2v5fFvQp6QwdA+IuVIFKTQGFP9el0XE1CbA4DFuvWLc2dG5JtldYnOcNyE1
Z9wkLgDO52VEIxI335LfWaTMo1ZjNeeXVNhTzpjTKWV5kEs2lnqHennzHFNgyqKMiUJfSpSBUcvP
3oOlD26pr2wPITRuOkR+dWV8K3cHqLiB9uHswq16rcN+a0qmYXgJw08VVKc2hk7uZIgUBvlXmsor
tv1pjz9YaccBtdaYyZjY4Mwr6JrT4m/agexODiaEO/ak2uSZhDqIxFlkxKGbJ2BM4Lg0OT1DKHSF
Vbq7KhtZ86HsmLqtdUQuXwEQ1C7FP48t49bpby24CtN5zFer4EszQHtm7cwLvteYHHJfjT33g32N
VodRwkbV/6Lw0cLfsv9FR9KGZN9AiWnRpE02YAsDpJkD2IvEwDQCE21cbGbR45Wpwj9f+P4iW/kj
H131ikNVOdemyk0tVTEP8cyaSsGFjseqN2tSun/R3SDeeBnj8hMOhdlQYipIJlzYadc9D/mWosZh
rlX3Pvp/nthhSnLdD4XPJnlttzdyedGa18SEE4C05GoiKTOdojNS456sHcVljRRF3npzAPtzV9c7
yo9L/4n9IDljq1ar9xh/eBE7CzasNh0Bcv2OiPge1sKaRQ/iizyQN3ArJJGozH3VRzXKCx3UmZy8
x5CYmL2/v436iRotqOxOOQN9SuTKbuhfTMTQjRloTem8Pp9yx6BKAFDuTtoHwgGjm9Elwq5Sxl+e
2ykse0aLtnci0sJIonqBt2NAL2lqKJ9Mp4ak3xYLiiDMzpp9v6IphBAf0QdZPg1R+7T0bWRIg377
1BQzUisjabUizd5Sqf5syxig3X/d6rNk1PoFAnKKuE7nvN+xQWixAoqwTVBNFkTyI2ijKPtftqvJ
pyhOlakSPAnf+O1TLNACe5FbK77578Uf4CgZuTiWrhUtls3RnQQpdV326oQJm2mZeLI98lu96hq7
L94D3gLYyya2LHLAXtpKPXRMcjlwo2QU8tWSpR3i8eLDTDCntzaVYW/Hflc/nlICCZIvaqg+Ml4X
Y6IZaZFxbsb7E0jN3J4bSEbgiNlwMuJd3Xi7J+jPQY4R/DjiG8jsO9zy08N71jTg+BctWv6UPd0w
L3eOTZKjZle7Ir5EM3et73/GV49lRoeJy0BkDbgGViNuPzYVxGMYnxLIEt1RM6rOHY+b+wsp1GCY
j1EJqVlarWKJG3aoKUP5cdcRKwWLpg6CYHnb0ZgeXk+8LkFRBLkyG9GgC0KHMTXKzm012/XIklcr
vFvuKBvsFke5j0hEM7t2DV/5bwNwBfB9ytl9EflQnSnqlp3tDuACCFu0tn77tmSjY2/1n2aQc3yi
42KfHR2liq9oTjXY49isVGsFajsyrqxpfgYZ3JaF+BBUOFmi9NqhKmt1e4IrtCrhUun4ApX+KvoT
lq4WQttbuJXIe2mqNbd5B3CWatmKMwThzHraAjFu3BBq3ewKXFRTFfNqnumlmUJH3t++Z5IfEheI
hR5NwnU8CiLBKhAwqr5btxNIz/qqpS+gkZBoZVhuXOkkE5wuZJA4n0Hmtg6DVPAicsvvNVzxbpR5
lBfo3RshWdoljySiSy409w/A5+biH4p2Aj3jAHQZn6Z8fPkph9PJJsDHboRbotSJdiNvr9qcEKO6
KgYGOPf554OPbCDYQhxnNztQqx/2eyM9pOzRHfmLfiFDFBXfbqB2PWyNSCrxHTqAUJxqZbZ+1/4U
usfBoK4mL6nCrsAztKv67ZPj9NgmQZ5LbdVJbxYfLJiyxPJetXSOROei3te7sA74KFNf9lv2oELV
rOma9xjaU631VDdY9bctpyFkFdYuTcO6h+YpmfseHpS6HgZCwY7dw25W9Vv2ADmnd5RdQSAEkelT
puYgzv0H9DJQP0ZP5CMzPS0dcX6qiCCdnnDsCSyqkxvR330ZJzdvE3t0/Qx1lNWcJxLIgXVkG58r
5XRgEdTSlMn8g3RZw957AiuxZyAmYal9kh/xHoCVA9HWKekUeWi+X3ybTXrFGQ29JQgHMhPmMM69
cnYUPzGiM6LF2TPzeFKpm/uHhCUxeSg2VcydSE4JRrIGEyKWbvvXe4FRSKE4nTEeFqKBcQklY4Sq
fzTFYidG8VD823mt0xlN49khvbvbr5GjY+OSrRoaIqN4ZItnpO46vlKnV6jHah9bIsnGWPWUJLMi
E0Jri4C37JhBNiInj7AEn19LSLPiijTEB9KnjM+QVpBekyzk1r8S8c3D1J4PCBu4CiTz1DIZRbcK
AQ1feBQdmG/lNCHsm9nBLTNOQczcv85idzo1i/AgqpeK4vxO+e8q6V3zvZlOlAF29fILT/qWap2z
hpMl4F2VrgaWJNTuFJVwNfzajwO7tmDgfua5va/DjYSWrCMRLp4RRHwQO/9N4nF5rX12e5lYSw5X
g92poRkStFR//aicjyyJTKfT8YQ68a9zg2z42jQe8S0UMJGcoA3PTL+c1bigBOUFjLP55iARh8Ua
+8s+kSK0RI9OTnYmuhDm33jmVtNdW7s1ZecqbXXROZv+ZuhvhwfMkjAKBc//BfHpop+2+KXg9+4d
ZmatSNgWD9TBd/ZaXeHGqIeuIl3nBXg1fYyCqTifuiLoIC1CzW1IoRNEolyXSBK2IarnBybBZH1w
NYfpTVrHLRMewnxFCfC7GOt0ZY+GlmLUSomE72mPI44p5YlKqLQ6t/wRMOjwvKorMtRistQ5Wc1y
PThrndNXE2xFmhOg4l7i4tfX0KdGQbI2JyyP/3GzaYvsJP1d8Jq9WvmD+LYaawWHwl9oUrU4E5sd
061K4Ei6kyBjs7C6z0IjCikLut1SyVKoLLkkZsBUOaDDtYWhozfPROg5k2O03l6G//Tf9Je6arDQ
AC2jD+BS/TJSHxEumUrJm59qe1PLupgVoT9ChoOM4Qf40YIW9GaK2LLNs0pto/MctqGPwh6eLCJc
uuGDn9fgS/HAZ5ogFPCUGb7qiaf1KJL4nGnxK3uARmZuzMazVdRpLUyrW+eeO76FQAeIGbxDw741
tnymqjSNQEkog05n5Z300vRy5kJfmeBRHEp8ZLSEsJTbdGxc8iC6cdlFmLm0CbqNL9PJhCHYc9YD
J0uV/j5TW1fQfi1SAiZYu+0BWxdABrYYiG0WRX1jDO/tafbRuGB9ew0qaMdqp0OgNiArlLU4915U
Bhx3pWQ8D/ETZyABvwdVtJONsY7HSSm0A156kyRGvQcUjid1f9RRd9RjX6ozsLdqshOrwAFvhV4a
y/5LJqkg/hMAIBfaFSiKRXOydGkmd0JKLp0WpduI5/PaTdsL708AlNzUo8wA5SqQIwflsNg+rlFS
+Pa6FshwyspkjC38mqoHidV0N2+U6iTeknvZRLt+FXr+itRDfrMIqPYATK6LUnPuFqKiOKmOmc99
mU3mfOfoetkKKLTpQlogYoHqyq/mpzounA54VbQpm92yEpSQOvkvZE6LPx1NsBndMvAw8TH74/Ie
0JOuov0AusTtHFfe2iqkgOM9uvgKSZj5xUI9O1AdgiTocd14n/1Wbgqvs+hC1mCIw9892uC066KA
J6QcqUlKZPVHIOKtTZ3PtYF+sTAVLNze3Q99lRnEpA63/gR93WmMMgW+SjkyJMV1dGxsRklFktH+
UJB6LfsAaLymbxw6dHXDjD0Zk0JjN0kc2T8Z0IxTDRSgkJo5GNDIfeMdo1dPzVKeeiXXAOEg7Gue
FMYbOVOcoxEBqOe5OW3UDwRDmaRGv4mR43mp4ssb/USxr8rqe771NovmYAOwp2DTXjHQpXZ8SunO
ojIiyZSNoXRSU9sO0gnYdtX6+0WvxArSEEymHDuU2nZVG/hcXtVp1x8aIsA2oEdXEEP5VVLJlH61
A+FIkfDdZol6BFZJg0txcFFTvKOKoj60LHOfuB0C4FKmrPVQBHlP1bNQjyO/yOSUQ94xwo4Xhp1L
fBdOjY21dt1Z0cBDvdY2PbehQIo2WHJLrw9UCayPXM+ZoO2RB4tcDrcBqjBwuseft5b4hYFsevQh
DpdljSHj6KeA8ysQ5t49swsRPdd+eXfp1ZiqXrZHoPGVIpUlllOqtafcfJj47vPK5z0ZrT+3NqGL
7VnnXlJbYiSwYdSjzyt/igJzysLsZeLXIA1C8FpgLrxbIFyaF2VPzqsFx7DmqdLNohBSnIkj8E4G
g1uqdhOvr74AqzCTo2A0EHyPJAnC8WlPWh5tJEBN+On63+FBSSGNXQQzFtZMHoVCThkXaKmE/hTj
3DEO34Fb838LdIALTx6ZGL+gVhHRSSkpted212EJCnSdn8Ff+PCzX3rVCGpxcrdsLo3QhlQ5cquW
vywigOjCkD15easVOPSu+WNYQjHkCE5Sr9PAmSuH9OfOLMxwuXcnTwGbDrR57Z2V0Kcuj98AHsq+
BULELL5Z3VDwXl6Gf/1UHc0v1SwpHv4pqpIOpQjcCLJ+KmLIR8cSy+g2gAW0pPEdaVKEyk6fFNd7
1KiU06hahsStDqkN64b56cO2jFzGeXAHK8MGTonv65UNdHWzBobs6tWAVB1lARB1/lneijNl2XrG
I2Dotb5WHeQnwfLwF+8GJCC/TEDUbmjtJATw9C2z7KHmIxRxwVPHoqqbF96M81pDnq0QcbbgrJFg
EjI/2vQwLLxOiOfm56iNRX5L7mZOea/YP/ak8pk3A+D6fubZcowhOo3ioSrLQKTm1PN9PUKGATK3
pkCPzHh1/ORBOYItGh1GqE3YZ3XAF1m+Wi08zhLjNaFY9sb+K9VSMqas5wJNsYKqobePn9DA7o4Q
c3h6wgXzJ5ndzoPYYLIEWdMYpypTwvdN0zI63naLMNDd5K3P8gVYBiFcp0i0B2IQkI3dhKs97whA
QMI6QTizouh0oxyoPWG3SoAiyWq25q4Tz4ocuYow+MUtr/h+OHCq1Cn9idyD3mY/tWNrV+BxAMfX
5j9RF/wEDb+a8DpoRyOvXYWekUYkcdCn0JrW9GTwaprarD7fpNHoJHWd42oLaWi5pzJppX08gkrS
bu5+kWwOyIJResxK4NWH6FI+YATZ9Uwn/h8s4dQS6exCQAgtPud1CrcOjpXJturbworGNTny3B5w
QU7lxMiCPAOtBXp4KydB9GvjtUsSXbC15uv/ptK515Ndh0tTSPnj5pBIwKt+jsduafKyMR5RQLN8
TEHAGJUDoEQckZ0iPHLO1EnGppq6Z2JwXnS7PTDCDeqJmefYudfzevYDcjGP7PZuWEmu8VZ3EUAo
TSB+XcyUiI3cS7Rt3Y/1nbfI3akxwB5ZNex20iVjlMOImsLTeBVsGqGjKJxD//vrXzX9lH46bazj
QVFV5iPqYxPIR9cxSyXfY6x5gO3TpJ48MRR7YfxqoSHQS/1hQTcW+sbTsjoEtWpPIIsdRjJ1jBzW
UmdJsD0uHw4cXMk5ie/W5h9SqbLGLcztWsoZAILWemQGI9FoHfeNHZJp/UcBVGCIEIzRG++Y9M2V
OyGw1YGgbtO86L9ib0fs3veeP9NW/+tl8ICCQrGq1oVXo3w4Cdiv2kXvwnRrwbGmS7H9hZ8NqPi0
LrkpZXn4SN5rc4D8inY/vFrJRmy/8JAVwBFyhj3/4PRWVzq84NjovDLVDMkwlAp/pkxBtZh/NYNi
chfOd1cvhu9AZGxFOZly0zfcx+UQxvdmPBcgqRCkp2Uhl/sSDthd1taEsOsLoNjcbOESPigIj1KA
yE5GoZ0GHPRgSs3tsAyzvPiszWc4AHuUWEz3zJZHoxcqrI27GXarXINn3cVwr1qcT2CF6RSZ+m1D
tCxPqKb3GboJtJBOT++bSnm3fM9rsMgbRrunVIfbpRyLZl8xJ91MPjwzlnGgmacAK/UPqQU8SY0j
jhCnNNzcK7ZBAxW0ZGmZrUB/VngBcRjYJYvmlZxqe2b84um4d2wgWwzD0rs3WA1dmkkB1DiKkn28
YY653Ha9NFsnq/966XCQgn/xi6zESNkhX3Q72KXDSFI9XLFY/YisM3yLQAYjXeMjX9y9DBmO4cL8
VtHZCqd/9vjdPMSwvRtVMNjCsRVvsUpQxQMUT/W+r9pZoRB6N9BS+B4L0S4fFaUhh0KUzCCgdRNP
Tge4Q/x03x853qhMVMwgwkVwxbu6xpMap943Edlhl7YaBtRohs9LMUP4xHN/PM8qX5siyk8r1yWu
sKq/b/n3Sex9jRl6YLhd2V3zXLDfPWBN6exfdkjV7Hj2l39EN/yAUlASD7j03NjYVzl+pfnzUD8R
PpxW6HebQMb9adIMW/TmIQ7G+2IqKa8yHVP3CH3R6T3/j591XMCG1gSb9piBh5QZ3m6BFQg/U4fn
BMfr4JJRbO0fHZfoU8mXDFN7j25y4JGP+XOm3HgRbSBQa9oBRRiBvy8qED7i49znHBiK62O26Q/Z
2+LJvjiJpNpfD176oDM1Vrvu5osxSfdpEwDpNpXofRVL05LStzCPLPhEPqJuSMou4/zYDA23ltP3
vuf1PQEna0Z4XQFR/ZEW/RhEVYDITSOvNVS8LqVNllrMJXYWKsA0p62g8A6JrRCiBmlTtGrD3HR/
o7hN8pb+smhasbsWkmTsLCuMB/ZxNjYR3fuA05P8/jgDEbV5PpAjnTJij/4L+DLyJqD8GR9Ytbr5
jzSqGUPrm3pTX0v1Y8POL4UuJkPPqzvAmC1HD2JnY0p8S0yUg15R56wb0r99eLQkI1HnaPEaaCbA
sMlc4ggPpI76fMs2B1N+xyNmcODZnaAwddkz2vXZ/58BzqSzNbDwUxEHVGmFKEZd5K//1vbsh07E
2E1gBjPfWM8u445L7JPUCIkQ1sPUOsQmQ9hdBwgvufIq6PgguyNDhRzN0SZUAvM7ibgc/6Az75ZE
COQidUoYhm5N0D+VwqoRZz7JDEeIkDG5m93LdwtA9MLYmji9SgPql7yPwIo4E5/F/tUXOHKqmtYV
PXlktSLJ+Q+4Ahula9uufEhOY8eQKBRehRcRoiP4VlX4XcrPmcqt+xQjqtwBaSh8EWa1ZeoKFCGj
Wq9L4KyVKudYcPBoTl6LXf3bH0rywX2By+dBrDowU/7zMRTAIq+afL7xWbP2CqQWo3Goy8sZPNTv
KETAcsPPOmwRvOYYylr8fCu2Uv7yIG8PXw6ly72nEpRU6zqrGdTs05wlTfUpZJk4AB2/0sFt/lUv
X2V2HyY0LMpMNQF2evmcMfej6fuvKvP1T/tdiZmD3OwUJkYpHBCgwlX6SqbLWKQOxSq+t4TBYU94
qImWHxTXlaYPnedmva+HhhtcCfxvcrUelCZPD8b0bXcZv9LUyyZMMrnWWiL6JELSjB5j5oLF9lP4
T/GcDATqfRWh5haR6ehFfSvmZ5xrpmM+2bkz7brQiKN6t6Z1KxL60hVhp0h86lPmXcA/oNZ8XPAv
g/nSOwzEwAnI317hoIY0wunUQrHMofx21uv6H4r9Jxa7saAefVHiSBPKVCbCVccYCXSuBr0unZsy
80ntMNLCSqEBN3RM5HxcOChBLpoaimm7rnlbJzNGzQ/kFAnz0w7erkJ5iPBD1WyMbq+jJGXYPK/r
CiwS9I62Pwcn5wRQccqSEedA3zMiIvzQilxHeVn1ItitXCcuSzDLPUnXBcr7UrcvAD9D0NPH1F6/
va+SqOjiA0TDOsfi0r5ClrE3Il3aqJJVCixNmsLGjNm6Vf/88XvTZB62KeNA4qrsMR7W86Zw/pi8
mTt/zLFxabDS16oIITDaN2yrW9IH0thUAnTIwUyggarPXNYlLbykVkfj5kW20iVoyWf2q8znMKXu
2IFlTf4kNyl2H59+C55hhTS1tjbIdAwhymbknXb56EuYr9umChHtaYMr8L9NEwXdIy8jkl2FX3ab
OPr/UTjdch6KHjn3SvODmwItXi7jMNTCeA9+KUSW+MaW8R69tln9dGRmFIJ5q1s8aIXHsVDkqV8W
bfN1tV6p1QH424u5g7PS1KXZhEamMbuX3Kl0FTHPFwTgaMiwoGjh08XNJiCZCdf82iuZ09FFs2on
DQkcjitrPn2fiF+Yuy7sTUIRdQFfq5RThYq+2awIkoLbdpAzcE31YapuJyI0nlUf2LbprG+Ncaxi
DOnQ3NNWY8C92AmFtvMowKXaAJpdbKA6zJrYCnFAPd4dWWcVb5EEHn3uZydNs/02FRVNiYQ0h0am
XvQN0C2KSZCfQns6cCpybbnpQ4sJiJNDTJSkyQDhKxEDcV99oE3EnRQD5ZpQAgdRj8PWbSiwpn2+
2EDQkM8vXa9l8+mtAH72qjS4fvm+PzXQt4mlLXVqzgSb6lB0qmXgQdv1CqHt6v82cdGE+gSAZJbL
mJdTDtvLnKJR6ime2ubp7Gy5Lo61pVKziRpcYvt5wnKb18GfJ+4Nb9CWg4hTF98EbqpPr9Oj1osJ
iKKBZkCKwYV8hQaMYhAjXW0s2aVnsBMU4YPeWzlaa4G60c2KdGqifF5aPsYRD7w0UK2m+mDNQk4H
bxk+bGe3cJvFGLurpmzfe/xZpRsPWG7JOsIqkuGE7nQszP1VhtXlan4BNVeoJV9Vvh2aG/8vemb+
8wVcFnWPkM08vYqVzX2KD1nocRh2U0bP3A43J5JIktXu+pZCuXU9cumzdkTSVCMyNALJhGCjArTg
92WQJMgXWQbjh6gMXdgg4Ne/jt+xIXH32MNHDVo4jecD8meP5rmK15gPORDz/mKzjCOOojJYSfJA
OwR6uVh/4kL/MsSxjCjr39Ru1sjyXbOMVvyHkIQnm3HNlmvJILoEOu/hs+AyjYde9YzYD4YoWRhE
oZF57+yYU3qOpYBUwNua3P0h6q1S+zTZB7ulaC5LshNRLjoGeGxAMPKX805BWpUJWVukMYjdTzdi
nNUfHr392tyLAaqgixqI4wcDWo73c9O+e7T1rSeZe7l8gkcabPoAoBdrAvlklBSSoFglAtG4nF0p
2AG2vV+PZOIE8M2ErB99rp82Q87HjsJks2np7+UtRBjVfBA0rmmNocgqLbbLv+qWl8bwtc1JE4kl
uNccDDCvkcY56sDaq9YBKyPwGuI3bZY2cCzfqd4Cn8JjskRepM5BKEVa9BlTQWKq3vU54p1Y5o8B
96MpBDCZj9ANaeIwmViQZPeN7xCbWPBrl7L2bAo4HBHqP8qiDgo/DMR6tYgYSUdfXYxxu+e8oJME
GOTGxv1eet4o49TivP86h680J8zSnT0R+nuwQwmDPACsNnsltzZVYq6GUEyPUasHIIN28dPFWiKC
isG/3JGYSP5gxno24PHHhqCJIvCP41m5iiRWYzUYH8pRCC0mTQfxH3T/G1cjiGAX+s4AQ8QMxu0u
ebfcGMZQJxtFIT47v0gHcAc+9jQO/AzU1puMb7FPyxUxvKKF0bhTaBdnU/fOm3NLj5/5mcglPpVo
2pSNLNlAWsbj8B2rYnmW0KualOOndVHwKdlo+dmhpxSlGKKzTl/17YyFrh17vbeFFLKsJJWpNOiJ
9JCab0/AQOuS0r+yOE+6kbsZiov9dUzez2+wq+i4r4xhYieaK+AFfZQdpC9JbCbjyOTq3BQ5VDUY
TwJGfLjZDPEFQpsdAB/Rv7QkZb34nWhteZ+zrkHPfwE+W9ZUhbhHXU5VAFAIJE7LNH6K5ieEN6r3
UAfIPDvdaD3LDbu1twF4VM4k5hANYwsx4jH+gUFKvyt7wZeKmNdjuh2BbGD63CflDZhSIaLwV6SR
aDUtlFCsvjn+SO6obRT9GkIe4RV4AKK4tTFjpABEBlsjQtQPjZyQLke/1HR0lLmVEJE4b/4ZPoH4
SI79LIb3rPhJHn+3VLrxmaZXJxd5ogs2H4eD/ltxtrLNZdGcFThNSZOccoN4P8oa6CpxOY9Z+rbz
b0naejUZLqfOswuS9EBGcUbRboEOQyON3LWiUBb8W69/QQkYEJZRvKu7Xi+izc+A06JPmgJLww6K
l/7ZVhFEFo1wa0KdzcPvYTidCq6F/EIUEWTLbxYEnoMzYvbFe2/LJvRCTMvZW/vWVcpZKW8yrFZk
eBAWigTF46HWdKxCnRFr/CiM+vDcKqpT08YBOClouNRPAsQdp3rBETuHytOmf8//CfPbHXKlWT1r
fZzCkPwy9pFcXk/Q84YHdLCCWMjjTQ==
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
