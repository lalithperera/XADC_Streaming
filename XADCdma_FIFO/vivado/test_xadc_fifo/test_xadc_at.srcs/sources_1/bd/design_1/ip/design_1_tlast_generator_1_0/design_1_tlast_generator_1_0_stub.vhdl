-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Jul 13 14:12:20 2020
-- Host        : lppc running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/hdd/FIFO_XADCdma/vivado/test_xadc_EV/test_xadc_at.srcs/sources_1/bd/design_1/ip/design_1_tlast_generator_1_0/design_1_tlast_generator_1_0_stub.vhdl
-- Design      : design_1_tlast_generator_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_tlast_generator_1_0 is
  Port ( 
    aclk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    fifo_full_in : in STD_LOGIC;
    freset : in STD_LOGIC;
    fifo_full_out : out STD_LOGIC;
    pkt_length : in STD_LOGIC_VECTOR ( 21 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC
  );

end design_1_tlast_generator_1_0;

architecture stub of design_1_tlast_generator_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,resetn,fifo_full_in,freset,fifo_full_out,pkt_length[21:0],m_axis_tdata[31:0],m_axis_tlast,m_axis_tvalid,m_axis_tready,s_axis_tdata[15:0],s_axis_tvalid,s_axis_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tlast_generator_v1_0,Vivado 2018.3";
begin
end;
