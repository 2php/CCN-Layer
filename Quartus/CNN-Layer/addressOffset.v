module addressOffset (
output [12:0]	Byte00Address,
output [12:0]	Byte01Address,
output [12:0]	Byte02Address,
output [12:0]	Byte10Address,
output [12:0]	Byte11Address,
output [12:0]	Byte12Address,
output [12:0]	Byte20Address,
output [12:0]	Byte21Address,
output [12:0]	Byte22Address,
input [12:0]	reference
);

parameter WIDTH 		= 80;
parameter WIDTHx2		= 160;

assign Byte00Address = reference;
assign Byte01Address = reference + 1;
assign Byte02Address = reference + 2;
assign Byte10Address = reference + WIDTH;
assign Byte11Address = reference + 1 + WIDTH;
assign Byte12Address = reference + 2 + WIDTH;
assign Byte20Address = reference + WIDTHx2;
assign Byte21Address = reference + 1 + WIDTHx2;
assign Byte22Address = reference + 2 + WIDTHx2;

endmodule
