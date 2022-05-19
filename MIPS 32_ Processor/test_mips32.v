`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:12 04/29/2022
// Design Name:   pipe_MIPS32
// Module Name:   E:/SURAJ SP/pipe_mips32/test_mips32.v
// Project Name:  pipe_mips32
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipe_MIPS32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
///////////////////////////////////////////////////////////////////////////////
module test_mips32();
reg clk1,clk2;
integer k;
pipe_MIPS32 mips(clk1,clk2);
initial 
begin
clk1=0; clk2=0;
repeat(20)
begin
#5 clk1=1; #5 clk1=0;
#5 clk2=1; #5 clk2=0;
end
end
initial
begin
for(k=0; k<31; k=k+1)
mips.Reg[k]=k;
mips.mem[0]=32'h2801000a;
mips.mem[1]=32'h28020014;
mips.mem[2]=32'h28030019;
mips.mem[3]=32'h0ce77800;
mips.mem[4]=32'h0ce77800;
mips.mem[5]=32'h00222000;
mips.mem[6]=32'h0ce77800;
mips.mem[7]=32'h00832800;
mips.mem[8]=32'hfc000000;
mips.HALTED=0;
mips.PC=0;
mips.TAKEN_BRANCH=0;
#280
for(k=0; k<6; k=k+1)
$display(R,"%1d - %2d",k,mips.Reg[k]);
end
initial
begin
$dumpfile("mips.vcd");
$dumpvars(0,test_mips32);
#300 $finish;
end
endmodule
