`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:33 05/16/2022 
// Design Name: 
// Module Name:    controller 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module controller( ldu,ldl,lds,ldd,st,v,ena,clk);
  input clk;
  output ldu,ldl,lds,ldd,v;
  reg st;
  parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
  always @(posedge clk)]
  begin
  case (st)
  
    s0:
	     begin
		      if(st==3'b000)
				begin
				  div[15:0] = data_in;
				  end
            end

    s1:
         begin
            if(st==3'b001)
             begin
              divs[15:0] = data_in;
             end
            end

    s2:
          begin
             if (st==3'b010)
              begin
				  add<= ldd;
				  end
				 end
				  
	s3:		  
          begin
            if (st==3'b011)
				ena<=ldd;
				end
           end
	s4:
           begin
              if (st==3'b100)
				  begin
              sign <=lds
				  end
				 end
default state s0



always @(posedge clk)
endmodule
