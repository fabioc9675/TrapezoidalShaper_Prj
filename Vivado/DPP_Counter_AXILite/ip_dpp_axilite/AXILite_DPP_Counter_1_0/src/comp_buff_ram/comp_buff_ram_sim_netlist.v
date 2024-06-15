// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jun 14 19:39:15 2024
// Host        : fabiancastano running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GitHub/TrapezoidalShaper_Prj/Vivado/DPP_Counter_AXILite/ip_dpp_axilite/AXILite_DPP_Counter_1_0/src/comp_buff_ram/comp_buff_ram_sim_netlist.v
// Design      : comp_buff_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "comp_buff_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module comp_buff_ram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "comp_buff_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  comp_buff_ram_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19792)
`pragma protect data_block
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
vqq5SqPSs4/UCG8ijQ==
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
