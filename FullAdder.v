`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 04:48:20 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(input a, input b, input ci, output s, output co);
    wire w1, w2,w3,ciNOT, w4, w5 ,w6,w7;
    not(ciNOT,ci);
    xor(w1, a, b);
    xnor(w2,a,b);
    and(w3,w1,ciNOT);
    and(w4,ci,w2);
    or(s,w4,w3);
    
    or(w5,b, ci);
    and(w6,w5,a);
    and(w7,b,ci);
    or(co,w6,w7);
endmodule

