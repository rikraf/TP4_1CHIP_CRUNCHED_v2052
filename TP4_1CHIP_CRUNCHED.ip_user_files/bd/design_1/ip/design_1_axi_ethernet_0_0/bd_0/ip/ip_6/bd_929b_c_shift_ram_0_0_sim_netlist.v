// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Fri Feb 27 16:17:37 2026
// Host        : richardraffanti running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_929b_c_shift_ram_0_0 -prefix
//               bd_929b_c_shift_ram_0_0_ bd_929b_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_929b_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu37p-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_shift_ram_0_0,c_shift_ram_v12_0_20,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_20,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module bd_929b_c_shift_ram_0_0
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_mode = "slave d_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_100, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_mode = "slave ce_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_mode = "slave sclr_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

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
  (* c_xdevicefamily = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bd_929b_c_shift_ram_0_0_c_shift_ram_v12_0_20 U0
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CLe4hIBuPoGhpVl7WcpdPrkOqRB4Jx17xO25OhKMzcudPtO7fyzQcLT1Hwfd0j30ICv/93MrjmYk
VkhpZR9EpEAjIIkPAj6Uz1DaF5W+ZmnNsekRAyk+3Lm7DCkEdldRunmAMklLXDYSE0BHPyNZb6/O
1fVccxPwFw6jSpxzyJ8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ACw/whBd4sJPjEXsPWy+A9hsrulOjhl03yGnO0wIJb/8lOFB6tmCM94OcdNwiMaV6kg8YzX1Zq7/
NE2RxoRW0a7WAr7xvZPy265UGSafgRDCpO1KBNNkYutsmHT7D2OLTvT4FaHp5hZFRk+z43Ve8ygQ
YJTKyx5ivjb/80JLBvE8hnVCpYkZN6VnhMHuf1XLNa0oxWLQ2z+ODAbTE0KVd6D6DWycqrbcGtw9
RfO96KL4+hS2NraPUOWRVGCJvHh+C9oFURQ8sSL1vIHuy9U+A+C/triRYJ4Yl8X5mPDgDSLb9GaP
flIuoeMAprVt1E/Bi7vgnF6kuuRtRrRwCbGG1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WhGTCsy16/t+nTOk+CGv7tpQem4v8f0JcfhtmHJKBQmUKRgMWECn1vAxv7cTlF5fBXBuNPE5ekvE
eE5xvFBz6Hn8xUu09f8xFM1K5WhbovRkMP3+0G0ookHnjX6DsYKCCqav35emaqOkBS5JhVj2EBPk
XLtGUbRCypldy9j1hdo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HTqbg+eKkopQi5dj/L+szqmPwRpBkCcaMjACO+UpXthtee/no4xSMcGn8abIY3SPv4TzrnuqqXPm
0AF2N3wLbDTLOGfRyerYPQtOSICnY0YK1FpPbRpt8J37qRX06v29OCgAKQCRzqcyktN979XHA61i
y9kXKs0ecYFb/aEJn+r/Ms4/zkik5QDSibn9rXgrCIaAq3oV/qy4/eOC1I7HxFJ7pQLvD6TaOwrX
4JOp3lWwPc+YVayAWfwfSM8th7MZKBhpSD1StLeBRJc4CJ5oDLwaMgHEFCXxx3pyxq8QdKSuHOu3
Wi8mjTwcR+O/8mCaI/EQL04GZntygGZa6NRnQQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o91QaUL83RhelLkEm4+751/SyYIekusmli7rQ/VnKAUITjkJaEGeiMiekUqrom206GlehlLCRUuJ
Qk6ai4cQrpKj2AErAd0Y5kUpeM5RS+aWpFjtOYrSHMdr4rMfgbsw35qJ6v9hjgJLVLLd2hyabIYi
/IO+Syqy221cIW0MUUpzoOJ9CjxdiirdkOfTk4p5NvXD0hVLjTWo5izC8MmrhTohoXTCLeDPBtni
h9yjKz34xbfDJ73edDWDKZuzkcksNcD8JDufI8TXjti6zIBBimw59rFhS2J51ljYPnYfZPiVePJ5
N7uOtLgm5YB9EYVkYBImzlegfvfeWKMlMPTN2Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lJKy9Zjha63A0h02ApuEz30etxi10kyaT0MM37kT8C079RoQxr/jzSdPRVB6DZEoEoxq3B3ZtFpY
YjPONLB3n6tCjDMSDQ3C1I1mBthQK6OvvTRuHUxb1l9/aLvQKKbftHNrYBApn8VpMjP6CLucAxZp
+odccI1IV35j33TcUjek8yCrtxEmdzWv0t5wOEQA4WTFVG1fU6/a+jfGVGHnhJhasL7Jl0YilFPM
HWd3rJlyr2xUSar0v6pd0AVRt6yFuPoCpA/gavX0kZRv+AugezxEfo89yWvJY2XTRZkZi3hMrZuv
vLK4usOzcbsPeMWzlO01N6DMHirnppE7yicsAA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZguQpkzQaubvif4ozJshLhSpVr4NjQRAvIToSXk4wKAhLoTGGfhff6h7uytylGeHmy/9jn719Sv
HAjAigAvx8FgkAdQ9HshMaw6B/CLhf7qqwtfgiEb8k4WEUmEBTliot58LPV7jCEMD1VBzZWYR4K/
F/3P7X3moGjkrFh9KcmMY5GwF7k9LuqZmEI6DK0O8ZCX0hTQnQ2olSPRWHDbVMSNk21ob6q2E7m5
xpDVITSJEGo0sugVShTUXPzIS2aLKbIkU7M7Hafar7cSxwCvM01LmXbK2kk/TJ1BnxjpTLKgqxru
qHGOZsfM5HZn/M3rQKeaLTsgoxJg0TzUyDcG2Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
hKe8IASictRpxK+UNDyBjdExv+cunUPc6ZpI+7czTzAehV4HfB+YDHOd05j6V2WSrIfjaa5Yc1RS
G3r38XeIaYh1ZL1ZSXdIVLclvWkAD0ZTUVklwYY6ca20tDHHAciXUrro3jg9kGe8H2Gojjw+VQZC
vGGdV4/DF3pjMdpz4nyJJWNfnYLPmx19+G3AsjJsk77LkeQJ3ac7KA942yZdeDmv4Gv409a95Tsb
ybgnN5fxmPfJ1KacG4k/Zu07i7vPA7/85FRrgptHJL0ytlZgmOydqGwz345i+KR6+tR6P3ZfO0s6
zos96acnjsr2RnP6pIJ30EKJj+IMY98YqW+6wBHZ1tOwA0LCIHrVhIyGe0B5IXV4RAxNY/K/8cZ4
j/W2apPE52Pk/hvYFtfyEVf1mS/lGq/t2LznNsZMt82q93Jb8hxwC6Zd8lrmm2hfqYfOAmlZmf6O
EfYHOP1GurKAmfr07eaBzMSZGJa/fC0AncpmpYD7OL9jcP2lP5UBi+qa

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HO+y/HjEaXV9is2kIeddm5ja325WYl9z3UGUIfNECIbhm1CsOvhNxo06AGFh3AtmMj1fkyl7FpO4
5p6qJPGuMnf7KaoL2lbPdT1FmXinUUneD7TyneDl5s/cvecL9iNEtBuembSpR8uFQlqW3j5MnIU0
UISBysTQ8EGO9RDHkRKXJVBUPunFpCoxViEHDwuLeOfZnsSUNCm1TQkVN6lCJVpqMXGrell2v+/D
+BJWT6gUeDiXDTY/zYKkdaf1QckERhcVJjNORVmQDjxTeDa6GJ1AmksSzrK2M3vTp9axAcWS5ak3
FP7Oo1kxa1CXdzBltgltp8wxugADWHbPbfb6Kw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2080)
`pragma protect data_block
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
EViw76PBNCUxZ0xCslYyKB3jFYZRf7MNivJmWg==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CLe4hIBuPoGhpVl7WcpdPrkOqRB4Jx17xO25OhKMzcudPtO7fyzQcLT1Hwfd0j30ICv/93MrjmYk
VkhpZR9EpEAjIIkPAj6Uz1DaF5W+ZmnNsekRAyk+3Lm7DCkEdldRunmAMklLXDYSE0BHPyNZb6/O
1fVccxPwFw6jSpxzyJ8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ACw/whBd4sJPjEXsPWy+A9hsrulOjhl03yGnO0wIJb/8lOFB6tmCM94OcdNwiMaV6kg8YzX1Zq7/
NE2RxoRW0a7WAr7xvZPy265UGSafgRDCpO1KBNNkYutsmHT7D2OLTvT4FaHp5hZFRk+z43Ve8ygQ
YJTKyx5ivjb/80JLBvE8hnVCpYkZN6VnhMHuf1XLNa0oxWLQ2z+ODAbTE0KVd6D6DWycqrbcGtw9
RfO96KL4+hS2NraPUOWRVGCJvHh+C9oFURQ8sSL1vIHuy9U+A+C/triRYJ4Yl8X5mPDgDSLb9GaP
flIuoeMAprVt1E/Bi7vgnF6kuuRtRrRwCbGG1A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WhGTCsy16/t+nTOk+CGv7tpQem4v8f0JcfhtmHJKBQmUKRgMWECn1vAxv7cTlF5fBXBuNPE5ekvE
eE5xvFBz6Hn8xUu09f8xFM1K5WhbovRkMP3+0G0ookHnjX6DsYKCCqav35emaqOkBS5JhVj2EBPk
XLtGUbRCypldy9j1hdo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HTqbg+eKkopQi5dj/L+szqmPwRpBkCcaMjACO+UpXthtee/no4xSMcGn8abIY3SPv4TzrnuqqXPm
0AF2N3wLbDTLOGfRyerYPQtOSICnY0YK1FpPbRpt8J37qRX06v29OCgAKQCRzqcyktN979XHA61i
y9kXKs0ecYFb/aEJn+r/Ms4/zkik5QDSibn9rXgrCIaAq3oV/qy4/eOC1I7HxFJ7pQLvD6TaOwrX
4JOp3lWwPc+YVayAWfwfSM8th7MZKBhpSD1StLeBRJc4CJ5oDLwaMgHEFCXxx3pyxq8QdKSuHOu3
Wi8mjTwcR+O/8mCaI/EQL04GZntygGZa6NRnQQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o91QaUL83RhelLkEm4+751/SyYIekusmli7rQ/VnKAUITjkJaEGeiMiekUqrom206GlehlLCRUuJ
Qk6ai4cQrpKj2AErAd0Y5kUpeM5RS+aWpFjtOYrSHMdr4rMfgbsw35qJ6v9hjgJLVLLd2hyabIYi
/IO+Syqy221cIW0MUUpzoOJ9CjxdiirdkOfTk4p5NvXD0hVLjTWo5izC8MmrhTohoXTCLeDPBtni
h9yjKz34xbfDJ73edDWDKZuzkcksNcD8JDufI8TXjti6zIBBimw59rFhS2J51ljYPnYfZPiVePJ5
N7uOtLgm5YB9EYVkYBImzlegfvfeWKMlMPTN2Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lJKy9Zjha63A0h02ApuEz30etxi10kyaT0MM37kT8C079RoQxr/jzSdPRVB6DZEoEoxq3B3ZtFpY
YjPONLB3n6tCjDMSDQ3C1I1mBthQK6OvvTRuHUxb1l9/aLvQKKbftHNrYBApn8VpMjP6CLucAxZp
+odccI1IV35j33TcUjek8yCrtxEmdzWv0t5wOEQA4WTFVG1fU6/a+jfGVGHnhJhasL7Jl0YilFPM
HWd3rJlyr2xUSar0v6pd0AVRt6yFuPoCpA/gavX0kZRv+AugezxEfo89yWvJY2XTRZkZi3hMrZuv
vLK4usOzcbsPeMWzlO01N6DMHirnppE7yicsAA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZguQpkzQaubvif4ozJshLhSpVr4NjQRAvIToSXk4wKAhLoTGGfhff6h7uytylGeHmy/9jn719Sv
HAjAigAvx8FgkAdQ9HshMaw6B/CLhf7qqwtfgiEb8k4WEUmEBTliot58LPV7jCEMD1VBzZWYR4K/
F/3P7X3moGjkrFh9KcmMY5GwF7k9LuqZmEI6DK0O8ZCX0hTQnQ2olSPRWHDbVMSNk21ob6q2E7m5
xpDVITSJEGo0sugVShTUXPzIS2aLKbIkU7M7Hafar7cSxwCvM01LmXbK2kk/TJ1BnxjpTLKgqxru
qHGOZsfM5HZn/M3rQKeaLTsgoxJg0TzUyDcG2Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
hKe8IASictRpxK+UNDyBjdExv+cunUPc6ZpI+7czTzAehV4HfB+YDHOd05j6V2WSrIfjaa5Yc1RS
G3r38XeIaYh1ZL1ZSXdIVLclvWkAD0ZTUVklwYY6ca20tDHHAciXUrro3jg9kGe8H2Gojjw+VQZC
vGGdV4/DF3pjMdpz4nyJJWNfnYLPmx19+G3AsjJsk77LkeQJ3ac7KA942yZdeDmv4Gv409a95Tsb
ybgnN5fxmPfJ1KacG4k/Zu07i7vPA7/85FRrgptHJL0ytlZgmOydqGwz345i+KR6+tR6P3ZfO0s6
zos96acnjsr2RnP6pIJ30EKJj+IMY98YqW+6wBHZ1tOwA0LCIHrVhIyGe0B5IXV4RAxNY/K/8cZ4
j/W2apPE52Pk/hvYFtfyEVf1mS/lGq/t2LznNsZMt82q93Jb8hxwC6Zd8lrmm2hfqYfOAmlZmf6O
EfYHOP1GurKAmfr07eaBzMSZGJa/fC0AncpmpYD7OL9jcP2lP5UBi+qa

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HO+y/HjEaXV9is2kIeddm5ja325WYl9z3UGUIfNECIbhm1CsOvhNxo06AGFh3AtmMj1fkyl7FpO4
5p6qJPGuMnf7KaoL2lbPdT1FmXinUUneD7TyneDl5s/cvecL9iNEtBuembSpR8uFQlqW3j5MnIU0
UISBysTQ8EGO9RDHkRKXJVBUPunFpCoxViEHDwuLeOfZnsSUNCm1TQkVN6lCJVpqMXGrell2v+/D
+BJWT6gUeDiXDTY/zYKkdaf1QckERhcVJjNORVmQDjxTeDa6GJ1AmksSzrK2M3vTp9axAcWS5ak3
FP7Oo1kxa1CXdzBltgltp8wxugADWHbPbfb6Kw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HmcVLR26e7h0jDAlJ/misJU/FDpaaTMFat659RExWRZdvyUJTgBOYRSuwOftxFmNlHKAiQmujqqM
NqvFTNwR1Cv6Lt/guXuIQZbOEtD8pNT0dY/ufXOHfpJ6uVKSODkYZ73jlp4b/QJuf5jOpI1u+i/r
YqwoNV15+qpDO5/cP8F15rlrqQYmON5GX0sYkxIqKlCKJegKY4nSdWdDxp6x30ELn+Dc+fVkrmUq
a+BZnd3FTlQC3kDAMA+bX/DX5ZWYdec4rQvuEQIgyWqWhOwZt5IgUNln8SOr2/UD4dSeDuMINHHx
kpB4Mu67ZFgV6pB3Lj+01I/14nGXXOjWjnxP3g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
suH6sYt6sI5lDjJI97godwQQ0FYXXQSoUsu0PhdcudSg0deiGsDTB6hMTHLJ+dXPaStbe2iOc4fR
5Xk5Btx62CN3a0Hl+SZA9jaDP1SdhSgsOyKb917jQ9goVf1wg13alqkhYUxz++vWwuY3ATGJ05Oc
/vVfRWtE1jCX+yoa/yZYExECYiXTiRxWi/XmGUn+q7Qf44OmbKiFb0xSC03XbVfOhuwQYGbG4BfD
0ZkTtW+RnxiQg+LOhXBTtyPHRr6taUlZqDD+YWbHI3MQjHtqhw6PmwccTknwHvuBVZfhnL3L/OMU
lAlZaxD5ZEt2FjxjZFrk3GZVfTyVKvTaqWcsmA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4048)
`pragma protect data_block
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
aA==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kHy+Y47DINMZBhGNJbO0iBu5fVXE7Bat9jgQLXk3ApvDPiebCpuM+E5t4isjIrxk2pED5TFqGGjD
mw0Zl0QfJTPovzyVpseGM40QVknZr+EDIrYMj7MVpgkj2ATuN1iy+Nvz6YtW2/re2ZVUKd6KZ9d8
ZtkYbqnhbmtJvfKBuWs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oLBB7WjlXxTNC/15uVtlqQWkjFXnw2HhPVZvddpi3xRaQMsDccDqLfppjYQKjAIcwmx7UL8nX9jY
IuK3hz1RJf4dbfla93PDLCBX0aBk1An/KOdlF5Y2TESp6lKREaIJfFXCI97OHpK8TjQwYuZoQV99
GsFHmrMDivoRCnKLjoigNPr7kEh5GqRxEv0UVBK8WHXxTGiQ1CyZlbP20JQAlu+UoIyMH8ApnVoz
DVwsg03AShhecQZUG5iRxEWHDVHs5fb3KKizCDD3/EfafrHbHtMnAqPgH2nN1s+BFXtP7TF5/hFD
qU1Ymhv29UtMA60XTB8yHMh1NgXgIXuHufwL5w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GEDYfV71I6d6lkWSPwWnwRMFU08ya6DZkuVnXtOutPMhJChntd1/vc9kECfYi2KBvIBB0KY9mK0F
VVb7ncucTInd+CA0EOHy4byn8cmzcH5ZZ51CtQ7HTAaQB3qezzk7OVsf32GI4pmISA9nMv9Ei1/N
Op2zFMirBwUmtO4zOXE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
J2XHxL/aNfHVxeXSGgWDhegnTdxNShyVq/iRBtxw3hm6pL7DKSyIHRbUPprtmrPtX2nXp7yTakn4
BCxiPJBw+X46vD4bsAXhGnCruqz3KEdSiN4+FDm7mJv/I4sWq5OTTfqlwQUek+Anzt6HVF6ckXBb
y5MccqJ5DVzQqWOzY2wwG5+TlfQNx2e2JM2deG7oLmYp3DELNQ3RryYN7nuBCCnWwHc4KWsc1906
UzkhU7SsF8ytKjcYN6AMxPy4bVVCvUiWR5YFpfw5l2kiBh49qYby9jxAoxBMwFYMC+ccRsEQ03lu
UnQcBduhh6L/VMKwKw2qCM0TCvJIkVGHPHR/kQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fS9WCZa9K50yTZTU6ExyBapRGcZ0+zmberI1FYlt/fgkAL7pNM2/Go4tFAaupyQPgNn22v1mgjJV
CPKy62gJu1efpHSSdAwUcDPojjg0YkFXp3DDReKmcBNxpzbRGtVTTm3IZMDr4EHOUe3Pb6CAGNJR
cxo5je2OB9ZUaCESQRtOrpc2zfvgYffOqApZFokARfrSLkRUC2IzACR2WgKQWmzUqVvOm9XmZTDj
H5i/etuHde70aAvE6YUXgdGXnFJ9FR6gXZNdzlVhVyMBiNZwuSATaqZsVrgubBVUpP1gxrNpwGkV
GDFWHKcVdIUHe7BMy9IM1ng0XMymvhkVELF9sQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ml7FaGUhDI/BqFBOFzOS6wgTc7xx7F6mWr1x5/CWragDKjkxHDbnJVKM/Ydf+IB8pSXvXZklVaaQ
q3kxNA17gYDRWk0FmI9tWH1fiRNGiBXnKQeYpM4HfEbT8NB1//lJha92YwoKmWh6Y3RWx8JhIsCi
+4X1I54kJ4D1xB6KFvJ4D7xycdimb/o66RhypZ+WMbYahY0/xydPHW3mk0zh6mZ83yM8L9Xjdkjw
bWtG1WslwgKBzlBrfiHcncf9zMmfvnveJVr+Wv/kBYvy5NGpgqdBdiawQtfUbHJwzBdFK3wxNG2E
xmHQ5xv7aQ2Nyw8nNkxkT3m4vU2C7TZ6qRyjjw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ELO0ctDLZ0o98clSrqFoG1nFfVGMDJ3FREqOInAEP7ODoIivkTOcRLPCHmSCxeiAf7B+QgXjJuuM
faX6xG5bccwKm9a1pAchSX/uUHgdUeHJH44Zn9Jg/JAyEnq1vpmj2oL0Lq62HcqcBfAhAtbBs8zy
QAVQOl3nJXmk0xYVtXsUEVed9dGAdJum3ysmH7s+YgmKrTgSDPOba4CHeu3h5QcqsTya2jV96rE4
+o1LyVig1eweAr5FlV8aexfmhQgkqeR7uPVfMuYq//zp59F6b9AaRLxJ1fO2iM6NiIj7BXr4wPRO
64PoDvI9VzJkyQbbwBqs8gF6eFpQyW9mHrw4pA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
cPihq6JpepZTejaIN4Cird0q6KMxN96pxR9FpKYeg77sMgppvqi2iMYVMGL4QqW4xYjHhFWOX4rv
IcfbuSEQOaeIEA208PxDDa1RrQyIuFjq56SwtmTZK9c3jNBQYqnHSki2OQ1DXTLL3VUtIyi7kVHO
AlekEP8VaWmKQ0s5ywnst0V+b2iNwQMnin0oFY+z51vVg+olzOxEUJlxFWO7QTtdIZS7PuTvSv2O
p4WLhDmEheW7uPlh4H3VzvQJPqPTEqDArPU9t3nSIpdxBq/ZNx5QDqSPD0gbFIQCdmsKjJwKXAd7
jvlB25+m2TdkZMAIbYyoBJzKF4Wm11Ahde2iMp1E6f5A+bzSZN89umBbvS525wGBpzFKJRyHYK/R
IbuMOP0NVM4mM2csrfERqG2lyTkxs0p5RaUmguXT1XzhSIk0On8TtbcxkmQOgaaNImM0+WEqo0vs
YAwh+bb7iNwtJdtYXjYn50wyodKtl2I3s4B8pQY0EsYsaISHiC5y6P4R

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m3x5WuABRT/NmnZ2viwwkr3V40yMnUOKtg3OI3r9/YQ2HTRCvD1ljzo0Wv9JF3DUSG1QgzT98R3c
tg0essbW899h1QMI/ytrpWA3AFGmKKUjHm6wP8MFp9hPjb8niaVAagToGm8M+GJ/IriyvIIH/HQf
59wnTZsXfG+YoX8UoH0ypVGELCGHEbVHj5QA8scWWDSxt80Wql6+brc90u6QtjoX0seTGtx3VM6K
7J5amowIujwCVkTO5jEhVWcBAtO44GJdkBzoAcVokIXoJp367RP3sN0NIyXCNe1g7gUI5oMeTNX8
s5diylN/nTYboy5B4LStwAHIWtMExnjNY/hFnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TfOoUYxi/XxlfrXW2akpmf1EH4g8XYaU6GynvHek7xPy8RiV4aGIQ773tGHMP65O3RYycKUlYXg1
Fa6/SN0yKIYNEKhYBJmbFHbMU4SpIxnaZWTZa9mBF62WaybG3U6dlRlh2Gfkuidp/zLYfAynknof
Ngj0UTBnzoWW3JLbT3XT0eYY5/pnJJq/m08boxB3bC+F44Q8XvOR1Hi1tpKOF3jm54pQ28KXvjK+
SZWdX84vYwetgrpQBbxEUIfmy4nISyWwSwtMIRIcWgJMUY0R11HDkKc68vUcIxiO9s343ArSdXjQ
tyyEkkeeLuytSyMNC7TG95B18++RFYqo7YIM7g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gelvD9OuDLeuKDiEVGVyMb6/8XPutjmyrxdteHV3WsIUSh54NoD2y/q2HQkLEGlRnp4Gqw4DoKN7
pjf9IdBLYZHDR8ZEE+wORlm8apGgDlupWV+qNlgrco4rnUXT0AXX8dJpPxkRZUpZRE0IzoHgWAyc
+Cp/MBX+UQJZSf8+QSZ7xA4ZoON0HofM1Cy6Yjt8nrZD0Bn/J2YutQiu4B+liv/48wr+DWB8puBN
8YPrIGY67jvbXPyWMclsTHeXpRIFVffd/xBKmLCyb5M6xvLsoyXxCcWBu2ZfCuzRF5mJdN5jabiv
j42PmKBoWi6SNs3QQp0KWw01Ost4beeWb1T0NA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 704)
`pragma protect data_block
NPJ/wzwSSac8Dx6/ZA4cdhuABD1TDuwwN6xJMmYivBwOd7OEPPm0nqlX1YkkaulHv3moJid6QnBS
+ZDW2kT36wAZPirhMCUT0smAkIuzFHrwIznSnwiT3LIiAaapiPCzfe1mnJJZCuXUX7ccOwt+pJDF
jcU8/FHvEHILS/dmjTPd2FCXjcIwEMwrtfD5VtUH5IzfOgHqSqQUHp042uzf8u3seaM0M9sja6Gm
0/nbLb8yhumo7oG5vFRyeFLy4BFJ5cnuzm0D0NEgkhNAGMcdHOMU3gsEDVwiMH8ibzCEFWB/pPmS
L/6rPc08dX8R8flbSJcgaZuyqAsg0tk0qyxJpLy7Qjg4YL/eQU+5u92KIoP2siztR94LlJua0SXJ
Jmucg/Z1VKy+g8ZQa02DmGcqj3oC2zivFZrPZMiMCbMewmI97rHS4rWoqBB/W43TOLmkx3TiLxBF
9knBEmTdufDwgxZfsfi2GPLvbEZmh5iO/s0VNt3D75FMe2evXEqUvIk9ko925Pyef2beOjaWc4jM
MBSICmZiCCbZFsxsxnwvhckh4WYQaXvl8h4JI7tWb/p+xkxW0x8DHTkeQA0+B+4GbgtsJPFKqjuz
dDnNAhRxYEVdlacxM6+4qJvt4L/elYBRLpRiCCTqgmvKeVrXjKhG4LmaXicP0UvpR0vD+UZbWCcz
90/r7fzQ+wBTEtu871AWkCxDKqEmrbkl3IXHBKFnBnszr+Ql9GE9fQGL77lw/J+OrEzfqjPBp/so
ueWuQuNX0IAO0GxjYHxzLDX0nRPtsE2EimYY1HN9oR3GBD1k0Upk9oqCdAQ5Pxx5KiQ5+WoYEwue
0BhjU3WK6YPFIeihVXWW0xHKfQ1okLIoPFHZgUtw0n3boiGc/P8szLRLXAZFISN/70ytm6GR32gN
ANZ6qOOwTPa9ANJJRXTwZWn7uwI=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
