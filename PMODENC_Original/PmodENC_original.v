`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineers: Michelle Yu
//				  Josh Sackos
// 
// Create Date:    11:38:09 06/12/2012 
// Module Name:    PmodENC 
// Project Name:  PmodENC
// Target Devices: Nexys3
// Tool versions: Xilinx ISE Design Suite 14.1
//
// Description: 
//	This project changes the seven segment display when the position of rotary shaft
// is changed. The number on the seven segment display is relative to the start position.
// When the rotary button is pressed, the program resets. The switch controls whether 
// the seven segment display turns on or off. LED 0 and 1 indicated the direction the 
// rotary shaft is turned. LED 0 is on when the shaft is turned right, LED 1 is on when
// the shaft is turned left.
//
// Revision: 
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////
module PmodENC_OG(
    clk,
    JA,
    reset,
    EncO
    );

	 // ===========================================================================
	 // 										Port Declarations
	 // ===========================================================================
    input clk;
    input [3:0] JA;
    input reset;
    output [3:0] EncO;

	 // ===========================================================================
	 // 							  Parameters, Regsiters, and Wires
	 // ===========================================================================

	 wire clk;
	 wire [3:0] EncO;
	 wire [3:0] encout;
	 // ===========================================================================
	 // 										Implementation
	 // ===========================================================================

 	 
 	 Debouncer OG_Debouncer (
				  .clk(clk),
				  .Ain(JA[0]),
				  .Bin(JA[1]),
				  .Aout(AO),
				  .Bout(BO)
	 );
	 
 	 Encoder  OG_Encoder (
				  .clk(clk),
				  .A(AO),
				  .B(BO),
				  .SWT(JA[3]),
				  .reset(reset),
				  .EncOut(encout),
				  .LED(Led)
	 );
	 
	 assign EncO = encout;

          
    
endmodule
