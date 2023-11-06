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
// CREATED		"Tue Oct 17 14:35:48 2023"

module work1(
	one,
	two,
	three,
	four,
	five,
	six,
	seven,
	eight,
	nine,
	zero,
	clk,
	rst,
	Dout
);


input wire	one;
input wire	two;
input wire	three;
input wire	four;
input wire	five;
input wire	six;
input wire	seven;
input wire	eight;
input wire	nine;
input wire	zero;
input wire	clk;
input wire	rst;
output wire	[3:0] Dout;

wire	[3:0] Din;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;





four_bit_register	b2v_inst(
	
	.CLK(SYNTHESIZED_WIRE_0),
	.RST_N(SYNTHESIZED_WIRE_6),
	.Din(Din),
	.Dout(Dout));


decimal_to_binary	b2v_inst1(
	.d0(zero),
	.d1(one),
	.d2(two),
	.d3(three),
	.d4(four),
	.d5(five),
	.d6(six),
	.d7(seven),
	.d8(eight),
	.d9(nine),
	.b0(Din[0]),
	.b1(Din[1]),
	.b2(Din[2]),
	.b3(Din[3]));

assign	SYNTHESIZED_WIRE_2 = six | eight | nine | seven;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_6 =  ~rst;


trigger	b2v_inst4(
	.Din(SYNTHESIZED_WIRE_4),
	.CLK(clk),
	.RST(SYNTHESIZED_WIRE_6),
	.Dout(SYNTHESIZED_WIRE_0));

assign	SYNTHESIZED_WIRE_3 = zero | two | one | three | four | five;


endmodule
