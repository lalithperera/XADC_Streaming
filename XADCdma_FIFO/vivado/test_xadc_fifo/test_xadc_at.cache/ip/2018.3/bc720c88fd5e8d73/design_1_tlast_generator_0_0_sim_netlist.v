// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun  9 22:10:23 2020
// Host        : HomePC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tlast_generator_0_0_sim_netlist.v
// Design      : design_1_tlast_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_tlast_generator_0_0,tlast_generator_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "tlast_generator_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pkt_length,
    o_cnt,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tlast,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_aclk,
    s_axis_aresetn,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_aclk,
    m_axis_aresetn);
  input [7:0]pkt_length;
  output [7:0]o_cnt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [15:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TSTRB" *) input [1:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *) output [3:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axis_aresetn;

  wire \<const0> ;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [7:0]o_cnt;
  wire [7:0]pkt_length;
  wire [15:0]s_axis_tdata;
  wire [1:0]s_axis_tstrb;
  wire s_axis_tvalid;

  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15:0] = s_axis_tdata;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1:0] = s_axis_tstrb;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0 inst
       (.\cnt_reg[0]_0 (o_cnt[0]),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .o_cnt(o_cnt[7:1]),
        .pkt_length(pkt_length),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0
   (\cnt_reg[0]_0 ,
    o_cnt,
    m_axis_tlast,
    m_axis_aresetn,
    s_axis_tvalid,
    m_axis_tready,
    m_axis_aclk,
    pkt_length);
  output \cnt_reg[0]_0 ;
  output [6:0]o_cnt;
  output m_axis_tlast;
  input m_axis_aresetn;
  input s_axis_tvalid;
  input m_axis_tready;
  input m_axis_aclk;
  input [7:0]pkt_length;

  wire [7:7]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[7]_i_4_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg_n_0_[8] ;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire m_axis_tlast;
  wire m_axis_tlast0;
  wire m_axis_tlast0_carry_i_1_n_0;
  wire m_axis_tlast0_carry_i_2_n_0;
  wire m_axis_tlast0_carry_i_3_n_0;
  wire m_axis_tlast0_carry_n_2;
  wire m_axis_tlast0_carry_n_3;
  wire m_axis_tready;
  wire [6:0]o_cnt;
  wire p_0_in;
  wire [8:1]p_2_in;
  wire [7:0]pkt_length;
  wire s_axis_tvalid;
  wire [3:3]NLW_m_axis_tlast0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_m_axis_tlast0_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8882888)) 
    \cnt[0]_i_1 
       (.I0(m_axis_aresetn),
        .I1(\cnt_reg[0]_0 ),
        .I2(s_axis_tvalid),
        .I3(m_axis_tready),
        .I4(m_axis_tlast0),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg[0]_0 ),
        .I1(o_cnt[0]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(\cnt_reg[0]_0 ),
        .I1(o_cnt[0]),
        .I2(o_cnt[1]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(o_cnt[0]),
        .I1(\cnt_reg[0]_0 ),
        .I2(o_cnt[1]),
        .I3(o_cnt[2]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(o_cnt[1]),
        .I1(\cnt_reg[0]_0 ),
        .I2(o_cnt[0]),
        .I3(o_cnt[2]),
        .I4(o_cnt[3]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(o_cnt[2]),
        .I1(o_cnt[0]),
        .I2(\cnt_reg[0]_0 ),
        .I3(o_cnt[1]),
        .I4(o_cnt[3]),
        .I5(o_cnt[4]),
        .O(p_2_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[6]_i_1 
       (.I0(\cnt[7]_i_4_n_0 ),
        .I1(o_cnt[5]),
        .O(p_2_in[6]));
  LUT4 #(
    .INIT(16'hD555)) 
    \cnt[7]_i_1 
       (.I0(m_axis_aresetn),
        .I1(m_axis_tlast0),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .O(cnt));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[7]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[7]_i_3 
       (.I0(\cnt[7]_i_4_n_0 ),
        .I1(o_cnt[5]),
        .I2(o_cnt[6]),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[7]_i_4 
       (.I0(o_cnt[4]),
        .I1(o_cnt[2]),
        .I2(o_cnt[0]),
        .I3(\cnt_reg[0]_0 ),
        .I4(o_cnt[1]),
        .I5(o_cnt[3]),
        .O(\cnt[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[8]_i_1 
       (.I0(o_cnt[5]),
        .I1(\cnt[7]_i_4_n_0 ),
        .I2(o_cnt[6]),
        .I3(\cnt_reg_n_0_[8] ),
        .O(p_2_in[8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(p_2_in[1]),
        .Q(o_cnt[0]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(p_2_in[2]),
        .Q(o_cnt[1]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(p_2_in[3]),
        .Q(o_cnt[2]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(p_2_in[4]),
        .Q(o_cnt[3]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(p_2_in[5]),
        .Q(o_cnt[4]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(p_2_in[6]),
        .Q(o_cnt[5]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(p_2_in[7]),
        .Q(o_cnt[6]),
        .R(cnt));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(m_axis_aclk),
        .CE(p_0_in),
        .D(p_2_in[8]),
        .Q(\cnt_reg_n_0_[8] ),
        .R(cnt));
  CARRY4 m_axis_tlast0_carry
       (.CI(1'b0),
        .CO({NLW_m_axis_tlast0_carry_CO_UNCONNECTED[3],m_axis_tlast0,m_axis_tlast0_carry_n_2,m_axis_tlast0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,m_axis_tlast0_carry_i_1_n_0,m_axis_tlast0_carry_i_2_n_0,m_axis_tlast0_carry_i_3_n_0}));
  LUT5 #(
    .INIT(32'h09000009)) 
    m_axis_tlast0_carry_i_1
       (.I0(o_cnt[5]),
        .I1(pkt_length[6]),
        .I2(\cnt_reg_n_0_[8] ),
        .I3(pkt_length[7]),
        .I4(o_cnt[6]),
        .O(m_axis_tlast0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_2
       (.I0(o_cnt[2]),
        .I1(pkt_length[3]),
        .I2(pkt_length[5]),
        .I3(o_cnt[4]),
        .I4(pkt_length[4]),
        .I5(o_cnt[3]),
        .O(m_axis_tlast0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_3
       (.I0(\cnt_reg[0]_0 ),
        .I1(pkt_length[0]),
        .I2(pkt_length[2]),
        .I3(o_cnt[1]),
        .I4(pkt_length[1]),
        .I5(o_cnt[0]),
        .O(m_axis_tlast0_carry_i_3_n_0));
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
