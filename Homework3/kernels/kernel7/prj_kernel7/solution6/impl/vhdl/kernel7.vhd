-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity kernel7 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_0_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    a_0_ce0 : OUT STD_LOGIC;
    a_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    a_1_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    a_1_ce0 : OUT STD_LOGIC;
    a_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    a_2_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    a_2_ce0 : OUT STD_LOGIC;
    a_2_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    a_3_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    a_3_ce0 : OUT STD_LOGIC;
    a_3_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    b_0_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    b_0_ce0 : OUT STD_LOGIC;
    b_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    b_1_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    b_1_ce0 : OUT STD_LOGIC;
    b_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    b_2_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    b_2_ce0 : OUT STD_LOGIC;
    b_2_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    b_3_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    b_3_ce0 : OUT STD_LOGIC;
    b_3_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of kernel7 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "kernel7,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.348000,HLS_SYN_LAT=4104,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=2,HLS_SYN_FF=525,HLS_SYN_LUT=624,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sum_0_reg_176 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_0_reg_188 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln6_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln6_reg_361 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state10_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln6_reg_361_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln6_reg_361_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_214_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_reg_365 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal trunc_ln8_fu_220_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln8_reg_370 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_fu_249_p6 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_reg_415 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state3_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state7_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_state11_pp0_stage1_iter2 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal tmp_3_fu_263_p6 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_reg_422 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln8_fu_311_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln8_reg_429 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_state4_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_state8_pp0_stage2_iter1 : BOOLEAN;
    signal ap_block_state12_pp0_stage2_iter2 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal icmp_ln8_1_fu_317_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln8_1_reg_434 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln8_2_fu_323_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln8_2_reg_439 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln8_3_fu_329_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln8_3_reg_444 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_reg_449 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_block_state5_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_state9_pp0_stage3_iter1 : BOOLEAN;
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal grp_fu_199_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_reg_454 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal and_ln8_1_fu_349_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln8_1_reg_459 : STD_LOGIC_VECTOR (0 downto 0);
    signal sum_1_fu_354_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_phi_mux_i_0_phi_fu_192_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln8_1_fu_234_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_199_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_199_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal lshr_ln8_fu_224_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln8_fu_246_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln8_fu_277_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln8_1_fu_294_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_fu_280_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln8_1_fu_290_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_5_fu_297_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln8_2_fu_307_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal or_ln8_fu_335_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln8_1_fu_339_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln8_fu_343_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_199_opcode : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage3_00001 : BOOLEAN;
    signal ap_block_pp0_stage2_00001 : BOOLEAN;
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component kernel7_faddfsub_bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        opcode : IN STD_LOGIC_VECTOR (1 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component kernel7_fcmp_32nscud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component kernel7_mux_432_3dEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    kernel7_faddfsub_bkb_U1 : component kernel7_faddfsub_bkb
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_199_p0,
        din1 => grp_fu_199_p1,
        opcode => grp_fu_199_opcode,
        ce => ap_const_logic_1,
        dout => grp_fu_199_p2);

    kernel7_fcmp_32nscud_U2 : component kernel7_fcmp_32nscud
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmp_reg_415,
        din1 => tmp_3_reg_422,
        ce => ap_const_logic_1,
        opcode => ap_const_lv5_2,
        dout => grp_fu_204_p2);

    kernel7_mux_432_3dEe_U3 : component kernel7_mux_432_3dEe
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        din0 => a_0_q0,
        din1 => a_1_q0,
        din2 => a_2_q0,
        din3 => a_3_q0,
        din4 => zext_ln8_fu_246_p1,
        dout => tmp_fu_249_p6);

    kernel7_mux_432_3dEe_U4 : component kernel7_mux_432_3dEe
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        din0 => b_0_q0,
        din1 => b_1_q0,
        din2 => b_2_q0,
        din3 => b_3_q0,
        din4 => zext_ln8_fu_246_p1,
        dout => tmp_3_fu_263_p6);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage3_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((((ap_const_boolean_0 = ap_block_pp0_stage3_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_188_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln6_reg_361 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                i_0_reg_188 <= i_reg_365;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_188 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    sum_0_reg_176_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln6_reg_361_pp0_iter2_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001))) then 
                sum_0_reg_176 <= sum_1_fu_354_p3;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                sum_0_reg_176 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln6_reg_361_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001))) then
                and_ln8_1_reg_459 <= and_ln8_1_fu_349_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                i_reg_365 <= i_fu_214_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln6_reg_361 <= icmp_ln6_fu_208_p2;
                icmp_ln6_reg_361_pp0_iter1_reg <= icmp_ln6_reg_361;
                icmp_ln6_reg_361_pp0_iter2_reg <= icmp_ln6_reg_361_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln6_reg_361 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_const_boolean_0 = ap_block_pp0_stage2_11001))) then
                icmp_ln8_1_reg_434 <= icmp_ln8_1_fu_317_p2;
                icmp_ln8_2_reg_439 <= icmp_ln8_2_fu_323_p2;
                icmp_ln8_3_reg_444 <= icmp_ln8_3_fu_329_p2;
                icmp_ln8_reg_429 <= icmp_ln8_fu_311_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln6_reg_361_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                tmp_1_reg_454 <= grp_fu_199_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln6_reg_361 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001))) then
                tmp_3_reg_422 <= tmp_3_fu_263_p6;
                tmp_reg_415 <= tmp_fu_249_p6;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln6_reg_361 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001))) then
                tmp_6_reg_449 <= grp_fu_204_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln6_fu_208_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                trunc_ln8_reg_370 <= trunc_ln8_fu_220_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln6_fu_208_p2, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage2, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_subdone, ap_block_pp0_stage3_subdone, ap_block_pp0_stage2_subdone, ap_block_pp0_stage1_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln6_fu_208_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((icmp_ln6_fu_208_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((not(((ap_const_boolean_0 = ap_block_pp0_stage2_subdone) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and (ap_const_boolean_0 = ap_block_pp0_stage2_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage2_subdone) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when ap_ST_fsm_pp0_stage3 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                end if;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    a_0_address0 <= zext_ln8_1_fu_234_p1(8 - 1 downto 0);

    a_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            a_0_ce0 <= ap_const_logic_1;
        else 
            a_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    a_1_address0 <= zext_ln8_1_fu_234_p1(8 - 1 downto 0);

    a_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            a_1_ce0 <= ap_const_logic_1;
        else 
            a_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    a_2_address0 <= zext_ln8_1_fu_234_p1(8 - 1 downto 0);

    a_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            a_2_ce0 <= ap_const_logic_1;
        else 
            a_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    a_3_address0 <= zext_ln8_1_fu_234_p1(8 - 1 downto 0);

    a_3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            a_3_ce0 <= ap_const_logic_1;
        else 
            a_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    and_ln8_1_fu_349_p2 <= (tmp_6_reg_449 and and_ln8_fu_343_p2);
    and_ln8_fu_343_p2 <= (or_ln8_fu_335_p2 and or_ln8_1_fu_339_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(3);
    ap_CS_fsm_pp0_stage3 <= ap_CS_fsm(4);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state13 <= ap_CS_fsm(5);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_00001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_00001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state10_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state11_pp0_stage1_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state12_pp0_stage2_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage2_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage3_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln6_fu_208_p2)
    begin
        if ((icmp_ln6_fu_208_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state13)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i_0_phi_fu_192_p4_assign_proc : process(i_0_reg_188, icmp_ln6_reg_361, ap_CS_fsm_pp0_stage0, i_reg_365, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((icmp_ln6_reg_361 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            ap_phi_mux_i_0_phi_fu_192_p4 <= i_reg_365;
        else 
            ap_phi_mux_i_0_phi_fu_192_p4 <= i_0_reg_188;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state13)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= sum_0_reg_176;
    b_0_address0 <= zext_ln8_1_fu_234_p1(8 - 1 downto 0);

    b_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            b_0_ce0 <= ap_const_logic_1;
        else 
            b_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    b_1_address0 <= zext_ln8_1_fu_234_p1(8 - 1 downto 0);

    b_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            b_1_ce0 <= ap_const_logic_1;
        else 
            b_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    b_2_address0 <= zext_ln8_1_fu_234_p1(8 - 1 downto 0);

    b_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            b_2_ce0 <= ap_const_logic_1;
        else 
            b_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    b_3_address0 <= zext_ln8_1_fu_234_p1(8 - 1 downto 0);

    b_3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            b_3_ce0 <= ap_const_logic_1;
        else 
            b_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    bitcast_ln8_1_fu_294_p1 <= tmp_3_reg_422;
    bitcast_ln8_fu_277_p1 <= tmp_reg_415;

    grp_fu_199_opcode_assign_proc : process(icmp_ln6_reg_361, icmp_ln6_reg_361_pp0_iter1_reg, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage2, ap_CS_fsm_pp0_stage3, ap_enable_reg_pp0_iter1, and_ln8_1_reg_459, ap_block_pp0_stage3_00001, ap_block_pp0_stage2_00001)
    begin
        if (((icmp_ln6_reg_361 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage2_00001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            grp_fu_199_opcode <= ap_const_lv2_1;
        elsif (((icmp_ln6_reg_361_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage3_00001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3) and (ap_const_lv1_1 = and_ln8_1_reg_459))) then 
            grp_fu_199_opcode <= ap_const_lv2_0;
        else 
            grp_fu_199_opcode <= "XX";
        end if; 
    end process;


    grp_fu_199_p0_assign_proc : process(sum_0_reg_176, ap_enable_reg_pp0_iter0, tmp_reg_415, ap_CS_fsm_pp0_stage2, ap_CS_fsm_pp0_stage3, ap_enable_reg_pp0_iter1, ap_block_pp0_stage2, ap_block_pp0_stage3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            grp_fu_199_p0 <= sum_0_reg_176;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            grp_fu_199_p0 <= tmp_reg_415;
        else 
            grp_fu_199_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_199_p1_assign_proc : process(ap_enable_reg_pp0_iter0, tmp_3_reg_422, ap_CS_fsm_pp0_stage2, ap_CS_fsm_pp0_stage3, tmp_1_reg_454, ap_enable_reg_pp0_iter1, ap_block_pp0_stage2, ap_block_pp0_stage3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            grp_fu_199_p1 <= tmp_1_reg_454;
        elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
            grp_fu_199_p1 <= tmp_3_reg_422;
        else 
            grp_fu_199_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    i_fu_214_p2 <= std_logic_vector(unsigned(ap_phi_mux_i_0_phi_fu_192_p4) + unsigned(ap_const_lv11_1));
    icmp_ln6_fu_208_p2 <= "1" when (ap_phi_mux_i_0_phi_fu_192_p4 = ap_const_lv11_400) else "0";
    icmp_ln8_1_fu_317_p2 <= "1" when (trunc_ln8_1_fu_290_p1 = ap_const_lv23_0) else "0";
    icmp_ln8_2_fu_323_p2 <= "0" when (tmp_5_fu_297_p4 = ap_const_lv8_FF) else "1";
    icmp_ln8_3_fu_329_p2 <= "1" when (trunc_ln8_2_fu_307_p1 = ap_const_lv23_0) else "0";
    icmp_ln8_fu_311_p2 <= "0" when (tmp_4_fu_280_p4 = ap_const_lv8_FF) else "1";
    lshr_ln8_fu_224_p4 <= ap_phi_mux_i_0_phi_fu_192_p4(10 downto 2);
    or_ln8_1_fu_339_p2 <= (icmp_ln8_3_reg_444 or icmp_ln8_2_reg_439);
    or_ln8_fu_335_p2 <= (icmp_ln8_reg_429 or icmp_ln8_1_reg_434);
    sum_1_fu_354_p3 <= 
        grp_fu_199_p2 when (and_ln8_1_reg_459(0) = '1') else 
        sum_0_reg_176;
    tmp_4_fu_280_p4 <= bitcast_ln8_fu_277_p1(30 downto 23);
    tmp_5_fu_297_p4 <= bitcast_ln8_1_fu_294_p1(30 downto 23);
    trunc_ln8_1_fu_290_p1 <= bitcast_ln8_fu_277_p1(23 - 1 downto 0);
    trunc_ln8_2_fu_307_p1 <= bitcast_ln8_1_fu_294_p1(23 - 1 downto 0);
    trunc_ln8_fu_220_p1 <= ap_phi_mux_i_0_phi_fu_192_p4(2 - 1 downto 0);
    zext_ln8_1_fu_234_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lshr_ln8_fu_224_p4),64));
    zext_ln8_fu_246_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln8_reg_370),32));
end behav;
