// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Wed Jul 03 18:23:12 2019"

module CNN_LayerHDL(
	clk,
	start,
	memclk,
	finished0,
	finished1,
	finished2,
	finished3,
	T0_outputW0,
	T0_outputW1,
	T1_outputW0,
	T1_outputW1,
	T2_outputW0,
	T2_outputW1,
	T3_outputW0,
	T3_outputW1
);


input wire	clk;
input wire	start;
input wire	memclk;
output wire	finished0;
output wire	finished1;
output wire	finished2;
output wire	finished3;
output wire	[15:0] T0_outputW0;
output wire	[15:0] T0_outputW1;
output wire	[15:0] T1_outputW0;
output wire	[15:0] T1_outputW1;
output wire	[15:0] T2_outputW0;
output wire	[15:0] T2_outputW1;
output wire	[15:0] T3_outputW0;
output wire	[15:0] T3_outputW1;

wire	[71:0] SYNTHESIZED_WIRE_0;
wire	[71:0] SYNTHESIZED_WIRE_22;
wire	[71:0] SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	[12:0] SYNTHESIZED_WIRE_4;
wire	[71:0] SYNTHESIZED_WIRE_5;
wire	[12:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_11;
wire	[71:0] SYNTHESIZED_WIRE_12;
wire	[12:0] SYNTHESIZED_WIRE_16;
wire	[71:0] SYNTHESIZED_WIRE_17;
wire	[12:0] SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_11 = 0;




AddressController	b2v_inst(
	.clk(clk),
	.start(start),
	.finished(finished0),
	.ImageAddress(SYNTHESIZED_WIRE_16));
	defparam	b2v_inst.END_POS = 1159;
	defparam	b2v_inst.LINE_START_OFF = 0;
	defparam	b2v_inst.START_POS = 0;
	defparam	b2v_inst.STEP = 1;
	defparam	b2v_inst.WIDTH = 80;



AddressController	b2v_inst10(
	.clk(clk),
	.start(start),
	.finished(finished1),
	.ImageAddress(SYNTHESIZED_WIRE_21));
	defparam	b2v_inst10.END_POS = 2317;
	defparam	b2v_inst10.LINE_START_OFF = 40;
	defparam	b2v_inst10.START_POS = 1160;
	defparam	b2v_inst10.STEP = 1;
	defparam	b2v_inst10.WIDTH = 80;


NeuronHDL	b2v_inst11(
	.Image(SYNTHESIZED_WIRE_0),
	.W0(SYNTHESIZED_WIRE_22),
	.W1(SYNTHESIZED_WIRE_23),
	.outputW0(T2_outputW0),
	.outputW1(T2_outputW1));


ImageHDL	b2v_inst12(
	.clk(SYNTHESIZED_WIRE_24),
	.Address(SYNTHESIZED_WIRE_4),
	.Image(SYNTHESIZED_WIRE_0));


AddressController	b2v_inst13(
	.clk(clk),
	.start(start),
	.finished(finished2),
	.ImageAddress(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst13.END_POS = 3479;
	defparam	b2v_inst13.LINE_START_OFF = 0;
	defparam	b2v_inst13.START_POS = 2320;
	defparam	b2v_inst13.STEP = 1;
	defparam	b2v_inst13.WIDTH = 80;


NeuronHDL	b2v_inst14(
	.Image(SYNTHESIZED_WIRE_5),
	.W0(SYNTHESIZED_WIRE_22),
	.W1(SYNTHESIZED_WIRE_23),
	.outputW0(T3_outputW0),
	.outputW1(T3_outputW1));


ImageHDL	b2v_inst15(
	.clk(SYNTHESIZED_WIRE_24),
	.Address(SYNTHESIZED_WIRE_9),
	.Image(SYNTHESIZED_WIRE_5));


AddressController	b2v_inst16(
	.clk(clk),
	.start(start),
	.finished(finished3),
	.ImageAddress(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst16.END_POS = 4637;
	defparam	b2v_inst16.LINE_START_OFF = 40;
	defparam	b2v_inst16.START_POS = 3480;
	defparam	b2v_inst16.STEP = 1;
	defparam	b2v_inst16.WIDTH = 80;

assign	SYNTHESIZED_WIRE_24 =  ~memclk;


FilterHDL	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_24),
	.Address(SYNTHESIZED_WIRE_11),
	.W0(SYNTHESIZED_WIRE_22),
	.W1(SYNTHESIZED_WIRE_23));


NeuronHDL	b2v_inst5(
	.Image(SYNTHESIZED_WIRE_12),
	.W0(SYNTHESIZED_WIRE_22),
	.W1(SYNTHESIZED_WIRE_23),
	.outputW0(T0_outputW0),
	.outputW1(T0_outputW1));


ImageHDL	b2v_inst7(
	.clk(SYNTHESIZED_WIRE_24),
	.Address(SYNTHESIZED_WIRE_16),
	.Image(SYNTHESIZED_WIRE_12));


NeuronHDL	b2v_inst8(
	.Image(SYNTHESIZED_WIRE_17),
	.W0(SYNTHESIZED_WIRE_22),
	.W1(SYNTHESIZED_WIRE_23),
	.outputW0(T1_outputW0),
	.outputW1(T1_outputW1));


ImageHDL	b2v_inst9(
	.clk(SYNTHESIZED_WIRE_24),
	.Address(SYNTHESIZED_WIRE_21),
	.Image(SYNTHESIZED_WIRE_17));


endmodule
