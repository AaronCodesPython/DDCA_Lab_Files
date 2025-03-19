`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 05:48:20 PM
// Design Name: 
// Module Name: Lighter
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


module Lighter(input [3:0] A, [3:0] B, [1:0] Select, output [7:0] D, output [3:0] AN);
    wire [4:0] S;
    FourBitAdder(A,B,S);
    SegmentDecoder(S[4], S[3:0], D[6:0], D[7]);
    DisplayDecoder(Select, AN);
endmodule
