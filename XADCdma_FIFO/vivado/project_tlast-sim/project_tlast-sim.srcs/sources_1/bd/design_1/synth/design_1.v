//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sun Jul 12 11:14:29 2020
//Host        : lppc running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET resetn, CLK_DOMAIN design_1_aclk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input aclk;
  input fifo_full_in;
  output fifo_full_out;
  input freset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, CLK_DOMAIN design_1_aclk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  input [19:0]pkt_length;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, CLK_DOMAIN design_1_aclk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;

  wire aclk_1;
  wire fifo_full_in_1;
  wire freset_1;
  wire [19:0]pkt_length_1;
  wire resetn_1;
  wire [15:0]s_axis_1_TDATA;
  wire s_axis_1_TREADY;
  wire s_axis_1_TVALID;
  wire tlast_generator_0_fifo_full_out;
  wire [31:0]tlast_generator_0_m_axis_TDATA;
  wire tlast_generator_0_m_axis_TLAST;
  wire tlast_generator_0_m_axis_TREADY;
  wire tlast_generator_0_m_axis_TVALID;

  assign aclk_1 = aclk;
  assign fifo_full_in_1 = fifo_full_in;
  assign fifo_full_out = tlast_generator_0_fifo_full_out;
  assign freset_1 = freset;
  assign m_axis_tdata[31:0] = tlast_generator_0_m_axis_TDATA;
  assign m_axis_tlast = tlast_generator_0_m_axis_TLAST;
  assign m_axis_tvalid = tlast_generator_0_m_axis_TVALID;
  assign pkt_length_1 = pkt_length[19:0];
  assign resetn_1 = resetn;
  assign s_axis_1_TDATA = s_axis_tdata[15:0];
  assign s_axis_1_TVALID = s_axis_tvalid;
  assign s_axis_tready = s_axis_1_TREADY;
  assign tlast_generator_0_m_axis_TREADY = m_axis_tready;
  design_1_tlast_generator_0_0 tlast_generator_0
       (.aclk(aclk_1),
        .fifo_full_in(fifo_full_in_1),
        .fifo_full_out(tlast_generator_0_fifo_full_out),
        .freset(freset_1),
        .m_axis_tdata(tlast_generator_0_m_axis_TDATA),
        .m_axis_tlast(tlast_generator_0_m_axis_TLAST),
        .m_axis_tready(tlast_generator_0_m_axis_TREADY),
        .m_axis_tvalid(tlast_generator_0_m_axis_TVALID),
        .pkt_length(pkt_length_1),
        .resetn(resetn_1),
        .s_axis_tdata(s_axis_1_TDATA),
        .s_axis_tready(s_axis_1_TREADY),
        .s_axis_tvalid(s_axis_1_TVALID));
endmodule
