// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct  6 08:16:38 2024
// Host        : Fouri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_gen_0 -prefix
//               mult_gen_0_ x_multiplier_sim_netlist.v
// Design      : x_multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "x_multiplier,mult_gen_v12_0_21,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_21,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module mult_gen_0
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
  mult_gen_0_mult_gen_v12_0_21 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5680)
`pragma protect data_block
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
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8288)
`pragma protect data_block
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
5QijklJIXvgqq+LqnQfA10/BJ3sFDI0=
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
