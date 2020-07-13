// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Jul 13 13:48:38 2020
// Host        : lppc running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tlast_generator_1_0_stub.v
// Design      : design_1_tlast_generator_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tlast_generator_v1_0,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, resetn, fifo_full_in, freset, 
  fifo_full_out, pkt_length, m_axis_tdata, m_axis_tlast, m_axis_tvalid, m_axis_tready, 
  s_axis_tdata, s_axis_tvalid, s_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="aclk,resetn,fifo_full_in,freset,fifo_full_out,pkt_length[21:0],m_axis_tdata[31:0],m_axis_tlast,m_axis_tvalid,m_axis_tready,s_axis_tdata[15:0],s_axis_tvalid,s_axis_tready" */;
  input aclk;
  input resetn;
  input fifo_full_in;
  input freset;
  output fifo_full_out;
  input [21:0]pkt_length;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  input [15:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
endmodule
