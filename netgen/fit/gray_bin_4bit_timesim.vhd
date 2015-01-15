--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: gray_bin_4bit_timesim.vhd
-- /___/   /\     Timestamp: Mon Dec 15 16:32:52 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -ar Structure -tm gray_bin_4bit -w -dir netgen/fit -ofmt vhdl -sim gray_bin_4bit.nga gray_bin_4bit_timesim.vhd 
-- Device	: XC2C64A-7-VQ44 (Speed File: Version 14.0 Advance Product Specification)
-- Input file	: gray_bin_4bit.nga
-- Output file	: /share/users/alperen.aydin/home/TPElec/ELN1/SysMeteo/netgen/fit/gray_bin_4bit_timesim.vhd
-- # of Entities	: 1
-- Design Name	: gray_bin_4bit.nga
-- Xilinx	: /softs/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity gray_bin_4bit is
  port (
    weathercock : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    binary_code : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end gray_bin_4bit;

architecture Structure of gray_bin_4bit is
  signal weathercock_0_II_UIM_1 : STD_LOGIC; 
  signal weathercock_1_II_UIM_3 : STD_LOGIC; 
  signal weathercock_3_II_UIM_5 : STD_LOGIC; 
  signal weathercock_2_II_UIM_7 : STD_LOGIC; 
  signal binary_code_0_MC_Q_9 : STD_LOGIC; 
  signal binary_code_1_MC_Q_11 : STD_LOGIC; 
  signal binary_code_2_MC_Q_13 : STD_LOGIC; 
  signal binary_code_3_MC_Q_15 : STD_LOGIC; 
  signal binary_code_0_MC_Q_tsimrenamed_net_Q_16 : STD_LOGIC; 
  signal binary_code_0_MC_D_17 : STD_LOGIC; 
  signal binary_code_0_MC_D1_18 : STD_LOGIC; 
  signal binary_code_0_MC_D2_19 : STD_LOGIC; 
  signal binary_code_1_MC_UIM_20 : STD_LOGIC; 
  signal binary_code_0_MC_D2_PT_0_21 : STD_LOGIC; 
  signal binary_code_0_MC_D2_PT_1_22 : STD_LOGIC; 
  signal binary_code_1_MC_Q_tsimrenamed_net_Q_23 : STD_LOGIC; 
  signal binary_code_1_MC_D_24 : STD_LOGIC; 
  signal binary_code_1_MC_D1_25 : STD_LOGIC; 
  signal binary_code_1_MC_D2_26 : STD_LOGIC; 
  signal binary_code_2_MC_UIM_27 : STD_LOGIC; 
  signal binary_code_1_MC_D2_PT_0_28 : STD_LOGIC; 
  signal binary_code_1_MC_D2_PT_1_29 : STD_LOGIC; 
  signal binary_code_2_MC_Q_tsimrenamed_net_Q_30 : STD_LOGIC; 
  signal binary_code_2_MC_D_31 : STD_LOGIC; 
  signal binary_code_2_MC_D1_32 : STD_LOGIC; 
  signal binary_code_2_MC_D2_33 : STD_LOGIC; 
  signal binary_code_2_MC_D2_PT_0_34 : STD_LOGIC; 
  signal binary_code_2_MC_D2_PT_1_35 : STD_LOGIC; 
  signal binary_code_3_MC_Q_tsimrenamed_net_Q_36 : STD_LOGIC; 
  signal binary_code_3_MC_D_37 : STD_LOGIC; 
  signal binary_code_3_MC_D1_38 : STD_LOGIC; 
  signal binary_code_3_MC_D2_39 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_0_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_0_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_0_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_0_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_0_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_3_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_binary_code_3_MC_D1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_binary_code_0_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_binary_code_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_binary_code_1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_binary_code_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_binary_code_2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_binary_code_2_MC_D2_PT_1_IN0 : STD_LOGIC; 
begin
  weathercock_0_II_UIM : X_BUF
    port map (
      I => weathercock(0),
      O => weathercock_0_II_UIM_1
    );
  weathercock_1_II_UIM : X_BUF
    port map (
      I => weathercock(1),
      O => weathercock_1_II_UIM_3
    );
  weathercock_3_II_UIM : X_BUF
    port map (
      I => weathercock(3),
      O => weathercock_3_II_UIM_5
    );
  weathercock_2_II_UIM : X_BUF
    port map (
      I => weathercock(2),
      O => weathercock_2_II_UIM_7
    );
  binary_code_0_Q : X_BUF
    port map (
      I => binary_code_0_MC_Q_9,
      O => binary_code(0)
    );
  binary_code_1_Q : X_BUF
    port map (
      I => binary_code_1_MC_Q_11,
      O => binary_code(1)
    );
  binary_code_2_Q : X_BUF
    port map (
      I => binary_code_2_MC_Q_13,
      O => binary_code(2)
    );
  binary_code_3_Q : X_BUF
    port map (
      I => binary_code_3_MC_Q_15,
      O => binary_code(3)
    );
  binary_code_0_MC_Q : X_BUF
    port map (
      I => binary_code_0_MC_Q_tsimrenamed_net_Q_16,
      O => binary_code_0_MC_Q_9
    );
  binary_code_0_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => binary_code_0_MC_D_17,
      O => binary_code_0_MC_Q_tsimrenamed_net_Q_16
    );
  binary_code_0_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_binary_code_0_MC_D_IN0,
      I1 => NlwBufferSignal_binary_code_0_MC_D_IN1,
      O => binary_code_0_MC_D_17
    );
  binary_code_0_MC_D1 : X_ZERO
    port map (
      O => binary_code_0_MC_D1_18
    );
  binary_code_0_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_binary_code_0_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_binary_code_0_MC_D2_PT_0_IN1,
      O => binary_code_0_MC_D2_PT_0_21
    );
  binary_code_0_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_binary_code_0_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_binary_code_0_MC_D2_PT_1_IN1,
      O => binary_code_0_MC_D2_PT_1_22
    );
  binary_code_0_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_binary_code_0_MC_D2_IN0,
      I1 => NlwBufferSignal_binary_code_0_MC_D2_IN1,
      O => binary_code_0_MC_D2_19
    );
  binary_code_1_MC_Q : X_BUF
    port map (
      I => binary_code_1_MC_Q_tsimrenamed_net_Q_23,
      O => binary_code_1_MC_Q_11
    );
  binary_code_1_MC_UIM : X_BUF
    port map (
      I => binary_code_1_MC_Q_tsimrenamed_net_Q_23,
      O => binary_code_1_MC_UIM_20
    );
  binary_code_1_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => binary_code_1_MC_D_24,
      O => binary_code_1_MC_Q_tsimrenamed_net_Q_23
    );
  binary_code_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_binary_code_1_MC_D_IN0,
      I1 => NlwBufferSignal_binary_code_1_MC_D_IN1,
      O => binary_code_1_MC_D_24
    );
  binary_code_1_MC_D1 : X_ZERO
    port map (
      O => binary_code_1_MC_D1_25
    );
  binary_code_1_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_binary_code_1_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_binary_code_1_MC_D2_PT_0_IN1,
      O => binary_code_1_MC_D2_PT_0_28
    );
  binary_code_1_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_binary_code_1_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_binary_code_1_MC_D2_PT_1_IN1,
      O => binary_code_1_MC_D2_PT_1_29
    );
  binary_code_1_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_binary_code_1_MC_D2_IN0,
      I1 => NlwBufferSignal_binary_code_1_MC_D2_IN1,
      O => binary_code_1_MC_D2_26
    );
  binary_code_2_MC_Q : X_BUF
    port map (
      I => binary_code_2_MC_Q_tsimrenamed_net_Q_30,
      O => binary_code_2_MC_Q_13
    );
  binary_code_2_MC_UIM : X_BUF
    port map (
      I => binary_code_2_MC_Q_tsimrenamed_net_Q_30,
      O => binary_code_2_MC_UIM_27
    );
  binary_code_2_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => binary_code_2_MC_D_31,
      O => binary_code_2_MC_Q_tsimrenamed_net_Q_30
    );
  binary_code_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_binary_code_2_MC_D_IN0,
      I1 => NlwBufferSignal_binary_code_2_MC_D_IN1,
      O => binary_code_2_MC_D_31
    );
  binary_code_2_MC_D1 : X_ZERO
    port map (
      O => binary_code_2_MC_D1_32
    );
  binary_code_2_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_binary_code_2_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_binary_code_2_MC_D2_PT_0_IN1,
      O => binary_code_2_MC_D2_PT_0_34
    );
  binary_code_2_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_binary_code_2_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_binary_code_2_MC_D2_PT_1_IN1,
      O => binary_code_2_MC_D2_PT_1_35
    );
  binary_code_2_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_binary_code_2_MC_D2_IN0,
      I1 => NlwBufferSignal_binary_code_2_MC_D2_IN1,
      O => binary_code_2_MC_D2_33
    );
  binary_code_3_MC_Q : X_BUF
    port map (
      I => binary_code_3_MC_Q_tsimrenamed_net_Q_36,
      O => binary_code_3_MC_Q_15
    );
  binary_code_3_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => binary_code_3_MC_D_37,
      O => binary_code_3_MC_Q_tsimrenamed_net_Q_36
    );
  binary_code_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_binary_code_3_MC_D_IN0,
      I1 => NlwBufferSignal_binary_code_3_MC_D_IN1,
      O => binary_code_3_MC_D_37
    );
  binary_code_3_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_binary_code_3_MC_D1_IN0,
      I1 => NlwBufferSignal_binary_code_3_MC_D1_IN1,
      O => binary_code_3_MC_D1_38
    );
  binary_code_3_MC_D2 : X_ZERO
    port map (
      O => binary_code_3_MC_D2_39
    );
  NlwBufferBlock_binary_code_0_MC_D_IN0 : X_BUF
    port map (
      I => binary_code_0_MC_D1_18,
      O => NlwBufferSignal_binary_code_0_MC_D_IN0
    );
  NlwBufferBlock_binary_code_0_MC_D_IN1 : X_BUF
    port map (
      I => binary_code_0_MC_D2_19,
      O => NlwBufferSignal_binary_code_0_MC_D_IN1
    );
  NlwBufferBlock_binary_code_0_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_1,
      O => NlwBufferSignal_binary_code_0_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_binary_code_0_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => binary_code_1_MC_UIM_20,
      O => NlwBufferSignal_binary_code_0_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_binary_code_0_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_1,
      O => NlwBufferSignal_binary_code_0_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_binary_code_0_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => binary_code_1_MC_UIM_20,
      O => NlwBufferSignal_binary_code_0_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_binary_code_0_MC_D2_IN0 : X_BUF
    port map (
      I => binary_code_0_MC_D2_PT_0_21,
      O => NlwBufferSignal_binary_code_0_MC_D2_IN0
    );
  NlwBufferBlock_binary_code_0_MC_D2_IN1 : X_BUF
    port map (
      I => binary_code_0_MC_D2_PT_1_22,
      O => NlwBufferSignal_binary_code_0_MC_D2_IN1
    );
  NlwBufferBlock_binary_code_1_MC_D_IN0 : X_BUF
    port map (
      I => binary_code_1_MC_D1_25,
      O => NlwBufferSignal_binary_code_1_MC_D_IN0
    );
  NlwBufferBlock_binary_code_1_MC_D_IN1 : X_BUF
    port map (
      I => binary_code_1_MC_D2_26,
      O => NlwBufferSignal_binary_code_1_MC_D_IN1
    );
  NlwBufferBlock_binary_code_1_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => weathercock_1_II_UIM_3,
      O => NlwBufferSignal_binary_code_1_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_binary_code_1_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => binary_code_2_MC_UIM_27,
      O => NlwBufferSignal_binary_code_1_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_binary_code_1_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => weathercock_1_II_UIM_3,
      O => NlwBufferSignal_binary_code_1_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_binary_code_1_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => binary_code_2_MC_UIM_27,
      O => NlwBufferSignal_binary_code_1_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_binary_code_1_MC_D2_IN0 : X_BUF
    port map (
      I => binary_code_1_MC_D2_PT_0_28,
      O => NlwBufferSignal_binary_code_1_MC_D2_IN0
    );
  NlwBufferBlock_binary_code_1_MC_D2_IN1 : X_BUF
    port map (
      I => binary_code_1_MC_D2_PT_1_29,
      O => NlwBufferSignal_binary_code_1_MC_D2_IN1
    );
  NlwBufferBlock_binary_code_2_MC_D_IN0 : X_BUF
    port map (
      I => binary_code_2_MC_D1_32,
      O => NlwBufferSignal_binary_code_2_MC_D_IN0
    );
  NlwBufferBlock_binary_code_2_MC_D_IN1 : X_BUF
    port map (
      I => binary_code_2_MC_D2_33,
      O => NlwBufferSignal_binary_code_2_MC_D_IN1
    );
  NlwBufferBlock_binary_code_2_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => weathercock_3_II_UIM_5,
      O => NlwBufferSignal_binary_code_2_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_binary_code_2_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => weathercock_2_II_UIM_7,
      O => NlwBufferSignal_binary_code_2_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_binary_code_2_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => weathercock_3_II_UIM_5,
      O => NlwBufferSignal_binary_code_2_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_binary_code_2_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => weathercock_2_II_UIM_7,
      O => NlwBufferSignal_binary_code_2_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_binary_code_2_MC_D2_IN0 : X_BUF
    port map (
      I => binary_code_2_MC_D2_PT_0_34,
      O => NlwBufferSignal_binary_code_2_MC_D2_IN0
    );
  NlwBufferBlock_binary_code_2_MC_D2_IN1 : X_BUF
    port map (
      I => binary_code_2_MC_D2_PT_1_35,
      O => NlwBufferSignal_binary_code_2_MC_D2_IN1
    );
  NlwBufferBlock_binary_code_3_MC_D_IN0 : X_BUF
    port map (
      I => binary_code_3_MC_D1_38,
      O => NlwBufferSignal_binary_code_3_MC_D_IN0
    );
  NlwBufferBlock_binary_code_3_MC_D_IN1 : X_BUF
    port map (
      I => binary_code_3_MC_D2_39,
      O => NlwBufferSignal_binary_code_3_MC_D_IN1
    );
  NlwBufferBlock_binary_code_3_MC_D1_IN0 : X_BUF
    port map (
      I => weathercock_3_II_UIM_5,
      O => NlwBufferSignal_binary_code_3_MC_D1_IN0
    );
  NlwBufferBlock_binary_code_3_MC_D1_IN1 : X_BUF
    port map (
      I => weathercock_3_II_UIM_5,
      O => NlwBufferSignal_binary_code_3_MC_D1_IN1
    );
  NlwInverterBlock_binary_code_0_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_binary_code_0_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_binary_code_0_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_binary_code_0_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_binary_code_0_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_binary_code_0_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_binary_code_1_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_binary_code_1_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_binary_code_1_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_binary_code_1_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_binary_code_1_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_binary_code_1_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_binary_code_2_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_binary_code_2_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_binary_code_2_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_binary_code_2_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_binary_code_2_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_binary_code_2_MC_D2_PT_1_IN0
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

