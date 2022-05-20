`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:20 05/16/2022 
// Design Name: 
// Module Name:    add 
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
module add(div, divd,quo , rem, c);
input div [15:0];
input divs [15:0];                 
output rem [15:0];

wire [16:0] c;	
assign c[0] = cin;	
assign cout = c[16];	

  assign rem[15:0] = (div[15:0] ^ divs[15:0]) ^ c[15:0];
  assign c[16:1]   = (div[15:0] & divs[15:0]) | 
                     (div[15:0] ^ divs[15:0]) & c[15:0];

endmodule
   