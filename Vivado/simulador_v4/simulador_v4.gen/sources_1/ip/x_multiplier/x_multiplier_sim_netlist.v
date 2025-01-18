// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct  6 08:16:40 2024
// Host        : Fouri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/ricar/OneDrive/Escritorio/Universidad/Semestre 9 Mecatronica
//               y
//               Fisica/Trabajo_de_Grado_I/Codigos/Vivado/simulador_v4/simulador_v4.gen/sources_1/ip/x_multiplier/x_multiplier_sim_netlist.v}
// Design      : x_multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "x_multiplier,mult_gen_v12_0_21,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_21,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module x_multiplier
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
  x_multiplier_mult_gen_v12_0_21 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5728)
`pragma protect data_block
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
N4VVkF7F+A57y+OLAdWE+zCM+lW4E5a/2cXhfg==
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8368)
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
