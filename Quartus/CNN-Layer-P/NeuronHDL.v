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
// CREATED		"Wed Jul 03 13:58:09 2019"

module NeuronHDL(
	Image,
	W0,
	W1,
	outputW0,
	outputW1
);


input wire	[71:0] Image;
input wire	[71:0] W0;
input wire	[71:0] W1;
output wire	[15:0] outputW0;
output wire	[15:0] outputW1;






Synapse	b2v_inst2(
	.Image(Image),
	.W0(W0),
	.W1(W1),
	.outputW0(outputW0),
	.outputW1(outputW1));


endmodule
