`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 09:49:56 AM
// Design Name: 
// Module Name: EXE_ALUoutMux
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


module EXE_ALUoutMux(
    input [31:0] epc8,
    input [31:0] r,
    input ejal,
    output reg [31:0] ealu
    );
    
    always @ (*)
        begin
            case(ejal)
                1'b0: ealu = r;
                1'b1: ealu = epc8;
            endcase  
        end
endmodule
