-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Jun 10 01:24:17 2020
-- Host        : HomePC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tlast_generator_0_1_sim_netlist.vhdl
-- Design      : design_1_tlast_generator_0_1
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
    m_axis_tlast : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    resetn : in STD_LOGIC;
    pkt_length : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0 is
  signal \cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal \m_axis_tlast_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tlast_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tlast_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tlast_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tlast_carry__0_n_0\ : STD_LOGIC;
  signal \m_axis_tlast_carry__0_n_1\ : STD_LOGIC;
  signal \m_axis_tlast_carry__0_n_2\ : STD_LOGIC;
  signal \m_axis_tlast_carry__0_n_3\ : STD_LOGIC;
  signal \m_axis_tlast_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tlast_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tlast_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tlast_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tlast_carry__1_n_2\ : STD_LOGIC;
  signal \m_axis_tlast_carry__1_n_3\ : STD_LOGIC;
  signal m_axis_tlast_carry_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_carry_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_carry_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast_carry_i_4_n_0 : STD_LOGIC;
  signal m_axis_tlast_carry_i_5_n_0 : STD_LOGIC;
  signal m_axis_tlast_carry_i_6_n_0 : STD_LOGIC;
  signal m_axis_tlast_carry_i_7_n_0 : STD_LOGIC;
  signal m_axis_tlast_carry_n_0 : STD_LOGIC;
  signal m_axis_tlast_carry_n_1 : STD_LOGIC;
  signal m_axis_tlast_carry_n_2 : STD_LOGIC;
  signal m_axis_tlast_carry_n_3 : STD_LOGIC;
  signal new_sample : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_m_axis_tlast_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_m_axis_tlast_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_m_axis_tlast_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_m_axis_tlast_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[8]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m_axis_tlast_carry_i_6 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_tlast_carry_i_7 : label is "soft_lutpair1";
begin
  m_axis_tlast <= \^m_axis_tlast\;
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      O => p_0_in(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      O => p_0_in(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(2),
      O => p_0_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg__0\(1),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(3),
      O => p_0_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_reg__0\(2),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(3),
      I4 => \cnt_reg__0\(4),
      O => p_0_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(4),
      I5 => \cnt_reg__0\(5),
      O => p_0_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt[8]_i_4_n_0\,
      I1 => \cnt_reg__0\(6),
      O => p_0_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt[8]_i_4_n_0\,
      I1 => \cnt_reg__0\(6),
      I2 => \cnt_reg__0\(7),
      O => p_0_in(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      I2 => \^m_axis_tlast\,
      I3 => resetn,
      O => \cnt[8]_i_1_n_0\
    );
\cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      O => new_sample
    );
\cnt[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg__0\(6),
      I1 => \cnt[8]_i_4_n_0\,
      I2 => \cnt_reg__0\(7),
      I3 => \cnt_reg__0\(8),
      O => p_0_in(8)
    );
\cnt[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cnt_reg__0\(5),
      I1 => \cnt_reg__0\(3),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(0),
      I4 => \cnt_reg__0\(2),
      I5 => \cnt_reg__0\(4),
      O => \cnt[8]_i_4_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => new_sample,
      D => p_0_in(0),
      Q => \cnt_reg__0\(0),
      R => \cnt[8]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => new_sample,
      D => p_0_in(1),
      Q => \cnt_reg__0\(1),
      R => \cnt[8]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => new_sample,
      D => p_0_in(2),
      Q => \cnt_reg__0\(2),
      R => \cnt[8]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => new_sample,
      D => p_0_in(3),
      Q => \cnt_reg__0\(3),
      R => \cnt[8]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => new_sample,
      D => p_0_in(4),
      Q => \cnt_reg__0\(4),
      R => \cnt[8]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => new_sample,
      D => p_0_in(5),
      Q => \cnt_reg__0\(5),
      R => \cnt[8]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => new_sample,
      D => p_0_in(6),
      Q => \cnt_reg__0\(6),
      R => \cnt[8]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => new_sample,
      D => p_0_in(7),
      Q => \cnt_reg__0\(7),
      R => \cnt[8]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => new_sample,
      D => p_0_in(8),
      Q => \cnt_reg__0\(8),
      R => \cnt[8]_i_1_n_0\
    );
m_axis_tlast_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => m_axis_tlast_carry_n_0,
      CO(2) => m_axis_tlast_carry_n_1,
      CO(1) => m_axis_tlast_carry_n_2,
      CO(0) => m_axis_tlast_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_m_axis_tlast_carry_O_UNCONNECTED(3 downto 0),
      S(3) => m_axis_tlast_carry_i_1_n_0,
      S(2) => m_axis_tlast_carry_i_2_n_0,
      S(1) => m_axis_tlast_carry_i_3_n_0,
      S(0) => m_axis_tlast_carry_i_4_n_0
    );
\m_axis_tlast_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => m_axis_tlast_carry_n_0,
      CO(3) => \m_axis_tlast_carry__0_n_0\,
      CO(2) => \m_axis_tlast_carry__0_n_1\,
      CO(1) => \m_axis_tlast_carry__0_n_2\,
      CO(0) => \m_axis_tlast_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_m_axis_tlast_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \m_axis_tlast_carry__0_i_1_n_0\,
      S(2) => \m_axis_tlast_carry__0_i_2_n_0\,
      S(1) => \m_axis_tlast_carry__0_i_3_n_0\,
      S(0) => \m_axis_tlast_carry__0_i_4_n_0\
    );
\m_axis_tlast_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pkt_length(7),
      I1 => \m_axis_tlast_carry__1_i_4_n_0\,
      I2 => pkt_length(6),
      I3 => pkt_length(8),
      O => \m_axis_tlast_carry__0_i_1_n_0\
    );
\m_axis_tlast_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pkt_length(7),
      I1 => \m_axis_tlast_carry__1_i_4_n_0\,
      I2 => pkt_length(6),
      I3 => pkt_length(8),
      O => \m_axis_tlast_carry__0_i_2_n_0\
    );
\m_axis_tlast_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pkt_length(7),
      I1 => \m_axis_tlast_carry__1_i_4_n_0\,
      I2 => pkt_length(6),
      I3 => pkt_length(8),
      O => \m_axis_tlast_carry__0_i_3_n_0\
    );
\m_axis_tlast_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pkt_length(7),
      I1 => \m_axis_tlast_carry__1_i_4_n_0\,
      I2 => pkt_length(6),
      I3 => pkt_length(8),
      O => \m_axis_tlast_carry__0_i_4_n_0\
    );
\m_axis_tlast_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tlast_carry__0_n_0\,
      CO(3) => \NLW_m_axis_tlast_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \^m_axis_tlast\,
      CO(1) => \m_axis_tlast_carry__1_n_2\,
      CO(0) => \m_axis_tlast_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_m_axis_tlast_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \m_axis_tlast_carry__1_i_1_n_0\,
      S(1) => \m_axis_tlast_carry__1_i_2_n_0\,
      S(0) => \m_axis_tlast_carry__1_i_3_n_0\
    );
\m_axis_tlast_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pkt_length(7),
      I1 => \m_axis_tlast_carry__1_i_4_n_0\,
      I2 => pkt_length(6),
      I3 => pkt_length(8),
      O => \m_axis_tlast_carry__1_i_1_n_0\
    );
\m_axis_tlast_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pkt_length(7),
      I1 => \m_axis_tlast_carry__1_i_4_n_0\,
      I2 => pkt_length(6),
      I3 => pkt_length(8),
      O => \m_axis_tlast_carry__1_i_2_n_0\
    );
\m_axis_tlast_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pkt_length(7),
      I1 => \m_axis_tlast_carry__1_i_4_n_0\,
      I2 => pkt_length(6),
      I3 => pkt_length(8),
      O => \m_axis_tlast_carry__1_i_3_n_0\
    );
\m_axis_tlast_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pkt_length(4),
      I1 => pkt_length(2),
      I2 => pkt_length(0),
      I3 => pkt_length(1),
      I4 => pkt_length(3),
      I5 => pkt_length(5),
      O => \m_axis_tlast_carry__1_i_4_n_0\
    );
m_axis_tlast_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pkt_length(7),
      I1 => \m_axis_tlast_carry__1_i_4_n_0\,
      I2 => pkt_length(6),
      I3 => pkt_length(8),
      O => m_axis_tlast_carry_i_1_n_0
    );
m_axis_tlast_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9600"
    )
        port map (
      I0 => \cnt_reg__0\(6),
      I1 => \m_axis_tlast_carry__1_i_4_n_0\,
      I2 => pkt_length(6),
      I3 => m_axis_tlast_carry_i_5_n_0,
      O => m_axis_tlast_carry_i_2_n_0
    );
m_axis_tlast_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8002200808800220"
    )
        port map (
      I0 => m_axis_tlast_carry_i_6_n_0,
      I1 => pkt_length(5),
      I2 => m_axis_tlast_carry_i_7_n_0,
      I3 => pkt_length(4),
      I4 => \cnt_reg__0\(5),
      I5 => \cnt_reg__0\(4),
      O => m_axis_tlast_carry_i_3_n_0
    );
m_axis_tlast_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002100808400210"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => pkt_length(2),
      I2 => pkt_length(0),
      I3 => pkt_length(1),
      I4 => \cnt_reg__0\(2),
      I5 => \cnt_reg__0\(1),
      O => m_axis_tlast_carry_i_4_n_0
    );
m_axis_tlast_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8484844221212118"
    )
        port map (
      I0 => \cnt_reg__0\(7),
      I1 => \cnt_reg__0\(8),
      I2 => pkt_length(7),
      I3 => \m_axis_tlast_carry__1_i_4_n_0\,
      I4 => pkt_length(6),
      I5 => pkt_length(8),
      O => m_axis_tlast_carry_i_5_n_0
    );
m_axis_tlast_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => pkt_length(3),
      I1 => pkt_length(1),
      I2 => pkt_length(0),
      I3 => pkt_length(2),
      I4 => \cnt_reg__0\(3),
      O => m_axis_tlast_carry_i_6_n_0
    );
m_axis_tlast_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pkt_length(2),
      I1 => pkt_length(0),
      I2 => pkt_length(1),
      I3 => pkt_length(3),
      O => m_axis_tlast_carry_i_7_n_0
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
    pkt_length : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_tlast_generator_0_1,tlast_generator_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "tlast_generator_v1_0,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET resetn, ASSOCIATED_BUSIF s_axis:m_axis, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
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
  m_axis_tdata(15 downto 0) <= \^s_axis_tdata\(15 downto 0);
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_generator_v1_0
     port map (
      aclk => aclk,
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => \^m_axis_tready\,
      pkt_length(8 downto 0) => pkt_length(8 downto 0),
      resetn => resetn,
      s_axis_tvalid => \^s_axis_tvalid\
    );
end STRUCTURE;
