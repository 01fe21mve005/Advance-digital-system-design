`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:46 03/16/2022 
// Design Name: 
// Module Name:    pipo1 
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
module pipo1(dout,din,ld,clk);
input [15:0]din;
input ld,clk;
output reg [15:0] dout;
always @(posedge clk)
if (ld) dout<=din;
endmodule
   
  
