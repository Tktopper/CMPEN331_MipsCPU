`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 12:28:39 PM
// Design Name: 
// Module Name: ImmediateExtender
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


module ImmediateExtender( //immediate extender module.
    input [15:0] imm,
    input sext,
    output reg [31:0] dimm32
    );
    
    always @ (*) //always block to update the value of imm32.
        begin
            if (sext == 1)
            dimm32 = {{16{imm[15]}}, imm}; //sets imm32 to be equal to imm. the last bit is concatinated to the other 16 bits based on if the sign bit is a zero or one.
            else
            dimm32 <= {16'b0, imm};
        end
endmodule

