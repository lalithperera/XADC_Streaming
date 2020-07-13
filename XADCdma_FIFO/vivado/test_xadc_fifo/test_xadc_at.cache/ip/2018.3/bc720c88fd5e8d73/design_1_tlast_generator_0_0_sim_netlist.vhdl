-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Jun  9 22:10:23 2020
-- Host        : HomePC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tlast_generator_0_0_sim_netlist.vhdl
-- Design      : design_1_tlast_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0 is
  port (
    \cnt_reg[0]_0\ : out STD_LOGIC;
    o_cnt : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    pkt_length : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0 is
  signal cnt : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \^cnt_reg[0]_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal m_axis_tlast0 : STD_LOGIC;
  signal m_axis_tlast0_carry_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast0_carry_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast0_carry_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast0_carry_n_2 : STD_LOGIC;
  signal m_axis_tlast0_carry_n_3 : STD_LOGIC;
  signal \^o_cnt\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal NLW_m_axis_tlast0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_m_axis_tlast0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair0";
begin
  \cnt_reg[0]_0\ <= \^cnt_reg[0]_0\;
  o_cnt(6 downto 0) <= \^o_cnt\(6 downto 0);
\cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8882888"
    )
        port map (
      I0 => m_axis_aresetn,
      I1 => \^cnt_reg[0]_0\,
      I2 => s_axis_tvalid,
      I3 => m_axis_tready,
      I4 => m_axis_tlast0,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^cnt_reg[0]_0\,
      I1 => \^o_cnt\(0),
      O => p_2_in(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^cnt_reg[0]_0\,
      I1 => \^o_cnt\(0),
      I2 => \^o_cnt\(1),
      O => p_2_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^o_cnt\(0),
      I1 => \^cnt_reg[0]_0\,
      I2 => \^o_cnt\(1),
      I3 => \^o_cnt\(2),
      O => p_2_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^o_cnt\(1),
      I1 => \^cnt_reg[0]_0\,
      I2 => \^o_cnt\(0),
      I3 => \^o_cnt\(2),
      I4 => \^o_cnt\(3),
      O => p_2_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^o_cnt\(2),
      I1 => \^o_cnt\(0),
      I2 => \^cnt_reg[0]_0\,
      I3 => \^o_cnt\(1),
      I4 => \^o_cnt\(3),
      I5 => \^o_cnt\(4),
      O => p_2_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt[7]_i_4_n_0\,
      I1 => \^o_cnt\(5),
      O => p_2_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
        port map (
      I0 => m_axis_aresetn,
      I1 => m_axis_tlast0,
      I2 => m_axis_tready,
      I3 => s_axis_tvalid,
      O => cnt(7)
    );
\cnt[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      O => p_0_in
    );
\cnt[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt[7]_i_4_n_0\,
      I1 => \^o_cnt\(5),
      I2 => \^o_cnt\(6),
      O => p_2_in(7)
    );
\cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^o_cnt\(4),
      I1 => \^o_cnt\(2),
      I2 => \^o_cnt\(0),
      I3 => \^cnt_reg[0]_0\,
      I4 => \^o_cnt\(1),
      I5 => \^o_cnt\(3),
      O => \cnt[7]_i_4_n_0\
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^o_cnt\(5),
      I1 => \cnt[7]_i_4_n_0\,
      I2 => \^o_cnt\(6),
      I3 => \cnt_reg_n_0_[8]\,
      O => p_2_in(8)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \^cnt_reg[0]_0\,
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => p_2_in(1),
      Q => \^o_cnt\(0),
      R => cnt(7)
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => p_2_in(2),
      Q => \^o_cnt\(1),
      R => cnt(7)
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => p_2_in(3),
      Q => \^o_cnt\(2),
      R => cnt(7)
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => p_2_in(4),
      Q => \^o_cnt\(3),
      R => cnt(7)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => p_2_in(5),
      Q => \^o_cnt\(4),
      R => cnt(7)
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => p_2_in(6),
      Q => \^o_cnt\(5),
      R => cnt(7)
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => p_2_in(7),
      Q => \^o_cnt\(6),
      R => cnt(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_aclk,
      CE => p_0_in,
      D => p_2_in(8),
      Q => \cnt_reg_n_0_[8]\,
      R => cnt(7)
    );
m_axis_tlast0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_m_axis_tlast0_carry_CO_UNCONNECTED(3),
      CO(2) => m_axis_tlast0,
      CO(1) => m_axis_tlast0_carry_n_2,
      CO(0) => m_axis_tlast0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_m_axis_tlast0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => m_axis_tlast0_carry_i_1_n_0,
      S(1) => m_axis_tlast0_carry_i_2_n_0,
      S(0) => m_axis_tlast0_carry_i_3_n_0
    );
m_axis_tlast0_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => \^o_cnt\(5),
      I1 => pkt_length(6),
      I2 => \cnt_reg_n_0_[8]\,
      I3 => pkt_length(7),
      I4 => \^o_cnt\(6),
      O => m_axis_tlast0_carry_i_1_n_0
    );
m_axis_tlast0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^o_cnt\(2),
      I1 => pkt_length(3),
      I2 => pkt_length(5),
      I3 => \^o_cnt\(4),
      I4 => pkt_length(4),
      I5 => \^o_cnt\(3),
      O => m_axis_tlast0_carry_i_2_n_0
    );
m_axis_tlast0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^cnt_reg[0]_0\,
      I1 => pkt_length(0),
      I2 => pkt_length(2),
      I3 => \^o_cnt\(1),
      I4 => pkt_length(1),
      I5 => \^o_cnt\(0),
      O => m_axis_tlast0_carry_i_3_n_0
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => m_axis_tlast0,
      I1 => m_axis_tready,
      I2 => s_axis_tvalid,
      O => m_axis_tlast
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pkt_length : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_cnt : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_tlast_generator_0_0,tlast_generator_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "tlast_generator_v1_0,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s_axis_tstrb\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_aclk : signal is "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of m_axis_aresetn : signal is "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S_AXIS TSTRB";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tdata\(15 downto 0) <= s_axis_tdata(15 downto 0);
  \^s_axis_tstrb\(1 downto 0) <= s_axis_tstrb(1 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15 downto 0) <= \^s_axis_tdata\(15 downto 0);
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1 downto 0) <= \^s_axis_tstrb\(1 downto 0);
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0
     port map (
      \cnt_reg[0]_0\ => o_cnt(0),
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => \^m_axis_tready\,
      o_cnt(6 downto 0) => o_cnt(7 downto 1),
      pkt_length(7 downto 0) => pkt_length(7 downto 0),
      s_axis_tvalid => \^s_axis_tvalid\
    );
end STRUCTURE;
