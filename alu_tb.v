`timescale 1ns/1ps
module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [1:0] Sel;
wire [3:0] Result;
wire Carry;

// Instantiate ALU
alu uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Result(Result),
    .Carry(Carry)
);

initial begin

    $dumpfile("dump.vcd");  // Name of waveform file
    $dumpvars(0, alu_tb);   // Dump all signals from this module

    // Initialize inputs
    A = 4'b0000; B = 4'b0000; Sel = 2'b00;
    
    // Test ADD
    #10 A = 4'b0011; B = 4'b0101; Sel = 2'b00;
    #1 A = 4'b1111; B = 4'b0001; Sel = 2'b00;
    
    // Test SUB
    #10 A = 4'b0110; B = 4'b0011; Sel = 2'b01;
    #10 A = 4'b0010; B = 4'b0100; Sel = 2'b01;
    
    // Test AND
    #10 A = 4'b1010; B = 4'b1100; Sel = 2'b10;
    
    // Test OR
    #10 A = 4'b1010; B = 4'b1100; Sel = 2'b11;
    
    #10 $finish;
end

endmodule
