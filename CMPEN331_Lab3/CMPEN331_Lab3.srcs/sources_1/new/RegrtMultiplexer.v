`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 12:14:07 PM
// Design Name: 
// Module Name: RegrtMultiplexer
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


module RegrtMultiplexer( //multiplexer module for the cpu.
    //inputs
    input [4:0] rt,
    input [4:0] rd,
    input regrt,
    //outputs
    output reg [4:0] destReg
    );

    always @(*)
    begin
        if (regrt == 0)
            destReg = rd;
        else
            destReg = rt;
    end 
endmodule
