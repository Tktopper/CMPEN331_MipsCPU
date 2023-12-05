`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 09:49:56 AM
// Design Name: 
// Module Name: ID_BranchProgramCounter
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


module ID_BranchProgramCounter(
    input [31:0] dpc4,
    input [31:0] immOut,
    output reg [31:0] bpc
    );
    
    always @ (*)
        begin
            bpc <= dpc4 + immOut;
        end
        
endmodule
