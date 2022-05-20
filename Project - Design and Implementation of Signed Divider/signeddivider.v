`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:00 05/16/2022 
// Design Name: 
// Module Name:    signeddivider 
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
module signeddivider (databus, quo, rem, divs, div, ldu, ldl, lds, ldd, st, v, ena);
input databus [15:0];
input signed  divs [15:0];
input signed  div [15:0];
output  rem[15:0];
output  quo[15:0];
input   clk;

complement A (divs,div,clk);
 add  B (divs,div,quo,rem,clk);  
endmodule
