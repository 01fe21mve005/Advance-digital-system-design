`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:56:21 03/11/2022
// Design Name:   MUX4*1_D
// Module Name:   D:/SURAJ SP/MUX 4*1/MUX 4*1_tb.v
// Project Name:  MUX41
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX41_D
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX4*1_tb;

	// Inputs
	reg [3:0] in;
	reg [1:0] sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MUX41_D uut (
		.in(in), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		
		in = 1000;
		sel = 00;
		#100;
        
		in = 0100;
		sel = 01;
		#100;
		
		in = 0010;
		sel = 10;
		#100;
		
		in = 0001;
		sel = 11;
		#100;
		
		in = 0111;
		sel = 00;
		#100;
		
		in = 1011;
		sel = 01;
		#100;
		
		in = 1101;
		sel = 10;
		#100;
		
		in = 1110;
		sel = 11;
		#100;

	end
      
endmodule

