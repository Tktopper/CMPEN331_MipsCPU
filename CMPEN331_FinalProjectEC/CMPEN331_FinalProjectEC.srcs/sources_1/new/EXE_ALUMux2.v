`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 09:49:56 AM
// Design Name: 
// Module Name: EXE_ALUMux2
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


module EXE_ALUMux2(
    input [31:0] sa,
    input [31:0] ea,
    input eshift,
    output reg [31:0] a
    );
    
    always @ (*)
        begin
            case(eshift)
               2'b0: a = ea;
               2'b1: a = sa;
            endcase
        end
endmodule
