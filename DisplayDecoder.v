`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 05:23:18 PM
// Design Name: 
// Module Name: SegmentDecoder
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


module DisplayDecoder(input[1:0] disp, output reg [3:0] controls);
    always @ (*)
    begin
        case(disp)
        0 : controls = 4'b0111;
        1 : controls = 4'b1011;
        2 : controls = 4'b1101;
        3 : controls = 4'b1110;
        endcase
   end
   
endmodule
