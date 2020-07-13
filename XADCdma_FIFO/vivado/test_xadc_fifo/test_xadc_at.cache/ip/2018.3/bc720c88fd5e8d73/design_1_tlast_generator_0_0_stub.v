// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun  9 22:10:23 2020
// Host        : HomePC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tlast_generator_0_0_stub.v
// Design      : design_1_tlast_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tlast_generator_v1_0,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(pkt_length, o_cnt, s_axis_tdata, s_axis_tstrb, 
  s_axis_tlast, s_axis_tvalid, s_axis_tready, s_axis_aclk, s_axis_aresetn, m_axis_tdata, 
  m_axis_tstrb, m_axis_tlast, m_axis_tvalid, m_axis_tready, m_axis_aclk, m_axis_aresetn)
/* synthesis syn_black_box black_box_pad_pin="pkt_length[7:0],o_cnt[7:0],s_axis_tdata[15:0],s_axis_tstrb[1:0],s_axis_tlast,s_axis_tvalid,s_axis_tready,s_axis_aclk,s_axis_aresetn,m_axis_tdata[31:0],m_axis_tstrb[3:0],m_axis_tlast,m_axis_tvalid,m_axis_tready,m_axis_aclk,m_axis_aresetn" */;
  input [7:0]pkt_length;
  output [7:0]o_cnt;
  input [15:0]s_axis_tdata;
  input [1:0]s_axis_tstrb;
  input s_axis_tlast;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_aclk;
  input s_axis_aresetn;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output m_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  input m_axis_aclk;
  input m_axis_aresetn;
endmodule
