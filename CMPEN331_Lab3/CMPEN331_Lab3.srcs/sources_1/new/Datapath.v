`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 01:55:40 PM
// Design Name: 
// Module Name: Datapath
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


module Datapath(
    input clk,
    output wire [31:0] pc,
    output wire [31:0] dinstOut,
    output wire ewreg,
    output wire em2reg,
    output wire ewmem,
    output wire [3:0] ealuc,
    output wire ealuimm,
    output wire [4:0] edestReg,
    output wire [31:0] eqa,
    output wire [31:0] eqb,
    output wire [31:0] eimm32
);
    wire wreg;
    wire m2reg;
    wire wmem;
    wire aluimm;
    wire regrt;
    wire [4:0] destReg;
    wire[31:0] qa;
    wire[31:0] qb;
    wire[31:0] imm32;
    wire [31:0] nextPc;
    wire [31:0] instOut;
    wire [3:0] aluc;
    wire [15:0] imm;
    wire [4:0] rs;
    wire [4:0] rt;
    wire [4:0] rd;
    wire [5:0] op;
    wire [5:0] func;
    
   
    ProgramCounter ProgramCounter_db(.clk(clk), .nextPc(nextPc), .pc(pc));
    pcAdder pcAdder_db(.pc(pc), .nextPc(nextPc));
    InstructionMemory InstructionMemory_db(.pc(pc), .instOut(instOut));
    IFIDpipelineReg IFIDpipelineReg_db(.clk(clk), .instOut(instOut), .dinstOut(dinstOut));
    ControlUnit controlUnit_db(.op(op), .func(func), .wreg(wreg), .m2reg(m2reg), .wmem(wmem), .aluc(aluc), .aluimm(aluimm), .regrt(regrt));
    RegrtMultiplexer RegrtMultiplexer_db(.rt(rt), .rd(rd), .regrt(regrt), .destReg(destReg));
    RegisterFile RegisterFile_db(.rs(rs), .rt(rt), .qa(qa), .qb(qb));
    ImmediateExtender ImmediateExtender_db(.imm(imm), .imm32(imm32));
    IDEXEpipeline IDEXEpipeline_db(
        .wreg(wreg), 
        .m2reg(m2reg), 
        .wmem(wmem), 
        .aluc(aluc), 
        .aluimm(aluimm), 
        .destReg(destReg), 
        .qa(qa), 
        .qb(qb), 
        .imm32(imm32), 
        .clk(clk), 
        .ewreg(ewreg), 
        .em2reg(em2reg), 
        .ewmem(ewmem), 
        .ealuc(ealuc), 
        .ealuimm(ealuimm), 
        .edestReg(edestReg), 
        .eqa(eqa), 
        .eqb(eqb), 
        .eimm32(eimm32)
    );

    assign op = dinstOut[31:26];
    assign func = dinstOut[5:0];
    assign rs = dinstOut[25:21];
    assign rt = dinstOut[20:16];
    assign rd = dinstOut[15:11];
    assign imm = dinstOut[15:0];


endmodule