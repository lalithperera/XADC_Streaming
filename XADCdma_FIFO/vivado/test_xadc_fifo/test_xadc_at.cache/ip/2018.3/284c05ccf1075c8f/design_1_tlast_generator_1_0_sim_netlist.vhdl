-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Jul 12 11:14:29 2020
-- Host        : lppc running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tlast_generator_1_0_sim_netlist.vhdl
-- Design      : design_1_tlast_generator_1_0
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
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_full_out : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    pkt_length : in STD_LOGIC_VECTOR ( 19 downto 0 );
    aclk : in STD_LOGIC;
    fifo_full_in : in STD_LOGIC;
    freset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0 is
  signal cnt : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \^fifo_full_out\ : STD_LOGIC;
  signal fifo_full_out_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m_axis_tlast0 : STD_LOGIC;
  signal \m_axis_tlast0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tlast0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tlast0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tlast0_carry__0_n_2\ : STD_LOGIC;
  signal \m_axis_tlast0_carry__0_n_3\ : STD_LOGIC;
  signal m_axis_tlast0_carry_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast0_carry_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast0_carry_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast0_carry_i_4_n_0 : STD_LOGIC;
  signal m_axis_tlast0_carry_n_0 : STD_LOGIC;
  signal m_axis_tlast0_carry_n_1 : STD_LOGIC;
  signal m_axis_tlast0_carry_n_2 : STD_LOGIC;
  signal m_axis_tlast0_carry_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \NLW_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_m_axis_tlast0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_m_axis_tlast0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_m_axis_tlast0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair0";
begin
  fifo_full_out <= \^fifo_full_out\;
  m_axis_tdata(15 downto 0) <= \^m_axis_tdata\(15 downto 0);
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => \^m_axis_tdata\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_2_in(4 downto 1),
      S(3 downto 0) => \^m_axis_tdata\(4 downto 1)
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_2_in(8 downto 5),
      S(3 downto 0) => \^m_axis_tdata\(8 downto 5)
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_2_in(12 downto 9),
      S(3 downto 0) => \^m_axis_tdata\(12 downto 9)
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_cnt0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt0_carry__2_n_2\,
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_2_in(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => \^m_axis_tdata\(15 downto 13)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8882888"
    )
        port map (
      I0 => resetn,
      I1 => \^m_axis_tdata\(0),
      I2 => s_axis_tvalid,
      I3 => m_axis_tready,
      I4 => m_axis_tlast0,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      O => p_0_in
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \^m_axis_tdata\(0),
      R => '0'
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(10),
      Q => \^m_axis_tdata\(10),
      R => cnt(15)
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(11),
      Q => \^m_axis_tdata\(11),
      R => cnt(15)
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(12),
      Q => \^m_axis_tdata\(12),
      R => cnt(15)
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(13),
      Q => \^m_axis_tdata\(13),
      R => cnt(15)
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(14),
      Q => \^m_axis_tdata\(14),
      R => cnt(15)
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(15),
      Q => \^m_axis_tdata\(15),
      R => cnt(15)
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(1),
      Q => \^m_axis_tdata\(1),
      R => cnt(15)
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(2),
      Q => \^m_axis_tdata\(2),
      R => cnt(15)
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(3),
      Q => \^m_axis_tdata\(3),
      R => cnt(15)
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(4),
      Q => \^m_axis_tdata\(4),
      R => cnt(15)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(5),
      Q => \^m_axis_tdata\(5),
      R => cnt(15)
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(6),
      Q => \^m_axis_tdata\(6),
      R => cnt(15)
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(7),
      Q => \^m_axis_tdata\(7),
      R => cnt(15)
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(8),
      Q => \^m_axis_tdata\(8),
      R => cnt(15)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => p_0_in,
      D => p_2_in(9),
      Q => \^m_axis_tdata\(9),
      R => cnt(15)
    );
fifo_full_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \^fifo_full_out\,
      I1 => fifo_full_in,
      I2 => freset,
      I3 => resetn,
      O => fifo_full_out_i_1_n_0
    );
fifo_full_out_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => fifo_full_out_i_1_n_0,
      Q => \^fifo_full_out\,
      R => '0'
    );
\inst/\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
        port map (
      I0 => resetn,
      I1 => m_axis_tlast0,
      I2 => m_axis_tready,
      I3 => s_axis_tvalid,
      O => cnt(15)
    );
m_axis_tlast0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => m_axis_tlast0_carry_n_0,
      CO(2) => m_axis_tlast0_carry_n_1,
      CO(1) => m_axis_tlast0_carry_n_2,
      CO(0) => m_axis_tlast0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_m_axis_tlast0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => m_axis_tlast0_carry_i_1_n_0,
      S(2) => m_axis_tlast0_carry_i_2_n_0,
      S(1) => m_axis_tlast0_carry_i_3_n_0,
      S(0) => m_axis_tlast0_carry_i_4_n_0
    );
\m_axis_tlast0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => m_axis_tlast0_carry_n_0,
      CO(3) => \NLW_m_axis_tlast0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => m_axis_tlast0,
      CO(1) => \m_axis_tlast0_carry__0_n_2\,
      CO(0) => \m_axis_tlast0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_m_axis_tlast0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \m_axis_tlast0_carry__0_i_1_n_0\,
      S(1) => \m_axis_tlast0_carry__0_i_2_n_0\,
      S(0) => \m_axis_tlast0_carry__0_i_3_n_0\
    );
\m_axis_tlast0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pkt_length(18),
      I1 => pkt_length(19),
      O => \m_axis_tlast0_carry__0_i_1_n_0\
    );
\m_axis_tlast0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => \^m_axis_tdata\(15),
      I1 => pkt_length(15),
      I2 => pkt_length(17),
      I3 => pkt_length(16),
      O => \m_axis_tlast0_carry__0_i_2_n_0\
    );
\m_axis_tlast0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^m_axis_tdata\(12),
      I1 => pkt_length(12),
      I2 => pkt_length(14),
      I3 => \^m_axis_tdata\(14),
      I4 => pkt_length(13),
      I5 => \^m_axis_tdata\(13),
      O => \m_axis_tlast0_carry__0_i_3_n_0\
    );
m_axis_tlast0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^m_axis_tdata\(9),
      I1 => pkt_length(9),
      I2 => pkt_length(11),
      I3 => \^m_axis_tdata\(11),
      I4 => pkt_length(10),
      I5 => \^m_axis_tdata\(10),
      O => m_axis_tlast0_carry_i_1_n_0
    );
m_axis_tlast0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^m_axis_tdata\(6),
      I1 => pkt_length(6),
      I2 => pkt_length(8),
      I3 => \^m_axis_tdata\(8),
      I4 => pkt_length(7),
      I5 => \^m_axis_tdata\(7),
      O => m_axis_tlast0_carry_i_2_n_0
    );
m_axis_tlast0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^m_axis_tdata\(3),
      I1 => pkt_length(3),
      I2 => pkt_length(5),
      I3 => \^m_axis_tdata\(5),
      I4 => pkt_length(4),
      I5 => \^m_axis_tdata\(4),
      O => m_axis_tlast0_carry_i_3_n_0
    );
m_axis_tlast0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^m_axis_tdata\(0),
      I1 => pkt_length(0),
      I2 => pkt_length(2),
      I3 => \^m_axis_tdata\(2),
      I4 => pkt_length(1),
      I5 => \^m_axis_tdata\(1),
      O => m_axis_tlast0_carry_i_4_n_0
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
    aclk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    fifo_full_in : in STD_LOGIC;
    freset : in STD_LOGIC;
    fifo_full_out : out STD_LOGIC;
    pkt_length : in STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_tlast_generator_1_0,tlast_generator_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "tlast_generator_v1_0,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET resetn, ASSOCIATED_BUSIF s_axis:m_axis, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tdata\(15 downto 0) <= s_axis_tdata(15 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(31 downto 16) <= \^m_axis_tdata\(31 downto 16);
  m_axis_tdata(15 downto 0) <= \^s_axis_tdata\(15 downto 0);
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0
     port map (
      aclk => aclk,
      fifo_full_in => fifo_full_in,
      fifo_full_out => fifo_full_out,
      freset => freset,
      m_axis_tdata(15 downto 0) => \^m_axis_tdata\(31 downto 16),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => \^m_axis_tready\,
      pkt_length(19 downto 0) => pkt_length(19 downto 0),
      resetn => resetn,
      s_axis_tvalid => \^s_axis_tvalid\
    );
end STRUCTURE;
