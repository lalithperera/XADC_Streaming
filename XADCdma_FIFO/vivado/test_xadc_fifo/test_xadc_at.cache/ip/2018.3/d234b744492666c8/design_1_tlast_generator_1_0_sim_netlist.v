// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Jul  5 17:58:53 2020
// Host        : lppc running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tlast_generator_1_0_sim_netlist.v
// Design      : design_1_tlast_generator_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_tlast_generator_1_0,tlast_generator_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "tlast_generator_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    resetn,
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
  input [16:0]pkt_length;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;

  wire \<const1> ;
  wire aclk;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [16:0]pkt_length;
  wire resetn;
  wire [15:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign m_axis_tdata[31] = \<const1> ;
  assign m_axis_tdata[30] = \<const1> ;
  assign m_axis_tdata[29] = \<const1> ;
  assign m_axis_tdata[28] = \<const1> ;
  assign m_axis_tdata[27] = \<const1> ;
  assign m_axis_tdata[26] = \<const1> ;
  assign m_axis_tdata[25] = \<const1> ;
  assign m_axis_tdata[24] = \<const1> ;
  assign m_axis_tdata[23] = \<const1> ;
  assign m_axis_tdata[22] = \<const1> ;
  assign m_axis_tdata[21] = \<const1> ;
  assign m_axis_tdata[20] = \<const1> ;
  assign m_axis_tdata[19] = \<const1> ;
  assign m_axis_tdata[18] = \<const1> ;
  assign m_axis_tdata[17] = \<const1> ;
  assign m_axis_tdata[16] = \<const1> ;
  assign m_axis_tdata[15:0] = s_axis_tdata;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0 inst
       (.aclk(aclk),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .pkt_length(pkt_length),
        .resetn(resetn),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0
   (m_axis_tlast,
    aclk,
    s_axis_tvalid,
    m_axis_tready,
    resetn,
    pkt_length);
  output m_axis_tlast;
  input aclk;
  input s_axis_tvalid;
  input m_axis_tready;
  input resetn;
  input [16:0]pkt_length;

  wire aclk;
  wire cnt0_n_0;
  wire \cnt[0]_i_3_n_0 ;
  wire [16:0]cnt_reg;
  wire \cnt_reg[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_2_n_1 ;
  wire \cnt_reg[0]_i_2_n_2 ;
  wire \cnt_reg[0]_i_2_n_3 ;
  wire \cnt_reg[0]_i_2_n_4 ;
  wire \cnt_reg[0]_i_2_n_5 ;
  wire \cnt_reg[0]_i_2_n_6 ;
  wire \cnt_reg[0]_i_2_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire m_axis_tlast;
  wire [16:1]m_axis_tlast0;
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
  wire m_axis_tlast0_carry__1_i_4_n_0;
  wire m_axis_tlast0_carry__1_n_0;
  wire m_axis_tlast0_carry__1_n_1;
  wire m_axis_tlast0_carry__1_n_2;
  wire m_axis_tlast0_carry__1_n_3;
  wire m_axis_tlast0_carry__2_i_1_n_0;
  wire m_axis_tlast0_carry__2_i_2_n_0;
  wire m_axis_tlast0_carry__2_i_3_n_0;
  wire m_axis_tlast0_carry__2_i_4_n_0;
  wire m_axis_tlast0_carry__2_n_0;
  wire m_axis_tlast0_carry__2_n_1;
  wire m_axis_tlast0_carry__2_n_2;
  wire m_axis_tlast0_carry__2_n_3;
  wire m_axis_tlast0_carry_i_1_n_0;
  wire m_axis_tlast0_carry_i_2_n_0;
  wire m_axis_tlast0_carry_i_3_n_0;
  wire m_axis_tlast0_carry_i_4_n_0;
  wire m_axis_tlast0_carry_n_0;
  wire m_axis_tlast0_carry_n_1;
  wire m_axis_tlast0_carry_n_2;
  wire m_axis_tlast0_carry_n_3;
  wire m_axis_tlast_carry__0_i_1_n_0;
  wire m_axis_tlast_carry__0_i_2_n_0;
  wire m_axis_tlast_carry__0_n_0;
  wire m_axis_tlast_carry__0_n_1;
  wire m_axis_tlast_carry__0_n_2;
  wire m_axis_tlast_carry__0_n_3;
  wire m_axis_tlast_carry__1_i_1_n_3;
  wire m_axis_tlast_carry__1_n_2;
  wire m_axis_tlast_carry__1_n_3;
  wire m_axis_tlast_carry_i_1_n_0;
  wire m_axis_tlast_carry_i_2_n_0;
  wire m_axis_tlast_carry_i_3_n_0;
  wire m_axis_tlast_carry_i_4_n_0;
  wire m_axis_tlast_carry_n_0;
  wire m_axis_tlast_carry_n_1;
  wire m_axis_tlast_carry_n_2;
  wire m_axis_tlast_carry_n_3;
  wire m_axis_tready;
  wire new_sample;
  wire [16:0]pkt_length;
  wire resetn;
  wire s_axis_tvalid;
  wire [3:0]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cnt_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_m_axis_tlast_carry_O_UNCONNECTED;
  wire [3:0]NLW_m_axis_tlast_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_m_axis_tlast_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_m_axis_tlast_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_m_axis_tlast_carry__1_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_m_axis_tlast_carry__1_i_1_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h80FF)) 
    cnt0
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .I2(m_axis_tlast),
        .I3(resetn),
        .O(cnt0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[0]_i_1 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .O(new_sample));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_3 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[0]_i_2_n_7 ),
        .Q(cnt_reg[0]),
        .R(cnt0_n_0));
  CARRY4 \cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2_n_0 ,\cnt_reg[0]_i_2_n_1 ,\cnt_reg[0]_i_2_n_2 ,\cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_2_n_4 ,\cnt_reg[0]_i_2_n_5 ,\cnt_reg[0]_i_2_n_6 ,\cnt_reg[0]_i_2_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(cnt0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(cnt0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(cnt0_n_0));
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S(cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(cnt0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(cnt0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(cnt0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(cnt_reg[16]),
        .R(cnt0_n_0));
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[16]_i_1_O_UNCONNECTED [3:1],\cnt_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,cnt_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(cnt_reg[1]),
        .R(cnt0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(cnt_reg[2]),
        .R(cnt0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(cnt_reg[3]),
        .R(cnt0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(cnt0_n_0));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_2_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(cnt0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(cnt0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(cnt0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(cnt0_n_0));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(aclk),
        .CE(new_sample),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(cnt0_n_0));
  CARRY4 m_axis_tlast0_carry
       (.CI(1'b0),
        .CO({m_axis_tlast0_carry_n_0,m_axis_tlast0_carry_n_1,m_axis_tlast0_carry_n_2,m_axis_tlast0_carry_n_3}),
        .CYINIT(pkt_length[0]),
        .DI(pkt_length[4:1]),
        .O(m_axis_tlast0[4:1]),
        .S({m_axis_tlast0_carry_i_1_n_0,m_axis_tlast0_carry_i_2_n_0,m_axis_tlast0_carry_i_3_n_0,m_axis_tlast0_carry_i_4_n_0}));
  CARRY4 m_axis_tlast0_carry__0
       (.CI(m_axis_tlast0_carry_n_0),
        .CO({m_axis_tlast0_carry__0_n_0,m_axis_tlast0_carry__0_n_1,m_axis_tlast0_carry__0_n_2,m_axis_tlast0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(pkt_length[8:5]),
        .O(m_axis_tlast0[8:5]),
        .S({m_axis_tlast0_carry__0_i_1_n_0,m_axis_tlast0_carry__0_i_2_n_0,m_axis_tlast0_carry__0_i_3_n_0,m_axis_tlast0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__0_i_1
       (.I0(pkt_length[8]),
        .O(m_axis_tlast0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__0_i_2
       (.I0(pkt_length[7]),
        .O(m_axis_tlast0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__0_i_3
       (.I0(pkt_length[6]),
        .O(m_axis_tlast0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__0_i_4
       (.I0(pkt_length[5]),
        .O(m_axis_tlast0_carry__0_i_4_n_0));
  CARRY4 m_axis_tlast0_carry__1
       (.CI(m_axis_tlast0_carry__0_n_0),
        .CO({m_axis_tlast0_carry__1_n_0,m_axis_tlast0_carry__1_n_1,m_axis_tlast0_carry__1_n_2,m_axis_tlast0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(pkt_length[12:9]),
        .O(m_axis_tlast0[12:9]),
        .S({m_axis_tlast0_carry__1_i_1_n_0,m_axis_tlast0_carry__1_i_2_n_0,m_axis_tlast0_carry__1_i_3_n_0,m_axis_tlast0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__1_i_1
       (.I0(pkt_length[12]),
        .O(m_axis_tlast0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__1_i_2
       (.I0(pkt_length[11]),
        .O(m_axis_tlast0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__1_i_3
       (.I0(pkt_length[10]),
        .O(m_axis_tlast0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__1_i_4
       (.I0(pkt_length[9]),
        .O(m_axis_tlast0_carry__1_i_4_n_0));
  CARRY4 m_axis_tlast0_carry__2
       (.CI(m_axis_tlast0_carry__1_n_0),
        .CO({m_axis_tlast0_carry__2_n_0,m_axis_tlast0_carry__2_n_1,m_axis_tlast0_carry__2_n_2,m_axis_tlast0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(pkt_length[16:13]),
        .O(m_axis_tlast0[16:13]),
        .S({m_axis_tlast0_carry__2_i_1_n_0,m_axis_tlast0_carry__2_i_2_n_0,m_axis_tlast0_carry__2_i_3_n_0,m_axis_tlast0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__2_i_1
       (.I0(pkt_length[16]),
        .O(m_axis_tlast0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__2_i_2
       (.I0(pkt_length[15]),
        .O(m_axis_tlast0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__2_i_3
       (.I0(pkt_length[14]),
        .O(m_axis_tlast0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry__2_i_4
       (.I0(pkt_length[13]),
        .O(m_axis_tlast0_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry_i_1
       (.I0(pkt_length[4]),
        .O(m_axis_tlast0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry_i_2
       (.I0(pkt_length[3]),
        .O(m_axis_tlast0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry_i_3
       (.I0(pkt_length[2]),
        .O(m_axis_tlast0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tlast0_carry_i_4
       (.I0(pkt_length[1]),
        .O(m_axis_tlast0_carry_i_4_n_0));
  CARRY4 m_axis_tlast_carry
       (.CI(1'b0),
        .CO({m_axis_tlast_carry_n_0,m_axis_tlast_carry_n_1,m_axis_tlast_carry_n_2,m_axis_tlast_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast_carry_O_UNCONNECTED[3:0]),
        .S({m_axis_tlast_carry_i_1_n_0,m_axis_tlast_carry_i_2_n_0,m_axis_tlast_carry_i_3_n_0,m_axis_tlast_carry_i_4_n_0}));
  CARRY4 m_axis_tlast_carry__0
       (.CI(m_axis_tlast_carry_n_0),
        .CO({m_axis_tlast_carry__0_n_0,m_axis_tlast_carry__0_n_1,m_axis_tlast_carry__0_n_2,m_axis_tlast_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast_carry__0_O_UNCONNECTED[3:0]),
        .S({m_axis_tlast_carry__1_i_1_n_3,m_axis_tlast_carry__1_i_1_n_3,m_axis_tlast_carry__0_i_1_n_0,m_axis_tlast_carry__0_i_2_n_0}));
  LUT5 #(
    .INIT(32'h90000090)) 
    m_axis_tlast_carry__0_i_1
       (.I0(cnt_reg[15]),
        .I1(m_axis_tlast0[15]),
        .I2(m_axis_tlast_carry__1_i_1_n_3),
        .I3(m_axis_tlast0[16]),
        .I4(cnt_reg[16]),
        .O(m_axis_tlast_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast_carry__0_i_2
       (.I0(cnt_reg[12]),
        .I1(m_axis_tlast0[12]),
        .I2(m_axis_tlast0[14]),
        .I3(cnt_reg[14]),
        .I4(m_axis_tlast0[13]),
        .I5(cnt_reg[13]),
        .O(m_axis_tlast_carry__0_i_2_n_0));
  CARRY4 m_axis_tlast_carry__1
       (.CI(m_axis_tlast_carry__0_n_0),
        .CO({NLW_m_axis_tlast_carry__1_CO_UNCONNECTED[3],m_axis_tlast,m_axis_tlast_carry__1_n_2,m_axis_tlast_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,m_axis_tlast_carry__1_i_1_n_3,m_axis_tlast_carry__1_i_1_n_3,m_axis_tlast_carry__1_i_1_n_3}));
  CARRY4 m_axis_tlast_carry__1_i_1
       (.CI(m_axis_tlast0_carry__2_n_0),
        .CO({NLW_m_axis_tlast_carry__1_i_1_CO_UNCONNECTED[3:1],m_axis_tlast_carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast_carry__1_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast_carry_i_1
       (.I0(cnt_reg[9]),
        .I1(m_axis_tlast0[9]),
        .I2(m_axis_tlast0[11]),
        .I3(cnt_reg[11]),
        .I4(m_axis_tlast0[10]),
        .I5(cnt_reg[10]),
        .O(m_axis_tlast_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast_carry_i_2
       (.I0(cnt_reg[6]),
        .I1(m_axis_tlast0[6]),
        .I2(m_axis_tlast0[8]),
        .I3(cnt_reg[8]),
        .I4(m_axis_tlast0[7]),
        .I5(cnt_reg[7]),
        .O(m_axis_tlast_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast_carry_i_3
       (.I0(cnt_reg[3]),
        .I1(m_axis_tlast0[3]),
        .I2(m_axis_tlast0[5]),
        .I3(cnt_reg[5]),
        .I4(m_axis_tlast0[4]),
        .I5(cnt_reg[4]),
        .O(m_axis_tlast_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    m_axis_tlast_carry_i_4
       (.I0(cnt_reg[0]),
        .I1(pkt_length[0]),
        .I2(m_axis_tlast0[2]),
        .I3(cnt_reg[2]),
        .I4(m_axis_tlast0[1]),
        .I5(cnt_reg[1]),
        .O(m_axis_tlast_carry_i_4_n_0));
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
