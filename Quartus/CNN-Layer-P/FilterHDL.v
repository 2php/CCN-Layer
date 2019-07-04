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
// CREATED		"Mon Jul 01 21:17:28 2019"

module FilterHDL(
	clk,
	Address,
	W0,
	W1
);


input wire	clk;
input wire	Address;
output wire	[71:0] W0;
output wire	[71:0] W1;






FilterROM_W0	b2v_inst4(
	.clock(clk),
	.address(Address),
	.q(W0));


FilterROM_W1	b2v_inst5(
	.clock(clk),
	.address(Address),
	.q(W1));


endmodule
