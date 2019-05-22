`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2019 08:20:12 PM
// Design Name: 
// Module Name: bcdto7segdisplay
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bcdto7segdisplay(
   input [3:0] bin,
   output reg [7:0] seg
   );
   
   always @(bin)
   begin
       case(bin)
       0: seg<=8'b11000000;
       1: seg<=8'b11111001;
       2: seg<=8'b10100100;
       3: seg<=8'b10110000;
       4: seg<=8'b10011001;
       5: seg<=8'b10010010;
       6: seg<=8'b10000010;
       7: seg<=8'b11111000;
       8: seg<=8'b10000000;
       9: seg<=8'b10010000;   
       default: seg<=8'b11000000;
       endcase
  end
endmodule
