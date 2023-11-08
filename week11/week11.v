// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Tue Nov 07 16:49:28 2023"

module week11(
	clk,
	rst,
	keypad_0,
	keypad_1,
	keypad_2,
	keypad_3,
	keypad_4,
	keypad_6,
	keypad_5,
	keypad_7,
	keypad_8,
	keypad_9,
	a,
	b,
	c,
	d,
	e,
	f,
	g,
	com8,
	com6,
	com5,
	com4,
	com3,
	com2,
	com1,
	piezo,
	green_1,
	green_2,
	green_3,
	green_4,
	red_1,
	red_2,
	red_3,
	red_4,
	Motor_A,
	Motor_B,
	Motor_ANOT,
	Motor_BNOT,
	com7
);


input wire	clk;
input wire	rst;
input wire	keypad_0;
input wire	keypad_1;
input wire	keypad_2;
input wire	keypad_3;
input wire	keypad_4;
input wire	keypad_6;
input wire	keypad_5;
input wire	keypad_7;
input wire	keypad_8;
input wire	keypad_9;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;
output wire	com8;
output wire	com6;
output wire	com5;
output wire	com4;
output wire	com3;
output wire	com2;
output wire	com1;
output wire	piezo;
output wire	green_1;
output wire	green_2;
output wire	green_3;
output wire	green_4;
output wire	red_1;
output wire	red_2;
output wire	red_3;
output wire	red_4;
output wire	Motor_A;
output wire	Motor_B;
output wire	Motor_ANOT;
output wire	Motor_BNOT;
output wire	com7;

wire	[3:0] reg_line;
wire	SYNTHESIZED_WIRE_68;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_69;
wire	[3:0] SYNTHESIZED_WIRE_70;
wire	[3:0] SYNTHESIZED_WIRE_71;
wire	SYNTHESIZED_WIRE_72;
wire	[3:0] SYNTHESIZED_WIRE_73;
wire	[3:0] SYNTHESIZED_WIRE_74;
wire	SYNTHESIZED_WIRE_75;
wire	[3:0] SYNTHESIZED_WIRE_16;
wire	[3:0] SYNTHESIZED_WIRE_17;
wire	[3:0] SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_76;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_77;
wire	SYNTHESIZED_WIRE_78;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_61;

assign	com4 = 1;
assign	com3 = 1;
assign	com2 = 1;
assign	com1 = 1;
assign	SYNTHESIZED_WIRE_1 = 1;




d2b	b2v_inst(
	.d0(keypad_0),
	.d1(keypad_1),
	.d2(keypad_2),
	.d3(keypad_3),
	.d4(keypad_4),
	.d5(keypad_5),
	.d6(keypad_6),
	.d7(keypad_7),
	.d8(keypad_8),
	.d9(keypad_9),
	.b3(reg_line[3]),
	.b2(reg_line[2]),
	.b1(reg_line[1]),
	.b0(reg_line[0]));


PNU_CLK_DIV	b2v_inst1(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_68),
	.en(SYNTHESIZED_WIRE_1),
	.div_clk(SYNTHESIZED_WIRE_61));
	defparam	b2v_inst1.cnt_num = 10000;


four_bit_reg_ce	b2v_inst10(
	.ce(SYNTHESIZED_WIRE_69),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_68),
	.din(SYNTHESIZED_WIRE_70),
	.out(SYNTHESIZED_WIRE_71));


four_bit_reg_ce	b2v_inst11(
	.ce(SYNTHESIZED_WIRE_69),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_68),
	.din(SYNTHESIZED_WIRE_71),
	.out(SYNTHESIZED_WIRE_74));


count_4	b2v_inst12(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_68),
	.Q0(SYNTHESIZED_WIRE_72),
	.Q1(SYNTHESIZED_WIRE_75));


mx_4bit_2x1	b2v_inst14(
	.ce(SYNTHESIZED_WIRE_72),
	.s0(SYNTHESIZED_WIRE_73),
	.s1(SYNTHESIZED_WIRE_70),
	.m_out(SYNTHESIZED_WIRE_16));


mx_4bit_2x1	b2v_inst15(
	.ce(SYNTHESIZED_WIRE_72),
	.s0(SYNTHESIZED_WIRE_71),
	.s1(SYNTHESIZED_WIRE_74),
	.m_out(SYNTHESIZED_WIRE_17));


mx_4bit_2x1	b2v_inst16(
	.ce(SYNTHESIZED_WIRE_75),
	.s0(SYNTHESIZED_WIRE_16),
	.s1(SYNTHESIZED_WIRE_17),
	.m_out(SYNTHESIZED_WIRE_18));


b2seg_bus	b2v_inst17(
	.b_in(SYNTHESIZED_WIRE_18),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));

assign	SYNTHESIZED_WIRE_21 = keypad_0 | keypad_2 | keypad_1 | keypad_3 | keypad_5 | keypad_4 | keypad_6 | keypad_7;


LED	b2v_inst2(
	.Correct(SYNTHESIZED_WIRE_76),
	.Green1(green_1),
	.Green2(green_2),
	.Green3(green_3),
	.Green4(green_4),
	.Red1(red_1),
	.Red2(red_2),
	.Red3(red_3),
	.Red4(red_4));

assign	SYNTHESIZED_WIRE_20 = keypad_9 | keypad_8;

assign	SYNTHESIZED_WIRE_46 = SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_68 =  ~rst;

assign	SYNTHESIZED_WIRE_77 = SYNTHESIZED_WIRE_76 ^ SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_78 = SYNTHESIZED_WIRE_76 ^ SYNTHESIZED_WIRE_25;

assign	SYNTHESIZED_WIRE_34 =  ~SYNTHESIZED_WIRE_72;

assign	SYNTHESIZED_WIRE_35 =  ~SYNTHESIZED_WIRE_75;


Password	b2v_inst3(
	.Reg_1(SYNTHESIZED_WIRE_73),
	.Reg_2(SYNTHESIZED_WIRE_70),
	.Reg_3(SYNTHESIZED_WIRE_71),
	.Reg_4(SYNTHESIZED_WIRE_74),
	.Correct(SYNTHESIZED_WIRE_76));

assign	SYNTHESIZED_WIRE_37 =  ~SYNTHESIZED_WIRE_75;

assign	SYNTHESIZED_WIRE_39 =  ~SYNTHESIZED_WIRE_72;

assign	SYNTHESIZED_WIRE_42 = SYNTHESIZED_WIRE_34 & SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_43 = SYNTHESIZED_WIRE_72 & SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_44 = SYNTHESIZED_WIRE_75 & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_45 = SYNTHESIZED_WIRE_75 & SYNTHESIZED_WIRE_72;

assign	com8 =  ~SYNTHESIZED_WIRE_42;

assign	com7 =  ~SYNTHESIZED_WIRE_43;

assign	com6 =  ~SYNTHESIZED_WIRE_44;

assign	com5 =  ~SYNTHESIZED_WIRE_45;


trigger	b2v_inst4(
	.Din(SYNTHESIZED_WIRE_46),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_68),
	.Dout(SYNTHESIZED_WIRE_69));

assign	SYNTHESIZED_WIRE_52 =  ~SYNTHESIZED_WIRE_77;


assign	SYNTHESIZED_WIRE_53 =  ~SYNTHESIZED_WIRE_78;

assign	SYNTHESIZED_WIRE_55 =  ~SYNTHESIZED_WIRE_78;

assign	SYNTHESIZED_WIRE_57 =  ~SYNTHESIZED_WIRE_78;

assign	Motor_A = SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_53;

assign	Motor_B = SYNTHESIZED_WIRE_77 & SYNTHESIZED_WIRE_55;

assign	Motor_ANOT = SYNTHESIZED_WIRE_77 & SYNTHESIZED_WIRE_57;

assign	Motor_BNOT = SYNTHESIZED_WIRE_77 & SYNTHESIZED_WIRE_78;


Piezo_module	b2v_inst5(
	.clk(clk),
	.rst(SYNTHESIZED_WIRE_68),
	.Keypad0(keypad_0),
	.Keypad1(keypad_1),
	.Keypad2(keypad_2),
	.Keypad3(keypad_3),
	.Keypad4(keypad_4),
	.Keypad5(keypad_5),
	.Keypad6(keypad_6),
	.Keypad7(keypad_7),
	.Keypad8(keypad_8),
	.Keypad9(keypad_9),
	.Piezo(piezo));



count_4	b2v_inst51(
	.clk(SYNTHESIZED_WIRE_61),
	.rst_n(SYNTHESIZED_WIRE_68),
	.Q0(SYNTHESIZED_WIRE_23),
	.Q1(SYNTHESIZED_WIRE_25));


four_bit_reg_ce	b2v_inst7(
	.ce(SYNTHESIZED_WIRE_69),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_68),
	.din(reg_line),
	.out(SYNTHESIZED_WIRE_73));


four_bit_reg_ce	b2v_inst8(
	.ce(SYNTHESIZED_WIRE_69),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_68),
	.din(SYNTHESIZED_WIRE_73),
	.out(SYNTHESIZED_WIRE_70));


endmodule
