-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
-- Version: 2022.2.2
-- Copyright (C) Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity threed_render_hls_matrix_mutiply is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_vector_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    input_vector_ce0 : OUT STD_LOGIC;
    input_vector_q0 : IN STD_LOGIC_VECTOR (39 downto 0);
    input_vector_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    input_vector_ce1 : OUT STD_LOGIC;
    input_vector_q1 : IN STD_LOGIC_VECTOR (39 downto 0);
    input_vector_offset : IN STD_LOGIC_VECTOR (6 downto 0);
    input_vector_offset1 : IN STD_LOGIC_VECTOR (1 downto 0);
    p_read5 : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read6 : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read9 : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read10 : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read1 : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read2 : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read3 : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read4 : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read7 : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read8 : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read11 : IN STD_LOGIC_VECTOR (39 downto 0);
    p_read12 : IN STD_LOGIC_VECTOR (39 downto 0);
    output_vector_offset : IN STD_LOGIC_VECTOR (1 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (39 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (39 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (39 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (39 downto 0);
    ap_return_4 : OUT STD_LOGIC_VECTOR (39 downto 0);
    ap_return_5 : OUT STD_LOGIC_VECTOR (39 downto 0);
    ap_return_6 : OUT STD_LOGIC_VECTOR (39 downto 0);
    ap_return_7 : OUT STD_LOGIC_VECTOR (39 downto 0);
    ap_return_8 : OUT STD_LOGIC_VECTOR (39 downto 0) );
end;


architecture behav of threed_render_hls_matrix_mutiply is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv10_2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_const_lv32_21 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100001";
    constant ap_const_lv32_48 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001000";
    constant ap_const_lv40_0 : STD_LOGIC_VECTOR (39 downto 0) := "0000000000000000000000000000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sub_ln1271_1_fu_370_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal sub_ln1271_1_reg_579 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal r_V_reg_596 : STD_LOGIC_VECTOR (39 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal r_V_54_reg_601 : STD_LOGIC_VECTOR (39 downto 0);
    signal sext_ln1270_fu_396_p1 : STD_LOGIC_VECTOR (72 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal sext_ln1270_11_fu_399_p1 : STD_LOGIC_VECTOR (72 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_fu_406_p2 : STD_LOGIC_VECTOR (72 downto 0);
    signal r_V_55_reg_643 : STD_LOGIC_VECTOR (72 downto 0);
    signal grp_fu_416_p2 : STD_LOGIC_VECTOR (72 downto 0);
    signal r_V_56_reg_648 : STD_LOGIC_VECTOR (72 downto 0);
    signal grp_fu_426_p2 : STD_LOGIC_VECTOR (72 downto 0);
    signal r_V_57_reg_653 : STD_LOGIC_VECTOR (72 downto 0);
    signal grp_fu_436_p2 : STD_LOGIC_VECTOR (72 downto 0);
    signal r_V_58_reg_658 : STD_LOGIC_VECTOR (72 downto 0);
    signal ap_phi_mux_write_flag8_0_phi_fu_198_p6 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal output_vector_offset_read_read_fu_102_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_phi_mux_write_flag4_0_phi_fu_212_p6 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_write_flag_0_phi_fu_226_p6 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_write_flag11_0_phi_fu_240_p6 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_write_flag14_0_phi_fu_254_p6 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_write_flag17_0_phi_fu_268_p6 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_phi_ln19_phi_fu_282_p6 : STD_LOGIC_VECTOR (39 downto 0);
    signal ap_phi_mux_phi_ln19_3_phi_fu_295_p6 : STD_LOGIC_VECTOR (39 downto 0);
    signal ap_phi_mux_phi_ln19_4_phi_fu_308_p6 : STD_LOGIC_VECTOR (39 downto 0);
    signal zext_ln1271_4_fu_381_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln1271_5_fu_391_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln1271_3_fu_442_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_326_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln1271_2_fu_334_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln1271_fu_322_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal sub_ln1271_fu_338_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal sext_ln1271_fu_344_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal input_vector_offset1_cast3_fu_318_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln1271_fu_348_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal trunc_ln1271_1_fu_358_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl_fu_362_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal trunc_ln1271_fu_354_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln1271_1_fu_376_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln1271_2_fu_386_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_406_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal grp_fu_416_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal grp_fu_426_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal grp_fu_436_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal ret_V_fu_446_p2 : STD_LOGIC_VECTOR (72 downto 0);
    signal ret_V_38_fu_460_p2 : STD_LOGIC_VECTOR (72 downto 0);
    signal trunc_ln_fu_450_p4 : STD_LOGIC_VECTOR (39 downto 0);
    signal select_ln19_fu_477_p3 : STD_LOGIC_VECTOR (39 downto 0);
    signal select_ln19_6_fu_485_p3 : STD_LOGIC_VECTOR (39 downto 0);
    signal select_ln19_7_fu_493_p3 : STD_LOGIC_VECTOR (39 downto 0);
    signal select_ln19_8_fu_501_p3 : STD_LOGIC_VECTOR (39 downto 0);
    signal select_ln19_9_fu_509_p3 : STD_LOGIC_VECTOR (39 downto 0);
    signal select_ln19_10_fu_517_p3 : STD_LOGIC_VECTOR (39 downto 0);
    signal ap_return_0_preg : STD_LOGIC_VECTOR (39 downto 0) := "0000000000000000000000000000000000000000";
    signal ap_return_1_preg : STD_LOGIC_VECTOR (39 downto 0) := "0000000000000000000000000000000000000000";
    signal ap_return_2_preg : STD_LOGIC_VECTOR (39 downto 0) := "0000000000000000000000000000000000000000";
    signal ap_return_3_preg : STD_LOGIC_VECTOR (39 downto 0) := "0000000000000000000000000000000000000000";
    signal ap_return_4_preg : STD_LOGIC_VECTOR (39 downto 0) := "0000000000000000000000000000000000000000";
    signal ap_return_5_preg : STD_LOGIC_VECTOR (39 downto 0) := "0000000000000000000000000000000000000000";
    signal ap_return_6_preg : STD_LOGIC_VECTOR (39 downto 0) := "0000000000000000000000000000000000000000";
    signal ap_return_7_preg : STD_LOGIC_VECTOR (39 downto 0) := "0000000000000000000000000000000000000000";
    signal ap_return_8_preg : STD_LOGIC_VECTOR (39 downto 0) := "0000000000000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component threed_render_hls_mul_40s_40s_73_2_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (39 downto 0);
        din1 : IN STD_LOGIC_VECTOR (39 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (72 downto 0) );
    end component;



begin
    mul_40s_40s_73_2_1_U41 : component threed_render_hls_mul_40s_40s_73_2_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 40,
        din1_WIDTH => 40,
        dout_WIDTH => 73)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => p_read5,
        din1 => grp_fu_406_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_406_p2);

    mul_40s_40s_73_2_1_U42 : component threed_render_hls_mul_40s_40s_73_2_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 40,
        din1_WIDTH => 40,
        dout_WIDTH => 73)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => p_read9,
        din1 => grp_fu_416_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_416_p2);

    mul_40s_40s_73_2_1_U43 : component threed_render_hls_mul_40s_40s_73_2_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 40,
        din1_WIDTH => 40,
        dout_WIDTH => 73)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => p_read6,
        din1 => grp_fu_426_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_426_p2);

    mul_40s_40s_73_2_1_U44 : component threed_render_hls_mul_40s_40s_73_2_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 40,
        din1_WIDTH => 40,
        dout_WIDTH => 73)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => p_read10,
        din1 => grp_fu_436_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_436_p2);





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


    ap_return_0_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_0_preg <= ap_const_lv40_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_0_preg <= select_ln19_fu_477_p3;
                end if; 
            end if;
        end if;
    end process;


    ap_return_1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_1_preg <= ap_const_lv40_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_1_preg <= select_ln19_6_fu_485_p3;
                end if; 
            end if;
        end if;
    end process;


    ap_return_2_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_2_preg <= ap_const_lv40_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_2_preg <= select_ln19_7_fu_493_p3;
                end if; 
            end if;
        end if;
    end process;


    ap_return_3_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_3_preg <= ap_const_lv40_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_3_preg <= select_ln19_8_fu_501_p3;
                end if; 
            end if;
        end if;
    end process;


    ap_return_4_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_4_preg <= ap_const_lv40_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_4_preg <= select_ln19_9_fu_509_p3;
                end if; 
            end if;
        end if;
    end process;


    ap_return_5_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_5_preg <= ap_const_lv40_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_5_preg <= select_ln19_10_fu_517_p3;
                end if; 
            end if;
        end if;
    end process;


    ap_return_6_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_6_preg <= ap_const_lv40_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_6_preg <= ap_phi_mux_phi_ln19_phi_fu_282_p6;
                end if; 
            end if;
        end if;
    end process;


    ap_return_7_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_7_preg <= ap_const_lv40_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_7_preg <= ap_phi_mux_phi_ln19_3_phi_fu_295_p6;
                end if; 
            end if;
        end if;
    end process;


    ap_return_8_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_8_preg <= ap_const_lv40_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_8_preg <= ap_phi_mux_phi_ln19_4_phi_fu_308_p6;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                r_V_54_reg_601 <= input_vector_q0;
                r_V_reg_596 <= input_vector_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                r_V_55_reg_643 <= grp_fu_406_p2;
                r_V_56_reg_648 <= grp_fu_416_p2;
                r_V_57_reg_653 <= grp_fu_426_p2;
                r_V_58_reg_658 <= grp_fu_436_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                sub_ln1271_1_reg_579 <= sub_ln1271_1_fu_370_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln1271_1_fu_376_p2 <= std_logic_vector(unsigned(sub_ln1271_1_reg_579) + unsigned(ap_const_lv10_1));
    add_ln1271_2_fu_386_p2 <= std_logic_vector(unsigned(sub_ln1271_1_reg_579) + unsigned(ap_const_lv10_2));
    add_ln1271_fu_348_p2 <= std_logic_vector(signed(sext_ln1271_fu_344_p1) + signed(input_vector_offset1_cast3_fu_318_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_phi_ln19_3_phi_fu_295_p6_assign_proc : process(p_read11, ap_CS_fsm_state6, output_vector_offset_read_read_fu_102_p2, ret_V_38_fu_460_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1))) then 
            ap_phi_mux_phi_ln19_3_phi_fu_295_p6 <= ret_V_38_fu_460_p2(72 downto 33);
        elsif (((not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) and not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)))) then 
            ap_phi_mux_phi_ln19_3_phi_fu_295_p6 <= p_read11;
        else 
            ap_phi_mux_phi_ln19_3_phi_fu_295_p6 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    ap_phi_mux_phi_ln19_4_phi_fu_308_p6_assign_proc : process(p_read12, ap_CS_fsm_state6, output_vector_offset_read_read_fu_102_p2, ret_V_38_fu_460_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)))) then 
            ap_phi_mux_phi_ln19_4_phi_fu_308_p6 <= p_read12;
        elsif ((not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) and not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_phi_mux_phi_ln19_4_phi_fu_308_p6 <= ret_V_38_fu_460_p2(72 downto 33);
        else 
            ap_phi_mux_phi_ln19_4_phi_fu_308_p6 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    ap_phi_mux_phi_ln19_phi_fu_282_p6_assign_proc : process(p_read8, ap_CS_fsm_state6, output_vector_offset_read_read_fu_102_p2, ret_V_38_fu_460_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0))) then 
            ap_phi_mux_phi_ln19_phi_fu_282_p6 <= ret_V_38_fu_460_p2(72 downto 33);
        elsif (((not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) and not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)))) then 
            ap_phi_mux_phi_ln19_phi_fu_282_p6 <= p_read8;
        else 
            ap_phi_mux_phi_ln19_phi_fu_282_p6 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    ap_phi_mux_write_flag11_0_phi_fu_240_p6_assign_proc : process(ap_CS_fsm_state6, output_vector_offset_read_read_fu_102_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0))) then 
            ap_phi_mux_write_flag11_0_phi_fu_240_p6 <= ap_const_lv1_1;
        elsif (((not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) and not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)))) then 
            ap_phi_mux_write_flag11_0_phi_fu_240_p6 <= ap_const_lv1_0;
        else 
            ap_phi_mux_write_flag11_0_phi_fu_240_p6 <= "X";
        end if; 
    end process;


    ap_phi_mux_write_flag14_0_phi_fu_254_p6_assign_proc : process(ap_CS_fsm_state6, output_vector_offset_read_read_fu_102_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1))) then 
            ap_phi_mux_write_flag14_0_phi_fu_254_p6 <= ap_const_lv1_1;
        elsif (((not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) and not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)))) then 
            ap_phi_mux_write_flag14_0_phi_fu_254_p6 <= ap_const_lv1_0;
        else 
            ap_phi_mux_write_flag14_0_phi_fu_254_p6 <= "X";
        end if; 
    end process;


    ap_phi_mux_write_flag17_0_phi_fu_268_p6_assign_proc : process(ap_CS_fsm_state6, output_vector_offset_read_read_fu_102_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)))) then 
            ap_phi_mux_write_flag17_0_phi_fu_268_p6 <= ap_const_lv1_0;
        elsif ((not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) and not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_phi_mux_write_flag17_0_phi_fu_268_p6 <= ap_const_lv1_1;
        else 
            ap_phi_mux_write_flag17_0_phi_fu_268_p6 <= "X";
        end if; 
    end process;


    ap_phi_mux_write_flag4_0_phi_fu_212_p6_assign_proc : process(ap_CS_fsm_state6, output_vector_offset_read_read_fu_102_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1))) then 
            ap_phi_mux_write_flag4_0_phi_fu_212_p6 <= ap_const_lv1_1;
        elsif (((not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) and not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)))) then 
            ap_phi_mux_write_flag4_0_phi_fu_212_p6 <= ap_const_lv1_0;
        else 
            ap_phi_mux_write_flag4_0_phi_fu_212_p6 <= "X";
        end if; 
    end process;


    ap_phi_mux_write_flag8_0_phi_fu_198_p6_assign_proc : process(ap_CS_fsm_state6, output_vector_offset_read_read_fu_102_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)))) then 
            ap_phi_mux_write_flag8_0_phi_fu_198_p6 <= ap_const_lv1_0;
        elsif ((not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) and not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_phi_mux_write_flag8_0_phi_fu_198_p6 <= ap_const_lv1_1;
        else 
            ap_phi_mux_write_flag8_0_phi_fu_198_p6 <= "X";
        end if; 
    end process;


    ap_phi_mux_write_flag_0_phi_fu_226_p6_assign_proc : process(ap_CS_fsm_state6, output_vector_offset_read_read_fu_102_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0))) then 
            ap_phi_mux_write_flag_0_phi_fu_226_p6 <= ap_const_lv1_1;
        elsif (((not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)) and not((output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_0)) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (output_vector_offset_read_read_fu_102_p2 = ap_const_lv2_1)))) then 
            ap_phi_mux_write_flag_0_phi_fu_226_p6 <= ap_const_lv1_0;
        else 
            ap_phi_mux_write_flag_0_phi_fu_226_p6 <= "X";
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_0_assign_proc : process(ap_CS_fsm_state6, select_ln19_fu_477_p3, ap_return_0_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_0 <= select_ln19_fu_477_p3;
        else 
            ap_return_0 <= ap_return_0_preg;
        end if; 
    end process;


    ap_return_1_assign_proc : process(ap_CS_fsm_state6, select_ln19_6_fu_485_p3, ap_return_1_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_1 <= select_ln19_6_fu_485_p3;
        else 
            ap_return_1 <= ap_return_1_preg;
        end if; 
    end process;


    ap_return_2_assign_proc : process(ap_CS_fsm_state6, select_ln19_7_fu_493_p3, ap_return_2_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_2 <= select_ln19_7_fu_493_p3;
        else 
            ap_return_2 <= ap_return_2_preg;
        end if; 
    end process;


    ap_return_3_assign_proc : process(ap_CS_fsm_state6, select_ln19_8_fu_501_p3, ap_return_3_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_3 <= select_ln19_8_fu_501_p3;
        else 
            ap_return_3 <= ap_return_3_preg;
        end if; 
    end process;


    ap_return_4_assign_proc : process(ap_CS_fsm_state6, select_ln19_9_fu_509_p3, ap_return_4_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_4 <= select_ln19_9_fu_509_p3;
        else 
            ap_return_4 <= ap_return_4_preg;
        end if; 
    end process;


    ap_return_5_assign_proc : process(ap_CS_fsm_state6, select_ln19_10_fu_517_p3, ap_return_5_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_5 <= select_ln19_10_fu_517_p3;
        else 
            ap_return_5 <= ap_return_5_preg;
        end if; 
    end process;


    ap_return_6_assign_proc : process(ap_CS_fsm_state6, ap_phi_mux_phi_ln19_phi_fu_282_p6, ap_return_6_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_6 <= ap_phi_mux_phi_ln19_phi_fu_282_p6;
        else 
            ap_return_6 <= ap_return_6_preg;
        end if; 
    end process;


    ap_return_7_assign_proc : process(ap_CS_fsm_state6, ap_phi_mux_phi_ln19_3_phi_fu_295_p6, ap_return_7_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_7 <= ap_phi_mux_phi_ln19_3_phi_fu_295_p6;
        else 
            ap_return_7 <= ap_return_7_preg;
        end if; 
    end process;


    ap_return_8_assign_proc : process(ap_CS_fsm_state6, ap_phi_mux_phi_ln19_4_phi_fu_308_p6, ap_return_8_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_8 <= ap_phi_mux_phi_ln19_4_phi_fu_308_p6;
        else 
            ap_return_8 <= ap_return_8_preg;
        end if; 
    end process;

    grp_fu_406_p1 <= sext_ln1270_fu_396_p1(40 - 1 downto 0);
    grp_fu_416_p1 <= sext_ln1270_11_fu_399_p1(40 - 1 downto 0);
    grp_fu_426_p1 <= sext_ln1270_fu_396_p1(40 - 1 downto 0);
    grp_fu_436_p1 <= sext_ln1270_11_fu_399_p1(40 - 1 downto 0);

    input_vector_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state5, zext_ln1271_5_fu_391_p1, zext_ln1271_3_fu_442_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            input_vector_address0 <= zext_ln1271_3_fu_442_p1(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            input_vector_address0 <= zext_ln1271_5_fu_391_p1(10 - 1 downto 0);
        else 
            input_vector_address0 <= "XXXXXXXXXX";
        end if; 
    end process;

    input_vector_address1 <= zext_ln1271_4_fu_381_p1(10 - 1 downto 0);

    input_vector_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            input_vector_ce0 <= ap_const_logic_1;
        else 
            input_vector_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    input_vector_ce1_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            input_vector_ce1 <= ap_const_logic_1;
        else 
            input_vector_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    input_vector_offset1_cast3_fu_318_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(input_vector_offset1),11));
    output_vector_offset_read_read_fu_102_p2 <= output_vector_offset;
    p_shl_fu_362_p3 <= (trunc_ln1271_1_fu_358_p1 & ap_const_lv2_0);
    ret_V_38_fu_460_p2 <= std_logic_vector(unsigned(r_V_57_reg_653) + unsigned(r_V_58_reg_658));
    ret_V_fu_446_p2 <= std_logic_vector(unsigned(r_V_55_reg_643) + unsigned(r_V_56_reg_648));
    select_ln19_10_fu_517_p3 <= 
        trunc_ln_fu_450_p4 when (ap_phi_mux_write_flag17_0_phi_fu_268_p6(0) = '1') else 
        p_read7;
    select_ln19_6_fu_485_p3 <= 
        input_vector_q0 when (ap_phi_mux_write_flag4_0_phi_fu_212_p6(0) = '1') else 
        p_read1;
    select_ln19_7_fu_493_p3 <= 
        input_vector_q0 when (ap_phi_mux_write_flag8_0_phi_fu_198_p6(0) = '1') else 
        p_read2;
    select_ln19_8_fu_501_p3 <= 
        trunc_ln_fu_450_p4 when (ap_phi_mux_write_flag11_0_phi_fu_240_p6(0) = '1') else 
        p_read3;
    select_ln19_9_fu_509_p3 <= 
        trunc_ln_fu_450_p4 when (ap_phi_mux_write_flag14_0_phi_fu_254_p6(0) = '1') else 
        p_read4;
    select_ln19_fu_477_p3 <= 
        input_vector_q0 when (ap_phi_mux_write_flag_0_phi_fu_226_p6(0) = '1') else 
        p_read;
        sext_ln1270_11_fu_399_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(r_V_54_reg_601),73));

        sext_ln1270_fu_396_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(r_V_reg_596),73));

        sext_ln1271_fu_344_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sub_ln1271_fu_338_p2),11));

    sub_ln1271_1_fu_370_p2 <= std_logic_vector(unsigned(p_shl_fu_362_p3) - unsigned(trunc_ln1271_fu_354_p1));
    sub_ln1271_fu_338_p2 <= std_logic_vector(unsigned(zext_ln1271_2_fu_334_p1) - unsigned(zext_ln1271_fu_322_p1));
    tmp_fu_326_p3 <= (input_vector_offset & ap_const_lv2_0);
    trunc_ln1271_1_fu_358_p1 <= add_ln1271_fu_348_p2(8 - 1 downto 0);
    trunc_ln1271_fu_354_p1 <= add_ln1271_fu_348_p2(10 - 1 downto 0);
    trunc_ln_fu_450_p4 <= ret_V_fu_446_p2(72 downto 33);
    zext_ln1271_2_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_326_p3),10));
    zext_ln1271_3_fu_442_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln1271_1_reg_579),64));
    zext_ln1271_4_fu_381_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1271_1_fu_376_p2),64));
    zext_ln1271_5_fu_391_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1271_2_fu_386_p2),64));
    zext_ln1271_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(input_vector_offset),10));
end behav;
