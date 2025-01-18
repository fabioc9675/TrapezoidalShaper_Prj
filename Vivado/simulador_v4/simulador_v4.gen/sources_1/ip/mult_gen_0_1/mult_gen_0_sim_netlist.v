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
/SJzegnqKEU4Wx4SQKkAL976F/tgsGg=
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
