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
    input [31:0] eqa,     // Input A for the ALU
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
// 1111 - XOR

always @ (*) 
begin
    case(ealuc)
        4'b0000: // AND operation
            begin
                r = eqa & b;
            end
        
        4'b0001: // OR operation
            begin
                r = eqa | b;
            end
        
        4'b0010: // ADD operation
            begin
                r = eqa + b;
            end
        
        4'b0110: // SUBTRACT operation
            begin
                r = eqa - b;
            end           
        
        4'b1100: // NOR operation
            begin
                r = ~(eqa | b);
            end
            
        4'b1111: // XOR operation
            begin
                r = eqa ^ b;
            end
    endcase
end


endmodule // End of the module

