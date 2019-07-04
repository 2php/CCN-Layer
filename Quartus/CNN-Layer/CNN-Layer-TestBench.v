
`timescale 1ns / 1ns
module Final  ; 
 
  wire  [71:0]  W1   ; 
  wire  [15:0]  outputW0   ; 
  wire  [15:0]  outputW1   ; 
  wire  [12:0]  ImageAddress   ; 
  reg    memclk   ; 
  wire    finished   ; 
  reg    start   ; 
  reg    clk   ; 
  wire  [71:0]  W0   ; 
  wire  [71:0]  IMAGE   ; 
  CNN_LayerHDL  
   DUT  ( 
       .W1 (W1 ) ,
      .outputW0 (outputW0 ) ,
      .outputW1 (outputW1 ) ,
      .ImageAddress (ImageAddress ) ,
      .memclk (memclk ) ,
      .finished (finished ) ,
      .start (start ) ,
      .clk (clk ) ,
      .W0 (W0 ) ,
      .IMAGE (IMAGE ) ); 

   reg [0 : 0] \VARstart ;


// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 22700 ns, Period = 5 ns
  initial
  begin
	  clk  = 1'b0  ;
	 # 3 ;
   repeat(4539)
   begin
	   clk  = 1'b1  ;
	  #2  clk  = 1'b0  ;
	  #3 ;
// 22698 ns, repeat pattern in loop.
   end
	  clk  = 1'b1  ;
	 # 2 ;
// dumped values till 22700 ns
  end


// "Counter Pattern"(Range-Down) : step = 1 Range(St1-St0)
// Start Time = 0 ns, End Time = 8 ns, Period = 4 ns
  initial
  begin
	\VARstart = 1'b1 ;
	 start  = 1'b1  ;
	  begin
	  \VARstart = \VARstart  - 1 ;
	  #4  start  = \VARstart  ;
	  end
	  #4 ;
// 8 ns, repeat pattern in loop.
	#22692 ;
  end


// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 22700 ns, Period = 5 ns
  initial
  begin
	  memclk  = 1'b0  ;
	 # 3 ;
   repeat(4539)
   begin
	   memclk  = 1'b1  ;
	  #2  memclk  = 1'b0  ;
	  #3 ;
// 22698 ns, repeat pattern in loop.
   end
	  memclk  = 1'b1  ;
	 # 2 ;
// dumped values till 22700 ns
  end

  initial
	#45400 $stop;
endmodule
