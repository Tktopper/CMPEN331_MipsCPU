`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 09:49:56 AM
// Design Name: 
// Module Name: IF_ProgramCounterMux
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


module IF_ProgramCounterMux(
    input [1:0] pcsrc,
    input [31:0] pc4,
    input [31:0] bpc,
    input [31:0] njpc,
    input [31:0] da,
    output reg [31:0] nextPc
    );
    
    always @ (*)
        begin
            case(pcsrc)
                2'b00: nextPc = pc4;
                2'b01: nextPc = bpc;
                2'b10: nextPc = da;
                2'b11: nextPc = njpc; 
            endcase
         end
endmodule
