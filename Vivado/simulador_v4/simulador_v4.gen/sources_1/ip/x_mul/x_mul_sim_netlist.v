// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct  6 08:16:38 2024
// Host        : Fouri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top x_mul -prefix
//               x_mul_ x_multiplier_sim_netlist.v
// Design      : x_multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "x_multiplier,mult_gen_v12_0_21,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_21,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module x_mul
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [24:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [42:0]P;

  wire [17:0]A;
  wire [24:0]B;
  wire [42:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "25" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "42" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  x_mul_mult_gen_v12_0_21 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .PCASC_EXT(NLW_U0_PCASC_EXT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GldLassLiODVgwPWl5GtUvNFVA+ZFVCFDhi7OrBop0rEIGOD7pGMQGd2XL5uXmDjnBa10M9DWskh
bTmllY5ovkWmM+NjjKYtf65BTGkYfwgKQ0A0l0q2oaCRiZEI98rgXRzWg4blHjn3F8mvlotras3b
gty58LDcqChRb34tHz4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YcKo5o/69htYDEreuDNtMbaQmtugz53TAiA3xMek1XTrggXZnceDK+Oacp9AwNeiNftWOxMl66sc
GrZixCPC4jC03qefsJitE5tQCfx9LEom/ln0gke2S5U676zqGFFkGD4igDSppP9+7smsit0JMNFB
3d9nJDwNXaerv07edmo26kGx6IsxHNmGjsmUd8FYgoMDNNDiTN40UA7rfTR1c5FwRoOUAPNW8x7l
lmsL+1mbpRU3rvmnc+tPlMZ9USQRFaWSLPznAatOpRgaHOa1J4DFd6nwIAGf3cDLilhq3YGA2oUb
qXHyz/+dnLIidWUJj1UPrzhk+3OEiFNdeXBKsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
g4qhHdak8eXxEqdympBtDM13xMJwZUSekBKApv5XlolRI2rR14IEYNQEcKRGlZyuFCmDRJDrEYWf
Eokybg18xq2N2hsq8nA4pvk6H9PXJmnhKoFcPeZ1j9mOnXNuEaOZnL6sA21bsPP7tTakNFG0eaXB
2vlDGYPDupMpXlylpEQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YIONylalBSo3oXqXlsOxHxbPAKbTQFLUkNcqhxYuBHSYbie+16iUZHVqekHM1nIPQ8A+NqZHT/Cn
bM+AOf7At893GAAiJmLAoJJQdHh7oO33naeJX4XJ6I+8adw4O4AucHf+iXdDTh+vT4ToH3pNI1H/
fg7BSszZg69zgY/QsPHraQkyFn3n6Pi12TK4KdE5CdqP1IapEJzDzFftP3QIdgztNEm32O7R9UAV
Qu6VW5iu2mw976oaaPRS7xQkeSuh8v3dIBFLuXEUwqgjFtQ1YItY1vsqSSX+qAtcmYqxSAn3rSTu
J315oxld+eYjvTtO32Qn2VPHVzfXPLCqIWAfbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ggUMon3tDyL18D99zI+gQo2KEmq86nD/UnuCl2KfpNz4G8UqOi9eijpYl6B8kVrp4KbnZWqTmMMF
z/O87hlmFpp4opDcOruJ+qiiTBWsOzFIQR4QZlanEjh8iO0cwSFSAz5sXdE77BCjzgHI7D4UD4Mp
5DA2KyFTsWztU8ricXXTuH6tZLNTLcTvHzJkt/DfkjmJrDlkm0eRAXhG0MUvkNsk32qCBY9RY9AF
1rJxG2dj5ZCJ2l/vueboa3iQZt2OeB1EloxrJDFuQtvPAvA65BsTM387sUTttprjm7eb5Tm0FQU5
vVHNxCllfsk9jW0rLIKm7dBRCgOntC9jDiJa0g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q5sQqbKwLxjG5mFk9qs+sD0CQg8/2B7KTHpwf62hzJF+1CFbVJUQ6go3DO5L0L1mUNINJPIKzaAD
66tkeRifjCdb0XYOSTAxArc1zlCtOMwOn0aTyha/Uq8sc44kv2JFuUoIsn/Tl15lAT4q5PGV1fNq
fyS1evlpX2NGjZCT9kx21/uYFVn1ltB09OkXy1tz0sskN2eMyg54gf1l6cTR+xsVdY2hIoYfIVN9
H8DudSxoFGmVq3nTkLEuIBwpOzIdlqxG/+zUbvpOhAOprRojoI7OuuNVnv8kqbudzrZrZDK0HX1J
I5lc8/JLEOTV1hKGDSaSt1UBFUvr7e8cCqERRg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dpec57YobDtonbQ0UO1SM8G+H4LNYxSkwZ+IOdocIPgFV2eNfdKVGLe5M3kGiFH8cY+OBkva9enL
/OWjF9TA2LAxTndxgG5J0pfUvCDOVC48MZgZnIR8dOHrP7D6LGWfbebBGB9V1IoBt63/ke8Gi6uZ
oukujbRqqhLpZtf77LbVOpOjZYXM0v1IplnrAPnLmHL9Auh/wBXbYFGVV+VhmRndax/hdT5NuXTd
OGVqvHjKXMT4qzPWpaROPHYFYtTWznHqjj27TLk/z5Hdp0nlp4+Ebp4zIwYMnSpg5MVSetpPiSCZ
031Hd1PlF/YfYwbU1r9lJTGrVWMqi/+gd8KaCQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HlE05c2aGsR6rjiuATQqbaTq27Z8ZtyCoeTKodnH2OaArT49PLi5ZL6waWhdrvL68et08IAUs9t+
8aQnVdhvb/0fNHwtevhkpK8kJCPhJmdNdN0DS60RUdlb5/sgSQWjlxx4Yz5wWXrD3w3dhNQaJbzb
PdLh3ZWUZ+ldIzf3OmxXqghMZwvXkPIkeVkEZK5rBVF4df5DItd6+GOemFxXJmppL3ChWMcSlJD6
hgFBtCxft+usPb88sDNxtsPNBhH8Yeq+nZ3gc7A2wXdVKQugUXMV+/6MH4QJagSTzkjs2wVuXfk8
YQcZf8t0t2eS3XkCFdUszXwMtQ8YgrBWqnZp6aSas1JlXWWMk1d316/ym9sdD+dt36sxmIOjr/mr
lNnHAn9fdTEGDWsaXok7ujwI96+Jo6VVX3h+8Qo/6f9dvmB+j9wX01yLiteRc/klH0QWWPFrckTr
rxvZC+0DnkSyRPCISuHF9Op/7iDXfrGDXOIKpGzdPMaHMsKqIpG+QnAb

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fff66ZCQIGGWn4BfihDr7MvimxiiOWXc0eZBNa52g6soH+VWc7Xx3RJ4fuq721E6hCeRxrTK72LX
i9jipHmkI+YxSSUZyntNbeuF7P38Z8QWyEXrCSRJqnLKUeNwU2D2v692GIbbkPNs3o1/p6bS+PZV
fy4p7pkkxRTdZGKmGNuXlDtPr5DhZ0zFptZiF4rQKB5ebp50U6h6HWEJapeIaJRVwy77CM+u0fDT
4A/3o3rPHumuUTiliaQcm/1jofwW8Wyt/fEyoDeskyKFiJxA7nvXRFcO7dw8hnBN2by3mEq8uvFc
fsXjl6FQ6E8njLb3YPebcEhF2fiQl6tfqv3Xsw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TPuKSC49PXr1CyJdt/9jlK1AKgl9KP/2WJFt/Z7vtljlmD6IwyvQTKF40mFUq27M5Fuz/W4X5INe
/y1uccitx3VcJsarTiaoGT9S3DEmWfAhW9Z3EJmLNoB5WF+Gt3VSrbcIFx4bRg1NbAvCsu35cwJ8
qIEuedLHAD9VsRvFu3kQcKMgbKlMKJWQKJUShZN0gC0lrTnoVAzLqEKMNA0qhQg6q9MlU0GGAeTU
4OAGi9IXN69mtGYQcFgRHTN2cuQvbBPQfXj7zjLG/WzUgoqFUvAhtN5JMPKijnF83gwj845lsPtD
BdmC4FzXoM7Od2ck/qbMAIXHv6TTsjznVFUQBg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dz0VP1CnlNHH+A6VEdv/MzTzitzJy9mXlBCOCHhiN+w9HtFx0dUiXe3p32oSt/JL5Z+78HPWFZNr
norYJdshbBxv2VA+Qb4W2FkhsUt+nbeUxZGkOXoHhhGec2Yij8F+xw2PzGlLK+EcjoVFUGoblbgy
lZxtUK/qPijjN/wQqhHPSvrKrho4ht3zcjZjVg8ZVfzx3x04m5pTyiTrTQecuIFEiVC5ZAhCQMxN
lUXGjCmiY2z772Cy8Zi5NhUXuo2561aTzEHBTJmriI9CVs50fIl0kofkrrA0OdX5CS5GkPv09EPz
ZPD7/ZAVOXqA3AlDcqAsaheUQnXkFpEPunVR0w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5664)
`pragma protect data_block
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
7mDUegjF4x06rwHapTVvW+gytA2G
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GldLassLiODVgwPWl5GtUvNFVA+ZFVCFDhi7OrBop0rEIGOD7pGMQGd2XL5uXmDjnBa10M9DWskh
bTmllY5ovkWmM+NjjKYtf65BTGkYfwgKQ0A0l0q2oaCRiZEI98rgXRzWg4blHjn3F8mvlotras3b
gty58LDcqChRb34tHz4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YcKo5o/69htYDEreuDNtMbaQmtugz53TAiA3xMek1XTrggXZnceDK+Oacp9AwNeiNftWOxMl66sc
GrZixCPC4jC03qefsJitE5tQCfx9LEom/ln0gke2S5U676zqGFFkGD4igDSppP9+7smsit0JMNFB
3d9nJDwNXaerv07edmo26kGx6IsxHNmGjsmUd8FYgoMDNNDiTN40UA7rfTR1c5FwRoOUAPNW8x7l
lmsL+1mbpRU3rvmnc+tPlMZ9USQRFaWSLPznAatOpRgaHOa1J4DFd6nwIAGf3cDLilhq3YGA2oUb
qXHyz/+dnLIidWUJj1UPrzhk+3OEiFNdeXBKsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
g4qhHdak8eXxEqdympBtDM13xMJwZUSekBKApv5XlolRI2rR14IEYNQEcKRGlZyuFCmDRJDrEYWf
Eokybg18xq2N2hsq8nA4pvk6H9PXJmnhKoFcPeZ1j9mOnXNuEaOZnL6sA21bsPP7tTakNFG0eaXB
2vlDGYPDupMpXlylpEQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YIONylalBSo3oXqXlsOxHxbPAKbTQFLUkNcqhxYuBHSYbie+16iUZHVqekHM1nIPQ8A+NqZHT/Cn
bM+AOf7At893GAAiJmLAoJJQdHh7oO33naeJX4XJ6I+8adw4O4AucHf+iXdDTh+vT4ToH3pNI1H/
fg7BSszZg69zgY/QsPHraQkyFn3n6Pi12TK4KdE5CdqP1IapEJzDzFftP3QIdgztNEm32O7R9UAV
Qu6VW5iu2mw976oaaPRS7xQkeSuh8v3dIBFLuXEUwqgjFtQ1YItY1vsqSSX+qAtcmYqxSAn3rSTu
J315oxld+eYjvTtO32Qn2VPHVzfXPLCqIWAfbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ggUMon3tDyL18D99zI+gQo2KEmq86nD/UnuCl2KfpNz4G8UqOi9eijpYl6B8kVrp4KbnZWqTmMMF
z/O87hlmFpp4opDcOruJ+qiiTBWsOzFIQR4QZlanEjh8iO0cwSFSAz5sXdE77BCjzgHI7D4UD4Mp
5DA2KyFTsWztU8ricXXTuH6tZLNTLcTvHzJkt/DfkjmJrDlkm0eRAXhG0MUvkNsk32qCBY9RY9AF
1rJxG2dj5ZCJ2l/vueboa3iQZt2OeB1EloxrJDFuQtvPAvA65BsTM387sUTttprjm7eb5Tm0FQU5
vVHNxCllfsk9jW0rLIKm7dBRCgOntC9jDiJa0g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q5sQqbKwLxjG5mFk9qs+sD0CQg8/2B7KTHpwf62hzJF+1CFbVJUQ6go3DO5L0L1mUNINJPIKzaAD
66tkeRifjCdb0XYOSTAxArc1zlCtOMwOn0aTyha/Uq8sc44kv2JFuUoIsn/Tl15lAT4q5PGV1fNq
fyS1evlpX2NGjZCT9kx21/uYFVn1ltB09OkXy1tz0sskN2eMyg54gf1l6cTR+xsVdY2hIoYfIVN9
H8DudSxoFGmVq3nTkLEuIBwpOzIdlqxG/+zUbvpOhAOprRojoI7OuuNVnv8kqbudzrZrZDK0HX1J
I5lc8/JLEOTV1hKGDSaSt1UBFUvr7e8cCqERRg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dpec57YobDtonbQ0UO1SM8G+H4LNYxSkwZ+IOdocIPgFV2eNfdKVGLe5M3kGiFH8cY+OBkva9enL
/OWjF9TA2LAxTndxgG5J0pfUvCDOVC48MZgZnIR8dOHrP7D6LGWfbebBGB9V1IoBt63/ke8Gi6uZ
oukujbRqqhLpZtf77LbVOpOjZYXM0v1IplnrAPnLmHL9Auh/wBXbYFGVV+VhmRndax/hdT5NuXTd
OGVqvHjKXMT4qzPWpaROPHYFYtTWznHqjj27TLk/z5Hdp0nlp4+Ebp4zIwYMnSpg5MVSetpPiSCZ
031Hd1PlF/YfYwbU1r9lJTGrVWMqi/+gd8KaCQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HlE05c2aGsR6rjiuATQqbaTq27Z8ZtyCoeTKodnH2OaArT49PLi5ZL6waWhdrvL68et08IAUs9t+
8aQnVdhvb/0fNHwtevhkpK8kJCPhJmdNdN0DS60RUdlb5/sgSQWjlxx4Yz5wWXrD3w3dhNQaJbzb
PdLh3ZWUZ+ldIzf3OmxXqghMZwvXkPIkeVkEZK5rBVF4df5DItd6+GOemFxXJmppL3ChWMcSlJD6
hgFBtCxft+usPb88sDNxtsPNBhH8Yeq+nZ3gc7A2wXdVKQugUXMV+/6MH4QJagSTzkjs2wVuXfk8
YQcZf8t0t2eS3XkCFdUszXwMtQ8YgrBWqnZp6aSas1JlXWWMk1d316/ym9sdD+dt36sxmIOjr/mr
lNnHAn9fdTEGDWsaXok7ujwI96+Jo6VVX3h+8Qo/6f9dvmB+j9wX01yLiteRc/klH0QWWPFrckTr
rxvZC+0DnkSyRPCISuHF9Op/7iDXfrGDXOIKpGzdPMaHMsKqIpG+QnAb

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fff66ZCQIGGWn4BfihDr7MvimxiiOWXc0eZBNa52g6soH+VWc7Xx3RJ4fuq721E6hCeRxrTK72LX
i9jipHmkI+YxSSUZyntNbeuF7P38Z8QWyEXrCSRJqnLKUeNwU2D2v692GIbbkPNs3o1/p6bS+PZV
fy4p7pkkxRTdZGKmGNuXlDtPr5DhZ0zFptZiF4rQKB5ebp50U6h6HWEJapeIaJRVwy77CM+u0fDT
4A/3o3rPHumuUTiliaQcm/1jofwW8Wyt/fEyoDeskyKFiJxA7nvXRFcO7dw8hnBN2by3mEq8uvFc
fsXjl6FQ6E8njLb3YPebcEhF2fiQl6tfqv3Xsw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TPuKSC49PXr1CyJdt/9jlK1AKgl9KP/2WJFt/Z7vtljlmD6IwyvQTKF40mFUq27M5Fuz/W4X5INe
/y1uccitx3VcJsarTiaoGT9S3DEmWfAhW9Z3EJmLNoB5WF+Gt3VSrbcIFx4bRg1NbAvCsu35cwJ8
qIEuedLHAD9VsRvFu3kQcKMgbKlMKJWQKJUShZN0gC0lrTnoVAzLqEKMNA0qhQg6q9MlU0GGAeTU
4OAGi9IXN69mtGYQcFgRHTN2cuQvbBPQfXj7zjLG/WzUgoqFUvAhtN5JMPKijnF83gwj845lsPtD
BdmC4FzXoM7Od2ck/qbMAIXHv6TTsjznVFUQBg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dz0VP1CnlNHH+A6VEdv/MzTzitzJy9mXlBCOCHhiN+w9HtFx0dUiXe3p32oSt/JL5Z+78HPWFZNr
norYJdshbBxv2VA+Qb4W2FkhsUt+nbeUxZGkOXoHhhGec2Yij8F+xw2PzGlLK+EcjoVFUGoblbgy
lZxtUK/qPijjN/wQqhHPSvrKrho4ht3zcjZjVg8ZVfzx3x04m5pTyiTrTQecuIFEiVC5ZAhCQMxN
lUXGjCmiY2z772Cy8Zi5NhUXuo2561aTzEHBTJmriI9CVs50fIl0kofkrrA0OdX5CS5GkPv09EPz
ZPD7/ZAVOXqA3AlDcqAsaheUQnXkFpEPunVR0w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8272)
`pragma protect data_block
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
E1Z1mGvCiA==
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
