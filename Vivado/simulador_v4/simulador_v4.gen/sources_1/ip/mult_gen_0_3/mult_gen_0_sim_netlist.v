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
NfLPN/jaT8g6DEHxYikqkbv1cwzYSc8=
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
