// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Fri Feb 27 16:17:40 2026
// Host        : richardraffanti running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_929b_c_counter_binary_0_0 -prefix
//               bd_929b_c_counter_binary_0_0_ bd_929b_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_929b_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu37p-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_counter_binary_0_0,c_counter_binary_v12_0_22,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_22,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module bd_929b_c_counter_binary_0_0
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_100, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_mode = "slave sclr_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_mode = "master thresh0_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

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
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
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
  (* is_du_within_envelope = "true" *) 
  bd_929b_c_counter_binary_0_0_c_counter_binary_v12_0_22 U0
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
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RBTstJ7XWxZjQjwGcU/JJ2RAGa5J326RJh7NxA5qgBfK8BeXJA8bc+WOsvdknG8/riv7QAgHCnpv
7p09aXC2G7icYav/fCTOhzyvJZ1HWj3IGddakdkXukJqFtmZGxR24k14s0BkSIPogeAfNyaHKePA
r2D3JzayR7arvFzOmjk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y7nsQqW9jRG/Ue1k55uCDPMbrsfZ0FDCdbInxNxFZ2qJhs0eVmjuSFiOrx2L8Ppd1Db4WerjLrUL
/iwyDc1UXIidgvRE/MKTHWyywfLOtUV7mBiFvKnSmjLLV1JI+wvvHfZpT1pG4dVKUQ4JjjooL8+F
CtCw2W5CaNK7GJ49445TfQInznm91k9rGaSiMBkfiqF9GF7491ShVSMjntMj9WpVpaD7px52cIFj
sE/ncmfiBaB1LClBL7mcG84IZvgyIuYO6x8rHP3ynVAhTZ6V1tQLQaoBvhLd+AMSR4lfmJfE4Wdp
DNJ9mvI4vGVFl6t0vVkac37JxdYKkcgnygEJTQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Vd8aib4ocNr7cl0xSwF63dKh44QCVdZr3BSRdYiod7MHgBmVMG71W6L0XJAsunnj8RlqylbNzuzj
MnpBkN+GopNfpF5qqgMfv0RCnuqnpb0Odat04JqFpXqHs7MChKYMiCgwfIO3d1tXgJeYa84KjG1V
nNjxsnrBYlaAkUVii78=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ANlFU/8fd6EknBXiroECf69h9cF5DTbM3V1TQV1mxRmxWYsbe6eoUF55OsWlmj93ySuMZIDEcLOq
s2KHP7T40A9qfJf77P3L9AR62AKFt/6JujXquNDMl6Cw+lgNmvhsBpbirEZKiy1Wi8rT30Hf70pD
Y9SVh6Q9QVKaquH0ETustnEPFSJaWFMn4D39aBjMBuzxNaw5lwIOSJYxOdqrtO8ehAapdUn+gGqd
6pSgPXxyi4lk/YYp53LMJ10LiHON9fzzWGz5TQ3N56E97Fdt7OB1EZuuoFhd31YidRNfkHiFy5nf
4w4lIxGVIqjotV6EgFmhPIi6uEjbl7+qYUKzEg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ipVsCss9z/m2osfru3/H0vmygcHYzfd+o8Hf1Vkzz5dVaO0libemiiZALSdKT4ZlW9JmexafIicl
tQIBcuQGIHD6EORT/Hs5f8qV/JzKcmVLfmbp1a4DVOIw9LiHeBYn4FC2kcqugvDUNUW8OoTNkZgu
zIcasKPrreubU9tLrEhh8JnV2i3DZmzs5dh24yg16MjNncMHbIzzCLRoej1uVksKuKxVeiBbcbMy
zvnpJ0BBQiwmjhC3ch9ILVRQTUrYXM5ph034H15Gr7xaP2iviEdkouYSLjml/MLVu5dn4W6CHVT4
xU8aushvCJ7tFbhTk8Z3+eISN41ItvUteAMW8g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
djPXjFANy4PV94UZvyALTuKASFkkNI1pN6NVy51W/G82pM+x0GE8eHMmIrvM+QEzW2TFMYB9Dg41
huQCivdNy19rhr7IQkJ8EdT26yJpp1/JQLMOxuV0ExLvzBc5+KgkcGGnQHi8OzkrJxSJ8s+aduIE
cqPETnCWwCwpg9jrMXHQfdG1lechwExg7q/FBeCc2aa3y95y2vb9NQgV/S1XyeZi0vb5x3YqTJCy
amDeqrtKyCjYbo3/uu8WudcY3tF7mVk+Q4Eyy7At1JSFNQ46szdIOgZnfdZIufGJdYSzRVjFIEnQ
Gni0uUxQpiaXucXBzTBQ+OwZpl4F5JKHKj8VZg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WH7GziurDhUnenCg89cHfpFX8Jcxd+rWEPO/1/FCZItpiQ8gdJL3VcY/hPTS6f0nJGwGh//ljWC7
e7JYozerXnZ3/SeL2g4dDdO1PbsNpFp3vIW3Rt60muxtkcGMrQA/W45g/heHztPuq1KBOlfwqwlj
mohwFcuFV3TsYcRpFIVN8WXH6alITwAX/alkf00l0AEdabMBUPPONAXgmGglvePrQE2cti2F/iDZ
uZghRKFiJILy1zf3NAaLFoSd677m9NlDe9t3nJnPFn7upedW4dLIe6dywS2NQuX9mi8ew68urtQL
w6hOX8cGzZGP9BBsxhrUNnPSyFNy6aGKh5pv8Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FVDqjRs9iZJWCTbX/pW565JM41qoQ9wn6l4s51L4T/zQsIvUAEHqYYYGnmJf81hCdQ5953xq0HUh
gatOmd3EyfPKFvHnwyCdW+QGbtigkSc2O3f44PTpzp09VRfEVhLIa/3FcMyPwD+3ZzUvMG+Mrlgc
zUuTtOYF0U7vmi29KLJfxO9Qg/7jqbxYadj3CDFpavYFVUuSERgj84+IyX4TMa9HK4V74vfrTcse
N3Cx2hGPpvvb6W/twbYkFK0aeikVT1JRA35izGFjcLMdKy+eQBVSR49wimCcDbe82riHRhodFTM9
lk7RvCbCktXU+8hjpjZWPIzByBLeqLVtdkRgl3iQb+kmmCiJGjc/ipHfQV1dcbvwoJQzj12ohrn4
9sInz+dNnCAMUK2VZuDkjhJl3iyocscyfkIKicZDeJKxBHAHoqZsi3DXVYXtbv7JthD6XHUFGSaI
0S1NxYGwGEdXpbJlkLxcDtk1gJx3k8xXtoDCBjXt5tjSRtgWV/qkyPmp

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W/9CoopYBhSc0VJur0ZkfBasc7PqUWj5h8OyxAFdhG5S8p1/zIOPtqnzupthgCFiVZZ0mJ6mPo08
yhAbUShntZWeFNPStaIbB/9xlXn6xWhK2UUxhS3DxpZAG0Ur1jiL1ctxoPYKx46vTRYBHZSzF71Z
IN++zvuC6j27ccU3SyvPIAqC95gfw49eeGimTtEDh5m/BnVTyQ3ydd2vfZFiIp+JTfWKczg9fPdZ
bUsWHRk74SAICMg3xqzHioz2b3MIXFd5ApTUXLdBos3DXu5wCiXrmvtJbXqdZx3Xgv0KgkMmCRjp
FXi6pKifZjNO0Zu1c4IPP/dxTRxZ3i4zDrPTQg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VmFr7ml3aTDhuAUltvySdW+AOvXGZwGrAOwSAPiLsY2Wh+hbNXyuPlrq5yQ+4h3D3gnwkOGNEzpI
05pupfvWO5lLJdKGPQykorw/xi0avCiH51IpHLJtCnSOc1qE6161TBs+UHMUL7IOrG+uxrMJ6lG3
AxXRxUBg/1PqlpVi3idXIkWY4j12WJJjVbChhv7SCjE+SSaoW/d1WQlf4s79WBmb0WL1Pw13Hqzd
eh136M++u8fBcz8//+cChjMfpBQ/TeiE1TWXM+tPgHJyl2JNV/c3yk7D+VTIbAzNLltbCULCVLYr
WFMn8JvedBVGocxoIukg9s+anFuOys0zFzxXhg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gpRm1tF66XoNeGB3TB7tL9wN0Vpiv9KAdNjce+TzohDQBpJvwplFymIlVItkzxz3LZwolSChxnL/
YDix+hT2tSVPv1Mz0BeURiCcCfix6dCwyezkEtLLdCFXKohjTJNWqnT8rSPBUUygK4udh/Wscf7D
qs8/A6KWA98PtglmTX4UhmYi2+4fc1GYEX4CDzDFK2MzMNmOLF9L6RSPa1NcxExLyAQgMPb9hQ5J
NsBFRxyTMN6Ekbo55kenWG6b6LF2A0Iw7jMPouIeXN83ySf6fyxlL9r6VatqkC69BKAjdyj50Fvr
APvoU3mPhM5kosLIfNng2VJu118Zp1bOe4RkMg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2384)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iAcC0jwWy9Z5+wl+B8MhHqxxL5TfadxgWGZ+9slm8BFFTgz/icCG22xcVWRmDuK3N9Rb/B5NiGwN
e/xgYClcjFKLFKF6obpmTy3RQlN7DScdrXr2QPScDw/WCtjYdj9MXrrsTWVQwdcVB9Y8aCZ9hPfz
DJKtmoIuwh46MnjDL78=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U/zku1ffpc6imSyt/Wbh/wmt3ZQgYvnE2OQTi42Jd8LcGOrhT9PAdtwSQdTSCH1dxjktZRV+QtvX
8A4bc4cWoFA/p1DWMlh6rWbKmGKWlYaZWym65dURxZuhDRjCpUhGkTx09hzOAo4rS/y5qBVT0XM+
chpLC4mb8yrj9h9eIo0+QwmXPTyVq9UwMd8Uw7pzoUr1HZEoR73gGH3BCtAKbRQcU0RH03UzLnf7
qNxZVR3943pSRYhj4ZU3ACas36w9K8itP5nYl7hsMlDumjQrrXyzDC9maknE3klhemcvOpkd59zw
cw/o4zuOPBecIZRMu2V7hDGgqHe4jLQHnlbpig==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SWFvi0bYUA0VvwnOjVGnOuCVpr45WDSNZC6FHRlU2Pb6y7bUQB4QXLRpCrMe9fVqN/aig/5T/xu2
qyygh05r+nkKin8SM+PyK9x7oVaFGtQe2XZ1Yt1pHtev9TRVuDTX344eBL1SzvU6VlmiM8y3i/yc
mO7Wkl5Zkq7T+cTNuCk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E1brfDHDtCUmBjWNysgUzttlnzXf+4/bkYl5Jm5ar5ZmwHNiefxalW+NIno0w0UgPyY1g8FwagIf
OTUvGsmmvU5SQUnE3xfIjHV4X6MRb4wDHxQQrWW/PzC1ilb+efMt8vNanP7YSsnW44o3L4LbnoWR
toWSG2PdT8djxmp2lAIwLAZM7HPSNbv1AjNlZQiS/ogXl9pXdCKzCc6lrk8daEjoFGCInCVSSamq
/NvzxtTj2Lxi99fW/ZYnu6qbM7mn9RzAo1s/4ePEOMn77xYEdG2q93oL6WjdmK3ArXFoo0uq09VE
ZCpBgpDg+/NYnz+k/MeL8pl0avq3E1SX/7OFbQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QUq9iWMx9C09gSO7bXme3TQAT+KpWBDIgwuc5mquAxoXBxbjrXkAOyUlFPDvAR8zUigyn48IFmVM
R1ZXi89FZ/93iIMKDEzJsMwNO20nnmtgBhV7wdmZYED778+HpTDaOd48EEZFa13zrADED27mGYPQ
K7yigaVTlUFFr4LOdtvf4os7kjEmAl5h6/eTZYs9d6+ec/BJcAsfvRMqmY/fiPN1UszYmMy14wg/
/QG4nKULNjCxDHD18hFkLHixX0kiaC/KXUJZHxCJG+wNP1g7zwbL73MklY+QgJuzeT1jUBOr7Lz8
Q3+dk4nPKP6Z6uRU3TSVCW4kzGF/wAlkyhcJgw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KR91xvxUjHsIQTi6U9bSVmI7HXoSYi4F+/eG3Fx9n+MbrXO3Z0W5QX2Jsh503RAANZJ3jzcoQz8v
kZ6cc7DolfEItw3LQPZ7IllnHRl/mM9pdjaXUMmHXpm9SRepU+5DDmaVSlGI6ctxxuU5Z1QorU7S
JQf5p8ub+IfjMCa/cS4+xo76OOvbW0ddoLtGS43DYJq5tCXsiZFNF540pTZeqwuLkTjn13yPIxxn
zR9EpMicO506i84arUwjcV1ox750MgDJCa01vAFg33ZXr88tziMxFid5Fe6qO6xbAir+13+6CUO1
7IRSgtROityJcgEFBV/fVaax+NCLv6TZxtwyJw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E3dWRjbWg0PDvbIA3yDMBfgzFLFLB4qRDkWJ7V0l/03Ki/NR4OKM2fTjDrLuZFI12IXFFTF+I+Zv
Zw4B8GGzhipssnWs5DSTGjkWe12/kifre/tY812o1q1FXFv9RrBmBYZrBqcPz1kbbhmfYE7Y1Taq
e8yz1FRCjMagQBkCD1zMWjdWBH+3x+RUrjp7OQOuSbwgl1v7UiTl9vdSrzm/aSIbwTT2tmgEABi5
Sdn47hIlyOQ1A9x6RdTw98rq2pQSKIgxj45/IRkT+sn6zkRRQH9UlZESNYNsi6j5mGxWFPwV/b6V
3e6wLofc4TTgJvHClOH1UDi0WlkTLmu8E7cGPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
ptQEntk2x7+Sf12mvNf1M4bwjBbWFpn2H2nhu45YXH4flC5Odk/MFv8wE0eXI73i/5lE2adRAawy
9Qx94hmQl4+g+9lEgLxvBJk34bePr/0WoUQY9p8Xd/vuOwjJXfzcy2LWwtadlxVGrGFSxkRuL9GW
EAzu92F+K4kagkji1XFzF/3VvOtewrkHF9xStIVAcIm8WClqFGPLQJhjrPvYZdCKP89sNwZLJWSU
yVG3Ajs58ZDGHX9wUsWpEtbQ49GfOuFJnzuBj3jE5fgTi8NGWmrmfhnWu/9wd7sbTLNIC1Ucdfln
Y/AFxtyWCOTrMD5SSRB7EhdyyjbTJMQ1EJWBKgv8TqELPQm2W97zh85j7IYkMZu27T62r/qyucC6
tKcQo8CcNVak9JL9ExK9WwccDSrCCVDnHP/F4qTbIWZgTQEHsUEjU77n0rgUEAbj/yzQjYkSGBZ2
BAi/4CaLcePuTIpZaSs7aWaGyxSa5YpUQdtnrd3t4vZaG1PagLLtpgaz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hYEN7fufkwYhPajcK3XG6QEkCkax//hsK8UridEWhrru5vrLFKuh9saq486oIXVtuNSBATbtQWM0
//V1rspp1F1YO8fClxg2LQ4dOh1lC2dgWcAiagLUrL5gsKw0OKIyRn+jArLBMH5/LgeDMCN/X+zQ
kN+B3g6bDkotuK75mvLjgn5SkfuHUAfXPWkydI2lQtJW/waiIe5O6jNsm+mx0Rv7590wXcWy96fs
1bYIQFY/osRx0LYzTB7I+YNu6UzDCPEZyEY/bUvUoNAB0BE3ZVwAZW4wjCuTffptQ01KOSVJbIZ1
HNvUm2nr5OtDbCukrf9WO53B+POoCLRu+1rFwA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nZRDmSuplPRp+nSH093UkX36t0J50lUM89z5TQhEEeyDrgGSNUCTzgIkUg5nORT3IBT6dlmV4cth
DlemVZEoQqRZvClVJ2V68X8gY7QrordhXb8iEFuy0Z8qrSDn44Osc3QhXFfxMeic6g4Pcs+4mC7a
rk8djdWqEuagMnFE4atFEuNn2kRUcr7D32RqXvgGRpdYE1Z0QROp57Byikd8ubR2fBLSj5DTE3Qh
cz1tVqKY549SXyIICxJ1aofHpkHa0wnbdmQplykNKvCtbAefEhQcDIufbMjn2rk2aMopzH5lP4wq
hx53Ry5/WinyZ6nSamAYTAXby87gUUB5mV8w/w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N3P1AaatxnvHBvBt79NHHEwck4dlI5+VqsiRplzpymTzSe3l4Q4xxXzWQJHzu8zEEzAVdXBh6rPs
CMT4OBE6wxotpmQ5g5xzKhE89KG1egIZhpqDuwILmEGJakXONjKMwoOqRNEnD4HIapHmUD16DW+8
LcRX/B0ItP1MBZw5Q4DLI8SQoXo7hCZB8moOl2SoUK8u0kbtrL2/nUaeHPZG8lKHjDK2jWE7y91v
95iaAwaOvg7JTpOt5Kqy5isEWWe+nfi8HI+H3nOtIJk7nxacWYeZpVT+f7IEPTEq2NlkmdQtuRKi
/6+lYWvg4nxrOY0b+AsBI43zlbp5PW/ZWAzKSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11504)
`pragma protect data_block
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
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
