module Synapse(
input		[71:0]Image,
input		[71:0]W0,
input		[71:0]W1,
output	[15:0]outputW0,
output	[15:0]outputW1);

wire signed[8:0]		img[8:0];
wire signed[7:0]		W0_[8:0];
wire signed[7:0]		W1_[8:0];

assign {W0_[0], W0_[1], W0_[2], W0_[3], W0_[4], W0_[5], W0_[6], W0_[7], W0_[8]} = {W0[7:0], W0[15:8], W0[23:16], W0[31:24], W0[39:32], W0[47:40], W0[55:48], W0[63:56], W0[71:64]};
assign {W1_[0], W1_[1], W1_[2], W1_[3], W1_[4], W1_[5], W1_[6], W1_[7], W1_[8]} = {W1[7:0], W1[15:8], W1[23:16], W1[31:24], W1[39:32], W1[47:40], W1[55:48], W1[63:56], W1[71:64]};
assign img[0] = Image[7:0];
assign img[1] = Image[15:8];
assign img[2] = Image[23:16];
assign img[3] = Image[31:24];
assign img[4] = Image[39:32];
assign img[5] = Image[47:40];
assign img[6] = Image[55:48];
assign img[7] = Image[63:56];
assign img[8] = Image[71:64];
//assign {img[0], img[1], img[2], img[3], img[4], img[5], img[6], img[7], img[8]} = {Image[7:0], Image[15:8], Image[23:16], Image[31:24], Image[39:32], Image[47:40], Image[55:48], Image[63:56], Image[71:64]};
assign outputW0 = W0_[0]*img[0] + W0_[1]*img[1] + W0_[2]*img[2] + W0_[3]*img[3] + W0_[4]*img[4] + W0_[5]*img[5] + W0_[6]*img[6] + W0_[7]*img[7] + W0_[8]*img[8];
assign outputW1 = W1_[0]*img[0] + W1_[1]*img[1] + W1_[2]*img[2] + W1_[3]*img[3] + W1_[4]*img[4] + W1_[5]*img[5] + W1_[6]*img[6] + W1_[7]*img[7] + W1_[8]*img[8];

endmodule
