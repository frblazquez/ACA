-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dct_2d is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_block_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    in_block_ce0 : OUT STD_LOGIC;
    in_block_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    out_block_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    out_block_ce0 : OUT STD_LOGIC;
    out_block_we0 : OUT STD_LOGIC;
    out_block_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of dct_2d is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (10 downto 0) := "00000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (10 downto 0) := "00000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (10 downto 0) := "00000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (10 downto 0) := "00000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (10 downto 0) := "00001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (10 downto 0) := "00010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (10 downto 0) := "00100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (10 downto 0) := "01000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_196_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_367 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal j_fu_208_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_reg_375 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln82_fu_214_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln82_reg_380 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln79_fu_202_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln81_fu_226_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln81_reg_385 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_5_fu_236_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_5_reg_393 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln81_fu_230_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln82_1_fu_268_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln82_1_reg_403 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_4_fu_283_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_4_reg_411 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal j_2_fu_295_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_2_reg_419 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal zext_ln93_fu_301_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln93_reg_424 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln90_fu_289_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln92_fu_313_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln92_reg_429 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_6_fu_323_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_6_reg_437 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal add_ln93_fu_333_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln93_reg_442 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln92_fu_317_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal row_outbuf_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal row_outbuf_ce0 : STD_LOGIC;
    signal row_outbuf_we0 : STD_LOGIC;
    signal row_outbuf_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal col_outbuf_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal col_outbuf_ce0 : STD_LOGIC;
    signal col_outbuf_we0 : STD_LOGIC;
    signal col_outbuf_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal col_inbuf_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal col_inbuf_ce0 : STD_LOGIC;
    signal col_inbuf_we0 : STD_LOGIC;
    signal col_inbuf_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dct_1d2_fu_175_ap_start : STD_LOGIC;
    signal grp_dct_1d2_fu_175_ap_done : STD_LOGIC;
    signal grp_dct_1d2_fu_175_ap_idle : STD_LOGIC;
    signal grp_dct_1d2_fu_175_ap_ready : STD_LOGIC;
    signal grp_dct_1d2_fu_175_src_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_dct_1d2_fu_175_src_ce0 : STD_LOGIC;
    signal grp_dct_1d2_fu_175_src_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dct_1d2_fu_175_src_offset : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_dct_1d2_fu_175_dst_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_dct_1d2_fu_175_dst_ce0 : STD_LOGIC;
    signal grp_dct_1d2_fu_175_dst_we0 : STD_LOGIC;
    signal grp_dct_1d2_fu_175_dst_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dct_1d2_fu_175_dst_offset : STD_LOGIC_VECTOR (3 downto 0);
    signal i_0_reg_107 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal j_0_reg_119 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln74_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_1_reg_130 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal i_2_reg_141 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal j_1_reg_153 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln85_fu_277_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_3_reg_164 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal grp_dct_1d2_fu_175_ap_start_reg : STD_LOGIC := '0';
    signal zext_ln82_3_fu_263_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln82_4_fu_273_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln93_4_fu_355_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln93_2_fu_360_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_218_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_3_fu_246_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln82_2_fu_254_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln82_fu_258_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln82_1_fu_242_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_fu_305_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln93_1_fu_329_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_5_fu_338_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln93_3_fu_346_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln93_1_fu_350_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (10 downto 0);

    component dct_1d2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        src_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        src_ce0 : OUT STD_LOGIC;
        src_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        src_offset : IN STD_LOGIC_VECTOR (3 downto 0);
        dst_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        dst_ce0 : OUT STD_LOGIC;
        dst_we0 : OUT STD_LOGIC;
        dst_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        dst_offset : IN STD_LOGIC_VECTOR (3 downto 0) );
    end component;


    component dct_2d_row_outbuf IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (15 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    row_outbuf_U : component dct_2d_row_outbuf
    generic map (
        DataWidth => 16,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => row_outbuf_address0,
        ce0 => row_outbuf_ce0,
        we0 => row_outbuf_we0,
        d0 => grp_dct_1d2_fu_175_dst_d0,
        q0 => row_outbuf_q0);

    col_outbuf_U : component dct_2d_row_outbuf
    generic map (
        DataWidth => 16,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => col_outbuf_address0,
        ce0 => col_outbuf_ce0,
        we0 => col_outbuf_we0,
        d0 => grp_dct_1d2_fu_175_dst_d0,
        q0 => col_outbuf_q0);

    col_inbuf_U : component dct_2d_row_outbuf
    generic map (
        DataWidth => 16,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => col_inbuf_address0,
        ce0 => col_inbuf_ce0,
        we0 => col_inbuf_we0,
        d0 => row_outbuf_q0,
        q0 => col_inbuf_q0);

    grp_dct_1d2_fu_175 : component dct_1d2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_dct_1d2_fu_175_ap_start,
        ap_done => grp_dct_1d2_fu_175_ap_done,
        ap_idle => grp_dct_1d2_fu_175_ap_idle,
        ap_ready => grp_dct_1d2_fu_175_ap_ready,
        src_address0 => grp_dct_1d2_fu_175_src_address0,
        src_ce0 => grp_dct_1d2_fu_175_src_ce0,
        src_q0 => grp_dct_1d2_fu_175_src_q0,
        src_offset => grp_dct_1d2_fu_175_src_offset,
        dst_address0 => grp_dct_1d2_fu_175_dst_address0,
        dst_ce0 => grp_dct_1d2_fu_175_dst_ce0,
        dst_we0 => grp_dct_1d2_fu_175_dst_we0,
        dst_d0 => grp_dct_1d2_fu_175_dst_d0,
        dst_offset => grp_dct_1d2_fu_175_dst_offset);





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


    grp_dct_1d2_fu_175_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_dct_1d2_fu_175_ap_start_reg <= ap_const_logic_0;
            else
                if ((((icmp_ln85_fu_277_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7)) or ((icmp_ln74_fu_190_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
                    grp_dct_1d2_fu_175_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_dct_1d2_fu_175_ap_ready = ap_const_logic_1)) then 
                    grp_dct_1d2_fu_175_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_107_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (grp_dct_1d2_fu_175_ap_done = ap_const_logic_1))) then 
                i_0_reg_107 <= i_reg_367;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_107 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    i_1_reg_130_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                i_1_reg_130 <= i_5_reg_393;
            elsif (((icmp_ln79_fu_202_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i_1_reg_130 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    i_2_reg_141_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln79_fu_202_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i_2_reg_141 <= ap_const_lv4_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state8) and (grp_dct_1d2_fu_175_ap_done = ap_const_logic_1))) then 
                i_2_reg_141 <= i_4_reg_411;
            end if; 
        end if;
    end process;

    i_3_reg_164_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                i_3_reg_164 <= i_6_reg_437;
            elsif (((icmp_ln90_fu_289_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
                i_3_reg_164 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    j_0_reg_119_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln74_fu_190_p2 = ap_const_lv1_1))) then 
                j_0_reg_119 <= ap_const_lv4_0;
            elsif (((icmp_ln81_fu_230_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                j_0_reg_119 <= j_reg_375;
            end if; 
        end if;
    end process;

    j_1_reg_153_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln85_fu_277_p2 = ap_const_lv1_1))) then 
                j_1_reg_153 <= ap_const_lv4_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state10) and (icmp_ln92_fu_317_p2 = ap_const_lv1_1))) then 
                j_1_reg_153 <= j_2_reg_419;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln81_fu_230_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                add_ln82_1_reg_403 <= add_ln82_1_fu_268_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln92_fu_317_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                add_ln93_reg_442 <= add_ln93_fu_333_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                i_4_reg_411 <= i_4_fu_283_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                i_5_reg_393 <= i_5_fu_236_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                i_6_reg_437 <= i_6_fu_323_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_367 <= i_fu_196_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                j_2_reg_419 <= j_2_fu_295_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                j_reg_375 <= j_fu_208_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln79_fu_202_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    zext_ln81_reg_385(6 downto 3) <= zext_ln81_fu_226_p1(6 downto 3);
                    zext_ln82_reg_380(3 downto 0) <= zext_ln82_fu_214_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln90_fu_289_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state9))) then
                    zext_ln92_reg_429(6 downto 3) <= zext_ln92_fu_313_p1(6 downto 3);
                    zext_ln93_reg_424(3 downto 0) <= zext_ln93_fu_301_p1(3 downto 0);
            end if;
        end if;
    end process;
    zext_ln82_reg_380(7 downto 4) <= "0000";
    zext_ln81_reg_385(2 downto 0) <= "000";
    zext_ln81_reg_385(7) <= '0';
    zext_ln93_reg_424(7 downto 4) <= "0000";
    zext_ln92_reg_429(2 downto 0) <= "000";
    zext_ln92_reg_429(7) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state4, icmp_ln79_fu_202_p2, ap_CS_fsm_state5, icmp_ln81_fu_230_p2, ap_CS_fsm_state7, ap_CS_fsm_state9, icmp_ln90_fu_289_p2, ap_CS_fsm_state10, icmp_ln92_fu_317_p2, grp_dct_1d2_fu_175_ap_done, ap_CS_fsm_state3, icmp_ln74_fu_190_p2, ap_CS_fsm_state8, icmp_ln85_fu_277_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln74_fu_190_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (grp_dct_1d2_fu_175_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln79_fu_202_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((icmp_ln81_fu_230_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln85_fu_277_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state8) and (grp_dct_1d2_fu_175_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state9 => 
                if (((icmp_ln90_fu_289_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state10 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state10) and (icmp_ln92_fu_317_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXX";
        end case;
    end process;
    add_ln82_1_fu_268_p2 <= std_logic_vector(unsigned(zext_ln82_1_fu_242_p1) + unsigned(zext_ln81_reg_385));
    add_ln82_fu_258_p2 <= std_logic_vector(unsigned(zext_ln82_reg_380) + unsigned(zext_ln82_2_fu_254_p1));
    add_ln93_1_fu_350_p2 <= std_logic_vector(unsigned(zext_ln93_reg_424) + unsigned(zext_ln93_3_fu_346_p1));
    add_ln93_fu_333_p2 <= std_logic_vector(unsigned(zext_ln93_1_fu_329_p1) + unsigned(zext_ln92_reg_429));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state9, icmp_ln90_fu_289_p2)
    begin
        if ((((icmp_ln90_fu_289_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state9)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state9, icmp_ln90_fu_289_p2)
    begin
        if (((icmp_ln90_fu_289_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    col_inbuf_address0_assign_proc : process(grp_dct_1d2_fu_175_src_address0, ap_CS_fsm_state6, ap_CS_fsm_state8, zext_ln82_4_fu_273_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            col_inbuf_address0 <= zext_ln82_4_fu_273_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            col_inbuf_address0 <= grp_dct_1d2_fu_175_src_address0;
        else 
            col_inbuf_address0 <= "XXXXXX";
        end if; 
    end process;


    col_inbuf_ce0_assign_proc : process(grp_dct_1d2_fu_175_src_ce0, ap_CS_fsm_state6, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            col_inbuf_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            col_inbuf_ce0 <= grp_dct_1d2_fu_175_src_ce0;
        else 
            col_inbuf_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    col_inbuf_we0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            col_inbuf_we0 <= ap_const_logic_1;
        else 
            col_inbuf_we0 <= ap_const_logic_0;
        end if; 
    end process;


    col_outbuf_address0_assign_proc : process(ap_CS_fsm_state10, grp_dct_1d2_fu_175_dst_address0, ap_CS_fsm_state8, zext_ln93_4_fu_355_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            col_outbuf_address0 <= zext_ln93_4_fu_355_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            col_outbuf_address0 <= grp_dct_1d2_fu_175_dst_address0;
        else 
            col_outbuf_address0 <= "XXXXXX";
        end if; 
    end process;


    col_outbuf_ce0_assign_proc : process(ap_CS_fsm_state10, grp_dct_1d2_fu_175_dst_ce0, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            col_outbuf_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            col_outbuf_ce0 <= grp_dct_1d2_fu_175_dst_ce0;
        else 
            col_outbuf_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    col_outbuf_we0_assign_proc : process(grp_dct_1d2_fu_175_dst_we0, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            col_outbuf_we0 <= grp_dct_1d2_fu_175_dst_we0;
        else 
            col_outbuf_we0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_dct_1d2_fu_175_ap_start <= grp_dct_1d2_fu_175_ap_start_reg;

    grp_dct_1d2_fu_175_dst_offset_assign_proc : process(i_0_reg_107, ap_CS_fsm_state3, i_2_reg_141, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            grp_dct_1d2_fu_175_dst_offset <= i_2_reg_141;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_dct_1d2_fu_175_dst_offset <= i_0_reg_107;
        else 
            grp_dct_1d2_fu_175_dst_offset <= "XXXX";
        end if; 
    end process;


    grp_dct_1d2_fu_175_src_offset_assign_proc : process(i_0_reg_107, ap_CS_fsm_state3, i_2_reg_141, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            grp_dct_1d2_fu_175_src_offset <= i_2_reg_141;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_dct_1d2_fu_175_src_offset <= i_0_reg_107;
        else 
            grp_dct_1d2_fu_175_src_offset <= "XXXX";
        end if; 
    end process;


    grp_dct_1d2_fu_175_src_q0_assign_proc : process(in_block_q0, col_inbuf_q0, ap_CS_fsm_state3, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            grp_dct_1d2_fu_175_src_q0 <= col_inbuf_q0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_dct_1d2_fu_175_src_q0 <= in_block_q0;
        else 
            grp_dct_1d2_fu_175_src_q0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;

    i_4_fu_283_p2 <= std_logic_vector(unsigned(i_2_reg_141) + unsigned(ap_const_lv4_1));
    i_5_fu_236_p2 <= std_logic_vector(unsigned(i_1_reg_130) + unsigned(ap_const_lv4_1));
    i_6_fu_323_p2 <= std_logic_vector(unsigned(i_3_reg_164) + unsigned(ap_const_lv4_1));
    i_fu_196_p2 <= std_logic_vector(unsigned(i_0_reg_107) + unsigned(ap_const_lv4_1));
    icmp_ln74_fu_190_p2 <= "1" when (i_0_reg_107 = ap_const_lv4_8) else "0";
    icmp_ln79_fu_202_p2 <= "1" when (j_0_reg_119 = ap_const_lv4_8) else "0";
    icmp_ln81_fu_230_p2 <= "1" when (i_1_reg_130 = ap_const_lv4_8) else "0";
    icmp_ln85_fu_277_p2 <= "1" when (i_2_reg_141 = ap_const_lv4_8) else "0";
    icmp_ln90_fu_289_p2 <= "1" when (j_1_reg_153 = ap_const_lv4_8) else "0";
    icmp_ln92_fu_317_p2 <= "1" when (i_3_reg_164 = ap_const_lv4_8) else "0";
    in_block_address0 <= grp_dct_1d2_fu_175_src_address0;

    in_block_ce0_assign_proc : process(grp_dct_1d2_fu_175_src_ce0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            in_block_ce0 <= grp_dct_1d2_fu_175_src_ce0;
        else 
            in_block_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    j_2_fu_295_p2 <= std_logic_vector(unsigned(j_1_reg_153) + unsigned(ap_const_lv4_1));
    j_fu_208_p2 <= std_logic_vector(unsigned(j_0_reg_119) + unsigned(ap_const_lv4_1));
    out_block_address0 <= zext_ln93_2_fu_360_p1(6 - 1 downto 0);

    out_block_ce0_assign_proc : process(ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            out_block_ce0 <= ap_const_logic_1;
        else 
            out_block_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_block_d0 <= col_outbuf_q0;

    out_block_we0_assign_proc : process(ap_CS_fsm_state11)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            out_block_we0 <= ap_const_logic_1;
        else 
            out_block_we0 <= ap_const_logic_0;
        end if; 
    end process;


    row_outbuf_address0_assign_proc : process(ap_CS_fsm_state5, grp_dct_1d2_fu_175_dst_address0, ap_CS_fsm_state3, zext_ln82_3_fu_263_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            row_outbuf_address0 <= zext_ln82_3_fu_263_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            row_outbuf_address0 <= grp_dct_1d2_fu_175_dst_address0;
        else 
            row_outbuf_address0 <= "XXXXXX";
        end if; 
    end process;


    row_outbuf_ce0_assign_proc : process(ap_CS_fsm_state5, grp_dct_1d2_fu_175_dst_ce0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            row_outbuf_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            row_outbuf_ce0 <= grp_dct_1d2_fu_175_dst_ce0;
        else 
            row_outbuf_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    row_outbuf_we0_assign_proc : process(grp_dct_1d2_fu_175_dst_we0, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            row_outbuf_we0 <= grp_dct_1d2_fu_175_dst_we0;
        else 
            row_outbuf_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_2_fu_218_p3 <= (j_0_reg_119 & ap_const_lv3_0);
    tmp_3_fu_246_p3 <= (i_1_reg_130 & ap_const_lv3_0);
    tmp_4_fu_305_p3 <= (j_1_reg_153 & ap_const_lv3_0);
    tmp_5_fu_338_p3 <= (i_3_reg_164 & ap_const_lv3_0);
    zext_ln81_fu_226_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_218_p3),8));
    zext_ln82_1_fu_242_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_1_reg_130),8));
    zext_ln82_2_fu_254_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_246_p3),8));
    zext_ln82_3_fu_263_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln82_fu_258_p2),64));
    zext_ln82_4_fu_273_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln82_1_reg_403),64));
    zext_ln82_fu_214_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_119),8));
    zext_ln92_fu_313_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_305_p3),8));
    zext_ln93_1_fu_329_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_3_reg_164),8));
    zext_ln93_2_fu_360_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln93_reg_442),64));
    zext_ln93_3_fu_346_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_338_p3),8));
    zext_ln93_4_fu_355_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln93_1_fu_350_p2),64));
    zext_ln93_fu_301_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_1_reg_153),8));
end behav;
