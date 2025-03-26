`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 10:23:03 PM
// Design Name: 
// Module Name: dimmer_fsm
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


module dimmer_fsm(input clk, rst, right, left, output reg[5:0] lights);
    //state register
    wire dividedClock, dimmed50, dimmed25;
    clk_div clock(clk, rst, dividedClock);
    clk_dimmer #(2'b00) clk50(clk, dimmed50);
    clk_dimmer #(2'b01) clk25(clk, dimmed25);
    
    reg [3:0] state, nextstate;
    always @(posedge dividedClock, posedge rst)
    begin
        if(rst) state <= 4'b0000; 
        else state <= nextstate;
       
    end
    
      //next state logic
    always @(state)
    begin
        case(state)
        0: if(right) nextstate = 4'b0110;
        else if(left) nextstate = 4'b0001;
        else nextstate = 4'b0000;
        1: nextstate = 4'b0010;
        2: nextstate = 4'b0011;
        3: nextstate = 4'b0100;
        4: nextstate = 4'b0101;
        5: nextstate = 4'b0000;
        6: nextstate = 4'b0111;
        7: nextstate = 4'b1000;
        8: nextstate = 4'b1001;
        9: nextstate = 4'b1010;
        10: nextstate = 4'b0000;
        default: nextstate = 4'b0000;
        endcase
    end
    
    // output logic
    always @(*)
    begin
    //lights[5:0] = 6'b000000;
    case(state)
    0: lights = 6'b000000;
    1: begin
       lights[3] = dimmed25;
       end
    2: begin
       lights[3] = dimmed50;
       lights[4] = dimmed25;
       end
    3: begin
       lights[3] = 1;
       lights[4] = dimmed50;
       lights[5] = dimmed25;
       end
    4: begin
       lights[3] = 1;
       lights[4] = 1;
       lights[5] = dimmed50;
       end
    5: begin
       lights[3] = 1;
       lights[4] = 1;
       lights[5] = 1;
       end
    6: begin
       lights[2] = dimmed25;
       end
    7: begin
       lights[1] = dimmed25;
       lights[2] = dimmed50;
       end
    8: begin
       lights[0] = dimmed25;
       lights[1] = dimmed50;
       lights[2] = 1;
       end
    9: begin
       lights[0] = dimmed50;
       lights[1] = 1;
       lights[2] = 1;
       end
    10: begin
       lights[0] = 1;
       lights[1] = 1;
       lights[2] = 1;
       end
    default: lights = 6'b000000;
    endcase
    end
endmodule
