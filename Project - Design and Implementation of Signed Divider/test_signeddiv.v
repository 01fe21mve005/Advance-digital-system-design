`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:13:39 05/20/2022
// Design Name:   signeddivider
// Module Name:   D:/ADLD/signeddiv/test_signeddiv.v
// Project Name:  signeddiv
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: signeddivider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_signeddiv;

	// Inputs
	reg databus;
	reg quo;
	reg rem;
	reg divs;
	reg div;
	reg ldu;
	reg ldl;
	reg lds;
	reg ldd;
	reg st;
	reg v;
	reg ena;

	// Instantiate the Unit Under Test (UUT)
	signeddivider uut (
		.databus(databus), 
		.quo(quo), 
		.rem(rem), 
		.divs(divs), 
		.div(div), 
		.ldu(ldu), 
		.ldl(ldl), 
		.lds(lds), 
		.ldd(ldd), 
		.st(st), 
		.v(v), 
		.ena(ena)
	);

	initial begin
		// Initialize Inputs
		databus = 0;
		quo = 0;
		rem = 0;
		divs = 0;
		div = 0;
		ldu = 0;
		ldl = 0;
		lds = 0;
		ldd = 0;
		st = 0;
		v = 0;
		ena = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

