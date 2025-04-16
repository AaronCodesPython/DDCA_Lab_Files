module ALU(input [3:0] AluOp, [31:0] A, [31:0] B, output [31:0] res, output zero);
    // Logic
    wire [31:0] AandB, AorB, AxorB, AnorB;
    reg [31:0] logicOut;
    assign AandB = A & B;
    assign AorB  = A | B;
    assign AxorB = A ^ B;
    assign AnorB = ~(A | B);
    always @(*)
    begin
    case(AluOp[1:0])
    0 : logicOut = AandB;
    1 : logicOut = AorB;
    2 : logicOut = AxorB;
    3 : logicOut = AnorB;
    endcase
    end
    
    // Arithmetic
    wire [31:0] negB, selB, addOut, arithOut, cOut;
    assign negB = -B;
    assign selB = AluOp[1] ? negB : B;
    Adder32Bit adder(A, selB, addOut, cOut);
    
    wire [31:0] extBit;
    assign extBit = {31'b0, addOut[31]};
    assign arithOut = AluOp[3] ? extBit : addOut;
    assign res = AluOp[2] ? logicOut : arithOut;
    assign zero = &(~res);
endmodule