// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct  6 09:49:20 2024
// Host        : Fouri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/ricar/OneDrive/Escritorio/Universidad/Semestre 9
//               Mecatronica y
//               Fisica/Trabajo_de_Grado_I/Codigos/Vivado/simulador_v4/simulador_v4.gen/sources_1/ip/y_mul_2/y_mul_stub.v}
// Design      : y_mul
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_21,Vivado 2024.1" *)
module y_mul(A, B, P)
/* synthesis syn_black_box black_box_pad_pin="A[63:0],B[24:0],P[88:0]" */;
  input [63:0]A;
  input [24:0]B;
  output [88:0]P;
endmodule
