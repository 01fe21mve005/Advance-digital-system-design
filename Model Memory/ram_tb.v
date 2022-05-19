`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:16 04/01/2022 
// Design Name: 
// Module Name:    ram_tb 
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
module ram_tb;
reg [2:0] address;
wire [7:0] data_out;
reg [7:0] data_in;
reg write, select;
integer k, myseed;

ram RAM(address,data_out,data_in,write,select,clock);
forever #5 clock = ~clock
initial
begin
for (k=0;k<=8;k=k+1)
begin
data_in = (k+k)%4; write = 1; select = 1;
# 2 address = k; write=0; select=0;
end

repeat(20)
begin
#2 address = $random(myseed) % 8; write = 0; select = 0;
$display("Address: %5d, Data: %4d",address,data_out);
end 
end
initial myseed = 35;
endmodule
