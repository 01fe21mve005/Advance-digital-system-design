`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:41:22 05/16/2022 
// Design Name: 
// Module Name:    complement 
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
module complement(divs,div,clk);
input signed div [15:0];
input signed divs [15:0];
wire [15:0] div;
wire [15:0] divs; 
assign div[15:0] = ~div[15:0] + 1'b1;
assign divs[15:0] = ~div[15:0] + 1'b1;
 