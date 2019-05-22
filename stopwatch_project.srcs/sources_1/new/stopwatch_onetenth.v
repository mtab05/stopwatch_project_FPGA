`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2019 06:08:26 PM
// Design Name: 
// Module Name: stopwatch_onetenth
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


module top_stopwatch_project(
    input clk,
    output reg modeLED,
    output readyLED,
    input mode_select,
    input pause,
    input continue,
    input reset,
    input [3:0] JA, //PMOD constraints JA3 = SWT, JA2 = BTN, JA1 = cw, JA0 = ccw
    output reg [7:0] seg,
    output reg [7:0] an
    );
    
    //wires go here
    wire clk5M, q0, q1, refresh, clk2HZ, ReadyLED;
    wire secat1tenth, secat1clk, secat60clk, secattenthousandth;
    wire thresh1, thresh2, thresh3, thresh4, thresh5, thresh6, thresh7, thresh8; 
    wire thresh_calc0, thresh_calc1, thresh_calc2, thresh_calc3, thresh_calc4, thresh_calc5, thresh_calc6, thresh_calc7;
    wire stop_rollover0, stop_rollover1, stop_rollover2, stop_rollover3, stop_rollover4, stop_rollover5, stop_rollover6, stop_rollover7;
    reg enable = 0;
    reg [7:0] signal;
    wire [3:0] tenthousandth, thousandth, hundredth, tenth, sec1, sec2, min1, min2;  
    wire [3:0] top_num1, top_num2;
    wire [3:0] tenthousandthenc, thousandthenc, hundredthenc, tenthenc, sec1enc, sec2enc, min1enc, min2enc, placeholder;
    wire  downenable0, downenable1, downenable2, downenable3, downenable4, downenable5, downenable6, downenable7;
    wire [7:0] tenthousandthdisp, thousandthdisp, hundredthdisp, tenthdisp, sec1disp, sec2disp, min1disp, min2disp;
    integer count = 0, countbtn = 0;
    
    assign placeholder = 4'b0000;
    
    assign top_num1 = 4'd9;
    assign top_num2 = 4'd5;
    
    clk_wiz_0 beginningoftime(clk5M, clk);
    rate10thousandth rate_at_tenthousandthofasec(clk5M, enable, reset, secattenthousandth, q0);//required clock definitions
    
    //FLAGS CODE BLOCK
    always @ (posedge clk5M) 
    begin
    if (mode_select) modeLED = 1;
    else modeLED = 0;
    if (pause)enable = 0;
    if (continue) enable = 1;
    end
    
    clk2Hz forReadyLED(clk5M, ~enable, JA, reset, ReadyLED);
    assign readyLED = ReadyLED;
    
    //STOPWATCH CODE BLOCK
    assign stop_rollover0 = (|min2)|(|min1)|(|sec2)|(|sec1)|(|tenth)|(|hundredth)|(|thousandth)|(|tenthousandth);
    assign stop_rollover1 = (|min2)|(|min1)|(|sec2)|(|sec1)|(|tenth)|(|hundredth)|(|thousandth);
    assign stop_rollover2 = (|min2)|(|min1)|(|sec2)|(|sec1)|(|tenth)|(|hundredth);
    assign stop_rollover3 = (|min2)|(|min1)|(|sec2)|(|sec1)|(|tenth);
    assign stop_rollover4 = (|min2)|(|min1)|(|sec2)|(|sec1);
    assign stop_rollover5 = (|min2)|(|min1)|(|sec2);
    assign stop_rollover6 = (|min2)|(|min1);
    assign stop_rollover7 = |min2;
    
    assign thresh_calc0 = enable & secattenthousandth;
    assign thresh_calc1 = enable & secattenthousandth & thresh1;
    assign thresh_calc2 = enable & secattenthousandth & thresh1 & thresh2;
    assign thresh_calc3 = enable & secattenthousandth & thresh1 & thresh2 & thresh3;
    assign thresh_calc4 = enable & secattenthousandth & thresh1 & thresh2 & thresh3 & thresh4;
    assign thresh_calc5 = enable & secattenthousandth & thresh1 & thresh2 & thresh3 & thresh4 & thresh5;
    assign thresh_calc6 = enable & secattenthousandth & thresh1 & thresh2 & thresh3 & thresh4 & thresh5 & thresh6;
    assign thresh_calc7 = enable & secattenthousandth & thresh1 & thresh2 & thresh3 & thresh4 & thresh5 & thresh6 & thresh7;
    
    up_down_count_4bit_behavioural  on1(tenthousandthenc, signal[7], enable, stop_rollover0, clk5M, mode_select, thresh_calc0, reset, top_num1, JA, thresh1, tenthousandth);
    up_down_count_4bit_behavioural  on2(thousandthenc, signal[6], enable, stop_rollover1, clk5M, mode_select, thresh_calc1, reset, top_num1, JA, thresh2, thousandth);
    up_down_count_4bit_behavioural  on3(hundredthenc, signal[5], enable, stop_rollover2, clk5M, mode_select, thresh_calc2, reset, top_num1, JA, thresh3, hundredth);
    up_down_count_4bit_behavioural  on4(tenthenc, signal[4], enable, stop_rollover3, clk5M, mode_select, thresh_calc3, reset, top_num1, JA, thresh4, tenth);
    up_down_count_4bit_behavioural  on5(sec1enc, signal[3], enable, stop_rollover4, clk5M, mode_select, thresh_calc4, reset, top_num1, JA, thresh5, sec1);
    up_down_count_4bit_behavioural  on6(sec2enc, signal[2], enable, stop_rollover5, clk5M, mode_select, thresh_calc5, reset, top_num2, JA, thresh6, sec2);
    up_down_count_4bit_behavioural  on7(min1enc, signal[1], enable, stop_rollover6, clk5M, mode_select, thresh_calc6, reset, top_num1, JA, thresh7, min1);
    up_down_count_4bit_behavioural  on8(min2enc, signal[0], enable, stop_rollover7, clk5M, mode_select, thresh_calc7, reset, top_num2, JA, thresh8, min2); 
    
    
    //PMOD ENCODER CODE BLOCK
    PmodENC_OG enc1(clk5M, JA, reset, tenthousandthenc);
    PmodENC_OG enc2(clk5M, JA, reset, thousandthenc);
    PmodENC_OG enc3(clk5M, JA, reset, hundredthenc);
    PmodENC_OG enc4(clk5M, JA, reset, tenthenc);
    PmodENC_OG enc5(clk5M, JA, reset, sec1enc);
    PmodENC_OG enc6(clk5M, JA, reset, sec2enc);
    PmodENC_OG enc7(clk5M, JA, reset, min1enc);
    PmodENC_OG enc8(clk5M, JA, reset, min2enc);
    
    //PMOD BUTTON TOGGLE CODE BLOCK
    clk2Hz forbutton(clk5M, ~enable, reset, placeholder, clk2HZ);
    
    always @ (posedge clk2HZ)
    begin
    
    if (enable == 0)
    if (JA[3])
    if (~reset)
    begin
        case(countbtn)
        0: signal <= 8'b00000000;
        1: signal <= 8'b10000000;
        2: signal <= 8'b01000000;
        3: signal <= 8'b00100000;
        4: signal <= 8'b00010000;
        5: signal <= 8'b00001000;
        6: signal <= 8'b00000100;
        7: signal <= 8'b00000010;
        8: signal <= 8'b00000001;       
        default: signal <= 8'b00000000;
        endcase
    end
    
    if (JA[2] == 1'b1)
    countbtn = countbtn+1;
    if(countbtn>8)countbtn=0;
    
    end
       
    
    //BCD 7 SEGMENT DISPLAY CONVERSION BLOCK
    refreshrate  f5(clk5M, refresh, q1);
    
    bcdto7segdisplay d1(tenthousandth,tenthousandthdisp);
    bcdto7segdisplay d2(thousandth,thousandthdisp);
    bcdto7segdisplay d3(hundredth,hundredthdisp);
    bcdto7segdisplay d4(tenth,tenthdisp);
    bcdto7segdisplay d5(sec1, sec1disp);
    bcdto7segdisplay d6(sec2, sec2disp);
    bcdto7segdisplay d7(min1, min1disp);
    bcdto7segdisplay d8(min2, min2disp);
        
        always @(posedge refresh)
            begin
                case(count)
                    0: 
                    begin 
                        an<=8'b11111110;
                        seg<=tenthousandthdisp;
                    end
                    1:
                    begin 
                        an<=8'b11111101;
                        seg<=thousandthdisp;
                    end
                    2:
                     begin 
                         an<=8'b11111011;
                         seg<=hundredthdisp;
                     end
                    3:
                     begin 
                         an<=8'b11110111;
                         seg<=tenthdisp;
                     end
                    4:
                      begin 
                          an<=8'b11101111;
                          seg<=sec1disp;
                      end
                    5:
                        begin 
                            an<=8'b11011111;
                            seg<=sec2disp;
                        end
                    6:
                          begin 
                              an<=8'b10111111;
                              seg<=min1disp;
                          end
                    7:
                            begin 
                                an<=8'b01111111;
                                seg<=min2disp;
                            end
                     
                   default:
                     begin 
                        an<=8'b11111110;
                        seg<=tenthousandthdisp;
                     end
                     
            endcase
            count = count+1;
            if(count>7)count=0;
            end   
        
    endmodule
