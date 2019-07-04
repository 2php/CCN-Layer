
`timescale 1ns / 1ns
module Paralele  ; 
 
  wire  [15:0]  T0_outputW0   ; 
  wire  [15:0]  T0_outputW1   ; 
  wire  [15:0]  T2_outputW0   ; 
  wire  [15:0]  T2_outputW1   ; 
  reg    memclk   ; 
  reg    clk   ; 
  wire    finished0   ; 
  wire    finished1   ; 
  wire    finished2   ; 
  wire  [15:0]  T1_outputW0   ; 
  wire    finished3   ; 
  wire  [15:0]  T1_outputW1   ; 
  wire  [15:0]  T3_outputW0   ; 
  reg    start   ; 
  wire  [15:0]  T3_outputW1   ; 
  CNN_LayerHDL  
   DUT  ( 
       .T0_outputW0 (T0_outputW0 ) ,
      .T0_outputW1 (T0_outputW1 ) ,
      .T2_outputW0 (T2_outputW0 ) ,
      .T2_outputW1 (T2_outputW1 ) ,
      .memclk (memclk ) ,
      .clk (clk ) ,
      .finished0 (finished0 ) ,
      .finished1 (finished1 ) ,
      .finished2 (finished2 ) ,
      .T1_outputW0 (T1_outputW0 ) ,
      .finished3 (finished3 ) ,
      .T1_outputW1 (T1_outputW1 ) ,
      .T3_outputW0 (T3_outputW0 ) ,
      .start (start ) ,
      .T3_outputW1 (T3_outputW1 ) ); 

   reg [0 : 0] \VARstart ;


// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 5700 ns, Period = 5 ns
  initial
  begin
	  clk  = 1'b0  ;
	 # 3 ;
   repeat(1139)
   begin
	   clk  = 1'b1  ;
	  #2  clk  = 1'b0  ;
	  #3 ;
// 5698 ns, repeat pattern in loop.
   end
	  clk  = 1'b1  ;
	 # 2 ;
// dumped values till 5700 ns
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
	#5692 ;
  end


// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 5700 ns, Period = 5 ns
  initial
  begin
	  memclk  = 1'b0  ;
	 # 3 ;
   repeat(1139)
   begin
	   memclk  = 1'b1  ;
	  #2  memclk  = 1'b0  ;
	  #3 ;
// 5698 ns, repeat pattern in loop.
   end
	  memclk  = 1'b1  ;
	 # 2 ;
// dumped values till 5700 ns
  end

  initial
	#11400 $stop;
endmodule
