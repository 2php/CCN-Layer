module AddressController(
output	reg[12:0]ImageAddress,
output	finished,
input		clk, start);

parameter WIDTH				= 80;
parameter STEP 				= 1;
parameter START_POS			= 0;
parameter LINE_START_OFF	= 0;
parameter END_POS				= 4637;

wire 		skip;
reg[7:0]	lineCounter;

assign	skip = (lineCounter==WIDTH);
assign	finished = (ImageAddress==END_POS);

always @ (posedge clk) begin
	if (start) begin
		ImageAddress <= 0 + START_POS;
		lineCounter <= 2 + LINE_START_OFF;
	end
	else if (!finished) begin
		if (!skip) begin
			ImageAddress <= ImageAddress + STEP;
			lineCounter <= lineCounter + STEP;
		end
		else begin
			lineCounter <= 2;
			ImageAddress <= ImageAddress + 3;
		end	
	end
end
endmodule
