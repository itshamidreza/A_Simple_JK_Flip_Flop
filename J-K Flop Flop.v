//-----------------------------------------------------------------------------
//
// Title       : A simple JK Flip Flop with reset control
// Design      : JK Flip Flop
// Author      : Hamid Reza Ghahramani
// Company     : -
//
//-----------------------------------------------------------------------------
//
// Description : A simple JK flip flop with output waveform. 
//
//-----------------------------------------------------------------------------	

`timescale 1 ns / 1 ps

module JKFF (input j, input k, input clk, output reg Q, output reg Qb);
	always @ (posedge clk)
		if (k == 0)
   				begin
   				Q <= 0;
  		  		Qb <= 1;
  				end
		  else if(j == 1)
 		  		begin
  		  		Q <= 1;
 		   		Qb <= 0;
 		  		end
 		 else if(j == 0 & k == 0)
  		 		begin
   		 		Q <= Q;
   		 		Qb <= Qb;
  		 		end
 		 else if(j == 1 & k == 1)
 		  		begin
  		  		Q <= ~Q;
 		  		Qb <= ~Qb;
  		 		end 

endmodule
