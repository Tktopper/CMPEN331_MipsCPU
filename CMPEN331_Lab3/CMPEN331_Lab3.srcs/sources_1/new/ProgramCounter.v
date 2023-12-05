`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 09:47:44 AM
// Design Name: 
// Module Name: ProgramCounter
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



module ProgramCounter( //module for the program counter (PC pipeline) module of the cpu.
    input clk, //clk input necessary as pc only updates on the positive edge of the clock.
    input [31:0] nextPc, //input from the pc adder looped back to update next pc. 
    output reg [31:0] pc //output of the pc module.
);

initial //initial block used to initalize the value of pc so it starts at a 100 in decimal. 
    begin
        pc = 32'd100; //setting pc equal to a 100 in decimal.
    end

always @(posedge clk) //update pc to be nextPc only on the positive edge of the clock.
    begin
        pc = nextPc; 
    end

endmodule //end of module
