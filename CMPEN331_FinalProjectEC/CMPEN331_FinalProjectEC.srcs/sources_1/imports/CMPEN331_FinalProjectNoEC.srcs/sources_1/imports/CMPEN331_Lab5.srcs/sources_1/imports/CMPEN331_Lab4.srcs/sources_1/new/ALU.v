`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 12:26:08 AM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] a,     // Input A for the ALU
    input [31:0] b,       // Input B for the ALU
    input [3:0] ealuc,    // ALU control signal
    output reg [31:0] r   // Output of the ALU
);

// ALU operation codes
// 0000 - AND
// 0001 - OR
// 0010 - ADD
// 0110 - SUBTRACT
// 0111 - SET LESS THAN
// 1100 - NOR
// 0011 - XOR

always @ (*) 
begin
    case(ealuc)
        4'b0000: r = a & b; // AND operation
        4'b0001: r = a | b; // OR operation
        4'b0010: r = a + b; // ADD operation
        4'b0110: r = a - b; // SUBTRACT operation
        4'b1100: r = ~(a | b); // NOR operation
        4'b0011: r = a ^ b; // XOR operation
        4'b0111: r = b << a;//sll
        4'b1110: r = b >> a; //srl
        4'b1001: r = $signed(b) >>> a; //sra
        4'b0100: r = b << 16; //lui
    endcase
end
endmodule // End of the module

