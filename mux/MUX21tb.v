`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:02:46 03/09/2022 
// Design Name: 
// Module Name:    MUX21tb 
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
module MUX21tb(
    );
reg in0, in1;
reg sel;
wire out;
 
mux2X1 uut(.in0(in0), .in1(in1),.sel(sel),.out(out));
 
initial begin
  $monitor( "in0=%d, in1=%d, sel= %d, out=%d", in0,in1,sel,out);
  for (int i=0; i<8; i=i+1) begin
    {in0,in1,sel} = i;
    #10;
  end

endmodule
