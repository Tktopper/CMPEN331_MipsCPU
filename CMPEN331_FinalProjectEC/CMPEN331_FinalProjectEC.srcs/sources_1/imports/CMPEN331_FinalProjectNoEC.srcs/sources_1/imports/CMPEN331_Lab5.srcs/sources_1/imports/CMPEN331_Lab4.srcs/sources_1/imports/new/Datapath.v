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
input clrn,
output wire [31:0] pc,
output wire [31:0] dinstOut,
output wire [31:0] ealu,
output wire [31:0] malu,
output wire [31:0] wbData

);
//wire [31:0] nextPc, pc4, bpc, da, njpc, dpc4, dinstOut, qa, qb, 
//    jpc, mdo, db, dimm32, immOut, eimm32, sa, mwreg, wreg, m2reg, 
//    jal, alu, r, mb, walu, wdo, ea, eb, epc4, epc8, a, b;
//wire [25:0] addr;
//wire [15:0] imm;
//wire [5:0] op, func;
//wire [4:0] rs, rt, rd, wrn, ern, mrn, drn, ern0;
//wire [3:0] aluc, ealuc;
//wire [1:0] pcsrc, fwda, fwdb;
//wire wwreg, sext, regrt, mm2reg, em2reg, 
//    ewreg, aluimm, shift, rsrtequ,
//    ewmem, ejal, ealuimm, eshift, wm2reg, mwmem, wmem;
    wire [31:0] nextPc;
    wire [31:0] pc4;
    wire [31:0] bpc;
    wire [31:0] da;
    wire [31:0] njpc;
    wire [1:0] pcsrc;
    wire wpcir;
    wire [31:0] dpc4;
    wire [31:0] instOut;
    wire [5:0] op;
    wire [5:0] func;
    wire [4:0] rs;
    wire [4:0] rt;
    wire [4:0] rd;
    wire [15:0] imm;
    wire [25:0] addr;
    wire [31:0] qa;
    wire [31:0] qb;
    wire [31:0] immOut;
    wire [25:0] jpc;
    wire wwreg;
    wire [4:0] wrn;
    wire [31:0] mdo;
    wire [31:0] db;
    wire sext;
    wire [31:0] dimm32;
    wire [31:0] eimm32;
    wire regrt;
    wire [4:0] drn;
    wire [4:0] mrn;
    wire mm2reg;
    wire mwreg;
    wire [4:0] ern;
    wire em2reg;
    wire ewreg;
    wire wreg;
    wire m2reg;
    wire wmem;
    wire jal;
    wire [3:0] aluc;
    wire aluimm;
    wire shift;
    wire rsrtequ;
    wire [1:0] fwda;
    wire [1:0] fwdb;
    wire ewmem;
    wire ejal;
    wire [3:0] ealuc;
    wire ealuimm;
    wire eshift;
    wire [31:0] sa;
    wire [31:0] ea;
    wire [31:0] eb;
    wire [31:0] epc4;
    wire [31:0] epc8;
    wire [31:0] a;
    wire [31:0] b;
    wire [31:0] r;
    wire [4:0] ern0;
    wire mwmem;
    wire [31:0] mb;
    wire wm2reg;
    wire [31:0] walu;
    wire [31:0] wdo;

    ProgramCounter IF_ProgramCounter(.pc(pc), .clk(clk), .nextPc(nextPc), .wpcir(wpcir));
    pcAdder IF_PCAdder(.pc(pc), .pc4(pc4));
    IF_ProgramCounterMux IF_PCMux(.pc4(pc4), .bpc(bpc), .da(da), .njpc(njpc), .pcsrc(pcsrc), .nextPc(nextPc));
    InstructionMemory IF_InstructionMemory(.pc(pc), .instOut(instOut));
    IFIDpipelineReg IFIDpipeline(.wpcir(wpcir), .pc4(pc4), .instOut(instOut), .clk(clk), .dinstOut(dinstOut), .dpc4(dpc4));
    ID_addrLS ID_addrLS(.addr(addr), .jpc(jpc));
    ID_immLS ID_immLS(.imm(imm), .immOut(immOut));
    ID_BranchProgramCounter ID_BPC(.dpc4(dpc4), .immOut(immOut), .bpc(bpc));
    RegisterFile ID_RegFile(.rs(rs), .rt(rt), .wwreg(wwreg), .clrn(clrn), .clk(clk), .wbData(wbData), .wrn(wrn), .qa(qa), .qb(qb));
    Fwd_FwdMuxA ID_FwdMuxA(.qa(qa), .malu(malu), .ealu(ealu), .mdo(mdo), .fwda(fwda), .da(da));
    Fwd_FwdMuxB ID_FwdMuxB(.qb(qb), .malu(malu), .ealu(ealu), .mdo(mdo), .fwdb(fwdb), .db(db));
    ImmediateExtender ID_IE(.imm(imm), .dimm32(dimm32), .sext(sext));
    RegrtMultiplexer ID_RegrtMux(.rd(rd), .rt(rt), .regrt(regrt), .drn(drn));
    ID_rsrtequCheck ID_rsrtequCheck(.da(da), .db(db), .rsrtequ(rsrtequ));
    ID_JumpPCconcatination ID_JPCconcat(.jpc(jpc), .dpc4(dpc4), .njpc(njpc));
    ControlUnit ID_ControlUnit(.op(op), .rs(rs), .rt(rt), .func(func), .pcsrc(pcsrc), .wpcir(wpcir),
    .mrn(mrn), .mm2reg(mm2reg), .mwreg(mwreg), .ern(ern), .em2reg(em2reg), .ewreg(ewreg), .wreg(wreg),
    .m2reg(m2reg), .wmem(wmem), .jal(jal), .aluc(aluc), .aluimm(aluimm), .shift(shift),  .regrt(regrt), 
    .rsrtequ(rsrtequ), .sext(sext), .fwda(fwda), .fwdb(fwdb));
    IDEXEpipeline IDEXEpipeline(.wreg(wreg), .m2reg(m2reg), .wmem(wmem), .jal(jal), .aluc(aluc), .aluimm(aluimm), 
    .shift(shift), .dpc4(dpc4), .da(da), .db(db), .dimm32(dimm32), .drn(drn), .clk(clk), .ern0(ern0), .eimm32(eimm32),
    .eb(eb), .ea(ea), .epc4(epc4), .eshift(eshift), .ealuimm(ealuimm), .ealuc(ealuc), .ejal(ejal), .ewmem(ewmem),
    .em2reg(em2reg), .ewreg(ewreg));
    EXE_ProgramCounter EXE_ProgramCounter(.epc4(epc4), .epc8(epc8));
    EXE_ALUMux2 EXE_ALUMuxA(.sa(sa), .ea(ea), .eshift(eshift), .a(a));
    ALUMux EXE_ALUMuxB(.eimm32(eimm32), .eb(eb), .ealuimm(ealuimm), .b(b));
    ALU EXE_ALU(.a(a), .b(b), .r(r), .ealuc(ealuc));
    EXE_ALUoutMux EXE_ealuMux(.epc8(epc8), .r(r), .ejal(ejal), .ealu(ealu));
    EXE_f EXE_f(.ern0(ern0), .ern(ern), .ejal(ejal));
    EXEMEMpipeline EXEMEMpipeline(.ewreg(ewreg), .em2reg(em2reg), .ewmem(ewmem), .ealu(ealu), .eb(eb), .ern(ern),
    .clk(clk), .mrn(mrn), .mb(mb), .malu(malu), .mwmem(mwmem), .mm2reg(mm2reg), .mwreg(mwreg));
    DataMemory MEM_DataMemory(.malu(malu), .mb(mb), .mwmem(mwmem), .mdo(mdo), .clk(clk));
    MEMWBpipeline MEMWBpipeline(.mwreg(mwreg), .mm2reg(mm2reg), .mdo(mdo), .malu(malu), .mrn(mrn), .clk(clk), 
    .wrn(wrn), .walu(walu), .wdo(wdo), .wm2reg(wm2reg), .wwreg(wwreg));
    WbMux WB_wbMux(.wdo(wdo), .walu(walu), .wbData(wbData), .wm2reg(wm2reg));
    
    
    // Assign some control signals and data values
    assign op = dinstOut[31:26];
    assign func = dinstOut[5:0];
    assign rs = dinstOut[25:21];
    assign rt = dinstOut[20:16];
    assign rd = dinstOut[15:11];
    assign imm = dinstOut[15:0];
    assign sa = {21'b0,eimm32[10:6],6'b0};
    assign addr = dinstOut[25:0];
    
endmodule
