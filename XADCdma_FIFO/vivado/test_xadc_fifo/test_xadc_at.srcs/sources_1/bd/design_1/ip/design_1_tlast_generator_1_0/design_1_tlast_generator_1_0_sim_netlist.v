// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Jul 13 14:12:20 2020
// Host        : lppc running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/hdd/FIFO_XADCdma/vivado/test_xadc_EV/test_xadc_at.srcs/sources_1/bd/design_1/ip/design_1_tlast_generator_1_0/design_1_tlast_generator_1_0_sim_netlist.v
// Design      : design_1_tlast_generator_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_tlast_generator_1_0,tlast_generator_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "tlast_generator_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_tlast_generator_1_0
   (aclk,
    resetn,
    fifo_full_in,
    freset,
    fifo_full_out,
    pkt_length,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_RESET resetn, ASSOCIATED_BUSIF s_axis:m_axis, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input fifo_full_in;
  input freset;
  output fifo_full_out;
  input [21:0]pkt_length;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;

  wire aclk;
  wire fifo_full_in;
  wire fifo_full_out;
  wire freset;
  wire [31:16]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [21:0]pkt_length;
  wire resetn;
  wire [15:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign m_axis_tdata[31:16] = \^m_axis_tdata [31:16];
  assign m_axis_tdata[15:0] = s_axis_tdata;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  design_1_tlast_generator_1_0_tlast_generator_v1_0 inst
       (.aclk(aclk),
        .fifo_full_in(fifo_full_in),
        .fifo_full_out(fifo_full_out),
        .freset(freset),
        .m_axis_tdata(\^m_axis_tdata ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .pkt_length(pkt_length),
        .resetn(resetn),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "tlast_generator_v1_0" *) 
module design_1_tlast_generator_1_0_tlast_generator_v1_0
   (m_axis_tdata,
    fifo_full_out,
    m_axis_tlast,
    resetn,
    s_axis_tvalid,
    m_axis_tready,
    aclk,
    fifo_full_in,
    freset,
    pkt_length);
  output [15:0]m_axis_tdata;
  output fifo_full_out;
  output m_axis_tlast;
  input resetn;
  input s_axis_tvalid;
  input m_axis_tready;
  input aclk;
  input fifo_full_in;
  input freset;
  input [21:0]pkt_length;

  wire aclk;
  wire [15:15]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__2_n_0;
  wire cnt0_carry__2_n_1;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry__3_n_0;
  wire cnt0_carry__3_n_1;
  wire cnt0_carry__3_n_2;
  wire cnt0_carry__3_n_3;
  wire cnt0_carry__4_n_0;
  wire cnt0_carry__4_n_1;
  wire cnt0_carry__4_n_2;
  wire cnt0_carry__4_n_3;
  wire cnt0_carry__5_n_0;
  wire cnt0_carry__5_n_1;
  wire cnt0_carry__5_n_2;
  wire cnt0_carry__5_n_3;
  wire cnt0_carry__6_n_2;
  wire cnt0_carry__6_n_3;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[21] ;
  wire \cnt_reg_n_0_[22] ;
  wire \cnt_reg_n_0_[23] ;
  wire \cnt_reg_n_0_[24] ;
  wire \cnt_reg_n_0_[25] ;
  wire \cnt_reg_n_0_[26] ;
  wire \cnt_reg_n_0_[27] ;
  wire \cnt_reg_n_0_[28] ;
  wire \cnt_reg_n_0_[29] ;
  wire \cnt_reg_n_0_[30] ;
  wire \cnt_reg_n_0_[31] ;
  wire fifo_full_in;
  wire fifo_full_out;
  wire fifo_full_out_i_1_n_0;
  wire freset;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tlast0;
  wire m_axis_tlast0_carry__0_i_1_n_0;
  wire m_axis_tlast0_carry__0_i_2_n_0;
  wire m_axis_tlast0_carry__0_i_3_n_0;
  wire m_axis_tlast0_carry__0_i_4_n_0;
  wire m_axis_tlast0_carry__0_n_0;
  wire m_axis_tlast0_carry__0_n_1;
  wire m_axis_tlast0_carry__0_n_2;
  wire m_axis_tlast0_carry__0_n_3;
  wire m_axis_tlast0_carry__1_i_1_n_0;
  wire m_axis_tlast0_carry__1_i_2_n_0;
  wire m_axis_tlast0_carry__1_i_3_n_0;
  wire m_axis_tlast0_carry__1_n_2;
  wire m_axis_tlast0_carry__1_n_3;
  wire m_axis_tlast0_carry_i_1_n_0;
  wire m_axis_tlast0_carry_i_2_n_0;
  wire m_axis_tlast0_carry_i_3_n_0;
  wire m_axis_tlast0_carry_i_4_n_0;
  wire m_axis_tlast0_carry_n_0;
  wire m_axis_tlast0_carry_n_1;
  wire m_axis_tlast0_carry_n_2;
  wire m_axis_tlast0_carry_n_3;
  wire m_axis_tready;
  wire p_0_in;
  wire [31:1]p_2_in;
  wire [21:0]pkt_length;
  wire resetn;
  wire s_axis_tvalid;
  wire [3:2]NLW_cnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_m_axis_tlast0_carry_O_UNCONNECTED;
  wire [3:0]NLW_m_axis_tlast0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_m_axis_tlast0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_m_axis_tlast0_carry__1_O_UNCONNECTED;

  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(m_axis_tdata[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[4:1]),
        .S(m_axis_tdata[4:1]));
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[8:5]),
        .S(m_axis_tdata[8:5]));
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[12:9]),
        .S(m_axis_tdata[12:9]));
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({cnt0_carry__2_n_0,cnt0_carry__2_n_1,cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[16:13]),
        .S({\cnt_reg_n_0_[16] ,m_axis_tdata[15:13]}));
  CARRY4 cnt0_carry__3
       (.CI(cnt0_carry__2_n_0),
        .CO({cnt0_carry__3_n_0,cnt0_carry__3_n_1,cnt0_carry__3_n_2,cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[20:17]),
        .S({\cnt_reg_n_0_[20] ,\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] }));
  CARRY4 cnt0_carry__4
       (.CI(cnt0_carry__3_n_0),
        .CO({cnt0_carry__4_n_0,cnt0_carry__4_n_1,cnt0_carry__4_n_2,cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[24:21]),
        .S({\cnt_reg_n_0_[24] ,\cnt_reg_n_0_[23] ,\cnt_reg_n_0_[22] ,\cnt_reg_n_0_[21] }));
  CARRY4 cnt0_carry__5
       (.CI(cnt0_carry__4_n_0),
        .CO({cnt0_carry__5_n_0,cnt0_carry__5_n_1,cnt0_carry__5_n_2,cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[28:25]),
        .S({\cnt_reg_n_0_[28] ,\cnt_reg_n_0_[27] ,\cnt_reg_n_0_[26] ,\cnt_reg_n_0_[25] }));
  CARRY4 cnt0_carry__6
       (.CI(cnt0_carry__5_n_0),
        .CO({NLW_cnt0_carry__6_CO_UNCONNECTED[3:2],cnt0_carry__6_n_2,cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt0_carry__6_O_UNCONNECTED[3],p_2_in[31:29]}),
        .S({1'b0,\cnt_reg_n_0_[31] ,\cnt_reg_n_0_[30] ,\cnt_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8882888)) 
    \cnt[0]_i_1 
       (.I0(resetn),
        .I1(m_axis_tdata[0]),
        .I2(s_axis_tvalid),
        .I3(m_axis_tready),
        .I4(m_axis_tlast0),
        .O(\cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[15]_i_1 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[10]),
        .Q(m_axis_tdata[10]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[11]),
        .Q(m_axis_tdata[11]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[12]),
        .Q(m_axis_tdata[12]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[13]),
        .Q(m_axis_tdata[13]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[14]),
        .Q(m_axis_tdata[14]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[15]),
        .Q(m_axis_tdata[15]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[16]),
        .Q(\cnt_reg_n_0_[16] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[17]),
        .Q(\cnt_reg_n_0_[17] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[18]),
        .Q(\cnt_reg_n_0_[18] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[19]),
        .Q(\cnt_reg_n_0_[19] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[1]),
        .Q(m_axis_tdata[1]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[20]),
        .Q(\cnt_reg_n_0_[20] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[21]),
        .Q(\cnt_reg_n_0_[21] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[22]),
        .Q(\cnt_reg_n_0_[22] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[23]),
        .Q(\cnt_reg_n_0_[23] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[24]),
        .Q(\cnt_reg_n_0_[24] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[25]),
        .Q(\cnt_reg_n_0_[25] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[26]),
        .Q(\cnt_reg_n_0_[26] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[27] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[27]),
        .Q(\cnt_reg_n_0_[27] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[28] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[28]),
        .Q(\cnt_reg_n_0_[28] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[29] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[29]),
        .Q(\cnt_reg_n_0_[29] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[2]),
        .Q(m_axis_tdata[2]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[30] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[30]),
        .Q(\cnt_reg_n_0_[30] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[31] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[31]),
        .Q(\cnt_reg_n_0_[31] ),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[3]),
        .Q(m_axis_tdata[3]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[4]),
        .Q(m_axis_tdata[4]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[5]),
        .Q(m_axis_tdata[5]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[6]),
        .Q(m_axis_tdata[6]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[7]),
        .Q(m_axis_tdata[7]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[8]),
        .Q(m_axis_tdata[8]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(aclk),
        .CE(p_0_in),
        .D(p_2_in[9]),
        .Q(m_axis_tdata[9]),
        .R(cnt));
  LUT4 #(
    .INIT(16'hE000)) 
    fifo_full_out_i_1
       (.I0(fifo_full_out),
        .I1(fifo_full_in),
        .I2(freset),
        .I3(resetn),
        .O(fifo_full_out_i_1_n_0));
  FDRE fifo_full_out_reg
       (.C(aclk),
        .CE(1'b1),
        .D(fifo_full_out_i_1_n_0),
        .Q(fifo_full_out),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hD555)) 
    \inst/ 
       (.I0(resetn),
        .I1(m_axis_tlast0),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .O(cnt));
  CARRY4 m_axis_tlast0_carry
       (.CI(1'b0),
        .CO({m_axis_tlast0_carry_n_0,m_axis_tlast0_carry_n_1,m_axis_tlast0_carry_n_2,m_axis_tlast0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast0_carry_O_UNCONNECTED[3:0]),
        .S({m_axis_tlast0_carry_i_1_n_0,m_axis_tlast0_carry_i_2_n_0,m_axis_tlast0_carry_i_3_n_0,m_axis_tlast0_carry_i_4_n_0}));
  CARRY4 m_axis_tlast0_carry__0
       (.CI(m_axis_tlast0_carry_n_0),
        .CO({m_axis_tlast0_carry__0_n_0,m_axis_tlast0_carry__0_n_1,m_axis_tlast0_carry__0_n_2,m_axis_tlast0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast0_carry__0_O_UNCONNECTED[3:0]),
        .S({m_axis_tlast0_carry__0_i_1_n_0,m_axis_tlast0_carry__0_i_2_n_0,m_axis_tlast0_carry__0_i_3_n_0,m_axis_tlast0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0009)) 
    m_axis_tlast0_carry__0_i_1
       (.I0(\cnt_reg_n_0_[21] ),
        .I1(pkt_length[21]),
        .I2(\cnt_reg_n_0_[23] ),
        .I3(\cnt_reg_n_0_[22] ),
        .O(m_axis_tlast0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry__0_i_2
       (.I0(\cnt_reg_n_0_[18] ),
        .I1(pkt_length[18]),
        .I2(pkt_length[20]),
        .I3(\cnt_reg_n_0_[20] ),
        .I4(pkt_length[19]),
        .I5(\cnt_reg_n_0_[19] ),
        .O(m_axis_tlast0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry__0_i_3
       (.I0(m_axis_tdata[15]),
        .I1(pkt_length[15]),
        .I2(pkt_length[17]),
        .I3(\cnt_reg_n_0_[17] ),
        .I4(pkt_length[16]),
        .I5(\cnt_reg_n_0_[16] ),
        .O(m_axis_tlast0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry__0_i_4
       (.I0(m_axis_tdata[12]),
        .I1(pkt_length[12]),
        .I2(pkt_length[14]),
        .I3(m_axis_tdata[14]),
        .I4(pkt_length[13]),
        .I5(m_axis_tdata[13]),
        .O(m_axis_tlast0_carry__0_i_4_n_0));
  CARRY4 m_axis_tlast0_carry__1
       (.CI(m_axis_tlast0_carry__0_n_0),
        .CO({NLW_m_axis_tlast0_carry__1_CO_UNCONNECTED[3],m_axis_tlast0,m_axis_tlast0_carry__1_n_2,m_axis_tlast0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,m_axis_tlast0_carry__1_i_1_n_0,m_axis_tlast0_carry__1_i_2_n_0,m_axis_tlast0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    m_axis_tlast0_carry__1_i_1
       (.I0(\cnt_reg_n_0_[30] ),
        .I1(\cnt_reg_n_0_[31] ),
        .O(m_axis_tlast0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    m_axis_tlast0_carry__1_i_2
       (.I0(\cnt_reg_n_0_[29] ),
        .I1(\cnt_reg_n_0_[28] ),
        .I2(\cnt_reg_n_0_[27] ),
        .O(m_axis_tlast0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    m_axis_tlast0_carry__1_i_3
       (.I0(\cnt_reg_n_0_[26] ),
        .I1(\cnt_reg_n_0_[25] ),
        .I2(\cnt_reg_n_0_[24] ),
        .O(m_axis_tlast0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_1
       (.I0(m_axis_tdata[9]),
        .I1(pkt_length[9]),
        .I2(pkt_length[11]),
        .I3(m_axis_tdata[11]),
        .I4(pkt_length[10]),
        .I5(m_axis_tdata[10]),
        .O(m_axis_tlast0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_2
       (.I0(m_axis_tdata[6]),
        .I1(pkt_length[6]),
        .I2(pkt_length[8]),
        .I3(m_axis_tdata[8]),
        .I4(pkt_length[7]),
        .I5(m_axis_tdata[7]),
        .O(m_axis_tlast0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_3
       (.I0(m_axis_tdata[3]),
        .I1(pkt_length[3]),
        .I2(pkt_length[5]),
        .I3(m_axis_tdata[5]),
        .I4(pkt_length[4]),
        .I5(m_axis_tdata[4]),
        .O(m_axis_tlast0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_4
       (.I0(m_axis_tdata[0]),
        .I1(pkt_length[0]),
        .I2(pkt_length[2]),
        .I3(m_axis_tdata[2]),
        .I4(pkt_length[1]),
        .I5(m_axis_tdata[1]),
        .O(m_axis_tlast0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    m_axis_tlast_INST_0
       (.I0(m_axis_tlast0),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .O(m_axis_tlast));
endmodule
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
