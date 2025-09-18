// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Sep  1 09:31:07 2025
// Host        : LAPTOP-G48H7BNI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/vivado/test/OFDM_RX/OPENOFDM_RX/Short_Preamble_Detection/Short_Preamble_Detection.srcs/sources_1/ip/complex_multiplier/complex_multiplier_sim_netlist.v
// Design      : complex_multiplier
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "complex_multiplier,cmpy_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "cmpy_v6_0_17,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module complex_multiplier
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CTRL:S_AXIS_B:S_AXIS_A:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [31:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_b_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [31:0]s_axis_b_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [79:0]m_axis_dout_tdata;

  wire aclk;
  wire [79:0]m_axis_dout_tdata;
  wire m_axis_dout_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tvalid;
  wire NLW_U0_m_axis_dout_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_a_tready_UNCONNECTED;
  wire NLW_U0_s_axis_b_tready_UNCONNECTED;
  wire NLW_U0_s_axis_ctrl_tready_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_dout_tuser_UNCONNECTED;

  (* C_A_WIDTH = "16" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_S_AXIS_A_TLAST = "0" *) 
  (* C_HAS_S_AXIS_A_TUSER = "0" *) 
  (* C_HAS_S_AXIS_B_TLAST = "0" *) 
  (* C_HAS_S_AXIS_B_TUSER = "0" *) 
  (* C_HAS_S_AXIS_CTRL_TLAST = "0" *) 
  (* C_HAS_S_AXIS_CTRL_TUSER = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_M_AXIS_DOUT_TDATA_WIDTH = "80" *) 
  (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_WIDTH = "33" *) 
  (* C_S_AXIS_A_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_A_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_B_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_B_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_CTRL_TDATA_WIDTH = "8" *) 
  (* C_S_AXIS_CTRL_TUSER_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICE = "xc7z020" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* HAS_NEGATE = "0" *) 
  (* ROUND = "0" *) 
  (* SINGLE_OUTPUT = "0" *) 
  (* USE_DSP_CASCADES = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_multiplier_cmpy_v6_0_17 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .m_axis_dout_tdata(m_axis_dout_tdata),
        .m_axis_dout_tlast(NLW_U0_m_axis_dout_tlast_UNCONNECTED),
        .m_axis_dout_tready(1'b0),
        .m_axis_dout_tuser(NLW_U0_m_axis_dout_tuser_UNCONNECTED[0]),
        .m_axis_dout_tvalid(m_axis_dout_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_U0_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_ctrl_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_ctrl_tlast(1'b0),
        .s_axis_ctrl_tready(NLW_U0_s_axis_ctrl_tready_UNCONNECTED),
        .s_axis_ctrl_tuser(1'b0),
        .s_axis_ctrl_tvalid(1'b0));
endmodule

(* C_A_WIDTH = "16" *) (* C_B_WIDTH = "16" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "0" *) (* C_HAS_S_AXIS_A_TLAST = "0" *) (* C_HAS_S_AXIS_A_TUSER = "0" *) 
(* C_HAS_S_AXIS_B_TLAST = "0" *) (* C_HAS_S_AXIS_B_TUSER = "0" *) (* C_HAS_S_AXIS_CTRL_TLAST = "0" *) 
(* C_HAS_S_AXIS_CTRL_TUSER = "0" *) (* C_LATENCY = "3" *) (* C_MULT_TYPE = "1" *) 
(* C_M_AXIS_DOUT_TDATA_WIDTH = "80" *) (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) (* C_OPTIMIZE_GOAL = "1" *) 
(* C_OUT_WIDTH = "33" *) (* C_S_AXIS_A_TDATA_WIDTH = "32" *) (* C_S_AXIS_A_TUSER_WIDTH = "1" *) 
(* C_S_AXIS_B_TDATA_WIDTH = "32" *) (* C_S_AXIS_B_TUSER_WIDTH = "1" *) (* C_S_AXIS_CTRL_TDATA_WIDTH = "8" *) 
(* C_S_AXIS_CTRL_TUSER_WIDTH = "1" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICE = "xc7z020" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* HAS_NEGATE = "0" *) (* ORIG_REF_NAME = "cmpy_v6_0_17" *) (* ROUND = "0" *) 
(* SINGLE_OUTPUT = "0" *) (* USE_DSP_CASCADES = "1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module complex_multiplier_cmpy_v6_0_17
   (aclk,
    aclken,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tuser,
    s_axis_a_tlast,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tuser,
    s_axis_b_tlast,
    s_axis_b_tdata,
    s_axis_ctrl_tvalid,
    s_axis_ctrl_tready,
    s_axis_ctrl_tuser,
    s_axis_ctrl_tlast,
    s_axis_ctrl_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tready,
    m_axis_dout_tuser,
    m_axis_dout_tlast,
    m_axis_dout_tdata);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_a_tvalid;
  output s_axis_a_tready;
  input [0:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input [31:0]s_axis_a_tdata;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [0:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input [31:0]s_axis_b_tdata;
  input s_axis_ctrl_tvalid;
  output s_axis_ctrl_tready;
  input [0:0]s_axis_ctrl_tuser;
  input s_axis_ctrl_tlast;
  input [7:0]s_axis_ctrl_tdata;
  output m_axis_dout_tvalid;
  input m_axis_dout_tready;
  output [0:0]m_axis_dout_tuser;
  output m_axis_dout_tlast;
  output [79:0]m_axis_dout_tdata;

  wire \<const0> ;
  wire aclk;
  wire [72:0]\^m_axis_dout_tdata ;
  wire m_axis_dout_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tvalid;
  wire NLW_i_synth_m_axis_dout_tlast_UNCONNECTED;
  wire NLW_i_synth_s_axis_a_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_b_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_ctrl_tready_UNCONNECTED;
  wire [78:32]NLW_i_synth_m_axis_dout_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_dout_tuser_UNCONNECTED;

  assign m_axis_dout_tdata[79] = \^m_axis_dout_tdata [72];
  assign m_axis_dout_tdata[78] = \^m_axis_dout_tdata [72];
  assign m_axis_dout_tdata[77] = \^m_axis_dout_tdata [72];
  assign m_axis_dout_tdata[76] = \^m_axis_dout_tdata [72];
  assign m_axis_dout_tdata[75] = \^m_axis_dout_tdata [72];
  assign m_axis_dout_tdata[74] = \^m_axis_dout_tdata [72];
  assign m_axis_dout_tdata[73] = \^m_axis_dout_tdata [72];
  assign m_axis_dout_tdata[72:40] = \^m_axis_dout_tdata [72:40];
  assign m_axis_dout_tdata[39] = \^m_axis_dout_tdata [32];
  assign m_axis_dout_tdata[38] = \^m_axis_dout_tdata [32];
  assign m_axis_dout_tdata[37] = \^m_axis_dout_tdata [32];
  assign m_axis_dout_tdata[36] = \^m_axis_dout_tdata [32];
  assign m_axis_dout_tdata[35] = \^m_axis_dout_tdata [32];
  assign m_axis_dout_tdata[34] = \^m_axis_dout_tdata [32];
  assign m_axis_dout_tdata[33] = \^m_axis_dout_tdata [32];
  assign m_axis_dout_tdata[32:0] = \^m_axis_dout_tdata [32:0];
  assign m_axis_dout_tlast = \<const0> ;
  assign m_axis_dout_tuser[0] = \<const0> ;
  assign s_axis_a_tready = \<const0> ;
  assign s_axis_b_tready = \<const0> ;
  assign s_axis_ctrl_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_WIDTH = "16" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_S_AXIS_A_TLAST = "0" *) 
  (* C_HAS_S_AXIS_A_TUSER = "0" *) 
  (* C_HAS_S_AXIS_B_TLAST = "0" *) 
  (* C_HAS_S_AXIS_B_TUSER = "0" *) 
  (* C_HAS_S_AXIS_CTRL_TLAST = "0" *) 
  (* C_HAS_S_AXIS_CTRL_TUSER = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_M_AXIS_DOUT_TDATA_WIDTH = "80" *) 
  (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_WIDTH = "33" *) 
  (* C_S_AXIS_A_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_A_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_B_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_B_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_CTRL_TDATA_WIDTH = "8" *) 
  (* C_S_AXIS_CTRL_TUSER_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICE = "xc7z020" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* HAS_NEGATE = "0" *) 
  (* ROUND = "0" *) 
  (* SINGLE_OUTPUT = "0" *) 
  (* USE_DSP_CASCADES = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_multiplier_cmpy_v6_0_17_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .m_axis_dout_tdata({\^m_axis_dout_tdata [72],NLW_i_synth_m_axis_dout_tdata_UNCONNECTED[78:72],\^m_axis_dout_tdata [71:40],\^m_axis_dout_tdata [32],NLW_i_synth_m_axis_dout_tdata_UNCONNECTED[38:32],\^m_axis_dout_tdata [31:0]}),
        .m_axis_dout_tlast(NLW_i_synth_m_axis_dout_tlast_UNCONNECTED),
        .m_axis_dout_tready(1'b0),
        .m_axis_dout_tuser(NLW_i_synth_m_axis_dout_tuser_UNCONNECTED[0]),
        .m_axis_dout_tvalid(m_axis_dout_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_i_synth_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_i_synth_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_ctrl_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_ctrl_tlast(1'b0),
        .s_axis_ctrl_tready(NLW_i_synth_s_axis_ctrl_tready_UNCONNECTED),
        .s_axis_ctrl_tuser(1'b0),
        .s_axis_ctrl_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
GHj57reejxYFGgGc6LkZz4g/3YZfuX6BBkTzGzxAFmGxXPZd1ZfrKbFSB3Kf0vroWPybe1Gol0o0
+cBTpPNMBg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
n9+vYOPSnFKvc6pC387PcTZwbrWT+fWkUrI+oOavbngpCWri68aZK9GGlCF/fJxpI66bPiAl6JZ6
V0t8HLKw5q3Xn/pbYkEKPXAR2BoblzdXXGtJQJvpNFuY0G2mZG0kNoQl+IMNuLIiBZS8ss2AOG9+
YqC36/azPiUO66xQRPQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mKEU/RLurfnQ+XE9PeT8SKIF6kPUMD2hMub4vB5Szp1294z0a2QlL5llChbu+pHRdcFIyUriIk3F
b22qgY5Cg8uaupKP3TJbx1GkqwJNGggQm59ipEctR7JtrEA8t3+400ih5/Bm2mBZiZ9x3G79mdev
3eWL7dgekLJ3/ChiFUQf3yQ4nYbNdjF48fHSCB67lz1con0XJ3J2egbb5E7dI0YxIBGQ2tIUUi5h
PWqTR27+iNjxuCmCjaKEb/vEpVr71h8sD4priNGny/o8QEr5/Mm0oYYSS2NoR/h0tdmb+uGKZoqH
vZQaO5HceAI/SDvkcV+g91N8O/5WrT+w+slOXQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VWUegNSdBneRURRrY4DumXXk9XZp9PQK94dtnGjTkahp/e55rblm1jToZv6Jab0HWMcuq/CWOPlF
k18mSm/2y/RCM5TBpiVYGA/JKD7ThZRcGjKbiMVrcLEHH+Hy+3ucgoQYtVM/Zdo68TeDBkkOKq+b
8x7lRuWMdJseCvUzmfB0qyVqKCmzjXls8LAUj6vF1Ozvq9umIj8rrZ1LdSapD7n5wmJYOwyj3gbb
MhXwaZEDd+S5F+qIwwy3qyCFO5+ej0JMc7sHL45tMQ7txHQ6eitvpVFyWwinQZj9ujmzqEVb+bAR
vN8HBgcyPd8BeJ9P6zt4PVIerH925LlnNnhPYw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Cstmp5Bb8G6Bzy7V7zmMVktQNWslah06n4/OH8Gd0WlwpoMwqgyEr0Iika4vK3BqyIDD5LQlZnuM
kk+UuwYDypAcqydXYFIV4ts+GfY8gYi8XreHcjo/nWVpp0fSQmSM2ZtxfO5sZarVznUif75i6q+f
t0YLGOKwi0AF9RzLa03wJqxywP8cSfGOe6IUt6cquiFEzyppddiFL5D6luwl5RcQFluPwE+4im44
8xq+MC6MucWChnG6qlOECd5RwEZ+OeozKmH8LuzETRWoQJr1CC4sjBW67liynFphJVQZBaSMNehw
l3R938BnTORSBr7Ct4TVuxjD6rkn3nJAZe/fKg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MxyGfhwOu3oss5K9NV7veV77843Ar77I9FFbUD+W2Pj9Z31LE/ruF/UjqV6LLUU0oP/iZamL75qr
HdwKcUjhS6jY2DMFps1AI+ucQtKZs21V8DpN5yaFgJxsDfuArIQaNK6g4v02B2OAAOc7fYiFZZSy
ydVicltaIM3fjRd16SE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OFXbv8BsHW2mJ0LkjBlH+1hDsMYZqsHN0pD/2KduWzbbuiFSTxEhjTOUxuu1T72XHB5hmOI7c2Wv
EezeIUzi+gkK7VcneKAOrd2KKpkWcyMFDmZk9g/3+uGLZTcvpsJGS5FeydCwE4nW05La5/zNSFJt
dJXxm5mGqVZtQ322fNaFXasMV+Z7HjTDs9S072EHwGGPwkoh3ySxtdsWHahI/m7SLIjN+Bg2loeW
Dvg27GzcHORDWnrZH/q02It7QOiqv8OMVPRJ9xYcqNXTfOCiZna8yJnA5DvCHFnzwlRxuI2Cqdnr
4xQ+xWwnzrtIu80IIxowrPF2NJorkrzBG+ncrQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RjYUEr52gb/5WUAYOAp5hkp3l7l34yS+AZRWnIQxq9NRKNF1P93i8XNkQyuWsshADsyk9+WyMuLo
g/TRhofLtSqehcT8BLWXHemJS+HBOCEiJoMyBWpUbPNhCwpz5abNrGhxSakH7+DE13yYY3C79+GH
xky7bI8auPdzqItfgTNdDTK26xfzLPdqmAGv/GJ/5AxMGhPtgGaoSnEESvtx/IALK16cAs5lWuGu
QAokmVGkYQs38fMhBW6ErsIvAnoZakccXW0SYlBmUJEt9i7hv8L3HB3ETscSiTi44iGnz+lWvOJa
HIQEB82p0j4syUqUaGDtuWVml7aTieUtgP65XA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qHdsqvjshjzczt246KiYmnBj3dS3UakFTmf7w4JCKJ9st00VTmkP/S3UNyzKlDX4MbyrdNcQaFzV
5Mr/JeDH04tYcX34ueuGTuD0RjK6JLag2CUv95FnO81frKieC0PEj2vkpY0F+b1E3VxoQx4JZ8ST
P1IXbADFXrx9I3i4XvRmvOafdIXw1PgTqtpDRXOnkrEQJJobJH2Bh/5qfCNe35LQ8xFfGDopJh/f
m3hSFoDGvn/IdJy0b1jsf3b1lUxvtjf2wNWwtNWnzxeuL0fJd5vDGKtRuvHXLon04sf4Oh0OmpxV
eKxFcbd0Yi3nt4F15te818llkjT2GKY7Txhyyg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27360)
`pragma protect data_block
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
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
