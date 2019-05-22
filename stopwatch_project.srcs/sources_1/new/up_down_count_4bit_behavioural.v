`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Carleton University
// Engineer: MAHTAB MOHAMMED
// 
// Create Date: 03/31/2019 03:52:51 PM
// Design Name: 
// Module Name: up_down_count_4bit_behavioural
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


module up_down_count_4bit_behavioural(
input [3:0] pmod_value,
input pmod_signal,
input enable,
input stop_rollover,
input clkin,
input modesel,
input threshhold_calc,
input reset,
input [3:0] top_num,
input [3:0] JA,
output reg thresh,
output reg [3:0] sec_num
);
    
 always @(posedge clkin) 
    begin
    
    //RESET BLOCK
    if (reset)sec_num <= 0;

    //PMOD ENCODING BLOCK
    if (enable == 0)
    if (pmod_signal == 1)
    if (JA [3])
    begin 
        if(pmod_value <= top_num)
        sec_num <= pmod_value; //For pmod button manipulations - JA[2] manipulations IN TOP MODULE 
    end

//COUNTDOWN BLOCK    
if(~modesel)
begin
            if (stop_rollover & threshhold_calc) 
            begin
                if(sec_num == 0)
                begin
                sec_num<=top_num;
                thresh<=0;
                end
                else if (sec_num == 1)
                begin
                sec_num <= sec_num-1;
                thresh<=1;
                end
                else
                begin
                sec_num <= sec_num-1;
                thresh <= 0;
                end
 
            end      //if ends              
end 
//COUNTDOWN BLOCK ENDS

//COUNTUP BLOCK
else 
begin
        if(threshhold_calc)
        begin
        //if (pmod_signal) sec_num <= pmod_value;
            if (sec_num == top_num)
            begin
            sec_num <= 0;
            thresh <=0;
            end 
            else if (sec_num == top_num-1)
            begin
            sec_num <= sec_num + 1;
            thresh <= 1;
            end
            else
            begin
            sec_num <= sec_num + 1;
            thresh <= 0;
            end
        end //enable ends
end 
//COUNTUP BLOCK ends


end //always ends
    
    
endmodule
