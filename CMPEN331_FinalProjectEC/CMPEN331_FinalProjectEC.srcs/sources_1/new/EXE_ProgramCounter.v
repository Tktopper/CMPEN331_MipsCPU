`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 09:49:56 AM
// Design Name: 
// Module Name: EXE_ProgramCounter
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


module EXE_ProgramCounter(
    input [31:0] epc4,
    output reg [31:0] epc8
    );
    
    always @ (*)
        begin
            epc8 <= epc4 + 32'b00000000000000000000000000000100;
        end
endmodule
