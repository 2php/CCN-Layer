module busCombiner(
input  [7:0]	Byte00,
input  [7:0]	Byte01,
input  [7:0]	Byte02,
input  [7:0]	Byte10,
input  [7:0]	Byte11,
input  [7:0]	Byte12,
input  [7:0]	Byte20,
input  [7:0]	Byte21,
input  [7:0]	Byte22,
output [71:0]	img
);

assign {img[7:0], img[15:8], img[23:16], img[31:24], img[39:32], img[47:40], img[55:48], img[63:56], img[71:64]} = {Byte00, Byte01, Byte02, Byte10, Byte11, Byte12, Byte20, Byte21, Byte22};

endmodule
