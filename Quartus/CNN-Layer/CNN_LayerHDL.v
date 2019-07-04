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
// CREATED		"Wed Jul 03 14:01:06 2019"

module CNN_LayerHDL(
	clk,
	start,
	memclk,
	finished,
	IMAGE,
	ImageAddress,
	outputW0,
	outputW1
//	W0,
//	W1
);


input wire	clk;
input wire	start;
input wire	memclk;
output wire	finished;
output wire	[71:0] IMAGE;
output wire	[12:0] ImageAddress;
output wire	[15:0] outputW0;
output wire	[15:0] outputW1;
//output wire	[71:0] W0;
//output wire	[71:0] W1;

wire	[71:0] W0;
wire	[71:0] W1;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_1;
wire	[71:0] SYNTHESIZED_WIRE_2;
wire	[71:0] SYNTHESIZED_WIRE_3;
wire	[71:0] SYNTHESIZED_WIRE_4;
wire	[12:0] SYNTHESIZED_WIRE_6;

assign	IMAGE = SYNTHESIZED_WIRE_2;
assign	ImageAddress = SYNTHESIZED_WIRE_6;
assign	W0 = SYNTHESIZED_WIRE_3;
assign	W1 = SYNTHESIZED_WIRE_4;
assign	SYNTHESIZED_WIRE_1 = 0;




assign	SYNTHESIZED_WIRE_7 =  ~memclk;


FilterHDL	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_7),
	.Address(SYNTHESIZED_WIRE_1),
	.W0(SYNTHESIZED_WIRE_3),
	.W1(SYNTHESIZED_WIRE_4));


NeuronHDL	b2v_inst5(
	.Image(SYNTHESIZED_WIRE_2),
	.W0(SYNTHESIZED_WIRE_3),
	.W1(SYNTHESIZED_WIRE_4),
	.outputW0(outputW0),
	.outputW1(outputW1));


AddressController	b2v_inst6(
	.clk(clk),
	.start(start),
	.finished(finished),
	.ImageAddress(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst6.END_POS = 4637;
	defparam	b2v_inst6.START_POS = 0;
	defparam	b2v_inst6.STEP = 1;
	defparam	b2v_inst6.WIDTH = 80;


ImageHDL	b2v_inst7(
	.clk(SYNTHESIZED_WIRE_7),
	.Address(SYNTHESIZED_WIRE_6),
	.Image(SYNTHESIZED_WIRE_2));


endmodule
