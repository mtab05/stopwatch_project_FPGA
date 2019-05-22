`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2019 11:53:35 PM
// Design Name: 
// Module Name: clk1Hz
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


module clk2Hz(
    input clk5M,
    input enable,
    input [3:0] JA,
    input reset,
    output reg Q
    );

    wire clkout, stable;
    integer count;
        
    always @ (posedge clk5M) 
    begin
    
    if (reset | JA[3])
    begin
    Q = 0;
    count = 0;
    end
    
    else
    begin
    count = count + 1;
    
            if (count >= 2500000) 
            count = 0;
            
        if (count >= 1250000) 
        Q <= enable;
        
        else
        Q <= 0;
    
            end
    
                   end

endmodule
