`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 09:49:56 AM
// Design Name: 
// Module Name: ID_immLS
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


module ID_immLS(
    input [15:0] imm,
    output reg [31:0] immOut
    );
    always @ (*)
        begin
            immOut = {16'b0, imm} << 2;
        end
endmodule
