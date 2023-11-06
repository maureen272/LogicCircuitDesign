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
// CREATED		"Wed Nov 09 21:58:15 2022"

module binary_to_7segment(
	b3,
	b2,
	b1,
	b0,
	a,
	b,
	c,
	d,
	e,
	f,
	g
);


input wire	b3;
input wire	b2;
input wire	b1;
input wire	b0;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;

wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;





assign	SYNTHESIZED_WIRE_43 =  ~b2;

assign	SYNTHESIZED_WIRE_30 = b0 & SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_38 = b2 & SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_21 = b2 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_39 =  ~b1;

assign	SYNTHESIZED_WIRE_5 = b1 | b3;

assign	a = SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_42;

assign	b = SYNTHESIZED_WIRE_43 | SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_12 = b2 | SYNTHESIZED_WIRE_39;

assign	c = b0 | SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_41 | b3;

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_44 | SYNTHESIZED_WIRE_45;

assign	d = SYNTHESIZED_WIRE_16 | SYNTHESIZED_WIRE_17;

assign	e = SYNTHESIZED_WIRE_45 | SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_40 =  ~b0;

assign	SYNTHESIZED_WIRE_24 = b3 | SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_38;

assign	f = SYNTHESIZED_WIRE_23 | SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_38 | b3;

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_44 | SYNTHESIZED_WIRE_45;

assign	g = SYNTHESIZED_WIRE_28 | SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_30 | SYNTHESIZED_WIRE_31;

assign	SYNTHESIZED_WIRE_41 = SYNTHESIZED_WIRE_43 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_3 = b2 & b0;

assign	SYNTHESIZED_WIRE_42 = SYNTHESIZED_WIRE_39 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_7 = b1 & b0;

assign	SYNTHESIZED_WIRE_45 = b1 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_44 = SYNTHESIZED_WIRE_43 & b1;


endmodule
