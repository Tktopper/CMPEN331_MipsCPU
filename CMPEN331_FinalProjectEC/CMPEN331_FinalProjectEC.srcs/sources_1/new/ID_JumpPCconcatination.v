`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 06:30:20 PM
// Design Name: 
// Module Name: ID_JumpPCconcatination
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


module ID_JumpPCconcatination(
    input [25:0] jpc,
    input [31:0] dpc4,
    output reg [31:0] njpc
    );
    
    always @ (*)
        begin
            njpc <= {{dpc4[31:26]}, jpc};
        end
endmodule
