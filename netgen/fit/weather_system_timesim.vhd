--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: weather_system_timesim.vhd
-- /___/   /\     Timestamp: Thu Jan 15 14:42:28 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -ar Structure -tm weather_system -w -dir netgen/fit -ofmt vhdl -sim weather_system.nga weather_system_timesim.vhd 
-- Device	: XC2C64A-7-VQ44 (Speed File: Version 14.0 Advance Product Specification)
-- Input file	: weather_system.nga
-- Output file	: /fs02/share/users/alperen.aydin/home/TPElec/ELN1/SysMeteo/netgen/fit/weather_system_timesim.vhd
-- # of Entities	: 1
-- Design Name	: weather_system.nga
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

entity weather_system is
  port (
    clock : in STD_LOGIC := 'X'; 
    code_select : in STD_LOGIC := 'X'; 
    mode_select : in STD_LOGIC := 'X'; 
    anemometer : in STD_LOGIC := 'X'; 
    weathercock : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    code_wind_speed : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    wind_dir_speed : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end weather_system;

architecture Structure of weather_system is
  signal clock_II_FCLK_1 : STD_LOGIC; 
  signal code_select_II_UIM_3 : STD_LOGIC; 
  signal weathercock_0_II_UIM_5 : STD_LOGIC; 
  signal mode_select_II_UIM_7 : STD_LOGIC; 
  signal weathercock_3_II_UIM_9 : STD_LOGIC; 
  signal weathercock_2_II_UIM_11 : STD_LOGIC; 
  signal weathercock_1_II_UIM_13 : STD_LOGIC; 
  signal anemometer_II_UIM_15 : STD_LOGIC; 
  signal anemometer_II_IREG_16 : STD_LOGIC; 
  signal Gnd_17 : STD_LOGIC; 
  signal Vcc_18 : STD_LOGIC; 
  signal U1_U_risingedge_detector_anemometer_reg : STD_LOGIC; 
  signal code_wind_speed_0_MC_Q_21 : STD_LOGIC; 
  signal code_wind_speed_1_MC_Q_23 : STD_LOGIC; 
  signal code_wind_speed_2_MC_Q_25 : STD_LOGIC; 
  signal code_wind_speed_3_MC_Q_27 : STD_LOGIC; 
  signal wind_dir_speed_0_MC_Q_29 : STD_LOGIC; 
  signal wind_dir_speed_10_MC_Q_31 : STD_LOGIC; 
  signal wind_dir_speed_11_MC_Q_33 : STD_LOGIC; 
  signal wind_dir_speed_12_MC_Q_35 : STD_LOGIC; 
  signal wind_dir_speed_13_MC_Q_37 : STD_LOGIC; 
  signal wind_dir_speed_14_MC_Q_39 : STD_LOGIC; 
  signal wind_dir_speed_15_MC_Q_41 : STD_LOGIC; 
  signal wind_dir_speed_1_MC_Q_43 : STD_LOGIC; 
  signal wind_dir_speed_2_MC_Q_45 : STD_LOGIC; 
  signal wind_dir_speed_3_MC_Q_47 : STD_LOGIC; 
  signal wind_dir_speed_4_MC_Q_49 : STD_LOGIC; 
  signal wind_dir_speed_5_MC_Q_51 : STD_LOGIC; 
  signal wind_dir_speed_6_MC_Q_53 : STD_LOGIC; 
  signal wind_dir_speed_7_MC_Q_55 : STD_LOGIC; 
  signal wind_dir_speed_8_MC_Q_57 : STD_LOGIC; 
  signal wind_dir_speed_9_MC_Q_59 : STD_LOGIC; 
  signal code_wind_speed_0_MC_Q_tsimrenamed_net_Q_60 : STD_LOGIC; 
  signal code_wind_speed_0_MC_D_61 : STD_LOGIC; 
  signal code_wind_speed_0_MC_D1_62 : STD_LOGIC; 
  signal code_wind_speed_0_MC_D2_63 : STD_LOGIC; 
  signal code_wind_speed_0_MC_D2_PT_0_67 : STD_LOGIC; 
  signal code_wind_speed_0_MC_D2_PT_1_68 : STD_LOGIC; 
  signal code_wind_speed_0_MC_D2_PT_2_69 : STD_LOGIC; 
  signal code_wind_speed_0_MC_D2_PT_3_70 : STD_LOGIC; 
  signal code_wind_speed_0_MC_D2_PT_4_71 : STD_LOGIC; 
  signal U1_speed_code_4_MC_Q : STD_LOGIC; 
  signal U1_speed_code_4_MC_D_73 : STD_LOGIC; 
  signal U1_speed_code_4_MC_CE_74 : STD_LOGIC; 
  signal U1_speed_code_4_MC_D1_75 : STD_LOGIC; 
  signal U1_speed_code_4_MC_D2_76 : STD_LOGIC; 
  signal U1_counter_rst_78 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_4_MC_Q : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_4_MC_D_80 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_Q_81 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_4_MC_D1_82 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_4_MC_D2_83 : STD_LOGIC; 
  signal U1_U_counter_5bit_counter_rst_delay_84 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_4_MC_D2_PT_0_85 : STD_LOGIC; 
  signal U1_counter_ena_87 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_4_MC_D2_PT_1_91 : STD_LOGIC; 
  signal U1_U_counter_5bit_counter_rst_delay_MC_Q : STD_LOGIC; 
  signal U1_U_counter_5bit_counter_rst_delay_MC_D_93 : STD_LOGIC; 
  signal U1_U_counter_5bit_counter_rst_delay_MC_D1_94 : STD_LOGIC; 
  signal U1_U_counter_5bit_counter_rst_delay_MC_D2_95 : STD_LOGIC; 
  signal U1_counter_rst_MC_Q : STD_LOGIC; 
  signal U1_counter_rst_MC_D_97 : STD_LOGIC; 
  signal U1_counter_rst_MC_D1_98 : STD_LOGIC; 
  signal U1_counter_rst_MC_D2_99 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_0_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_0_MC_D_123 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_Q_124 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_0_MC_D1_125 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_0_MC_D2_126 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_10_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_10_MC_D_128 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_Q_129 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_10_MC_D1_130 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_10_MC_D2_131 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_1_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_1_MC_D_133 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_Q_134 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_1_MC_D1_135 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_1_MC_D2_136 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_2_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_2_MC_D_138 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_Q_139 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_2_MC_D1_140 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_2_MC_D2_141 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_3_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_3_MC_D_143 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_Q_144 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_3_MC_D1_145 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_3_MC_D2_146 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_4_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_4_MC_D_148 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_Q_149 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_4_MC_D1_150 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_4_MC_D2_151 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_5_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_5_MC_D_153 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_Q_154 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_5_MC_D1_155 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_5_MC_D2_156 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_6_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_6_MC_D_158 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_Q_159 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_6_MC_D1_160 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_6_MC_D2_161 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_7_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_7_MC_D_163 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_Q_164 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_7_MC_D1_165 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_7_MC_D2_166 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_8_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_8_MC_D_168 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_Q_169 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_8_MC_D1_170 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_8_MC_D2_171 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_9_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_9_MC_D_173 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_Q_174 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_9_MC_D1_175 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_9_MC_D2_176 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_11_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_11_MC_D_178 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_Q_179 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_11_MC_D1_180 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_11_MC_D2_181 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_12_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_12_MC_D_183 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_Q_184 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_12_MC_D1_185 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_12_MC_D2_186 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_13_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_13_MC_D_188 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_Q_189 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_13_MC_D1_190 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_13_MC_D2_191 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_14_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_14_MC_D_193 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_Q_194 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_14_MC_D1_195 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_14_MC_D2_196 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_15_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_15_MC_D_198 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_Q_199 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_15_MC_D1_200 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_15_MC_D2_201 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_16_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_16_MC_D_203 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_Q_204 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_16_MC_D1_205 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_16_MC_D2_206 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_17_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_17_MC_D_208 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_Q_209 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_17_MC_D1_210 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_17_MC_D2_211 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_18_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_18_MC_D_213 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_Q_214 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_18_MC_D1_215 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_18_MC_D2_216 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_19_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_19_MC_D_218 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_Q_219 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_19_MC_D1_220 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_19_MC_D2_221 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_20_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_20_MC_D_223 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_Q_224 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_20_MC_D1_225 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_20_MC_D2_226 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_21_MC_Q : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_21_MC_D_228 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_Q_229 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_21_MC_D1_230 : STD_LOGIC; 
  signal U1_U_freq_divider_count_int_21_MC_D2_231 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_0_MC_Q : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_0_MC_D_233 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_0_MC_D1_234 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_0_MC_D2_235 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_0_MC_D2_PT_0_236 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_0_MC_D2_PT_1_237 : STD_LOGIC; 
  signal U1_counter_ena_MC_Q : STD_LOGIC; 
  signal U1_counter_ena_MC_D_239 : STD_LOGIC; 
  signal U1_counter_ena_MC_D1_240 : STD_LOGIC; 
  signal U1_counter_ena_MC_D2_241 : STD_LOGIC; 
  signal U1_counter_ena_MC_D2_PT_0_242 : STD_LOGIC; 
  signal U1_counter_ena_MC_D2_PT_1_243 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_1_MC_Q : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_1_MC_D_245 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_Q_246 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_1_MC_D1_247 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_1_MC_D2_248 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_1_MC_D2_PT_0_249 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_1_MC_D2_PT_1_250 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_2_MC_Q : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_2_MC_D_252 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_Q_253 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_2_MC_D1_254 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_2_MC_D2_255 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_2_MC_D2_PT_0_256 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_2_MC_D2_PT_1_257 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_3_MC_Q : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_3_MC_D_259 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_Q_260 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_3_MC_D1_261 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_3_MC_D2_262 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_3_MC_D2_PT_0_263 : STD_LOGIC; 
  signal U1_U_counter_5bit_count_int_3_MC_D2_PT_1_264 : STD_LOGIC; 
  signal U1_speed_code_3_MC_Q : STD_LOGIC; 
  signal U1_speed_code_3_MC_D_266 : STD_LOGIC; 
  signal U1_speed_code_3_MC_CE_267 : STD_LOGIC; 
  signal U1_speed_code_3_MC_D1_268 : STD_LOGIC; 
  signal U1_speed_code_3_MC_D2_269 : STD_LOGIC; 
  signal U1_speed_code_2_MC_Q : STD_LOGIC; 
  signal U1_speed_code_2_MC_D_271 : STD_LOGIC; 
  signal U1_speed_code_2_MC_CE_272 : STD_LOGIC; 
  signal U1_speed_code_2_MC_D1_273 : STD_LOGIC; 
  signal U1_speed_code_2_MC_D2_274 : STD_LOGIC; 
  signal code_wind_speed_1_MC_Q_tsimrenamed_net_Q_275 : STD_LOGIC; 
  signal code_wind_speed_1_MC_D_276 : STD_LOGIC; 
  signal code_wind_speed_1_MC_D1_277 : STD_LOGIC; 
  signal code_wind_speed_1_MC_D2_278 : STD_LOGIC; 
  signal code_wind_speed_1_MC_D2_PT_0_279 : STD_LOGIC; 
  signal code_wind_speed_1_MC_D2_PT_1_280 : STD_LOGIC; 
  signal code_wind_speed_1_MC_D2_PT_2_282 : STD_LOGIC; 
  signal code_wind_speed_1_MC_D2_PT_3_284 : STD_LOGIC; 
  signal U1_speed_code_0_MC_Q : STD_LOGIC; 
  signal U1_speed_code_0_MC_D_286 : STD_LOGIC; 
  signal U1_speed_code_0_MC_CE_287 : STD_LOGIC; 
  signal U1_speed_code_0_MC_D1_288 : STD_LOGIC; 
  signal U1_speed_code_0_MC_D2_289 : STD_LOGIC; 
  signal U1_speed_code_1_MC_Q : STD_LOGIC; 
  signal U1_speed_code_1_MC_D_291 : STD_LOGIC; 
  signal U1_speed_code_1_MC_CE_292 : STD_LOGIC; 
  signal U1_speed_code_1_MC_D1_293 : STD_LOGIC; 
  signal U1_speed_code_1_MC_D2_294 : STD_LOGIC; 
  signal code_wind_speed_2_MC_Q_tsimrenamed_net_Q_295 : STD_LOGIC; 
  signal code_wind_speed_2_MC_D_296 : STD_LOGIC; 
  signal code_wind_speed_2_MC_D1_297 : STD_LOGIC; 
  signal code_wind_speed_2_MC_D2_298 : STD_LOGIC; 
  signal code_wind_speed_2_MC_D2_PT_0_299 : STD_LOGIC; 
  signal code_wind_speed_2_MC_D2_PT_1_300 : STD_LOGIC; 
  signal code_wind_speed_3_MC_Q_tsimrenamed_net_Q_301 : STD_LOGIC; 
  signal code_wind_speed_3_MC_D_302 : STD_LOGIC; 
  signal code_wind_speed_3_MC_D1_303 : STD_LOGIC; 
  signal code_wind_speed_3_MC_D2_304 : STD_LOGIC; 
  signal code_wind_speed_3_MC_D2_PT_0_305 : STD_LOGIC; 
  signal code_wind_speed_3_MC_D2_PT_1_306 : STD_LOGIC; 
  signal wind_dir_speed_0_MC_Q_tsimrenamed_net_Q_307 : STD_LOGIC; 
  signal wind_dir_speed_0_MC_D_308 : STD_LOGIC; 
  signal wind_dir_speed_0_MC_D1_309 : STD_LOGIC; 
  signal wind_dir_speed_0_MC_D2_310 : STD_LOGIC; 
  signal wind_dir_speed_0_MC_D2_PT_0_311 : STD_LOGIC; 
  signal wind_dir_speed_0_MC_D2_PT_1_312 : STD_LOGIC; 
  signal wind_dir_speed_0_MC_D2_PT_2_313 : STD_LOGIC; 
  signal wind_dir_speed_10_MC_Q_tsimrenamed_net_Q_314 : STD_LOGIC; 
  signal wind_dir_speed_10_MC_D_315 : STD_LOGIC; 
  signal wind_dir_speed_10_MC_D1_316 : STD_LOGIC; 
  signal wind_dir_speed_10_MC_D2_317 : STD_LOGIC; 
  signal wind_dir_speed_10_MC_D2_PT_0_318 : STD_LOGIC; 
  signal wind_dir_speed_10_MC_D2_PT_1_319 : STD_LOGIC; 
  signal wind_dir_speed_10_MC_D2_PT_2_320 : STD_LOGIC; 
  signal wind_dir_speed_10_MC_D2_PT_3_321 : STD_LOGIC; 
  signal wind_dir_speed_11_MC_Q_tsimrenamed_net_Q_322 : STD_LOGIC; 
  signal wind_dir_speed_11_MC_D_323 : STD_LOGIC; 
  signal wind_dir_speed_11_MC_D1_324 : STD_LOGIC; 
  signal wind_dir_speed_11_MC_D2_325 : STD_LOGIC; 
  signal wind_dir_speed_11_MC_D2_PT_0_326 : STD_LOGIC; 
  signal wind_dir_speed_11_MC_D2_PT_1_327 : STD_LOGIC; 
  signal wind_dir_speed_11_MC_D2_PT_2_328 : STD_LOGIC; 
  signal wind_dir_speed_12_MC_Q_tsimrenamed_net_Q_329 : STD_LOGIC; 
  signal wind_dir_speed_12_MC_D_330 : STD_LOGIC; 
  signal wind_dir_speed_12_MC_D1_331 : STD_LOGIC; 
  signal wind_dir_speed_12_MC_D2_332 : STD_LOGIC; 
  signal wind_dir_speed_12_MC_D2_PT_0_333 : STD_LOGIC; 
  signal wind_dir_speed_12_MC_D2_PT_1_334 : STD_LOGIC; 
  signal wind_dir_speed_12_MC_D2_PT_2_335 : STD_LOGIC; 
  signal wind_dir_speed_13_MC_Q_tsimrenamed_net_Q_336 : STD_LOGIC; 
  signal wind_dir_speed_13_MC_D_337 : STD_LOGIC; 
  signal wind_dir_speed_13_MC_D1_338 : STD_LOGIC; 
  signal wind_dir_speed_13_MC_D2_339 : STD_LOGIC; 
  signal wind_dir_speed_13_MC_D2_PT_0_340 : STD_LOGIC; 
  signal wind_dir_speed_13_MC_D2_PT_1_341 : STD_LOGIC; 
  signal wind_dir_speed_13_MC_D2_PT_2_342 : STD_LOGIC; 
  signal wind_dir_speed_13_MC_D2_PT_3_343 : STD_LOGIC; 
  signal wind_dir_speed_14_MC_Q_tsimrenamed_net_Q_344 : STD_LOGIC; 
  signal wind_dir_speed_14_MC_D_345 : STD_LOGIC; 
  signal wind_dir_speed_14_MC_D1_346 : STD_LOGIC; 
  signal wind_dir_speed_14_MC_D2_347 : STD_LOGIC; 
  signal wind_dir_speed_14_MC_D2_PT_0_348 : STD_LOGIC; 
  signal wind_dir_speed_14_MC_D2_PT_1_349 : STD_LOGIC; 
  signal wind_dir_speed_14_MC_D2_PT_2_350 : STD_LOGIC; 
  signal wind_dir_speed_14_MC_D2_PT_3_351 : STD_LOGIC; 
  signal wind_dir_speed_15_MC_Q_tsimrenamed_net_Q_352 : STD_LOGIC; 
  signal wind_dir_speed_15_MC_D_353 : STD_LOGIC; 
  signal wind_dir_speed_15_MC_D1_354 : STD_LOGIC; 
  signal wind_dir_speed_15_MC_D2_355 : STD_LOGIC; 
  signal wind_dir_speed_15_MC_D2_PT_0_356 : STD_LOGIC; 
  signal wind_dir_speed_15_MC_D2_PT_1_357 : STD_LOGIC; 
  signal wind_dir_speed_15_MC_D2_PT_2_358 : STD_LOGIC; 
  signal wind_dir_speed_1_MC_Q_tsimrenamed_net_Q_359 : STD_LOGIC; 
  signal wind_dir_speed_1_MC_D_360 : STD_LOGIC; 
  signal wind_dir_speed_1_MC_D1_361 : STD_LOGIC; 
  signal wind_dir_speed_1_MC_D2_362 : STD_LOGIC; 
  signal wind_dir_speed_1_MC_D2_PT_0_363 : STD_LOGIC; 
  signal wind_dir_speed_1_MC_D2_PT_1_364 : STD_LOGIC; 
  signal wind_dir_speed_1_MC_D2_PT_2_365 : STD_LOGIC; 
  signal wind_dir_speed_1_MC_D2_PT_3_366 : STD_LOGIC; 
  signal wind_dir_speed_2_MC_Q_tsimrenamed_net_Q_367 : STD_LOGIC; 
  signal wind_dir_speed_2_MC_D_368 : STD_LOGIC; 
  signal wind_dir_speed_2_MC_D1_369 : STD_LOGIC; 
  signal wind_dir_speed_2_MC_D2_370 : STD_LOGIC; 
  signal wind_dir_speed_2_MC_D2_PT_0_371 : STD_LOGIC; 
  signal wind_dir_speed_2_MC_D2_PT_1_372 : STD_LOGIC; 
  signal wind_dir_speed_3_MC_Q_tsimrenamed_net_Q_373 : STD_LOGIC; 
  signal wind_dir_speed_3_MC_D_374 : STD_LOGIC; 
  signal wind_dir_speed_3_MC_D1_375 : STD_LOGIC; 
  signal wind_dir_speed_3_MC_D2_376 : STD_LOGIC; 
  signal wind_dir_speed_3_MC_D2_PT_0_377 : STD_LOGIC; 
  signal wind_dir_speed_3_MC_D2_PT_1_378 : STD_LOGIC; 
  signal wind_dir_speed_4_MC_Q_tsimrenamed_net_Q_379 : STD_LOGIC; 
  signal wind_dir_speed_4_MC_D_380 : STD_LOGIC; 
  signal wind_dir_speed_4_MC_D1_381 : STD_LOGIC; 
  signal wind_dir_speed_4_MC_D2_382 : STD_LOGIC; 
  signal wind_dir_speed_4_MC_D2_PT_0_383 : STD_LOGIC; 
  signal wind_dir_speed_4_MC_D2_PT_1_384 : STD_LOGIC; 
  signal wind_dir_speed_5_MC_Q_tsimrenamed_net_Q_385 : STD_LOGIC; 
  signal wind_dir_speed_5_MC_D_386 : STD_LOGIC; 
  signal wind_dir_speed_5_MC_D1_387 : STD_LOGIC; 
  signal wind_dir_speed_5_MC_D2_388 : STD_LOGIC; 
  signal wind_dir_speed_5_MC_D2_PT_0_389 : STD_LOGIC; 
  signal wind_dir_speed_5_MC_D2_PT_1_390 : STD_LOGIC; 
  signal wind_dir_speed_5_MC_D2_PT_2_391 : STD_LOGIC; 
  signal wind_dir_speed_6_MC_Q_tsimrenamed_net_Q_392 : STD_LOGIC; 
  signal wind_dir_speed_6_MC_D_393 : STD_LOGIC; 
  signal wind_dir_speed_6_MC_D1_394 : STD_LOGIC; 
  signal wind_dir_speed_6_MC_D2_395 : STD_LOGIC; 
  signal wind_dir_speed_6_MC_D2_PT_0_396 : STD_LOGIC; 
  signal wind_dir_speed_6_MC_D2_PT_1_397 : STD_LOGIC; 
  signal wind_dir_speed_6_MC_D2_PT_2_398 : STD_LOGIC; 
  signal wind_dir_speed_7_MC_Q_tsimrenamed_net_Q_399 : STD_LOGIC; 
  signal wind_dir_speed_7_MC_D_400 : STD_LOGIC; 
  signal wind_dir_speed_7_MC_D1_401 : STD_LOGIC; 
  signal wind_dir_speed_7_MC_D2_402 : STD_LOGIC; 
  signal wind_dir_speed_7_MC_D2_PT_0_403 : STD_LOGIC; 
  signal wind_dir_speed_7_MC_D2_PT_1_404 : STD_LOGIC; 
  signal wind_dir_speed_7_MC_D2_PT_2_405 : STD_LOGIC; 
  signal wind_dir_speed_7_MC_D2_PT_3_406 : STD_LOGIC; 
  signal wind_dir_speed_8_MC_Q_tsimrenamed_net_Q_407 : STD_LOGIC; 
  signal wind_dir_speed_8_MC_D_408 : STD_LOGIC; 
  signal wind_dir_speed_8_MC_D1_409 : STD_LOGIC; 
  signal wind_dir_speed_8_MC_D2_410 : STD_LOGIC; 
  signal wind_dir_speed_8_MC_D2_PT_0_411 : STD_LOGIC; 
  signal wind_dir_speed_8_MC_D2_PT_1_412 : STD_LOGIC; 
  signal wind_dir_speed_8_MC_D2_PT_2_413 : STD_LOGIC; 
  signal wind_dir_speed_9_MC_Q_tsimrenamed_net_Q_414 : STD_LOGIC; 
  signal wind_dir_speed_9_MC_D_415 : STD_LOGIC; 
  signal wind_dir_speed_9_MC_D1_416 : STD_LOGIC; 
  signal wind_dir_speed_9_MC_D2_417 : STD_LOGIC; 
  signal wind_dir_speed_9_MC_D2_PT_0_418 : STD_LOGIC; 
  signal wind_dir_speed_9_MC_D2_PT_1_419 : STD_LOGIC; 
  signal wind_dir_speed_9_MC_D2_PT_2_420 : STD_LOGIC; 
  signal wind_dir_speed_9_MC_D2_PT_3_421 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_risingedge_detector_anemometer_reg_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_risingedge_detector_anemometer_reg_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_0_MC_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_4_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_4_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_4_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_4_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_4_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_4_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_4_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_rst_MC_D1_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN16 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN17 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN18 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN19 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN20 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN21 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN22 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN23 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN24 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN25 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN26 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN27 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN28 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN29 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN30 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN31 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_ena_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_ena_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_ena_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_ena_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_ena_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_ena_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_ena_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_ena_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_ena_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_ena_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_counter_ena_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_3_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_3_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_3_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_3_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_3_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_3_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_2_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_2_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_2_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_2_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_1_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_0_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_0_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_0_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_0_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_0_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_0_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_1_MC_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_1_MC_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_1_MC_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_speed_code_1_MC_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_code_wind_speed_3_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_0_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_10_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_11_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_12_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_13_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_14_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_15_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_1_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_2_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_3_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_4_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_4_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_4_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_5_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_6_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_7_MC_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_8_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_wind_dir_speed_9_MC_D2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN10 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN11 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN12 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN13 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN14 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN15 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN16 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN17 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN18 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN19 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN20 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_rst_MC_D1_IN21 : STD_LOGIC; 
  signal NlwInverterSignal_U1_U_freq_divider_count_int_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_ena_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_ena_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U1_counter_ena_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_2_MC_D1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_3_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_0_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_0_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_0_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_10_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_11_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_12_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_12_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_12_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_13_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_13_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_13_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_13_MC_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_14_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_14_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_14_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_15_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_1_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_1_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_1_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_1_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_2_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_3_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_4_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_5_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_6_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_7_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_7_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_7_MC_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_7_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_8_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_8_MC_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_8_MC_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_9_MC_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_9_MC_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_9_MC_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_wind_dir_speed_9_MC_D2_PT_3_IN3 : STD_LOGIC; 
  signal U1_speed_code : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U1_U_counter_5bit_count_int : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U1_U_freq_divider_count_int : STD_LOGIC_VECTOR ( 21 downto 0 ); 
begin
  clock_II_FCLK : X_BUF
    port map (
      I => clock,
      O => clock_II_FCLK_1
    );
  code_select_II_UIM : X_BUF
    port map (
      I => code_select,
      O => code_select_II_UIM_3
    );
  weathercock_0_II_UIM : X_BUF
    port map (
      I => weathercock(0),
      O => weathercock_0_II_UIM_5
    );
  mode_select_II_UIM : X_BUF
    port map (
      I => mode_select,
      O => mode_select_II_UIM_7
    );
  weathercock_3_II_UIM : X_BUF
    port map (
      I => weathercock(3),
      O => weathercock_3_II_UIM_9
    );
  weathercock_2_II_UIM : X_BUF
    port map (
      I => weathercock(2),
      O => weathercock_2_II_UIM_11
    );
  weathercock_1_II_UIM : X_BUF
    port map (
      I => weathercock(1),
      O => weathercock_1_II_UIM_13
    );
  anemometer_II_UIM : X_BUF
    port map (
      I => anemometer,
      O => anemometer_II_UIM_15
    );
  anemometer_II_IREG : X_BUF
    port map (
      I => anemometer,
      O => anemometer_II_IREG_16
    );
  U1_U_risingedge_detector_anemometer_reg_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_risingedge_detector_anemometer_reg_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_risingedge_detector_anemometer_reg_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_risingedge_detector_anemometer_reg
    );
  Gnd : X_ZERO
    port map (
      O => Gnd_17
    );
  Vcc : X_ONE
    port map (
      O => Vcc_18
    );
  code_wind_speed_0_Q : X_BUF
    port map (
      I => code_wind_speed_0_MC_Q_21,
      O => code_wind_speed(0)
    );
  code_wind_speed_1_Q : X_BUF
    port map (
      I => code_wind_speed_1_MC_Q_23,
      O => code_wind_speed(1)
    );
  code_wind_speed_2_Q : X_BUF
    port map (
      I => code_wind_speed_2_MC_Q_25,
      O => code_wind_speed(2)
    );
  code_wind_speed_3_Q : X_BUF
    port map (
      I => code_wind_speed_3_MC_Q_27,
      O => code_wind_speed(3)
    );
  wind_dir_speed_0_Q : X_BUF
    port map (
      I => wind_dir_speed_0_MC_Q_29,
      O => wind_dir_speed(0)
    );
  wind_dir_speed_10_Q : X_BUF
    port map (
      I => wind_dir_speed_10_MC_Q_31,
      O => wind_dir_speed(10)
    );
  wind_dir_speed_11_Q : X_BUF
    port map (
      I => wind_dir_speed_11_MC_Q_33,
      O => wind_dir_speed(11)
    );
  wind_dir_speed_12_Q : X_BUF
    port map (
      I => wind_dir_speed_12_MC_Q_35,
      O => wind_dir_speed(12)
    );
  wind_dir_speed_13_Q : X_BUF
    port map (
      I => wind_dir_speed_13_MC_Q_37,
      O => wind_dir_speed(13)
    );
  wind_dir_speed_14_Q : X_BUF
    port map (
      I => wind_dir_speed_14_MC_Q_39,
      O => wind_dir_speed(14)
    );
  wind_dir_speed_15_Q : X_BUF
    port map (
      I => wind_dir_speed_15_MC_Q_41,
      O => wind_dir_speed(15)
    );
  wind_dir_speed_1_Q : X_BUF
    port map (
      I => wind_dir_speed_1_MC_Q_43,
      O => wind_dir_speed(1)
    );
  wind_dir_speed_2_Q : X_BUF
    port map (
      I => wind_dir_speed_2_MC_Q_45,
      O => wind_dir_speed(2)
    );
  wind_dir_speed_3_Q : X_BUF
    port map (
      I => wind_dir_speed_3_MC_Q_47,
      O => wind_dir_speed(3)
    );
  wind_dir_speed_4_Q : X_BUF
    port map (
      I => wind_dir_speed_4_MC_Q_49,
      O => wind_dir_speed(4)
    );
  wind_dir_speed_5_Q : X_BUF
    port map (
      I => wind_dir_speed_5_MC_Q_51,
      O => wind_dir_speed(5)
    );
  wind_dir_speed_6_Q : X_BUF
    port map (
      I => wind_dir_speed_6_MC_Q_53,
      O => wind_dir_speed(6)
    );
  wind_dir_speed_7_Q : X_BUF
    port map (
      I => wind_dir_speed_7_MC_Q_55,
      O => wind_dir_speed(7)
    );
  wind_dir_speed_8_Q : X_BUF
    port map (
      I => wind_dir_speed_8_MC_Q_57,
      O => wind_dir_speed(8)
    );
  wind_dir_speed_9_Q : X_BUF
    port map (
      I => wind_dir_speed_9_MC_Q_59,
      O => wind_dir_speed(9)
    );
  code_wind_speed_0_MC_Q : X_BUF
    port map (
      I => code_wind_speed_0_MC_Q_tsimrenamed_net_Q_60,
      O => code_wind_speed_0_MC_Q_21
    );
  code_wind_speed_0_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => code_wind_speed_0_MC_D_61,
      O => code_wind_speed_0_MC_Q_tsimrenamed_net_Q_60
    );
  code_wind_speed_0_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_code_wind_speed_0_MC_D_IN0,
      I1 => NlwBufferSignal_code_wind_speed_0_MC_D_IN1,
      O => code_wind_speed_0_MC_D_61
    );
  code_wind_speed_0_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_code_wind_speed_0_MC_D1_IN0,
      I1 => NlwInverterSignal_code_wind_speed_0_MC_D1_IN1,
      O => code_wind_speed_0_MC_D1_62
    );
  code_wind_speed_0_MC_D2_PT_0 : X_AND4
    port map (
      I0 => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_0_IN1,
      I2 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_0_IN2,
      I3 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_0_IN3,
      O => code_wind_speed_0_MC_D2_PT_0_67
    );
  code_wind_speed_0_MC_D2_PT_1 : X_AND5
    port map (
      I0 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN4,
      O => code_wind_speed_0_MC_D2_PT_1_68
    );
  code_wind_speed_0_MC_D2_PT_2 : X_AND5
    port map (
      I0 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN2,
      I3 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN4,
      O => code_wind_speed_0_MC_D2_PT_2_69
    );
  code_wind_speed_0_MC_D2_PT_3 : X_AND5
    port map (
      I0 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN1,
      I2 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN2,
      I3 => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN3,
      I4 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN4,
      O => code_wind_speed_0_MC_D2_PT_3_70
    );
  code_wind_speed_0_MC_D2_PT_4 : X_AND5
    port map (
      I0 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN0,
      I1 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN1,
      I2 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN2,
      I3 => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN3,
      I4 => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN4,
      O => code_wind_speed_0_MC_D2_PT_4_71
    );
  code_wind_speed_0_MC_D2 : X_OR5
    port map (
      I0 => NlwBufferSignal_code_wind_speed_0_MC_D2_IN0,
      I1 => NlwBufferSignal_code_wind_speed_0_MC_D2_IN1,
      I2 => NlwBufferSignal_code_wind_speed_0_MC_D2_IN2,
      I3 => NlwBufferSignal_code_wind_speed_0_MC_D2_IN3,
      I4 => NlwBufferSignal_code_wind_speed_0_MC_D2_IN4,
      O => code_wind_speed_0_MC_D2_63
    );
  U1_speed_code_4_Q : X_BUF
    port map (
      I => U1_speed_code_4_MC_Q,
      O => U1_speed_code(4)
    );
  U1_speed_code_4_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_speed_code_4_MC_REG_IN,
      CE => U1_speed_code_4_MC_CE_74,
      CLK => NlwBufferSignal_U1_speed_code_4_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_speed_code_4_MC_Q
    );
  U1_speed_code_4_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_4_MC_D_IN0,
      I1 => NlwBufferSignal_U1_speed_code_4_MC_D_IN1,
      O => U1_speed_code_4_MC_D_73
    );
  U1_speed_code_4_MC_D1 : X_ZERO
    port map (
      O => U1_speed_code_4_MC_D1_75
    );
  U1_speed_code_4_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_4_MC_D2_IN0,
      I1 => NlwBufferSignal_U1_speed_code_4_MC_D2_IN1,
      O => U1_speed_code_4_MC_D2_76
    );
  U1_speed_code_4_MC_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_4_MC_CE_IN0,
      I1 => NlwBufferSignal_U1_speed_code_4_MC_CE_IN1,
      O => U1_speed_code_4_MC_CE_74
    );
  U1_U_counter_5bit_count_int_4_Q : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_4_MC_Q,
      O => U1_U_counter_5bit_count_int(4)
    );
  U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_IN1,
      O => U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_Q_81
    );
  U1_U_counter_5bit_count_int_4_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_counter_5bit_count_int_4_MC_Q
    );
  U1_U_counter_5bit_count_int_4_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D_IN1,
      O => U1_U_counter_5bit_count_int_4_MC_D_80
    );
  U1_U_counter_5bit_count_int_4_MC_D1 : X_ZERO
    port map (
      O => U1_U_counter_5bit_count_int_4_MC_D1_82
    );
  U1_U_counter_5bit_count_int_4_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_0_IN1,
      O => U1_U_counter_5bit_count_int_4_MC_D2_PT_0_85
    );
  U1_U_counter_5bit_count_int_4_MC_D2_PT_1 : X_AND6
    port map (
      I0 => NlwInverterSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN4,
      I5 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN5,
      O => U1_U_counter_5bit_count_int_4_MC_D2_PT_1_91
    );
  U1_U_counter_5bit_count_int_4_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_IN1,
      O => U1_U_counter_5bit_count_int_4_MC_D2_83
    );
  U1_U_counter_5bit_counter_rst_delay : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_MC_Q,
      O => U1_U_counter_5bit_counter_rst_delay_84
    );
  U1_U_counter_5bit_counter_rst_delay_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_counter_5bit_counter_rst_delay_MC_Q
    );
  U1_U_counter_5bit_counter_rst_delay_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D_IN1,
      O => U1_U_counter_5bit_counter_rst_delay_MC_D_93
    );
  U1_U_counter_5bit_counter_rst_delay_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D1_IN1,
      O => U1_U_counter_5bit_counter_rst_delay_MC_D1_94
    );
  U1_U_counter_5bit_counter_rst_delay_MC_D2 : X_ZERO
    port map (
      O => U1_U_counter_5bit_counter_rst_delay_MC_D2_95
    );
  U1_counter_rst : X_BUF
    port map (
      I => U1_counter_rst_MC_Q,
      O => U1_counter_rst_78
    );
  U1_counter_rst_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_counter_rst_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_counter_rst_MC_Q
    );
  U1_counter_rst_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_counter_rst_MC_D_IN0,
      I1 => NlwBufferSignal_U1_counter_rst_MC_D_IN1,
      O => U1_counter_rst_MC_D_97
    );
  U1_counter_rst_MC_D1 : X_AND32
    port map (
      I0 => NlwInverterSignal_U1_counter_rst_MC_D1_IN0,
      I1 => NlwInverterSignal_U1_counter_rst_MC_D1_IN1,
      I2 => NlwInverterSignal_U1_counter_rst_MC_D1_IN2,
      I3 => NlwInverterSignal_U1_counter_rst_MC_D1_IN3,
      I4 => NlwInverterSignal_U1_counter_rst_MC_D1_IN4,
      I5 => NlwInverterSignal_U1_counter_rst_MC_D1_IN5,
      I6 => NlwInverterSignal_U1_counter_rst_MC_D1_IN6,
      I7 => NlwInverterSignal_U1_counter_rst_MC_D1_IN7,
      I8 => NlwInverterSignal_U1_counter_rst_MC_D1_IN8,
      I9 => NlwInverterSignal_U1_counter_rst_MC_D1_IN9,
      I10 => NlwInverterSignal_U1_counter_rst_MC_D1_IN10,
      I11 => NlwInverterSignal_U1_counter_rst_MC_D1_IN11,
      I12 => NlwInverterSignal_U1_counter_rst_MC_D1_IN12,
      I13 => NlwInverterSignal_U1_counter_rst_MC_D1_IN13,
      I14 => NlwInverterSignal_U1_counter_rst_MC_D1_IN14,
      I15 => NlwInverterSignal_U1_counter_rst_MC_D1_IN15,
      I16 => NlwInverterSignal_U1_counter_rst_MC_D1_IN16,
      I17 => NlwInverterSignal_U1_counter_rst_MC_D1_IN17,
      I18 => NlwInverterSignal_U1_counter_rst_MC_D1_IN18,
      I19 => NlwInverterSignal_U1_counter_rst_MC_D1_IN19,
      I20 => NlwInverterSignal_U1_counter_rst_MC_D1_IN20,
      I21 => NlwInverterSignal_U1_counter_rst_MC_D1_IN21,
      I22 => NlwBufferSignal_U1_counter_rst_MC_D1_IN22,
      I23 => NlwBufferSignal_U1_counter_rst_MC_D1_IN23,
      I24 => NlwBufferSignal_U1_counter_rst_MC_D1_IN24,
      I25 => NlwBufferSignal_U1_counter_rst_MC_D1_IN25,
      I26 => NlwBufferSignal_U1_counter_rst_MC_D1_IN26,
      I27 => NlwBufferSignal_U1_counter_rst_MC_D1_IN27,
      I28 => NlwBufferSignal_U1_counter_rst_MC_D1_IN28,
      I29 => NlwBufferSignal_U1_counter_rst_MC_D1_IN29,
      I30 => NlwBufferSignal_U1_counter_rst_MC_D1_IN30,
      I31 => NlwBufferSignal_U1_counter_rst_MC_D1_IN31,
      O => U1_counter_rst_MC_D1_98
    );
  U1_counter_rst_MC_D2 : X_ZERO
    port map (
      O => U1_counter_rst_MC_D2_99
    );
  U1_U_freq_divider_count_int_0_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_0_MC_Q,
      O => U1_U_freq_divider_count_int(0)
    );
  U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_Q_124
    );
  U1_U_freq_divider_count_int_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_0_MC_Q
    );
  U1_U_freq_divider_count_int_0_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_U1_U_freq_divider_count_int_0_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_D_IN1,
      O => U1_U_freq_divider_count_int_0_MC_D_123
    );
  U1_U_freq_divider_count_int_0_MC_D1 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_0_MC_D1_125
    );
  U1_U_freq_divider_count_int_0_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_0_MC_D2_126
    );
  U1_U_freq_divider_count_int_10_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_10_MC_Q,
      O => U1_U_freq_divider_count_int(10)
    );
  U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_Q_129
    );
  U1_U_freq_divider_count_int_10_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_10_MC_Q
    );
  U1_U_freq_divider_count_int_10_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D_IN1,
      O => U1_U_freq_divider_count_int_10_MC_D_128
    );
  U1_U_freq_divider_count_int_10_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN15,
      O => U1_U_freq_divider_count_int_10_MC_D1_130
    );
  U1_U_freq_divider_count_int_10_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_10_MC_D2_131
    );
  U1_U_freq_divider_count_int_1_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_1_MC_Q,
      O => U1_U_freq_divider_count_int(1)
    );
  U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_Q_134
    );
  U1_U_freq_divider_count_int_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_1_MC_Q
    );
  U1_U_freq_divider_count_int_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D_IN1,
      O => U1_U_freq_divider_count_int_1_MC_D_133
    );
  U1_U_freq_divider_count_int_1_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D1_IN1,
      O => U1_U_freq_divider_count_int_1_MC_D1_135
    );
  U1_U_freq_divider_count_int_1_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_1_MC_D2_136
    );
  U1_U_freq_divider_count_int_2_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_2_MC_Q,
      O => U1_U_freq_divider_count_int(2)
    );
  U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_Q_139
    );
  U1_U_freq_divider_count_int_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_2_MC_Q
    );
  U1_U_freq_divider_count_int_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D_IN1,
      O => U1_U_freq_divider_count_int_2_MC_D_138
    );
  U1_U_freq_divider_count_int_2_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D1_IN1,
      O => U1_U_freq_divider_count_int_2_MC_D1_140
    );
  U1_U_freq_divider_count_int_2_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_2_MC_D2_141
    );
  U1_U_freq_divider_count_int_3_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_3_MC_Q,
      O => U1_U_freq_divider_count_int(3)
    );
  U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_Q_144
    );
  U1_U_freq_divider_count_int_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_3_MC_Q
    );
  U1_U_freq_divider_count_int_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D_IN1,
      O => U1_U_freq_divider_count_int_3_MC_D_143
    );
  U1_U_freq_divider_count_int_3_MC_D1 : X_AND3
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D1_IN2,
      O => U1_U_freq_divider_count_int_3_MC_D1_145
    );
  U1_U_freq_divider_count_int_3_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_3_MC_D2_146
    );
  U1_U_freq_divider_count_int_4_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_4_MC_Q,
      O => U1_U_freq_divider_count_int(4)
    );
  U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_Q_149
    );
  U1_U_freq_divider_count_int_4_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_4_MC_Q
    );
  U1_U_freq_divider_count_int_4_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D_IN1,
      O => U1_U_freq_divider_count_int_4_MC_D_148
    );
  U1_U_freq_divider_count_int_4_MC_D1 : X_AND4
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN3,
      O => U1_U_freq_divider_count_int_4_MC_D1_150
    );
  U1_U_freq_divider_count_int_4_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_4_MC_D2_151
    );
  U1_U_freq_divider_count_int_5_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_5_MC_Q,
      O => U1_U_freq_divider_count_int(5)
    );
  U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_Q_154
    );
  U1_U_freq_divider_count_int_5_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_5_MC_Q
    );
  U1_U_freq_divider_count_int_5_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D_IN1,
      O => U1_U_freq_divider_count_int_5_MC_D_153
    );
  U1_U_freq_divider_count_int_5_MC_D1 : X_AND5
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN4,
      O => U1_U_freq_divider_count_int_5_MC_D1_155
    );
  U1_U_freq_divider_count_int_5_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_5_MC_D2_156
    );
  U1_U_freq_divider_count_int_6_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_6_MC_Q,
      O => U1_U_freq_divider_count_int(6)
    );
  U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_Q_159
    );
  U1_U_freq_divider_count_int_6_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_6_MC_Q
    );
  U1_U_freq_divider_count_int_6_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D_IN1,
      O => U1_U_freq_divider_count_int_6_MC_D_158
    );
  U1_U_freq_divider_count_int_6_MC_D1 : X_AND6
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN5,
      O => U1_U_freq_divider_count_int_6_MC_D1_160
    );
  U1_U_freq_divider_count_int_6_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_6_MC_D2_161
    );
  U1_U_freq_divider_count_int_7_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_7_MC_Q,
      O => U1_U_freq_divider_count_int(7)
    );
  U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_Q_164
    );
  U1_U_freq_divider_count_int_7_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_7_MC_Q
    );
  U1_U_freq_divider_count_int_7_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D_IN1,
      O => U1_U_freq_divider_count_int_7_MC_D_163
    );
  U1_U_freq_divider_count_int_7_MC_D1 : X_AND7
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN6,
      O => U1_U_freq_divider_count_int_7_MC_D1_165
    );
  U1_U_freq_divider_count_int_7_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_7_MC_D2_166
    );
  U1_U_freq_divider_count_int_8_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_8_MC_Q,
      O => U1_U_freq_divider_count_int(8)
    );
  U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_Q_169
    );
  U1_U_freq_divider_count_int_8_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_8_MC_Q
    );
  U1_U_freq_divider_count_int_8_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D_IN1,
      O => U1_U_freq_divider_count_int_8_MC_D_168
    );
  U1_U_freq_divider_count_int_8_MC_D1 : X_AND8
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN7,
      O => U1_U_freq_divider_count_int_8_MC_D1_170
    );
  U1_U_freq_divider_count_int_8_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_8_MC_D2_171
    );
  U1_U_freq_divider_count_int_9_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_9_MC_Q,
      O => U1_U_freq_divider_count_int(9)
    );
  U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_Q_174
    );
  U1_U_freq_divider_count_int_9_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_9_MC_Q
    );
  U1_U_freq_divider_count_int_9_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D_IN1,
      O => U1_U_freq_divider_count_int_9_MC_D_173
    );
  U1_U_freq_divider_count_int_9_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN15,
      O => U1_U_freq_divider_count_int_9_MC_D1_175
    );
  U1_U_freq_divider_count_int_9_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_9_MC_D2_176
    );
  U1_U_freq_divider_count_int_11_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_11_MC_Q,
      O => U1_U_freq_divider_count_int(11)
    );
  U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_Q_179
    );
  U1_U_freq_divider_count_int_11_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_11_MC_Q
    );
  U1_U_freq_divider_count_int_11_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D_IN1,
      O => U1_U_freq_divider_count_int_11_MC_D_178
    );
  U1_U_freq_divider_count_int_11_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN15,
      O => U1_U_freq_divider_count_int_11_MC_D1_180
    );
  U1_U_freq_divider_count_int_11_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_11_MC_D2_181
    );
  U1_U_freq_divider_count_int_12_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_12_MC_Q,
      O => U1_U_freq_divider_count_int(12)
    );
  U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_Q_184
    );
  U1_U_freq_divider_count_int_12_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_12_MC_Q
    );
  U1_U_freq_divider_count_int_12_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D_IN1,
      O => U1_U_freq_divider_count_int_12_MC_D_183
    );
  U1_U_freq_divider_count_int_12_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN15,
      O => U1_U_freq_divider_count_int_12_MC_D1_185
    );
  U1_U_freq_divider_count_int_12_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_12_MC_D2_186
    );
  U1_U_freq_divider_count_int_13_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_13_MC_Q,
      O => U1_U_freq_divider_count_int(13)
    );
  U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_Q_189
    );
  U1_U_freq_divider_count_int_13_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_13_MC_Q
    );
  U1_U_freq_divider_count_int_13_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D_IN1,
      O => U1_U_freq_divider_count_int_13_MC_D_188
    );
  U1_U_freq_divider_count_int_13_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN15,
      O => U1_U_freq_divider_count_int_13_MC_D1_190
    );
  U1_U_freq_divider_count_int_13_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_13_MC_D2_191
    );
  U1_U_freq_divider_count_int_14_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_14_MC_Q,
      O => U1_U_freq_divider_count_int(14)
    );
  U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_Q_194
    );
  U1_U_freq_divider_count_int_14_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_14_MC_Q
    );
  U1_U_freq_divider_count_int_14_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D_IN1,
      O => U1_U_freq_divider_count_int_14_MC_D_193
    );
  U1_U_freq_divider_count_int_14_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN15,
      O => U1_U_freq_divider_count_int_14_MC_D1_195
    );
  U1_U_freq_divider_count_int_14_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_14_MC_D2_196
    );
  U1_U_freq_divider_count_int_15_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_15_MC_Q,
      O => U1_U_freq_divider_count_int(15)
    );
  U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_Q_199
    );
  U1_U_freq_divider_count_int_15_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_15_MC_Q
    );
  U1_U_freq_divider_count_int_15_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D_IN1,
      O => U1_U_freq_divider_count_int_15_MC_D_198
    );
  U1_U_freq_divider_count_int_15_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN15,
      O => U1_U_freq_divider_count_int_15_MC_D1_200
    );
  U1_U_freq_divider_count_int_15_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_15_MC_D2_201
    );
  U1_U_freq_divider_count_int_16_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_16_MC_Q,
      O => U1_U_freq_divider_count_int(16)
    );
  U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_Q_204
    );
  U1_U_freq_divider_count_int_16_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_16_MC_Q
    );
  U1_U_freq_divider_count_int_16_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D_IN1,
      O => U1_U_freq_divider_count_int_16_MC_D_203
    );
  U1_U_freq_divider_count_int_16_MC_D1 : X_AND16
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN15,
      O => U1_U_freq_divider_count_int_16_MC_D1_205
    );
  U1_U_freq_divider_count_int_16_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_16_MC_D2_206
    );
  U1_U_freq_divider_count_int_17_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_17_MC_Q,
      O => U1_U_freq_divider_count_int(17)
    );
  U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_Q_209
    );
  U1_U_freq_divider_count_int_17_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_17_MC_Q
    );
  U1_U_freq_divider_count_int_17_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D_IN1,
      O => U1_U_freq_divider_count_int_17_MC_D_208
    );
  U1_U_freq_divider_count_int_17_MC_D1 : X_AND32
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN15,
      I16 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN16,
      I17 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN17,
      I18 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN18,
      I19 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN19,
      I20 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN20,
      I21 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN21,
      I22 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN22,
      I23 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN23,
      I24 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN24,
      I25 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN25,
      I26 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN26,
      I27 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN27,
      I28 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN28,
      I29 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN29,
      I30 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN30,
      I31 => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN31,
      O => U1_U_freq_divider_count_int_17_MC_D1_210
    );
  U1_U_freq_divider_count_int_17_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_17_MC_D2_211
    );
  U1_U_freq_divider_count_int_18_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_18_MC_Q,
      O => U1_U_freq_divider_count_int(18)
    );
  U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_Q_214
    );
  U1_U_freq_divider_count_int_18_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_18_MC_Q
    );
  U1_U_freq_divider_count_int_18_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D_IN1,
      O => U1_U_freq_divider_count_int_18_MC_D_213
    );
  U1_U_freq_divider_count_int_18_MC_D1 : X_AND32
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN15,
      I16 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN16,
      I17 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN17,
      I18 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN18,
      I19 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN19,
      I20 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN20,
      I21 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN21,
      I22 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN22,
      I23 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN23,
      I24 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN24,
      I25 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN25,
      I26 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN26,
      I27 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN27,
      I28 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN28,
      I29 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN29,
      I30 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN30,
      I31 => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN31,
      O => U1_U_freq_divider_count_int_18_MC_D1_215
    );
  U1_U_freq_divider_count_int_18_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_18_MC_D2_216
    );
  U1_U_freq_divider_count_int_19_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_19_MC_Q,
      O => U1_U_freq_divider_count_int(19)
    );
  U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_Q_219
    );
  U1_U_freq_divider_count_int_19_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_19_MC_Q
    );
  U1_U_freq_divider_count_int_19_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D_IN1,
      O => U1_U_freq_divider_count_int_19_MC_D_218
    );
  U1_U_freq_divider_count_int_19_MC_D1 : X_AND32
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN15,
      I16 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN16,
      I17 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN17,
      I18 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN18,
      I19 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN19,
      I20 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN20,
      I21 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN21,
      I22 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN22,
      I23 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN23,
      I24 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN24,
      I25 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN25,
      I26 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN26,
      I27 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN27,
      I28 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN28,
      I29 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN29,
      I30 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN30,
      I31 => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN31,
      O => U1_U_freq_divider_count_int_19_MC_D1_220
    );
  U1_U_freq_divider_count_int_19_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_19_MC_D2_221
    );
  U1_U_freq_divider_count_int_20_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_20_MC_Q,
      O => U1_U_freq_divider_count_int(20)
    );
  U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_Q_224
    );
  U1_U_freq_divider_count_int_20_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_20_MC_Q
    );
  U1_U_freq_divider_count_int_20_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D_IN1,
      O => U1_U_freq_divider_count_int_20_MC_D_223
    );
  U1_U_freq_divider_count_int_20_MC_D1 : X_AND32
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN15,
      I16 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN16,
      I17 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN17,
      I18 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN18,
      I19 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN19,
      I20 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN20,
      I21 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN21,
      I22 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN22,
      I23 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN23,
      I24 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN24,
      I25 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN25,
      I26 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN26,
      I27 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN27,
      I28 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN28,
      I29 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN29,
      I30 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN30,
      I31 => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN31,
      O => U1_U_freq_divider_count_int_20_MC_D1_225
    );
  U1_U_freq_divider_count_int_20_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_20_MC_D2_226
    );
  U1_U_freq_divider_count_int_21_Q : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_21_MC_Q,
      O => U1_U_freq_divider_count_int(21)
    );
  U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_IN1,
      O => U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_Q_229
    );
  U1_U_freq_divider_count_int_21_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_freq_divider_count_int_21_MC_Q
    );
  U1_U_freq_divider_count_int_21_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D_IN1,
      O => U1_U_freq_divider_count_int_21_MC_D_228
    );
  U1_U_freq_divider_count_int_21_MC_D1 : X_AND32
    port map (
      I0 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN0,
      I1 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN1,
      I2 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN2,
      I3 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN3,
      I4 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN4,
      I5 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN5,
      I6 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN6,
      I7 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN7,
      I8 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN8,
      I9 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN9,
      I10 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN10,
      I11 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN11,
      I12 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN12,
      I13 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN13,
      I14 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN14,
      I15 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN15,
      I16 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN16,
      I17 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN17,
      I18 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN18,
      I19 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN19,
      I20 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN20,
      I21 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN21,
      I22 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN22,
      I23 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN23,
      I24 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN24,
      I25 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN25,
      I26 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN26,
      I27 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN27,
      I28 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN28,
      I29 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN29,
      I30 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN30,
      I31 => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN31,
      O => U1_U_freq_divider_count_int_21_MC_D1_230
    );
  U1_U_freq_divider_count_int_21_MC_D2 : X_ZERO
    port map (
      O => U1_U_freq_divider_count_int_21_MC_D2_231
    );
  U1_U_counter_5bit_count_int_0_Q : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_0_MC_Q,
      O => U1_U_counter_5bit_count_int(0)
    );
  U1_U_counter_5bit_count_int_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_counter_5bit_count_int_0_MC_Q
    );
  U1_U_counter_5bit_count_int_0_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D_IN1,
      O => U1_U_counter_5bit_count_int_0_MC_D_233
    );
  U1_U_counter_5bit_count_int_0_MC_D1 : X_ZERO
    port map (
      O => U1_U_counter_5bit_count_int_0_MC_D1_234
    );
  U1_U_counter_5bit_count_int_0_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN1,
      I2 => NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN2,
      O => U1_U_counter_5bit_count_int_0_MC_D2_PT_0_236
    );
  U1_U_counter_5bit_count_int_0_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN2,
      O => U1_U_counter_5bit_count_int_0_MC_D2_PT_1_237
    );
  U1_U_counter_5bit_count_int_0_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_IN1,
      O => U1_U_counter_5bit_count_int_0_MC_D2_235
    );
  U1_counter_ena : X_BUF
    port map (
      I => U1_counter_ena_MC_Q,
      O => U1_counter_ena_87
    );
  U1_counter_ena_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_counter_ena_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_counter_ena_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_counter_ena_MC_Q
    );
  U1_counter_ena_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_counter_ena_MC_D_IN0,
      I1 => NlwBufferSignal_U1_counter_ena_MC_D_IN1,
      O => U1_counter_ena_MC_D_239
    );
  U1_counter_ena_MC_D1 : X_ZERO
    port map (
      O => U1_counter_ena_MC_D1_240
    );
  U1_counter_ena_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_counter_ena_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_U1_counter_ena_MC_D2_PT_0_IN1,
      O => U1_counter_ena_MC_D2_PT_0_242
    );
  U1_counter_ena_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwInverterSignal_U1_counter_ena_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_U1_counter_ena_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_U1_counter_ena_MC_D2_PT_1_IN2,
      O => U1_counter_ena_MC_D2_PT_1_243
    );
  U1_counter_ena_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_U1_counter_ena_MC_D2_IN0,
      I1 => NlwBufferSignal_U1_counter_ena_MC_D2_IN1,
      O => U1_counter_ena_MC_D2_241
    );
  U1_U_counter_5bit_count_int_1_Q : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_1_MC_Q,
      O => U1_U_counter_5bit_count_int(1)
    );
  U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_IN1,
      O => U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_Q_246
    );
  U1_U_counter_5bit_count_int_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_counter_5bit_count_int_1_MC_Q
    );
  U1_U_counter_5bit_count_int_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D_IN1,
      O => U1_U_counter_5bit_count_int_1_MC_D_245
    );
  U1_U_counter_5bit_count_int_1_MC_D1 : X_ZERO
    port map (
      O => U1_U_counter_5bit_count_int_1_MC_D1_247
    );
  U1_U_counter_5bit_count_int_1_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_0_IN1,
      O => U1_U_counter_5bit_count_int_1_MC_D2_PT_0_249
    );
  U1_U_counter_5bit_count_int_1_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwInverterSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN2,
      O => U1_U_counter_5bit_count_int_1_MC_D2_PT_1_250
    );
  U1_U_counter_5bit_count_int_1_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_IN1,
      O => U1_U_counter_5bit_count_int_1_MC_D2_248
    );
  U1_U_counter_5bit_count_int_2_Q : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_2_MC_Q,
      O => U1_U_counter_5bit_count_int(2)
    );
  U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_IN1,
      O => U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_Q_253
    );
  U1_U_counter_5bit_count_int_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_counter_5bit_count_int_2_MC_Q
    );
  U1_U_counter_5bit_count_int_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D_IN1,
      O => U1_U_counter_5bit_count_int_2_MC_D_252
    );
  U1_U_counter_5bit_count_int_2_MC_D1 : X_ZERO
    port map (
      O => U1_U_counter_5bit_count_int_2_MC_D1_254
    );
  U1_U_counter_5bit_count_int_2_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_0_IN1,
      O => U1_U_counter_5bit_count_int_2_MC_D2_PT_0_256
    );
  U1_U_counter_5bit_count_int_2_MC_D2_PT_1 : X_AND4
    port map (
      I0 => NlwInverterSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN3,
      O => U1_U_counter_5bit_count_int_2_MC_D2_PT_1_257
    );
  U1_U_counter_5bit_count_int_2_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_IN1,
      O => U1_U_counter_5bit_count_int_2_MC_D2_255
    );
  U1_U_counter_5bit_count_int_3_Q : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_3_MC_Q,
      O => U1_U_counter_5bit_count_int(3)
    );
  U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_IN1,
      O => U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_Q_260
    );
  U1_U_counter_5bit_count_int_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_REG_IN,
      CE => Vcc_18,
      CLK => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_U_counter_5bit_count_int_3_MC_Q
    );
  U1_U_counter_5bit_count_int_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D_IN1,
      O => U1_U_counter_5bit_count_int_3_MC_D_259
    );
  U1_U_counter_5bit_count_int_3_MC_D1 : X_ZERO
    port map (
      O => U1_U_counter_5bit_count_int_3_MC_D1_261
    );
  U1_U_counter_5bit_count_int_3_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_0_IN1,
      O => U1_U_counter_5bit_count_int_3_MC_D2_PT_0_263
    );
  U1_U_counter_5bit_count_int_3_MC_D2_PT_1 : X_AND5
    port map (
      I0 => NlwInverterSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN4,
      O => U1_U_counter_5bit_count_int_3_MC_D2_PT_1_264
    );
  U1_U_counter_5bit_count_int_3_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_IN0,
      I1 => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_IN1,
      O => U1_U_counter_5bit_count_int_3_MC_D2_262
    );
  U1_speed_code_3_Q : X_BUF
    port map (
      I => U1_speed_code_3_MC_Q,
      O => U1_speed_code(3)
    );
  U1_speed_code_3_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_speed_code_3_MC_REG_IN,
      CE => U1_speed_code_3_MC_CE_267,
      CLK => NlwBufferSignal_U1_speed_code_3_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_speed_code_3_MC_Q
    );
  U1_speed_code_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_3_MC_D_IN0,
      I1 => NlwBufferSignal_U1_speed_code_3_MC_D_IN1,
      O => U1_speed_code_3_MC_D_266
    );
  U1_speed_code_3_MC_D1 : X_ZERO
    port map (
      O => U1_speed_code_3_MC_D1_268
    );
  U1_speed_code_3_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_3_MC_D2_IN0,
      I1 => NlwBufferSignal_U1_speed_code_3_MC_D2_IN1,
      O => U1_speed_code_3_MC_D2_269
    );
  U1_speed_code_3_MC_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_3_MC_CE_IN0,
      I1 => NlwBufferSignal_U1_speed_code_3_MC_CE_IN1,
      O => U1_speed_code_3_MC_CE_267
    );
  U1_speed_code_2_Q : X_BUF
    port map (
      I => U1_speed_code_2_MC_Q,
      O => U1_speed_code(2)
    );
  U1_speed_code_2_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_speed_code_2_MC_REG_IN,
      CE => U1_speed_code_2_MC_CE_272,
      CLK => NlwBufferSignal_U1_speed_code_2_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_speed_code_2_MC_Q
    );
  U1_speed_code_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_2_MC_D_IN0,
      I1 => NlwBufferSignal_U1_speed_code_2_MC_D_IN1,
      O => U1_speed_code_2_MC_D_271
    );
  U1_speed_code_2_MC_D1 : X_ZERO
    port map (
      O => U1_speed_code_2_MC_D1_273
    );
  U1_speed_code_2_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_2_MC_D2_IN0,
      I1 => NlwBufferSignal_U1_speed_code_2_MC_D2_IN1,
      O => U1_speed_code_2_MC_D2_274
    );
  U1_speed_code_2_MC_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_2_MC_CE_IN0,
      I1 => NlwBufferSignal_U1_speed_code_2_MC_CE_IN1,
      O => U1_speed_code_2_MC_CE_272
    );
  code_wind_speed_1_MC_Q : X_BUF
    port map (
      I => code_wind_speed_1_MC_Q_tsimrenamed_net_Q_275,
      O => code_wind_speed_1_MC_Q_23
    );
  code_wind_speed_1_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => code_wind_speed_1_MC_D_276,
      O => code_wind_speed_1_MC_Q_tsimrenamed_net_Q_275
    );
  code_wind_speed_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_code_wind_speed_1_MC_D_IN0,
      I1 => NlwBufferSignal_code_wind_speed_1_MC_D_IN1,
      O => code_wind_speed_1_MC_D_276
    );
  code_wind_speed_1_MC_D1 : X_AND2
    port map (
      I0 => NlwInverterSignal_code_wind_speed_1_MC_D1_IN0,
      I1 => NlwBufferSignal_code_wind_speed_1_MC_D1_IN1,
      O => code_wind_speed_1_MC_D1_277
    );
  code_wind_speed_1_MC_D2_PT_0 : X_AND4
    port map (
      I0 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN2,
      I3 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_0_IN3,
      O => code_wind_speed_1_MC_D2_PT_0_279
    );
  code_wind_speed_1_MC_D2_PT_1 : X_AND4
    port map (
      I0 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN3,
      O => code_wind_speed_1_MC_D2_PT_1_280
    );
  code_wind_speed_1_MC_D2_PT_2 : X_AND5
    port map (
      I0 => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN2,
      I3 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN4,
      O => code_wind_speed_1_MC_D2_PT_2_282
    );
  code_wind_speed_1_MC_D2_PT_3 : X_AND5
    port map (
      I0 => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN1,
      I2 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN2,
      I3 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN3,
      I4 => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN4,
      O => code_wind_speed_1_MC_D2_PT_3_284
    );
  code_wind_speed_1_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_code_wind_speed_1_MC_D2_IN0,
      I1 => NlwBufferSignal_code_wind_speed_1_MC_D2_IN1,
      I2 => NlwBufferSignal_code_wind_speed_1_MC_D2_IN2,
      I3 => NlwBufferSignal_code_wind_speed_1_MC_D2_IN3,
      O => code_wind_speed_1_MC_D2_278
    );
  U1_speed_code_0_Q : X_BUF
    port map (
      I => U1_speed_code_0_MC_Q,
      O => U1_speed_code(0)
    );
  U1_speed_code_0_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_speed_code_0_MC_REG_IN,
      CE => U1_speed_code_0_MC_CE_287,
      CLK => NlwBufferSignal_U1_speed_code_0_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_speed_code_0_MC_Q
    );
  U1_speed_code_0_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_0_MC_D_IN0,
      I1 => NlwBufferSignal_U1_speed_code_0_MC_D_IN1,
      O => U1_speed_code_0_MC_D_286
    );
  U1_speed_code_0_MC_D1 : X_ZERO
    port map (
      O => U1_speed_code_0_MC_D1_288
    );
  U1_speed_code_0_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_0_MC_D2_IN0,
      I1 => NlwBufferSignal_U1_speed_code_0_MC_D2_IN1,
      O => U1_speed_code_0_MC_D2_289
    );
  U1_speed_code_0_MC_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_0_MC_CE_IN0,
      I1 => NlwBufferSignal_U1_speed_code_0_MC_CE_IN1,
      O => U1_speed_code_0_MC_CE_287
    );
  U1_speed_code_1_Q : X_BUF
    port map (
      I => U1_speed_code_1_MC_Q,
      O => U1_speed_code(1)
    );
  U1_speed_code_1_MC_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_U1_speed_code_1_MC_REG_IN,
      CE => U1_speed_code_1_MC_CE_292,
      CLK => NlwBufferSignal_U1_speed_code_1_MC_REG_CLK,
      SET => Gnd_17,
      RST => Gnd_17,
      O => U1_speed_code_1_MC_Q
    );
  U1_speed_code_1_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_1_MC_D_IN0,
      I1 => NlwBufferSignal_U1_speed_code_1_MC_D_IN1,
      O => U1_speed_code_1_MC_D_291
    );
  U1_speed_code_1_MC_D1 : X_ZERO
    port map (
      O => U1_speed_code_1_MC_D1_293
    );
  U1_speed_code_1_MC_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_1_MC_D2_IN0,
      I1 => NlwBufferSignal_U1_speed_code_1_MC_D2_IN1,
      O => U1_speed_code_1_MC_D2_294
    );
  U1_speed_code_1_MC_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_U1_speed_code_1_MC_CE_IN0,
      I1 => NlwBufferSignal_U1_speed_code_1_MC_CE_IN1,
      O => U1_speed_code_1_MC_CE_292
    );
  code_wind_speed_2_MC_Q : X_BUF
    port map (
      I => code_wind_speed_2_MC_Q_tsimrenamed_net_Q_295,
      O => code_wind_speed_2_MC_Q_25
    );
  code_wind_speed_2_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => code_wind_speed_2_MC_D_296,
      O => code_wind_speed_2_MC_Q_tsimrenamed_net_Q_295
    );
  code_wind_speed_2_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_code_wind_speed_2_MC_D_IN0,
      I1 => NlwBufferSignal_code_wind_speed_2_MC_D_IN1,
      O => code_wind_speed_2_MC_D_296
    );
  code_wind_speed_2_MC_D1 : X_AND2
    port map (
      I0 => NlwInverterSignal_code_wind_speed_2_MC_D1_IN0,
      I1 => NlwBufferSignal_code_wind_speed_2_MC_D1_IN1,
      O => code_wind_speed_2_MC_D1_297
    );
  code_wind_speed_2_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_0_IN2,
      O => code_wind_speed_2_MC_D2_PT_0_299
    );
  code_wind_speed_2_MC_D2_PT_1 : X_AND5
    port map (
      I0 => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN2,
      I3 => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN3,
      I4 => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN4,
      O => code_wind_speed_2_MC_D2_PT_1_300
    );
  code_wind_speed_2_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_code_wind_speed_2_MC_D2_IN0,
      I1 => NlwBufferSignal_code_wind_speed_2_MC_D2_IN1,
      O => code_wind_speed_2_MC_D2_298
    );
  code_wind_speed_3_MC_Q : X_BUF
    port map (
      I => code_wind_speed_3_MC_Q_tsimrenamed_net_Q_301,
      O => code_wind_speed_3_MC_Q_27
    );
  code_wind_speed_3_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => code_wind_speed_3_MC_D_302,
      O => code_wind_speed_3_MC_Q_tsimrenamed_net_Q_301
    );
  code_wind_speed_3_MC_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_code_wind_speed_3_MC_D_IN0,
      I1 => NlwBufferSignal_code_wind_speed_3_MC_D_IN1,
      O => code_wind_speed_3_MC_D_302
    );
  code_wind_speed_3_MC_D1 : X_ZERO
    port map (
      O => code_wind_speed_3_MC_D1_303
    );
  code_wind_speed_3_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_0_IN1,
      O => code_wind_speed_3_MC_D2_PT_0_305
    );
  code_wind_speed_3_MC_D2_PT_1 : X_AND6
    port map (
      I0 => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN2,
      I3 => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN3,
      I4 => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN4,
      I5 => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN5,
      O => code_wind_speed_3_MC_D2_PT_1_306
    );
  code_wind_speed_3_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_code_wind_speed_3_MC_D2_IN0,
      I1 => NlwBufferSignal_code_wind_speed_3_MC_D2_IN1,
      O => code_wind_speed_3_MC_D2_304
    );
  wind_dir_speed_0_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_0_MC_Q_tsimrenamed_net_Q_307,
      O => wind_dir_speed_0_MC_Q_29
    );
  wind_dir_speed_0_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_0_MC_D_308,
      O => wind_dir_speed_0_MC_Q_tsimrenamed_net_Q_307
    );
  wind_dir_speed_0_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_0_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_0_MC_D_IN1,
      O => wind_dir_speed_0_MC_D_308
    );
  wind_dir_speed_0_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_0_MC_D1_309
    );
  wind_dir_speed_0_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_0_IN2,
      O => wind_dir_speed_0_MC_D2_PT_0_311
    );
  wind_dir_speed_0_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_1_IN2,
      O => wind_dir_speed_0_MC_D2_PT_1_312
    );
  wind_dir_speed_0_MC_D2_PT_2 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_0_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_0_MC_D2_PT_2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN3,
      I4 => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN4,
      O => wind_dir_speed_0_MC_D2_PT_2_313
    );
  wind_dir_speed_0_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_0_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_0_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_0_MC_D2_IN2,
      O => wind_dir_speed_0_MC_D2_310
    );
  wind_dir_speed_10_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_10_MC_Q_tsimrenamed_net_Q_314,
      O => wind_dir_speed_10_MC_Q_31
    );
  wind_dir_speed_10_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_10_MC_D_315,
      O => wind_dir_speed_10_MC_Q_tsimrenamed_net_Q_314
    );
  wind_dir_speed_10_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_10_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_10_MC_D_IN1,
      O => wind_dir_speed_10_MC_D_315
    );
  wind_dir_speed_10_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_10_MC_D1_316
    );
  wind_dir_speed_10_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_0_IN1,
      O => wind_dir_speed_10_MC_D2_PT_0_318
    );
  wind_dir_speed_10_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_1_IN2,
      O => wind_dir_speed_10_MC_D2_PT_1_319
    );
  wind_dir_speed_10_MC_D2_PT_2 : X_AND3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_2_IN2,
      O => wind_dir_speed_10_MC_D2_PT_2_320
    );
  wind_dir_speed_10_MC_D2_PT_3 : X_AND5
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN4,
      O => wind_dir_speed_10_MC_D2_PT_3_321
    );
  wind_dir_speed_10_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_10_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_10_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_10_MC_D2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_10_MC_D2_IN3,
      O => wind_dir_speed_10_MC_D2_317
    );
  wind_dir_speed_11_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_11_MC_Q_tsimrenamed_net_Q_322,
      O => wind_dir_speed_11_MC_Q_33
    );
  wind_dir_speed_11_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_11_MC_D_323,
      O => wind_dir_speed_11_MC_Q_tsimrenamed_net_Q_322
    );
  wind_dir_speed_11_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_11_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_11_MC_D_IN1,
      O => wind_dir_speed_11_MC_D_323
    );
  wind_dir_speed_11_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_11_MC_D1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_11_MC_D1_IN1,
      O => wind_dir_speed_11_MC_D1_324
    );
  wind_dir_speed_11_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_0_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_0_IN2,
      O => wind_dir_speed_11_MC_D2_PT_0_326
    );
  wind_dir_speed_11_MC_D2_PT_1 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_1_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_1_IN4,
      O => wind_dir_speed_11_MC_D2_PT_1_327
    );
  wind_dir_speed_11_MC_D2_PT_2 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN4,
      O => wind_dir_speed_11_MC_D2_PT_2_328
    );
  wind_dir_speed_11_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_11_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_11_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_11_MC_D2_IN2,
      O => wind_dir_speed_11_MC_D2_325
    );
  wind_dir_speed_12_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_12_MC_Q_tsimrenamed_net_Q_329,
      O => wind_dir_speed_12_MC_Q_35
    );
  wind_dir_speed_12_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_12_MC_D_330,
      O => wind_dir_speed_12_MC_Q_tsimrenamed_net_Q_329
    );
  wind_dir_speed_12_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_12_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_12_MC_D_IN1,
      O => wind_dir_speed_12_MC_D_330
    );
  wind_dir_speed_12_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_12_MC_D1_331
    );
  wind_dir_speed_12_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_0_IN1,
      O => wind_dir_speed_12_MC_D2_PT_0_333
    );
  wind_dir_speed_12_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_1_IN1,
      O => wind_dir_speed_12_MC_D2_PT_1_334
    );
  wind_dir_speed_12_MC_D2_PT_2 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_12_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_12_MC_D2_PT_2_IN4,
      O => wind_dir_speed_12_MC_D2_PT_2_335
    );
  wind_dir_speed_12_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_12_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_12_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_12_MC_D2_IN2,
      O => wind_dir_speed_12_MC_D2_332
    );
  wind_dir_speed_13_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_13_MC_Q_tsimrenamed_net_Q_336,
      O => wind_dir_speed_13_MC_Q_37
    );
  wind_dir_speed_13_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_13_MC_D_337,
      O => wind_dir_speed_13_MC_Q_tsimrenamed_net_Q_336
    );
  wind_dir_speed_13_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_13_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_13_MC_D_IN1,
      O => wind_dir_speed_13_MC_D_337
    );
  wind_dir_speed_13_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_13_MC_D1_338
    );
  wind_dir_speed_13_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_0_IN1,
      O => wind_dir_speed_13_MC_D2_PT_0_340
    );
  wind_dir_speed_13_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_1_IN1,
      O => wind_dir_speed_13_MC_D2_PT_1_341
    );
  wind_dir_speed_13_MC_D2_PT_2 : X_AND4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN3,
      O => wind_dir_speed_13_MC_D2_PT_2_342
    );
  wind_dir_speed_13_MC_D2_PT_3 : X_AND5
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_13_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_13_MC_D2_PT_3_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_13_MC_D2_PT_3_IN4,
      O => wind_dir_speed_13_MC_D2_PT_3_343
    );
  wind_dir_speed_13_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_13_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_13_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_13_MC_D2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_13_MC_D2_IN3,
      O => wind_dir_speed_13_MC_D2_339
    );
  wind_dir_speed_14_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_14_MC_Q_tsimrenamed_net_Q_344,
      O => wind_dir_speed_14_MC_Q_39
    );
  wind_dir_speed_14_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_14_MC_D_345,
      O => wind_dir_speed_14_MC_Q_tsimrenamed_net_Q_344
    );
  wind_dir_speed_14_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_14_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_14_MC_D_IN1,
      O => wind_dir_speed_14_MC_D_345
    );
  wind_dir_speed_14_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_14_MC_D1_346
    );
  wind_dir_speed_14_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_0_IN1,
      O => wind_dir_speed_14_MC_D2_PT_0_348
    );
  wind_dir_speed_14_MC_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_1_IN1,
      O => wind_dir_speed_14_MC_D2_PT_1_349
    );
  wind_dir_speed_14_MC_D2_PT_2 : X_AND3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_2_IN2,
      O => wind_dir_speed_14_MC_D2_PT_2_350
    );
  wind_dir_speed_14_MC_D2_PT_3 : X_AND5
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_14_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_14_MC_D2_PT_3_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN3,
      I4 => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN4,
      O => wind_dir_speed_14_MC_D2_PT_3_351
    );
  wind_dir_speed_14_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_14_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_14_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_14_MC_D2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_14_MC_D2_IN3,
      O => wind_dir_speed_14_MC_D2_347
    );
  wind_dir_speed_15_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_15_MC_Q_tsimrenamed_net_Q_352,
      O => wind_dir_speed_15_MC_Q_41
    );
  wind_dir_speed_15_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_15_MC_D_353,
      O => wind_dir_speed_15_MC_Q_tsimrenamed_net_Q_352
    );
  wind_dir_speed_15_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_15_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_15_MC_D_IN1,
      O => wind_dir_speed_15_MC_D_353
    );
  wind_dir_speed_15_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_15_MC_D1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_15_MC_D1_IN1,
      O => wind_dir_speed_15_MC_D1_354
    );
  wind_dir_speed_15_MC_D2_PT_0 : X_AND4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_0_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_0_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_0_IN3,
      O => wind_dir_speed_15_MC_D2_PT_0_356
    );
  wind_dir_speed_15_MC_D2_PT_1 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN3,
      I4 => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN4,
      O => wind_dir_speed_15_MC_D2_PT_1_357
    );
  wind_dir_speed_15_MC_D2_PT_2 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN4,
      O => wind_dir_speed_15_MC_D2_PT_2_358
    );
  wind_dir_speed_15_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_15_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_15_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_15_MC_D2_IN2,
      O => wind_dir_speed_15_MC_D2_355
    );
  wind_dir_speed_1_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_1_MC_Q_tsimrenamed_net_Q_359,
      O => wind_dir_speed_1_MC_Q_43
    );
  wind_dir_speed_1_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_1_MC_D_360,
      O => wind_dir_speed_1_MC_Q_tsimrenamed_net_Q_359
    );
  wind_dir_speed_1_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_1_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_1_MC_D_IN1,
      O => wind_dir_speed_1_MC_D_360
    );
  wind_dir_speed_1_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_1_MC_D1_361
    );
  wind_dir_speed_1_MC_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_0_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_0_IN2,
      O => wind_dir_speed_1_MC_D2_PT_0_363
    );
  wind_dir_speed_1_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_1_IN2,
      O => wind_dir_speed_1_MC_D2_PT_1_364
    );
  wind_dir_speed_1_MC_D2_PT_2 : X_AND4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN3,
      O => wind_dir_speed_1_MC_D2_PT_2_365
    );
  wind_dir_speed_1_MC_D2_PT_3 : X_AND5
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_1_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_1_MC_D2_PT_3_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_1_MC_D2_PT_3_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN3,
      I4 => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN4,
      O => wind_dir_speed_1_MC_D2_PT_3_366
    );
  wind_dir_speed_1_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_1_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_1_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_1_MC_D2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_1_MC_D2_IN3,
      O => wind_dir_speed_1_MC_D2_362
    );
  wind_dir_speed_2_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_2_MC_Q_tsimrenamed_net_Q_367,
      O => wind_dir_speed_2_MC_Q_45
    );
  wind_dir_speed_2_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_2_MC_D_368,
      O => wind_dir_speed_2_MC_Q_tsimrenamed_net_Q_367
    );
  wind_dir_speed_2_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_2_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_2_MC_D_IN1,
      O => wind_dir_speed_2_MC_D_368
    );
  wind_dir_speed_2_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_2_MC_D1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_2_MC_D1_IN1,
      O => wind_dir_speed_2_MC_D1_369
    );
  wind_dir_speed_2_MC_D2_PT_0 : X_AND5
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN4,
      O => wind_dir_speed_2_MC_D2_PT_0_371
    );
  wind_dir_speed_2_MC_D2_PT_1 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_1_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_1_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_1_IN4,
      O => wind_dir_speed_2_MC_D2_PT_1_372
    );
  wind_dir_speed_2_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_2_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_2_MC_D2_IN1,
      O => wind_dir_speed_2_MC_D2_370
    );
  wind_dir_speed_3_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_3_MC_Q_tsimrenamed_net_Q_373,
      O => wind_dir_speed_3_MC_Q_47
    );
  wind_dir_speed_3_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_3_MC_D_374,
      O => wind_dir_speed_3_MC_Q_tsimrenamed_net_Q_373
    );
  wind_dir_speed_3_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_3_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_3_MC_D_IN1,
      O => wind_dir_speed_3_MC_D_374
    );
  wind_dir_speed_3_MC_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_3_MC_D1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_3_MC_D1_IN1,
      O => wind_dir_speed_3_MC_D1_375
    );
  wind_dir_speed_3_MC_D2_PT_0 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_0_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_0_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_0_IN4,
      O => wind_dir_speed_3_MC_D2_PT_0_377
    );
  wind_dir_speed_3_MC_D2_PT_1 : X_AND6
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN4,
      I5 => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN5,
      O => wind_dir_speed_3_MC_D2_PT_1_378
    );
  wind_dir_speed_3_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_3_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_3_MC_D2_IN1,
      O => wind_dir_speed_3_MC_D2_376
    );
  wind_dir_speed_4_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_4_MC_Q_tsimrenamed_net_Q_379,
      O => wind_dir_speed_4_MC_Q_49
    );
  wind_dir_speed_4_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_4_MC_D_380,
      O => wind_dir_speed_4_MC_Q_tsimrenamed_net_Q_379
    );
  wind_dir_speed_4_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_4_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_4_MC_D_IN1,
      O => wind_dir_speed_4_MC_D_380
    );
  wind_dir_speed_4_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_4_MC_D1_381
    );
  wind_dir_speed_4_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_0_IN1,
      O => wind_dir_speed_4_MC_D2_PT_0_383
    );
  wind_dir_speed_4_MC_D2_PT_1 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN4,
      O => wind_dir_speed_4_MC_D2_PT_1_384
    );
  wind_dir_speed_4_MC_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_4_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_4_MC_D2_IN1,
      O => wind_dir_speed_4_MC_D2_382
    );
  wind_dir_speed_5_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_5_MC_Q_tsimrenamed_net_Q_385,
      O => wind_dir_speed_5_MC_Q_51
    );
  wind_dir_speed_5_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_5_MC_D_386,
      O => wind_dir_speed_5_MC_Q_tsimrenamed_net_Q_385
    );
  wind_dir_speed_5_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_5_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_5_MC_D_IN1,
      O => wind_dir_speed_5_MC_D_386
    );
  wind_dir_speed_5_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_5_MC_D1_387
    );
  wind_dir_speed_5_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_0_IN1,
      O => wind_dir_speed_5_MC_D2_PT_0_389
    );
  wind_dir_speed_5_MC_D2_PT_1 : X_AND5
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN3,
      I4 => NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN4,
      O => wind_dir_speed_5_MC_D2_PT_1_390
    );
  wind_dir_speed_5_MC_D2_PT_2 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN3,
      I4 => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN4,
      O => wind_dir_speed_5_MC_D2_PT_2_391
    );
  wind_dir_speed_5_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_5_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_5_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_5_MC_D2_IN2,
      O => wind_dir_speed_5_MC_D2_388
    );
  wind_dir_speed_6_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_6_MC_Q_tsimrenamed_net_Q_392,
      O => wind_dir_speed_6_MC_Q_53
    );
  wind_dir_speed_6_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_6_MC_D_393,
      O => wind_dir_speed_6_MC_Q_tsimrenamed_net_Q_392
    );
  wind_dir_speed_6_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_6_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_6_MC_D_IN1,
      O => wind_dir_speed_6_MC_D_393
    );
  wind_dir_speed_6_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_6_MC_D1_394
    );
  wind_dir_speed_6_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_0_IN1,
      O => wind_dir_speed_6_MC_D2_PT_0_396
    );
  wind_dir_speed_6_MC_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN3,
      O => wind_dir_speed_6_MC_D2_PT_1_397
    );
  wind_dir_speed_6_MC_D2_PT_2 : X_AND5
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN3,
      I4 => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN4,
      O => wind_dir_speed_6_MC_D2_PT_2_398
    );
  wind_dir_speed_6_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_6_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_6_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_6_MC_D2_IN2,
      O => wind_dir_speed_6_MC_D2_395
    );
  wind_dir_speed_7_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_7_MC_Q_tsimrenamed_net_Q_399,
      O => wind_dir_speed_7_MC_Q_55
    );
  wind_dir_speed_7_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_7_MC_D_400,
      O => wind_dir_speed_7_MC_Q_tsimrenamed_net_Q_399
    );
  wind_dir_speed_7_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_7_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_7_MC_D_IN1,
      O => wind_dir_speed_7_MC_D_400
    );
  wind_dir_speed_7_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_7_MC_D1_401
    );
  wind_dir_speed_7_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_0_IN1,
      O => wind_dir_speed_7_MC_D2_PT_0_403
    );
  wind_dir_speed_7_MC_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN3,
      O => wind_dir_speed_7_MC_D2_PT_1_404
    );
  wind_dir_speed_7_MC_D2_PT_2 : X_AND4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN3,
      O => wind_dir_speed_7_MC_D2_PT_2_405
    );
  wind_dir_speed_7_MC_D2_PT_3 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_7_MC_D2_PT_3_IN1,
      I2 => NlwInverterSignal_wind_dir_speed_7_MC_D2_PT_3_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_7_MC_D2_PT_3_IN3,
      I4 => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN4,
      O => wind_dir_speed_7_MC_D2_PT_3_406
    );
  wind_dir_speed_7_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_7_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_7_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_7_MC_D2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_7_MC_D2_IN3,
      O => wind_dir_speed_7_MC_D2_402
    );
  wind_dir_speed_8_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_8_MC_Q_tsimrenamed_net_Q_407,
      O => wind_dir_speed_8_MC_Q_57
    );
  wind_dir_speed_8_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_8_MC_D_408,
      O => wind_dir_speed_8_MC_Q_tsimrenamed_net_Q_407
    );
  wind_dir_speed_8_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_8_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_8_MC_D_IN1,
      O => wind_dir_speed_8_MC_D_408
    );
  wind_dir_speed_8_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_8_MC_D1_409
    );
  wind_dir_speed_8_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_0_IN1,
      O => wind_dir_speed_8_MC_D2_PT_0_411
    );
  wind_dir_speed_8_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_1_IN2,
      O => wind_dir_speed_8_MC_D2_PT_1_412
    );
  wind_dir_speed_8_MC_D2_PT_2 : X_AND5
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_8_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_8_MC_D2_PT_2_IN3,
      I4 => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN4,
      O => wind_dir_speed_8_MC_D2_PT_2_413
    );
  wind_dir_speed_8_MC_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_8_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_8_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_8_MC_D2_IN2,
      O => wind_dir_speed_8_MC_D2_410
    );
  wind_dir_speed_9_MC_Q : X_BUF
    port map (
      I => wind_dir_speed_9_MC_Q_tsimrenamed_net_Q_414,
      O => wind_dir_speed_9_MC_Q_59
    );
  wind_dir_speed_9_MC_Q_tsimrenamed_net_Q : X_BUF
    port map (
      I => wind_dir_speed_9_MC_D_415,
      O => wind_dir_speed_9_MC_Q_tsimrenamed_net_Q_414
    );
  wind_dir_speed_9_MC_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_9_MC_D_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_9_MC_D_IN1,
      O => wind_dir_speed_9_MC_D_415
    );
  wind_dir_speed_9_MC_D1 : X_ZERO
    port map (
      O => wind_dir_speed_9_MC_D1_416
    );
  wind_dir_speed_9_MC_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_0_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_0_IN1,
      O => wind_dir_speed_9_MC_D2_PT_0_418
    );
  wind_dir_speed_9_MC_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_1_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_1_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_1_IN2,
      O => wind_dir_speed_9_MC_D2_PT_1_419
    );
  wind_dir_speed_9_MC_D2_PT_2 : X_AND4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN3,
      O => wind_dir_speed_9_MC_D2_PT_2_420
    );
  wind_dir_speed_9_MC_D2_PT_3 : X_AND5
    port map (
      I0 => NlwInverterSignal_wind_dir_speed_9_MC_D2_PT_3_IN0,
      I1 => NlwInverterSignal_wind_dir_speed_9_MC_D2_PT_3_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN2,
      I3 => NlwInverterSignal_wind_dir_speed_9_MC_D2_PT_3_IN3,
      I4 => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN4,
      O => wind_dir_speed_9_MC_D2_PT_3_421
    );
  wind_dir_speed_9_MC_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_wind_dir_speed_9_MC_D2_IN0,
      I1 => NlwBufferSignal_wind_dir_speed_9_MC_D2_IN1,
      I2 => NlwBufferSignal_wind_dir_speed_9_MC_D2_IN2,
      I3 => NlwBufferSignal_wind_dir_speed_9_MC_D2_IN3,
      O => wind_dir_speed_9_MC_D2_417
    );
  NlwBufferBlock_U1_U_risingedge_detector_anemometer_reg_MC_REG_IN : X_BUF
    port map (
      I => anemometer_II_IREG_16,
      O => NlwBufferSignal_U1_U_risingedge_detector_anemometer_reg_MC_REG_IN
    );
  NlwBufferBlock_U1_U_risingedge_detector_anemometer_reg_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_risingedge_detector_anemometer_reg_MC_REG_CLK
    );
  NlwBufferBlock_code_wind_speed_0_MC_D_IN0 : X_BUF
    port map (
      I => code_wind_speed_0_MC_D1_62,
      O => NlwBufferSignal_code_wind_speed_0_MC_D_IN0
    );
  NlwBufferBlock_code_wind_speed_0_MC_D_IN1 : X_BUF
    port map (
      I => code_wind_speed_0_MC_D2_63,
      O => NlwBufferSignal_code_wind_speed_0_MC_D_IN1
    );
  NlwBufferBlock_code_wind_speed_0_MC_D1_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_code_wind_speed_0_MC_D1_IN0
    );
  NlwBufferBlock_code_wind_speed_0_MC_D1_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_0_MC_D1_IN1
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => code_select_II_UIM_3,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => code_select_II_UIM_3,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => code_select_II_UIM_3,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_3_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN4
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_4_IN0 : X_BUF
    port map (
      I => code_select_II_UIM_3,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN0
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_4_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN1
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_4_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN2
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_4_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN3
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_PT_4_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN4
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_IN0 : X_BUF
    port map (
      I => code_wind_speed_0_MC_D2_PT_0_67,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_IN0
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_IN1 : X_BUF
    port map (
      I => code_wind_speed_0_MC_D2_PT_1_68,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_IN1
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_IN2 : X_BUF
    port map (
      I => code_wind_speed_0_MC_D2_PT_2_69,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_IN2
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_IN3 : X_BUF
    port map (
      I => code_wind_speed_0_MC_D2_PT_3_70,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_IN3
    );
  NlwBufferBlock_code_wind_speed_0_MC_D2_IN4 : X_BUF
    port map (
      I => code_wind_speed_0_MC_D2_PT_4_71,
      O => NlwBufferSignal_code_wind_speed_0_MC_D2_IN4
    );
  NlwBufferBlock_U1_speed_code_4_MC_REG_IN : X_BUF
    port map (
      I => U1_speed_code_4_MC_D_73,
      O => NlwBufferSignal_U1_speed_code_4_MC_REG_IN
    );
  NlwBufferBlock_U1_speed_code_4_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_speed_code_4_MC_REG_CLK
    );
  NlwBufferBlock_U1_speed_code_4_MC_D_IN0 : X_BUF
    port map (
      I => U1_speed_code_4_MC_D1_75,
      O => NlwBufferSignal_U1_speed_code_4_MC_D_IN0
    );
  NlwBufferBlock_U1_speed_code_4_MC_D_IN1 : X_BUF
    port map (
      I => U1_speed_code_4_MC_D2_76,
      O => NlwBufferSignal_U1_speed_code_4_MC_D_IN1
    );
  NlwBufferBlock_U1_speed_code_4_MC_D2_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(4),
      O => NlwBufferSignal_U1_speed_code_4_MC_D2_IN0
    );
  NlwBufferBlock_U1_speed_code_4_MC_D2_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(4),
      O => NlwBufferSignal_U1_speed_code_4_MC_D2_IN1
    );
  NlwBufferBlock_U1_speed_code_4_MC_CE_IN0 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_speed_code_4_MC_CE_IN0
    );
  NlwBufferBlock_U1_speed_code_4_MC_CE_IN1 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_speed_code_4_MC_CE_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_4_MC_D_80,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_4_MC_Q,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_REG_IN : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_4_MC_tsimcreated_xor_Q_81,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_REG_IN
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_4_MC_D1_82,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_4_MC_D2_83,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(4),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_84,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_84,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(0),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_counter_ena_87,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(1),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(2),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(3),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D2_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_4_MC_D2_PT_0_85,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_4_MC_D2_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_4_MC_D2_PT_1_91,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_counter_rst_delay_MC_REG_IN : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_MC_D_93,
      O => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_REG_IN
    );
  NlwBufferBlock_U1_U_counter_5bit_counter_rst_delay_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_counter_5bit_counter_rst_delay_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_MC_D1_94,
      O => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_counter_rst_delay_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_MC_D2_95,
      O => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_counter_rst_delay_MC_D1_IN0 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_counter_rst_delay_MC_D1_IN1 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_U_counter_5bit_counter_rst_delay_MC_D1_IN1
    );
  NlwBufferBlock_U1_counter_rst_MC_REG_IN : X_BUF
    port map (
      I => U1_counter_rst_MC_D_97,
      O => NlwBufferSignal_U1_counter_rst_MC_REG_IN
    );
  NlwBufferBlock_U1_counter_rst_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_counter_rst_MC_REG_CLK
    );
  NlwBufferBlock_U1_counter_rst_MC_D_IN0 : X_BUF
    port map (
      I => U1_counter_rst_MC_D1_98,
      O => NlwBufferSignal_U1_counter_rst_MC_D_IN0
    );
  NlwBufferBlock_U1_counter_rst_MC_D_IN1 : X_BUF
    port map (
      I => U1_counter_rst_MC_D2_99,
      O => NlwBufferSignal_U1_counter_rst_MC_D_IN1
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN0
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN1
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN2
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN3
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN4
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN5
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN6
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN7
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN8
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN9
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN10
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN11 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(11),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN11
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN12 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(12),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN12
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN13 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(13),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN13
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN14 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(14),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN14
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN15 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(15),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN15
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN16 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(16),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN16
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN17 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(17),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN17
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN18 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(18),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN18
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN19 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(19),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN19
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN20 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(20),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN20
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN21 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(21),
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN21
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN22 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN22
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN23 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN23
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN24 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN24
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN25 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN25
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN26 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN26
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN27 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN27
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN28 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN28
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN29 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN29
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN30 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN30
    );
  NlwBufferBlock_U1_counter_rst_MC_D1_IN31 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_counter_rst_MC_D1_IN31
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_0_MC_D_123,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_0_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_0_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_0_MC_tsimcreated_xor_Q_124,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_0_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_0_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_0_MC_D1_125,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_0_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_0_MC_D2_126,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_10_MC_D_128,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_10_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_10_MC_tsimcreated_xor_Q_129,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_10_MC_D1_130,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_10_MC_D2_131,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN10 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN11 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN12 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN13 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN14 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_10_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_10_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_1_MC_D_133,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_1_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_1_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_1_MC_tsimcreated_xor_Q_134,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_1_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_1_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_1_MC_D1_135,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_1_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_1_MC_D2_136,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_1_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_1_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_1_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_2_MC_D_138,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_2_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_2_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_2_MC_tsimcreated_xor_Q_139,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_2_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_2_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_2_MC_D1_140,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_2_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_2_MC_D2_141,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_2_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_2_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_2_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_3_MC_D_143,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_3_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_3_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_3_MC_tsimcreated_xor_Q_144,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_3_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_3_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_3_MC_D1_145,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_3_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_3_MC_D2_146,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_3_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_3_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_3_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_3_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_4_MC_D_148,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_4_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_4_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_4_MC_tsimcreated_xor_Q_149,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_4_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_4_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_4_MC_D1_150,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_4_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_4_MC_D2_151,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_4_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_4_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_4_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_4_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_4_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_5_MC_D_153,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_5_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_5_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_5_MC_tsimcreated_xor_Q_154,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_5_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_5_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_5_MC_D1_155,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_5_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_5_MC_D2_156,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_5_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_5_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_5_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_5_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_5_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_5_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_6_MC_D_158,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_6_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_6_MC_tsimcreated_xor_Q_159,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_6_MC_D1_160,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_6_MC_D2_161,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_6_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_6_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_7_MC_D_163,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_7_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_7_MC_tsimcreated_xor_Q_164,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_7_MC_D1_165,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_7_MC_D2_166,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_7_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_7_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_8_MC_D_168,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_8_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_8_MC_tsimcreated_xor_Q_169,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_8_MC_D1_170,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_8_MC_D2_171,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_8_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_8_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_9_MC_D_173,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_9_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_9_MC_tsimcreated_xor_Q_174,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_9_MC_D1_175,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_9_MC_D2_176,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN9 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN10 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN11 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN12 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN13 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN14 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_9_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_9_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_11_MC_D_178,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_11_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_11_MC_tsimcreated_xor_Q_179,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_11_MC_D1_180,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_11_MC_D2_181,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN11 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN12 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN13 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN14 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_11_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_11_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_12_MC_D_183,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_12_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_12_MC_tsimcreated_xor_Q_184,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_12_MC_D1_185,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_12_MC_D2_186,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN11 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(11),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN12 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN13 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN14 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_12_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_12_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_13_MC_D_188,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_13_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_13_MC_tsimcreated_xor_Q_189,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_13_MC_D1_190,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_13_MC_D2_191,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN11 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(11),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN12 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(12),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN13 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN14 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_13_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_13_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_14_MC_D_193,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_14_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_14_MC_tsimcreated_xor_Q_194,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_14_MC_D1_195,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_14_MC_D2_196,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN11 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(11),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN12 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(12),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN13 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(13),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN14 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_14_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_14_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_15_MC_D_198,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_15_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_15_MC_tsimcreated_xor_Q_199,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_15_MC_D1_200,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_15_MC_D2_201,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN11 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(11),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN12 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(12),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN13 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(13),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN14 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(14),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_15_MC_D1_IN15 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_15_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_16_MC_D_203,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_16_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_16_MC_tsimcreated_xor_Q_204,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_16_MC_D1_205,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_16_MC_D2_206,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN11 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(11),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN12 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(12),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN13 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(13),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN14 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(14),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_16_MC_D1_IN15 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(15),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_16_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_17_MC_D_208,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_17_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_17_MC_tsimcreated_xor_Q_209,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_17_MC_D1_210,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_17_MC_D2_211,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN11 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(11),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN12 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(12),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN13 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(13),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN14 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(14),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN15 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(15),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN16 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(16),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN16
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN17 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN17
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN18 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN18
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN19 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN19
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN20 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN20
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN21 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN21
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN22 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN22
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN23 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN23
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN24 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN24
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN25 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN25
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN26 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN26
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN27 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN27
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN28 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN28
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN29 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN29
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN30 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN30
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_17_MC_D1_IN31 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_17_MC_D1_IN31
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_18_MC_D_213,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_18_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_18_MC_tsimcreated_xor_Q_214,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_18_MC_D1_215,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_18_MC_D2_216,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN11 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(11),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN12 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(12),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN13 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(13),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN14 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(14),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN15 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(15),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN16 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(16),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN16
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN17 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(17),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN17
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN18 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN18
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN19 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN19
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN20 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN20
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN21 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN21
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN22 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN22
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN23 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN23
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN24 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN24
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN25 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN25
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN26 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN26
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN27 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN27
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN28 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN28
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN29 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN29
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN30 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN30
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_18_MC_D1_IN31 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_18_MC_D1_IN31
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_19_MC_D_218,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_19_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_19_MC_tsimcreated_xor_Q_219,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_19_MC_D1_220,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_19_MC_D2_221,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN11 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(11),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN12 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(12),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN13 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(13),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN14 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(14),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN15 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(15),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN16 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(16),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN16
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN17 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(17),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN17
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN18 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(18),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN18
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN19 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN19
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN20 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN20
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN21 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN21
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN22 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN22
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN23 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN23
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN24 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN24
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN25 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN25
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN26 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN26
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN27 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN27
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN28 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN28
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN29 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN29
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN30 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN30
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_19_MC_D1_IN31 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_19_MC_D1_IN31
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_20_MC_D_223,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_20_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_20_MC_tsimcreated_xor_Q_224,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_20_MC_D1_225,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_20_MC_D2_226,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN11 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(11),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN12 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(12),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN13 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(13),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN14 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(14),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN15 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(15),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN16 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(16),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN16
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN17 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(17),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN17
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN18 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(18),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN18
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN19 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(19),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN19
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN20 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN20
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN21 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN21
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN22 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN22
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN23 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN23
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN24 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN24
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN25 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN25
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN26 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN26
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN27 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN27
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN28 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN28
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN29 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN29
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN30 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN30
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_20_MC_D1_IN31 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_20_MC_D1_IN31
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_21_MC_D_228,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_21_MC_Q,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_REG_IN : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_21_MC_tsimcreated_xor_Q_229,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_REG_IN
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_21_MC_D1_230,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int_21_MC_D2_231,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN0 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(0),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN0
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN1 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(10),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN1
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN2 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(1),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN2
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN3 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(2),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN3
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN4 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(3),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN4
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN5 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(4),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN5
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN6 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(5),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN6
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN7 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(6),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN7
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN8 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(7),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN8
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN9 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(8),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN9
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN10 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(9),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN10
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN11 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(11),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN11
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN12 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(12),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN12
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN13 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(13),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN13
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN14 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(14),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN14
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN15 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(15),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN15
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN16 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(16),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN16
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN17 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(17),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN17
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN18 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(18),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN18
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN19 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(19),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN19
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN20 : X_BUF
    port map (
      I => U1_U_freq_divider_count_int(20),
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN20
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN21 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN21
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN22 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN22
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN23 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN23
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN24 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN24
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN25 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN25
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN26 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN26
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN27 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN27
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN28 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN28
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN29 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN29
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN30 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN30
    );
  NlwBufferBlock_U1_U_freq_divider_count_int_21_MC_D1_IN31 : X_BUF
    port map (
      I => Vcc_18,
      O => NlwBufferSignal_U1_U_freq_divider_count_int_21_MC_D1_IN31
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_REG_IN : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_0_MC_D_233,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_REG_IN
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_0_MC_D1_234,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_0_MC_D2_235,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_84,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(0),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => U1_counter_ena_87,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_84,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(0),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_counter_ena_87,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_D2_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_0_MC_D2_PT_0_236,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_0_MC_D2_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_0_MC_D2_PT_1_237,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_IN1
    );
  NlwBufferBlock_U1_counter_ena_MC_REG_IN : X_BUF
    port map (
      I => U1_counter_ena_MC_D_239,
      O => NlwBufferSignal_U1_counter_ena_MC_REG_IN
    );
  NlwBufferBlock_U1_counter_ena_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_counter_ena_MC_REG_CLK
    );
  NlwBufferBlock_U1_counter_ena_MC_D_IN0 : X_BUF
    port map (
      I => U1_counter_ena_MC_D1_240,
      O => NlwBufferSignal_U1_counter_ena_MC_D_IN0
    );
  NlwBufferBlock_U1_counter_ena_MC_D_IN1 : X_BUF
    port map (
      I => U1_counter_ena_MC_D2_241,
      O => NlwBufferSignal_U1_counter_ena_MC_D_IN1
    );
  NlwBufferBlock_U1_counter_ena_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => anemometer_II_UIM_15,
      O => NlwBufferSignal_U1_counter_ena_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_U1_counter_ena_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_U_risingedge_detector_anemometer_reg,
      O => NlwBufferSignal_U1_counter_ena_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_U1_counter_ena_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => code_select_II_UIM_3,
      O => NlwBufferSignal_U1_counter_ena_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_U1_counter_ena_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => anemometer_II_UIM_15,
      O => NlwBufferSignal_U1_counter_ena_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_U1_counter_ena_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_U_risingedge_detector_anemometer_reg,
      O => NlwBufferSignal_U1_counter_ena_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_U1_counter_ena_MC_D2_IN0 : X_BUF
    port map (
      I => U1_counter_ena_MC_D2_PT_0_242,
      O => NlwBufferSignal_U1_counter_ena_MC_D2_IN0
    );
  NlwBufferBlock_U1_counter_ena_MC_D2_IN1 : X_BUF
    port map (
      I => U1_counter_ena_MC_D2_PT_1_243,
      O => NlwBufferSignal_U1_counter_ena_MC_D2_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_1_MC_D_245,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_1_MC_Q,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_REG_IN : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_1_MC_tsimcreated_xor_Q_246,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_REG_IN
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_1_MC_D1_247,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_1_MC_D2_248,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_84,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(1),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_84,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(0),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_counter_ena_87,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_D2_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_1_MC_D2_PT_0_249,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_1_MC_D2_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_1_MC_D2_PT_1_250,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_2_MC_D_252,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_2_MC_Q,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_REG_IN : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_2_MC_tsimcreated_xor_Q_253,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_REG_IN
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_2_MC_D1_254,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_2_MC_D2_255,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_84,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(2),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_84,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(0),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_counter_ena_87,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(1),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_D2_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_2_MC_D2_PT_0_256,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_2_MC_D2_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_2_MC_D2_PT_1_257,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_3_MC_D_259,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_3_MC_Q,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_REG_IN : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_3_MC_tsimcreated_xor_Q_260,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_REG_IN
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_REG_CLK
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_D_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_3_MC_D1_261,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_D_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_3_MC_D2_262,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_84,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(3),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_counter_rst_delay_84,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(0),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_counter_ena_87,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(1),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(2),
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_D2_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_3_MC_D2_PT_0_263,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_IN0
    );
  NlwBufferBlock_U1_U_counter_5bit_count_int_3_MC_D2_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int_3_MC_D2_PT_1_264,
      O => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_IN1
    );
  NlwBufferBlock_U1_speed_code_3_MC_REG_IN : X_BUF
    port map (
      I => U1_speed_code_3_MC_D_266,
      O => NlwBufferSignal_U1_speed_code_3_MC_REG_IN
    );
  NlwBufferBlock_U1_speed_code_3_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_speed_code_3_MC_REG_CLK
    );
  NlwBufferBlock_U1_speed_code_3_MC_D_IN0 : X_BUF
    port map (
      I => U1_speed_code_3_MC_D1_268,
      O => NlwBufferSignal_U1_speed_code_3_MC_D_IN0
    );
  NlwBufferBlock_U1_speed_code_3_MC_D_IN1 : X_BUF
    port map (
      I => U1_speed_code_3_MC_D2_269,
      O => NlwBufferSignal_U1_speed_code_3_MC_D_IN1
    );
  NlwBufferBlock_U1_speed_code_3_MC_D2_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(3),
      O => NlwBufferSignal_U1_speed_code_3_MC_D2_IN0
    );
  NlwBufferBlock_U1_speed_code_3_MC_D2_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(3),
      O => NlwBufferSignal_U1_speed_code_3_MC_D2_IN1
    );
  NlwBufferBlock_U1_speed_code_3_MC_CE_IN0 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_speed_code_3_MC_CE_IN0
    );
  NlwBufferBlock_U1_speed_code_3_MC_CE_IN1 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_speed_code_3_MC_CE_IN1
    );
  NlwBufferBlock_U1_speed_code_2_MC_REG_IN : X_BUF
    port map (
      I => U1_speed_code_2_MC_D_271,
      O => NlwBufferSignal_U1_speed_code_2_MC_REG_IN
    );
  NlwBufferBlock_U1_speed_code_2_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_speed_code_2_MC_REG_CLK
    );
  NlwBufferBlock_U1_speed_code_2_MC_D_IN0 : X_BUF
    port map (
      I => U1_speed_code_2_MC_D1_273,
      O => NlwBufferSignal_U1_speed_code_2_MC_D_IN0
    );
  NlwBufferBlock_U1_speed_code_2_MC_D_IN1 : X_BUF
    port map (
      I => U1_speed_code_2_MC_D2_274,
      O => NlwBufferSignal_U1_speed_code_2_MC_D_IN1
    );
  NlwBufferBlock_U1_speed_code_2_MC_D2_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(2),
      O => NlwBufferSignal_U1_speed_code_2_MC_D2_IN0
    );
  NlwBufferBlock_U1_speed_code_2_MC_D2_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(2),
      O => NlwBufferSignal_U1_speed_code_2_MC_D2_IN1
    );
  NlwBufferBlock_U1_speed_code_2_MC_CE_IN0 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_speed_code_2_MC_CE_IN0
    );
  NlwBufferBlock_U1_speed_code_2_MC_CE_IN1 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_speed_code_2_MC_CE_IN1
    );
  NlwBufferBlock_code_wind_speed_1_MC_D_IN0 : X_BUF
    port map (
      I => code_wind_speed_1_MC_D1_277,
      O => NlwBufferSignal_code_wind_speed_1_MC_D_IN0
    );
  NlwBufferBlock_code_wind_speed_1_MC_D_IN1 : X_BUF
    port map (
      I => code_wind_speed_1_MC_D2_278,
      O => NlwBufferSignal_code_wind_speed_1_MC_D_IN1
    );
  NlwBufferBlock_code_wind_speed_1_MC_D1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_1_MC_D1_IN0
    );
  NlwBufferBlock_code_wind_speed_1_MC_D1_IN1 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_code_wind_speed_1_MC_D1_IN1
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => code_select_II_UIM_3,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => code_select_II_UIM_3,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => U1_speed_code(0),
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_PT_3_IN4 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN4
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_IN0 : X_BUF
    port map (
      I => code_wind_speed_1_MC_D2_PT_0_279,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_IN0
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_IN1 : X_BUF
    port map (
      I => code_wind_speed_1_MC_D2_PT_1_280,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_IN1
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_IN2 : X_BUF
    port map (
      I => code_wind_speed_1_MC_D2_PT_2_282,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_IN2
    );
  NlwBufferBlock_code_wind_speed_1_MC_D2_IN3 : X_BUF
    port map (
      I => code_wind_speed_1_MC_D2_PT_3_284,
      O => NlwBufferSignal_code_wind_speed_1_MC_D2_IN3
    );
  NlwBufferBlock_U1_speed_code_0_MC_REG_IN : X_BUF
    port map (
      I => U1_speed_code_0_MC_D_286,
      O => NlwBufferSignal_U1_speed_code_0_MC_REG_IN
    );
  NlwBufferBlock_U1_speed_code_0_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_speed_code_0_MC_REG_CLK
    );
  NlwBufferBlock_U1_speed_code_0_MC_D_IN0 : X_BUF
    port map (
      I => U1_speed_code_0_MC_D1_288,
      O => NlwBufferSignal_U1_speed_code_0_MC_D_IN0
    );
  NlwBufferBlock_U1_speed_code_0_MC_D_IN1 : X_BUF
    port map (
      I => U1_speed_code_0_MC_D2_289,
      O => NlwBufferSignal_U1_speed_code_0_MC_D_IN1
    );
  NlwBufferBlock_U1_speed_code_0_MC_D2_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(0),
      O => NlwBufferSignal_U1_speed_code_0_MC_D2_IN0
    );
  NlwBufferBlock_U1_speed_code_0_MC_D2_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(0),
      O => NlwBufferSignal_U1_speed_code_0_MC_D2_IN1
    );
  NlwBufferBlock_U1_speed_code_0_MC_CE_IN0 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_speed_code_0_MC_CE_IN0
    );
  NlwBufferBlock_U1_speed_code_0_MC_CE_IN1 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_speed_code_0_MC_CE_IN1
    );
  NlwBufferBlock_U1_speed_code_1_MC_REG_IN : X_BUF
    port map (
      I => U1_speed_code_1_MC_D_291,
      O => NlwBufferSignal_U1_speed_code_1_MC_REG_IN
    );
  NlwBufferBlock_U1_speed_code_1_MC_REG_CLK : X_BUF
    port map (
      I => clock_II_FCLK_1,
      O => NlwBufferSignal_U1_speed_code_1_MC_REG_CLK
    );
  NlwBufferBlock_U1_speed_code_1_MC_D_IN0 : X_BUF
    port map (
      I => U1_speed_code_1_MC_D1_293,
      O => NlwBufferSignal_U1_speed_code_1_MC_D_IN0
    );
  NlwBufferBlock_U1_speed_code_1_MC_D_IN1 : X_BUF
    port map (
      I => U1_speed_code_1_MC_D2_294,
      O => NlwBufferSignal_U1_speed_code_1_MC_D_IN1
    );
  NlwBufferBlock_U1_speed_code_1_MC_D2_IN0 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(1),
      O => NlwBufferSignal_U1_speed_code_1_MC_D2_IN0
    );
  NlwBufferBlock_U1_speed_code_1_MC_D2_IN1 : X_BUF
    port map (
      I => U1_U_counter_5bit_count_int(1),
      O => NlwBufferSignal_U1_speed_code_1_MC_D2_IN1
    );
  NlwBufferBlock_U1_speed_code_1_MC_CE_IN0 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_speed_code_1_MC_CE_IN0
    );
  NlwBufferBlock_U1_speed_code_1_MC_CE_IN1 : X_BUF
    port map (
      I => U1_counter_rst_78,
      O => NlwBufferSignal_U1_speed_code_1_MC_CE_IN1
    );
  NlwBufferBlock_code_wind_speed_2_MC_D_IN0 : X_BUF
    port map (
      I => code_wind_speed_2_MC_D1_297,
      O => NlwBufferSignal_code_wind_speed_2_MC_D_IN0
    );
  NlwBufferBlock_code_wind_speed_2_MC_D_IN1 : X_BUF
    port map (
      I => code_wind_speed_2_MC_D2_298,
      O => NlwBufferSignal_code_wind_speed_2_MC_D_IN1
    );
  NlwBufferBlock_code_wind_speed_2_MC_D1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_2_MC_D1_IN0
    );
  NlwBufferBlock_code_wind_speed_2_MC_D1_IN1 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_code_wind_speed_2_MC_D1_IN1
    );
  NlwBufferBlock_code_wind_speed_2_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => code_select_II_UIM_3,
      O => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_code_wind_speed_2_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_code_wind_speed_2_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_code_wind_speed_2_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_code_wind_speed_2_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_code_wind_speed_2_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_code_wind_speed_2_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_code_wind_speed_2_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_code_wind_speed_2_MC_D2_IN0 : X_BUF
    port map (
      I => code_wind_speed_2_MC_D2_PT_0_299,
      O => NlwBufferSignal_code_wind_speed_2_MC_D2_IN0
    );
  NlwBufferBlock_code_wind_speed_2_MC_D2_IN1 : X_BUF
    port map (
      I => code_wind_speed_2_MC_D2_PT_1_300,
      O => NlwBufferSignal_code_wind_speed_2_MC_D2_IN1
    );
  NlwBufferBlock_code_wind_speed_3_MC_D_IN0 : X_BUF
    port map (
      I => code_wind_speed_3_MC_D1_303,
      O => NlwBufferSignal_code_wind_speed_3_MC_D_IN0
    );
  NlwBufferBlock_code_wind_speed_3_MC_D_IN1 : X_BUF
    port map (
      I => code_wind_speed_3_MC_D2_304,
      O => NlwBufferSignal_code_wind_speed_3_MC_D_IN1
    );
  NlwBufferBlock_code_wind_speed_3_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_code_wind_speed_3_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_code_wind_speed_3_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_code_wind_speed_3_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_code_wind_speed_3_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_code_wind_speed_3_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_code_wind_speed_3_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => U1_speed_code(0),
      O => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_code_wind_speed_3_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_code_wind_speed_3_MC_D2_IN0 : X_BUF
    port map (
      I => code_wind_speed_3_MC_D2_PT_0_305,
      O => NlwBufferSignal_code_wind_speed_3_MC_D2_IN0
    );
  NlwBufferBlock_code_wind_speed_3_MC_D2_IN1 : X_BUF
    port map (
      I => code_wind_speed_3_MC_D2_PT_1_306,
      O => NlwBufferSignal_code_wind_speed_3_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_0_MC_D1_309,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_0_MC_D2_310,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_0_MC_D2_PT_0_311,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_0_MC_D2_PT_1_312,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_0_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_0_MC_D2_PT_2_313,
      O => NlwBufferSignal_wind_dir_speed_0_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_10_MC_D1_316,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_10_MC_D2_317,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_PT_3_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN4
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_10_MC_D2_PT_0_318,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_10_MC_D2_PT_1_319,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_10_MC_D2_PT_2_320,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_10_MC_D2_IN3 : X_BUF
    port map (
      I => wind_dir_speed_10_MC_D2_PT_3_321,
      O => NlwBufferSignal_wind_dir_speed_10_MC_D2_IN3
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_11_MC_D1_324,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_11_MC_D2_325,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D1_IN0
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D1_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D1_IN1
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => U1_speed_code(0),
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_11_MC_D2_PT_0_326,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_11_MC_D2_PT_1_327,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_11_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_11_MC_D2_PT_2_328,
      O => NlwBufferSignal_wind_dir_speed_11_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_12_MC_D1_331,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_12_MC_D2_332,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_12_MC_D2_PT_0_333,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_12_MC_D2_PT_1_334,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_12_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_12_MC_D2_PT_2_335,
      O => NlwBufferSignal_wind_dir_speed_12_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_13_MC_D1_338,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_13_MC_D2_339,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => U1_speed_code(0),
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_PT_3_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN4
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_13_MC_D2_PT_0_340,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_13_MC_D2_PT_1_341,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_13_MC_D2_PT_2_342,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_13_MC_D2_IN3 : X_BUF
    port map (
      I => wind_dir_speed_13_MC_D2_PT_3_343,
      O => NlwBufferSignal_wind_dir_speed_13_MC_D2_IN3
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_14_MC_D1_346,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_14_MC_D2_347,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_PT_3_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN4
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_14_MC_D2_PT_0_348,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_14_MC_D2_PT_1_349,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_14_MC_D2_PT_2_350,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_14_MC_D2_IN3 : X_BUF
    port map (
      I => wind_dir_speed_14_MC_D2_PT_3_351,
      O => NlwBufferSignal_wind_dir_speed_14_MC_D2_IN3
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_15_MC_D1_354,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_15_MC_D2_355,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D1_IN0
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D1_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D1_IN1
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => U1_speed_code(0),
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_15_MC_D2_PT_0_356,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_15_MC_D2_PT_1_357,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_15_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_15_MC_D2_PT_2_358,
      O => NlwBufferSignal_wind_dir_speed_15_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_1_MC_D1_361,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_1_MC_D2_362,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => U1_speed_code(0),
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_PT_3_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN4
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_1_MC_D2_PT_0_363,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_1_MC_D2_PT_1_364,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_1_MC_D2_PT_2_365,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_1_MC_D2_IN3 : X_BUF
    port map (
      I => wind_dir_speed_1_MC_D2_PT_3_366,
      O => NlwBufferSignal_wind_dir_speed_1_MC_D2_IN3
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_2_MC_D1_369,
      O => NlwBufferSignal_wind_dir_speed_2_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_2_MC_D2_370,
      O => NlwBufferSignal_wind_dir_speed_2_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_2_MC_D1_IN0
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D1_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_2_MC_D1_IN1
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_2_MC_D2_PT_0_371,
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_2_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_2_MC_D2_PT_1_372,
      O => NlwBufferSignal_wind_dir_speed_2_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_3_MC_D1_375,
      O => NlwBufferSignal_wind_dir_speed_3_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_3_MC_D2_376,
      O => NlwBufferSignal_wind_dir_speed_3_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_3_MC_D1_IN0
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D1_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_3_MC_D1_IN1
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_PT_0_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN2
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_PT_0_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN3
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_PT_0_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN4
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => U1_speed_code(0),
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_PT_1_IN5 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN5
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_3_MC_D2_PT_0_377,
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_3_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_3_MC_D2_PT_1_378,
      O => NlwBufferSignal_wind_dir_speed_3_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_4_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_4_MC_D1_381,
      O => NlwBufferSignal_wind_dir_speed_4_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_4_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_4_MC_D2_382,
      O => NlwBufferSignal_wind_dir_speed_4_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_4_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_4_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_4_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_4_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_4_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_4_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_wind_dir_speed_4_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_wind_dir_speed_4_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_4_MC_D2_PT_0_383,
      O => NlwBufferSignal_wind_dir_speed_4_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_4_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_4_MC_D2_PT_1_384,
      O => NlwBufferSignal_wind_dir_speed_4_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_5_MC_D1_387,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_5_MC_D2_388,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_1_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN4
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => U1_speed_code(0),
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_5_MC_D2_PT_0_389,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_5_MC_D2_PT_1_390,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_5_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_5_MC_D2_PT_2_391,
      O => NlwBufferSignal_wind_dir_speed_5_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_6_MC_D1_394,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_6_MC_D2_395,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_6_MC_D2_PT_0_396,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_6_MC_D2_PT_1_397,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_6_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_6_MC_D2_PT_2_398,
      O => NlwBufferSignal_wind_dir_speed_6_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_7_MC_D1_401,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_7_MC_D2_402,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_1_IN3 : X_BUF
    port map (
      I => U1_speed_code(0),
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_1_IN3
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_PT_3_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN4
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_7_MC_D2_PT_0_403,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_7_MC_D2_PT_1_404,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_7_MC_D2_PT_2_405,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_7_MC_D2_IN3 : X_BUF
    port map (
      I => wind_dir_speed_7_MC_D2_PT_3_406,
      O => NlwBufferSignal_wind_dir_speed_7_MC_D2_IN3
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_8_MC_D1_409,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_8_MC_D2_410,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_PT_2_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN4
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_8_MC_D2_PT_0_411,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_8_MC_D2_PT_1_412,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_8_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_8_MC_D2_PT_2_413,
      O => NlwBufferSignal_wind_dir_speed_8_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D_IN0 : X_BUF
    port map (
      I => wind_dir_speed_9_MC_D1_416,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D_IN0
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D_IN1 : X_BUF
    port map (
      I => wind_dir_speed_9_MC_D2_417,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D_IN1
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_0_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_0_IN0
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_0_IN1 : X_BUF
    port map (
      I => U1_speed_code(4),
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_0_IN1
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_1_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_1_IN0
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_1_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_1_IN1
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_1_IN2 : X_BUF
    port map (
      I => U1_speed_code(2),
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_1_IN2
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_2_IN0 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN0
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_2_IN1 : X_BUF
    port map (
      I => U1_speed_code(3),
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN1
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_2_IN2 : X_BUF
    port map (
      I => U1_speed_code(0),
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN2
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_2_IN3 : X_BUF
    port map (
      I => U1_speed_code(1),
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_2_IN3
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_3_IN0 : X_BUF
    port map (
      I => weathercock_0_II_UIM_5,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN0
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_3_IN1 : X_BUF
    port map (
      I => mode_select_II_UIM_7,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN1
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_3_IN2 : X_BUF
    port map (
      I => weathercock_3_II_UIM_9,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN2
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_3_IN3 : X_BUF
    port map (
      I => weathercock_2_II_UIM_11,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN3
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_PT_3_IN4 : X_BUF
    port map (
      I => weathercock_1_II_UIM_13,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN4
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_IN0 : X_BUF
    port map (
      I => wind_dir_speed_9_MC_D2_PT_0_418,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_IN0
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_IN1 : X_BUF
    port map (
      I => wind_dir_speed_9_MC_D2_PT_1_419,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_IN1
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_IN2 : X_BUF
    port map (
      I => wind_dir_speed_9_MC_D2_PT_2_420,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_IN2
    );
  NlwBufferBlock_wind_dir_speed_9_MC_D2_IN3 : X_BUF
    port map (
      I => wind_dir_speed_9_MC_D2_PT_3_421,
      O => NlwBufferSignal_wind_dir_speed_9_MC_D2_IN3
    );
  NlwInverterBlock_code_wind_speed_0_MC_D1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D1_IN1,
      O => NlwInverterSignal_code_wind_speed_0_MC_D1_IN1
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN2,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_0_IN2
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_0_IN3,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_0_IN3
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN3,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN3
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN2,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN2
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_3_IN4,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_3_IN4
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN0,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN0
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN1,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN1
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN2,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN2
    );
  NlwInverterBlock_code_wind_speed_0_MC_D2_PT_4_IN3 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_0_MC_D2_PT_4_IN3,
      O => NlwInverterSignal_code_wind_speed_0_MC_D2_PT_4_IN3
    );
  NlwInverterBlock_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_U1_U_counter_5bit_count_int_4_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN0,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN0
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN1,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN1
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN2,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN2
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN3,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN3
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN4,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN4
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN5,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN5
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN6,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN6
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN7 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN7,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN7
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN8 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN8,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN8
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN9 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN9,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN9
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN10 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN10,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN10
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN11 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN11,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN11
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN12 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN12,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN12
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN13 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN13,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN13
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN14 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN14,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN14
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN15 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN15,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN15
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN16 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN16,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN16
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN17 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN17,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN17
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN18 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN18,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN18
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN19 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN19,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN19
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN20 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN20,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN20
    );
  NlwInverterBlock_U1_counter_rst_MC_D1_IN21 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_rst_MC_D1_IN21,
      O => NlwInverterSignal_U1_counter_rst_MC_D1_IN21
    );
  NlwInverterBlock_U1_U_freq_divider_count_int_0_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_U1_U_freq_divider_count_int_0_MC_D_IN0,
      O => NlwInverterSignal_U1_U_freq_divider_count_int_0_MC_D_IN0
    );
  NlwInverterBlock_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN2,
      O => NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_0_IN2
    );
  NlwInverterBlock_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_U1_U_counter_5bit_count_int_0_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_U1_counter_ena_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_ena_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_U1_counter_ena_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_U1_counter_ena_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_ena_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_U1_counter_ena_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_U1_counter_ena_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_U1_counter_ena_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_U1_counter_ena_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_U1_U_counter_5bit_count_int_1_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_U1_U_counter_5bit_count_int_2_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_U1_U_counter_5bit_count_int_3_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_code_wind_speed_1_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D1_IN0,
      O => NlwInverterSignal_code_wind_speed_1_MC_D1_IN0
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_0_IN3,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_0_IN3
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN3,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN3
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN2,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN2
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN3,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN3
    );
  NlwInverterBlock_code_wind_speed_1_MC_D2_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_1_MC_D2_PT_3_IN4,
      O => NlwInverterSignal_code_wind_speed_1_MC_D2_PT_3_IN4
    );
  NlwInverterBlock_code_wind_speed_2_MC_D1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_2_MC_D1_IN0,
      O => NlwInverterSignal_code_wind_speed_2_MC_D1_IN0
    );
  NlwInverterBlock_code_wind_speed_2_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_code_wind_speed_2_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_code_wind_speed_2_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_code_wind_speed_2_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_code_wind_speed_2_MC_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN3,
      O => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN3
    );
  NlwInverterBlock_code_wind_speed_2_MC_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_2_MC_D2_PT_1_IN4,
      O => NlwInverterSignal_code_wind_speed_2_MC_D2_PT_1_IN4
    );
  NlwInverterBlock_code_wind_speed_3_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_code_wind_speed_3_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_code_wind_speed_3_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_code_wind_speed_3_MC_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN3,
      O => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN3
    );
  NlwInverterBlock_code_wind_speed_3_MC_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN4,
      O => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN4
    );
  NlwInverterBlock_code_wind_speed_3_MC_D2_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_code_wind_speed_3_MC_D2_PT_1_IN5,
      O => NlwInverterSignal_code_wind_speed_3_MC_D2_PT_1_IN5
    );
  NlwInverterBlock_wind_dir_speed_0_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_0_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_0_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_0_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_wind_dir_speed_0_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_wind_dir_speed_0_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_0_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_wind_dir_speed_0_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_wind_dir_speed_10_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_10_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_10_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_10_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_wind_dir_speed_10_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_wind_dir_speed_10_MC_D2_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN3,
      O => NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN3
    );
  NlwInverterBlock_wind_dir_speed_10_MC_D2_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_10_MC_D2_PT_3_IN4,
      O => NlwInverterSignal_wind_dir_speed_10_MC_D2_PT_3_IN4
    );
  NlwInverterBlock_wind_dir_speed_11_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_11_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_11_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_11_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_wind_dir_speed_11_MC_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_0_IN2,
      O => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_0_IN2
    );
  NlwInverterBlock_wind_dir_speed_11_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_wind_dir_speed_11_MC_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN3,
      O => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_1_IN3
    );
  NlwInverterBlock_wind_dir_speed_11_MC_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_1_IN4,
      O => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_1_IN4
    );
  NlwInverterBlock_wind_dir_speed_11_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_wind_dir_speed_11_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_wind_dir_speed_11_MC_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN3,
      O => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN3
    );
  NlwInverterBlock_wind_dir_speed_11_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_11_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_wind_dir_speed_11_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_wind_dir_speed_12_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_12_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_12_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_12_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_wind_dir_speed_12_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_wind_dir_speed_12_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_12_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_wind_dir_speed_12_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_wind_dir_speed_13_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_13_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_13_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_13_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_wind_dir_speed_13_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_wind_dir_speed_13_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_wind_dir_speed_13_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_wind_dir_speed_13_MC_D2_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_13_MC_D2_PT_3_IN4,
      O => NlwInverterSignal_wind_dir_speed_13_MC_D2_PT_3_IN4
    );
  NlwInverterBlock_wind_dir_speed_14_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_14_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_14_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_14_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_wind_dir_speed_14_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_wind_dir_speed_14_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_14_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_wind_dir_speed_14_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_wind_dir_speed_15_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_15_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_15_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_15_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_wind_dir_speed_15_MC_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN2,
      O => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_0_IN2
    );
  NlwInverterBlock_wind_dir_speed_15_MC_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_0_IN3,
      O => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_0_IN3
    );
  NlwInverterBlock_wind_dir_speed_15_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_wind_dir_speed_15_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_wind_dir_speed_15_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_wind_dir_speed_15_MC_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN3,
      O => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN3
    );
  NlwInverterBlock_wind_dir_speed_15_MC_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_15_MC_D2_PT_2_IN4,
      O => NlwInverterSignal_wind_dir_speed_15_MC_D2_PT_2_IN4
    );
  NlwInverterBlock_wind_dir_speed_1_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_1_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_1_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_1_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_wind_dir_speed_1_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_wind_dir_speed_1_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_wind_dir_speed_1_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_wind_dir_speed_1_MC_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_1_MC_D2_PT_3_IN2,
      O => NlwInverterSignal_wind_dir_speed_1_MC_D2_PT_3_IN2
    );
  NlwInverterBlock_wind_dir_speed_2_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_2_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_2_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_2_MC_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN0,
      O => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN0
    );
  NlwInverterBlock_wind_dir_speed_2_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_wind_dir_speed_2_MC_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN2,
      O => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN2
    );
  NlwInverterBlock_wind_dir_speed_2_MC_D2_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_0_IN4,
      O => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_0_IN4
    );
  NlwInverterBlock_wind_dir_speed_2_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_wind_dir_speed_2_MC_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN3,
      O => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_1_IN3
    );
  NlwInverterBlock_wind_dir_speed_2_MC_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_2_MC_D2_PT_1_IN4,
      O => NlwInverterSignal_wind_dir_speed_2_MC_D2_PT_1_IN4
    );
  NlwInverterBlock_wind_dir_speed_3_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_3_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_3_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_3_MC_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN1,
      O => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_0_IN1
    );
  NlwInverterBlock_wind_dir_speed_3_MC_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN2,
      O => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_0_IN2
    );
  NlwInverterBlock_wind_dir_speed_3_MC_D2_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_0_IN4,
      O => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_0_IN4
    );
  NlwInverterBlock_wind_dir_speed_3_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_wind_dir_speed_3_MC_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN3,
      O => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN3
    );
  NlwInverterBlock_wind_dir_speed_3_MC_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN4,
      O => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN4
    );
  NlwInverterBlock_wind_dir_speed_3_MC_D2_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_3_MC_D2_PT_1_IN5,
      O => NlwInverterSignal_wind_dir_speed_3_MC_D2_PT_1_IN5
    );
  NlwInverterBlock_wind_dir_speed_4_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_4_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_4_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_4_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_wind_dir_speed_4_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_wind_dir_speed_4_MC_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN3,
      O => NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN3
    );
  NlwInverterBlock_wind_dir_speed_4_MC_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_4_MC_D2_PT_1_IN4,
      O => NlwInverterSignal_wind_dir_speed_4_MC_D2_PT_1_IN4
    );
  NlwInverterBlock_wind_dir_speed_5_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_5_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_5_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_5_MC_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN0,
      O => NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN0
    );
  NlwInverterBlock_wind_dir_speed_5_MC_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN1,
      O => NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN1
    );
  NlwInverterBlock_wind_dir_speed_5_MC_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN2,
      O => NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN2
    );
  NlwInverterBlock_wind_dir_speed_5_MC_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN3,
      O => NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN3
    );
  NlwInverterBlock_wind_dir_speed_5_MC_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_5_MC_D2_PT_1_IN4,
      O => NlwInverterSignal_wind_dir_speed_5_MC_D2_PT_1_IN4
    );
  NlwInverterBlock_wind_dir_speed_6_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_6_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_6_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_6_MC_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN0,
      O => NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN0
    );
  NlwInverterBlock_wind_dir_speed_6_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_wind_dir_speed_6_MC_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN2,
      O => NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN2
    );
  NlwInverterBlock_wind_dir_speed_6_MC_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_6_MC_D2_PT_2_IN3,
      O => NlwInverterSignal_wind_dir_speed_6_MC_D2_PT_2_IN3
    );
  NlwInverterBlock_wind_dir_speed_7_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_7_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_7_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_7_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_wind_dir_speed_7_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_wind_dir_speed_7_MC_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN2,
      O => NlwInverterSignal_wind_dir_speed_7_MC_D2_PT_3_IN2
    );
  NlwInverterBlock_wind_dir_speed_7_MC_D2_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_7_MC_D2_PT_3_IN3,
      O => NlwInverterSignal_wind_dir_speed_7_MC_D2_PT_3_IN3
    );
  NlwInverterBlock_wind_dir_speed_8_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_8_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_8_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_8_MC_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN1,
      O => NlwInverterSignal_wind_dir_speed_8_MC_D2_PT_2_IN1
    );
  NlwInverterBlock_wind_dir_speed_8_MC_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_8_MC_D2_PT_2_IN3,
      O => NlwInverterSignal_wind_dir_speed_8_MC_D2_PT_2_IN3
    );
  NlwInverterBlock_wind_dir_speed_9_MC_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_9_MC_D_IN0,
      O => NlwInverterSignal_wind_dir_speed_9_MC_D_IN0
    );
  NlwInverterBlock_wind_dir_speed_9_MC_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN0,
      O => NlwInverterSignal_wind_dir_speed_9_MC_D2_PT_3_IN0
    );
  NlwInverterBlock_wind_dir_speed_9_MC_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN1,
      O => NlwInverterSignal_wind_dir_speed_9_MC_D2_PT_3_IN1
    );
  NlwInverterBlock_wind_dir_speed_9_MC_D2_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_wind_dir_speed_9_MC_D2_PT_3_IN3,
      O => NlwInverterSignal_wind_dir_speed_9_MC_D2_PT_3_IN3
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

