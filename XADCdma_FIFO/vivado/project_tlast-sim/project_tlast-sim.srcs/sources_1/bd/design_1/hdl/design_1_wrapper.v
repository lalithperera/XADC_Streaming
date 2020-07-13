//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sun Jul 12 11:14:30 2020
//Host        : lppc running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (aclk,
    fifo_full_in,
    fifo_full_out,
    freset,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tvalid,
    pkt_length,
    resetn,
    s_axis_tdata,
    s_axis_tready,
    s_axis_tvalid);
  input aclk;
  input fifo_full_in;
  output fifo_full_out;
  input freset;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  input m_axis_tready;
  output m_axis_tvalid;
  input [19:0]pkt_length;
  input resetn;
  input [15:0]s_axis_tdata;
  output s_axis_tready;
  input s_axis_tvalid;

  wire aclk;
  wire fifo_full_in;
  wire fifo_full_out;
  wire freset;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [19:0]pkt_length;
  wire resetn;
  wire [15:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  design_1 design_1_i
       (.aclk(aclk),
        .fifo_full_in(fifo_full_in),
        .fifo_full_out(fifo_full_out),
        .freset(freset),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .pkt_length(pkt_length),
        .resetn(resetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
