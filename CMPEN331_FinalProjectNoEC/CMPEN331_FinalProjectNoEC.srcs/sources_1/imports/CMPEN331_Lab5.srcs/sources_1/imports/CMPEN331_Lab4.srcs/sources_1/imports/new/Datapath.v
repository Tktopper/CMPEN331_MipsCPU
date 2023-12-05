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
    // Lab 3 - IDEXEpipeline
    input clk,               // Clock signal
    output wire [31:0] pc,   // Program Counter
    output wire [31:0] dinstOut, // Data from the Instruction Memory
    output wire ewreg,        // Control signal for write enable in the EX stage
    output wire em2reg,       // Control signal for write enable in the Memory stage
    output wire ewmem,        // Control signal for write enable in the MEM stage
    output wire [3:0] ealuc,  // ALU control signal in the EX stage
    output wire ealuimm,      // ALU immediate in the EX stage
    output wire [4:0] edestReg, // Destination register address in the EX stage
    output wire [31:0] eqa,   // Data from source register A in the EX stage
    output wire [31:0] eqb,   // Data from source register B in the EX stage
    output wire [31:0] eimm32, // 32-bit immediate in the EX stage
   
   // Lab 4 - EXEMEM
    output wire mwreg,        // Control signal for write enable in the MEM stage
    output wire mm2reg,       // Control signal for write enable in the M2 stage (MEM-WB)
    output wire mwmem,        // Control signal for memory write enable in the MEM stage
    output wire [4:0] mdestReg, // Destination register address in the MEM stage
    output wire [31:0] mr,    // Data read from memory in the MEM stage
    output wire [31:0] mqb,   // Data from source register B in the MEM stage
    
    // Lab 4 - MEMWB
    output wire wwreg,        // Control signal for write enable in the WB stage
    output wire wm2reg,       // Control signal for write enable in the M2 stage (WB)
    output wire [4:0] wdestReg, // Destination register address in the WB stage
    output wire [31:0] wr,    // Result to be written to the register file in the WB stage
    output wire [31:0] wdo   // Data read from memory or ALU result to be written to the register file
    
);
    // Lab 3 wires
    wire wreg;               // Control signal for write enable
    wire m2reg;              // Control signal for write enable (Memory stage)
    wire wmem;               // Control signal for memory write enable
    wire aluimm;             // ALU immediate value
    wire regrt;              // Control signal for selecting a register
    wire [4:0] destReg;      // Destination register address
    wire [31:0] qa;          // Data from source register A
    wire [31:0] qb;          // Data from source register B
    wire [31:0] imm32;      // 32-bit immediate value
    wire [31:0] nextPc;     // Next program counter value
    wire [31:0] instOut;    // Data from the Instruction Memory
    wire [3:0] aluc;        // ALU control signal
    wire [15:0] imm;        // Immediate value
    wire [4:0] rs;          // Source register address
    wire [4:0] rt;          // Source register address
    wire [4:0] rd;          // Destination register address
    wire [5:0] op;          // Operation code
    wire [5:0] func;        // Function code
    
    // Lab 4 wires
    wire [31:0] b;          // Data input to the ALU
    wire [31:0] r;          // Result from the ALU
    wire [31:0] mdo;       // Data read from memory or result from ALU
    
    //Lab 5 wires
    wire [31:0]wbData;
    
    
    //final project wires
    wire wpcir;
    wire [1:0] fwda;
    wire [1:0] fwdb;
    wire [31:0] fwdAout;
    wire [31:0] fwdBout;
    
    // Instantiate various components and connect them
    ProgramCounter IF_ProgramCounter_dp(.clk(clk), .nextPc(nextPc), .wpcir(wpcir), .pc(pc));
    pcAdder IF_pcAdder_dp(.pc(pc), .nextPc(nextPc));
    InstructionMemory IF_InstructionMemory_dp(.pc(pc), .instOut(instOut));
    IFIDpipelineReg IFIDpipelineReg_dp(.clk(clk), .instOut(instOut), .wpcir(wpcir), .dinstOut(dinstOut));
    ControlUnit ID_controlUnit_dp(
    .op(op),
    .func(func),
    .rs(rs),
    .rt(rt),
    .mdestReg(mdestReg),
    .mm2reg(mm2reg),
    .mwreg(mwreg),
    .edestReg(edestReg),
    .em2reg(em2reg),
    .ewreg(ewreg),
    .wreg(wreg), 
    .m2reg(m2reg), 
    .wmem(wmem), 
    .aluc(aluc), 
    .aluimm(aluimm), 
    .regrt(regrt),
    .fwda(fwda),
    .fwdb(fwdb),
    .wpcir(wpcir)
    );
    
    RegrtMultiplexer ID_RegrtMultiplexer_dp(.rt(rt), .rd(rd), .regrt(regrt), .destReg(destReg));
    RegisterFile ID_RegisterFile_dp(.rs(rs), .rt(rt), .wdestReg(wdestReg), .wbData(wbData), .wwreg(wwreg), .clk(clk), .qa(qa), .qb(qb));
    ImmediateExtender ID_ImmediateExtender_dp(.imm(imm), .imm32(imm32));
    IDEXEpipeline IDEXEpipeline_dp(
        .wreg(wreg), 
        .m2reg(m2reg), 
        .wmem(wmem), 
        .aluc(aluc), 
        .aluimm(aluimm), 
        .destReg(destReg), 
        .fwdAout(fwdAout), 
        .fwdBout(fwdBout), 
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
    
    ALU EXE_ALU_dp(.eqa(eqa), .b(b), .ealuc(ealuc), .r(r));
    ALUMux EXE_ALUMux_dp(.eqb(eqb), .eimm32(eimm32), .ealuimm(ealuimm), .b(b));
    EXEMEMpipeline EXEMempipeline_dp(
        .ewreg(ewreg),
        .em2reg(em2reg),
        .ewmem(ewmem),
        .edestReg(edestReg),
        .r(r), 
        .eqb(eqb),
        .clk(clk),
        .mwreg(mwreg),
        .mm2reg(mm2reg),
        .mwmem(mwmem),
        .mdestReg(mdestReg),
        .mr(mr),
        .mqb(mqb)
    );
    DataMemory MEM_DataMemory_dp(.mr(mr), .mqb(mqb), .mwmem(mwmem), .clk(clk), .mdo(mdo));
       
    MEMWBpipeline MEMWBpipeline_dp(
        .mwreg(mwreg),
        .mm2reg(mm2reg),
        .mdestReg(mdestReg),
        .mr(mr),
        .mdo(mdo),
        .clk(clk),
        .wwreg(wwreg),
        .wm2reg(wm2reg),
        .wdestReg(wdestReg),
        .wr(wr),
        .wdo(wdo)
    );
    
    WbMux WB_WbMux_dp(.wr(wr), .wdo(wdo), .wm2reg(wm2reg), .wbData(wbData));
    
    Fwd_FwdMuxA Fwd_FwdMuxA_dp(.fwda(fwda), .qa(qa), .r(r), .mr(mr), .mdo(mdo), .fwdAout(fwdAout));
    Fwd_FwdMuxB Fwd_FwdMuxB_dp(.fwdb(fwdb), .qb(qb), .r(r), .mr(mr), .mdo(mdo), .fwdBout(fwdBout));

    
    // Assign some control signals and data values
    assign op = dinstOut[31:26];
    assign func = dinstOut[5:0];
    assign rs = dinstOut[25:21];
    assign rt = dinstOut[20:16];
    assign rd = dinstOut[15:11];
    assign imm = dinstOut[15:0];
endmodule
