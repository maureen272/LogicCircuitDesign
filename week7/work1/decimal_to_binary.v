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
// CREATED		"Wed Nov 02 19:32:41 2022"

module decimal_to_binary(
	d1,
	d2,
	d3,
	d4,
	d5,
	d6,
	d7,
	d8,
	d9,
	d0,
	b0,
	b1,
	b2,
	b3
);


input wire	d1;
input wire	d2;
input wire	d3;
input wire	d4;
input wire	d5;
input wire	d6;
input wire	d7;
input wire	d8;
input wire	d9;
input wire	d0;
output wire	b0;
output wire	b1;
output wire	b2;
output wire	b3;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_0 = 0;



assign	SYNTHESIZED_WIRE_8 = d9 | d8;

assign	SYNTHESIZED_WIRE_2 = d1 | d5 | d3 | d7 | d9 | SYNTHESIZED_WIRE_0;


assign	b0 = SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_2;

assign	b1 = SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_4;

assign	b2 = SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_6;

assign	b3 = SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_9 =  ~d0;

assign	SYNTHESIZED_WIRE_6 = d4 | d6 | d7 | d5;

assign	SYNTHESIZED_WIRE_4 = d2 | d6 | d7 | d3;


endmodule
