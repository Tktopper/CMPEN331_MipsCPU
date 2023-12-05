`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 10:28:59 AM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory( //instruction memory module within the cpu.
    input [31:0] pc, //input of the instruction memory module.
    output reg [31:0] instOut //instruction output of the memory module
    );
       reg [31:0] memory [0:63]; //32x64 array used to store instructions to memory.
       
       initial begin
        //assign the instruction values in memory here (words 25 and 26)
        //lw $v0, 00($at)
        memory[25] = {6'b100011, 5'b00001, 5'b00010, 5'b00000, 5'b00000, 6'b000000};
        //lw $v1, 04($at)
        memory[26] = {6'b100011, 5'b00001, 5'b00011, 5'b00000, 5'b00000, 6'b000100};
        //lw $a0, 08($at)
        memory[27] = {6'b100011, 5'b00001, 5'b00100, 5'b00000, 5'b00000, 6'b001000};
        //lw $a1, 12($at)
        memory[28] = {6'b100011, 5'b00001, 5'b00101, 5'b00000, 5'b00000, 6'b001100};
       end
    
    always @ (*) //always block to update instruction out setting to the memory array of pc bits 7 to 2. 
        begin
            instOut <= memory[pc[7:2]];
        end
endmodule //end of module


