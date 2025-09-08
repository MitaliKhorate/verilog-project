module alu (
    input [3:0] A,      // 4-bit input A
    input [3:0] B,      // 4-bit input B
    input [1:0] Sel,    // Operation select
    output reg [3:0] Result,
    output reg Carry
);

always @(*) begin
    case (Sel)
        2'b00: {Carry, Result} = A + B;    // ADD
        2'b01: {Carry, Result} = A - B;    // SUB
        2'b10: Result = A & B;             // AND
        2'b11: Result = A | B;             // OR
        default: {Carry, Result} = 5'b0;
    endcase
end

endmodule
