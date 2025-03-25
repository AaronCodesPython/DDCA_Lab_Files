`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 04:43:31 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
    input clk,
    rst,
    right,
    left,
    output  reg [5:0] lights
    );
    
    
  
    //state register
    wire dividedClock;
    clk_div clock(clk, rst, dividedClock);
    
    reg [2:0] state, nextstate;
    always @(posedge dividedClock, posedge rst)
    begin
        if(rst) state <= 3'b000; 
        else state <= nextstate;
       
    end
    
      //next state logic
    always @(*)
    begin
        case(state)
        0: if(left) nextstate = 3'b100;
        else if(right) nextstate = 3'b001;
        else nextstate = 3'b000;
        1: nextstate = 3'b010;
        2: nextstate = 3'b011;
        3: nextstate = 3'b000;
        4: nextstate = 3'b101;
        5: nextstate = 3'b110;
        6: nextstate = 3'b000;
        default: nextstate = 3'b000;
    
        endcase
    end
    
    // output logic
    always @(*)
   
    case(state)
    0: lights = 6'b000000;
    1: lights = 6'b000100;
    2: lights = 6'b000110;
    3: lights = 6'b000111;
    4: lights = 6'b001000;
    5: lights = 6'b011000;
    6: lights = 6'b111000;
    default: lights = 6'b001000;
    endcase
    
    
endmodule
