`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 12:47:31 PM
// Design Name: 
// Module Name: IDEXEpipeline
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


module IDEXEpipeline( //idexe pipeline 
    //inputs
    input wreg,
    input m2reg,
    input wmem,
    input [3:0] aluc,
    input aluimm,
    input [4:0] destReg,
    input [31:0] qa,
    input [31:0] qb,
    input [31:0] imm32,
    input clk,
    //outputs
    output reg ewreg,
    output reg em2reg,
    output reg ewmem,
    output reg [3:0] ealuc,
    output reg ealuimm,
    output reg [4:0] edestReg,
    output reg [31:0] eqa,
    output reg [31:0] eqb,
    output reg [31:0] eimm32
    );
    
    //only the postive edge of the clock these values will be updated based on the clocks signal.
    always @ (posedge clk)
        begin
            ewreg = wreg;
            em2reg = m2reg;
            ewmem = wmem;
            ealuc = aluc;
            ealuimm = aluimm;
            edestReg = destReg;
            eqa = qa;
            eqb = qb;
            eimm32 = imm32;
        end
endmodule
