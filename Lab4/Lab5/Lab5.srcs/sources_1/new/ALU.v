module ALU(input [3:0] AluOp, [31:0] A, [31:0] B, output [31:0] res, zero);
// Logic
wire [31:0] AandB, AorB, AxorB, AnorB;
reg [31:0] logicOut;
and(A, B, AandB);
or(A, B, AorB);
xor(A, B, AxorB);
nor(A, B, AnorB);
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
wire [31:0] negB, selB, addOut, arithOut;
assign negB = -B;
assign selB = AluOp[1] ? negB : B;
assign addOut = A + selB;
wire [31:0] extBit;
assign extBit = {addOut[31], 31'b0};
assign arithOut = AluOp[3] ? extBit : addOut;
assign res = AluOp[2] ? logicOut : arithOut;
assign zero = &(~res);
endmodule