// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Oct 14 14:23:56 2023
// Host        : TANNERKLEINTOP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/tannerkleintop/Desktop/CMPEN
//               311/CMPEN331_Lab3/CMPEN331_Lab3.sim/sim_1/synth/func/xsim/TestBench_func_synth.v}
// Design      : Datapath
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Datapath
   (clk,
    pc,
    dinstOut,
    ewreg,
    em2reg,
    ewmem,
    ealuc,
    ealuimm,
    edestReg,
    eqa,
    eqb,
    eimm32);
  input clk;
  output [31:0]pc;
  output [31:0]dinstOut;
  output ewreg;
  output em2reg;
  output ewmem;
  output [3:0]ealuc;
  output ealuimm;
  output [4:0]edestReg;
  output [31:0]eqa;
  output [31:0]eqb;
  output [31:0]eimm32;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]dinstOut;
  wire [2:2]dinstOut_OBUF;
  wire [3:0]ealuc;
  wire ealuimm;
  wire [4:0]edestReg;
  wire [31:0]eimm32;
  wire [2:2]eimm32_OBUF;
  wire em2reg;
  wire [31:0]eqa;
  wire [31:0]eqb;
  wire ewmem;
  wire ewreg;
  wire [31:0]pc;
  wire [31:2]pc_OBUF;

  IDEXEpipeline IDEXEpipeline_db
       (.clk(clk_IBUF_BUFG),
        .dinstOut(dinstOut_OBUF),
        .eimm32_OBUF(eimm32_OBUF));
  IFIDpipelineReg IFIDpipelineReg_db
       (.clk(clk_IBUF_BUFG),
        .dinstOut(dinstOut_OBUF),
        .pc(pc_OBUF[3]));
  ProgramCounter ProgramCounter_db
       (.clk(clk_IBUF_BUFG),
        .out(pc_OBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \dinstOut_OBUF[0]_inst 
       (.I(1'b0),
        .O(dinstOut[0]));
  OBUF \dinstOut_OBUF[10]_inst 
       (.I(1'b0),
        .O(dinstOut[10]));
  OBUF \dinstOut_OBUF[11]_inst 
       (.I(1'b0),
        .O(dinstOut[11]));
  OBUF \dinstOut_OBUF[12]_inst 
       (.I(1'b0),
        .O(dinstOut[12]));
  OBUF \dinstOut_OBUF[13]_inst 
       (.I(1'b0),
        .O(dinstOut[13]));
  OBUF \dinstOut_OBUF[14]_inst 
       (.I(1'b0),
        .O(dinstOut[14]));
  OBUF \dinstOut_OBUF[15]_inst 
       (.I(1'b0),
        .O(dinstOut[15]));
  OBUF \dinstOut_OBUF[16]_inst 
       (.I(dinstOut_OBUF),
        .O(dinstOut[16]));
  OBUF \dinstOut_OBUF[17]_inst 
       (.I(1'b1),
        .O(dinstOut[17]));
  OBUF \dinstOut_OBUF[18]_inst 
       (.I(1'b0),
        .O(dinstOut[18]));
  OBUF \dinstOut_OBUF[19]_inst 
       (.I(1'b0),
        .O(dinstOut[19]));
  OBUF \dinstOut_OBUF[1]_inst 
       (.I(1'b0),
        .O(dinstOut[1]));
  OBUF \dinstOut_OBUF[20]_inst 
       (.I(1'b0),
        .O(dinstOut[20]));
  OBUF \dinstOut_OBUF[21]_inst 
       (.I(1'b1),
        .O(dinstOut[21]));
  OBUF \dinstOut_OBUF[22]_inst 
       (.I(1'b0),
        .O(dinstOut[22]));
  OBUF \dinstOut_OBUF[23]_inst 
       (.I(1'b0),
        .O(dinstOut[23]));
  OBUF \dinstOut_OBUF[24]_inst 
       (.I(1'b0),
        .O(dinstOut[24]));
  OBUF \dinstOut_OBUF[25]_inst 
       (.I(1'b0),
        .O(dinstOut[25]));
  OBUF \dinstOut_OBUF[26]_inst 
       (.I(1'b1),
        .O(dinstOut[26]));
  OBUF \dinstOut_OBUF[27]_inst 
       (.I(1'b1),
        .O(dinstOut[27]));
  OBUF \dinstOut_OBUF[28]_inst 
       (.I(1'b0),
        .O(dinstOut[28]));
  OBUF \dinstOut_OBUF[29]_inst 
       (.I(1'b0),
        .O(dinstOut[29]));
  OBUF \dinstOut_OBUF[2]_inst 
       (.I(dinstOut_OBUF),
        .O(dinstOut[2]));
  OBUF \dinstOut_OBUF[30]_inst 
       (.I(1'b0),
        .O(dinstOut[30]));
  OBUF \dinstOut_OBUF[31]_inst 
       (.I(1'b1),
        .O(dinstOut[31]));
  OBUF \dinstOut_OBUF[3]_inst 
       (.I(1'b0),
        .O(dinstOut[3]));
  OBUF \dinstOut_OBUF[4]_inst 
       (.I(1'b0),
        .O(dinstOut[4]));
  OBUF \dinstOut_OBUF[5]_inst 
       (.I(1'b0),
        .O(dinstOut[5]));
  OBUF \dinstOut_OBUF[6]_inst 
       (.I(1'b0),
        .O(dinstOut[6]));
  OBUF \dinstOut_OBUF[7]_inst 
       (.I(1'b0),
        .O(dinstOut[7]));
  OBUF \dinstOut_OBUF[8]_inst 
       (.I(1'b0),
        .O(dinstOut[8]));
  OBUF \dinstOut_OBUF[9]_inst 
       (.I(1'b0),
        .O(dinstOut[9]));
  OBUF \ealuc_OBUF[0]_inst 
       (.I(1'b0),
        .O(ealuc[0]));
  OBUF \ealuc_OBUF[1]_inst 
       (.I(1'b0),
        .O(ealuc[1]));
  OBUF \ealuc_OBUF[2]_inst 
       (.I(1'b0),
        .O(ealuc[2]));
  OBUF \ealuc_OBUF[3]_inst 
       (.I(1'b0),
        .O(ealuc[3]));
  OBUF ealuimm_OBUF_inst
       (.I(1'b1),
        .O(ealuimm));
  OBUF \edestReg_OBUF[0]_inst 
       (.I(1'b0),
        .O(edestReg[0]));
  OBUF \edestReg_OBUF[1]_inst 
       (.I(1'b0),
        .O(edestReg[1]));
  OBUF \edestReg_OBUF[2]_inst 
       (.I(1'b0),
        .O(edestReg[2]));
  OBUF \edestReg_OBUF[3]_inst 
       (.I(1'b0),
        .O(edestReg[3]));
  OBUF \edestReg_OBUF[4]_inst 
       (.I(1'b0),
        .O(edestReg[4]));
  OBUF \eimm32_OBUF[0]_inst 
       (.I(1'b0),
        .O(eimm32[0]));
  OBUF \eimm32_OBUF[10]_inst 
       (.I(1'b0),
        .O(eimm32[10]));
  OBUF \eimm32_OBUF[11]_inst 
       (.I(1'b0),
        .O(eimm32[11]));
  OBUF \eimm32_OBUF[12]_inst 
       (.I(1'b0),
        .O(eimm32[12]));
  OBUF \eimm32_OBUF[13]_inst 
       (.I(1'b0),
        .O(eimm32[13]));
  OBUF \eimm32_OBUF[14]_inst 
       (.I(1'b0),
        .O(eimm32[14]));
  OBUF \eimm32_OBUF[15]_inst 
       (.I(1'b0),
        .O(eimm32[15]));
  OBUF \eimm32_OBUF[16]_inst 
       (.I(1'b0),
        .O(eimm32[16]));
  OBUF \eimm32_OBUF[17]_inst 
       (.I(1'b0),
        .O(eimm32[17]));
  OBUF \eimm32_OBUF[18]_inst 
       (.I(1'b0),
        .O(eimm32[18]));
  OBUF \eimm32_OBUF[19]_inst 
       (.I(1'b0),
        .O(eimm32[19]));
  OBUF \eimm32_OBUF[1]_inst 
       (.I(1'b0),
        .O(eimm32[1]));
  OBUF \eimm32_OBUF[20]_inst 
       (.I(1'b0),
        .O(eimm32[20]));
  OBUF \eimm32_OBUF[21]_inst 
       (.I(1'b0),
        .O(eimm32[21]));
  OBUF \eimm32_OBUF[22]_inst 
       (.I(1'b0),
        .O(eimm32[22]));
  OBUF \eimm32_OBUF[23]_inst 
       (.I(1'b0),
        .O(eimm32[23]));
  OBUF \eimm32_OBUF[24]_inst 
       (.I(1'b0),
        .O(eimm32[24]));
  OBUF \eimm32_OBUF[25]_inst 
       (.I(1'b0),
        .O(eimm32[25]));
  OBUF \eimm32_OBUF[26]_inst 
       (.I(1'b0),
        .O(eimm32[26]));
  OBUF \eimm32_OBUF[27]_inst 
       (.I(1'b0),
        .O(eimm32[27]));
  OBUF \eimm32_OBUF[28]_inst 
       (.I(1'b0),
        .O(eimm32[28]));
  OBUF \eimm32_OBUF[29]_inst 
       (.I(1'b0),
        .O(eimm32[29]));
  OBUF \eimm32_OBUF[2]_inst 
       (.I(eimm32_OBUF),
        .O(eimm32[2]));
  OBUF \eimm32_OBUF[30]_inst 
       (.I(1'b0),
        .O(eimm32[30]));
  OBUF \eimm32_OBUF[31]_inst 
       (.I(1'b0),
        .O(eimm32[31]));
  OBUF \eimm32_OBUF[3]_inst 
       (.I(1'b0),
        .O(eimm32[3]));
  OBUF \eimm32_OBUF[4]_inst 
       (.I(1'b0),
        .O(eimm32[4]));
  OBUF \eimm32_OBUF[5]_inst 
       (.I(1'b0),
        .O(eimm32[5]));
  OBUF \eimm32_OBUF[6]_inst 
       (.I(1'b0),
        .O(eimm32[6]));
  OBUF \eimm32_OBUF[7]_inst 
       (.I(1'b0),
        .O(eimm32[7]));
  OBUF \eimm32_OBUF[8]_inst 
       (.I(1'b0),
        .O(eimm32[8]));
  OBUF \eimm32_OBUF[9]_inst 
       (.I(1'b0),
        .O(eimm32[9]));
  OBUF em2reg_OBUF_inst
       (.I(1'b1),
        .O(em2reg));
  OBUF \eqa_OBUF[0]_inst 
       (.I(1'b1),
        .O(eqa[0]));
  OBUF \eqa_OBUF[10]_inst 
       (.I(1'b0),
        .O(eqa[10]));
  OBUF \eqa_OBUF[11]_inst 
       (.I(1'b0),
        .O(eqa[11]));
  OBUF \eqa_OBUF[12]_inst 
       (.I(1'b0),
        .O(eqa[12]));
  OBUF \eqa_OBUF[13]_inst 
       (.I(1'b0),
        .O(eqa[13]));
  OBUF \eqa_OBUF[14]_inst 
       (.I(1'b0),
        .O(eqa[14]));
  OBUF \eqa_OBUF[15]_inst 
       (.I(1'b0),
        .O(eqa[15]));
  OBUF \eqa_OBUF[16]_inst 
       (.I(1'b0),
        .O(eqa[16]));
  OBUF \eqa_OBUF[17]_inst 
       (.I(1'b0),
        .O(eqa[17]));
  OBUF \eqa_OBUF[18]_inst 
       (.I(1'b0),
        .O(eqa[18]));
  OBUF \eqa_OBUF[19]_inst 
       (.I(1'b0),
        .O(eqa[19]));
  OBUF \eqa_OBUF[1]_inst 
       (.I(1'b0),
        .O(eqa[1]));
  OBUF \eqa_OBUF[20]_inst 
       (.I(1'b0),
        .O(eqa[20]));
  OBUF \eqa_OBUF[21]_inst 
       (.I(1'b0),
        .O(eqa[21]));
  OBUF \eqa_OBUF[22]_inst 
       (.I(1'b0),
        .O(eqa[22]));
  OBUF \eqa_OBUF[23]_inst 
       (.I(1'b0),
        .O(eqa[23]));
  OBUF \eqa_OBUF[24]_inst 
       (.I(1'b0),
        .O(eqa[24]));
  OBUF \eqa_OBUF[25]_inst 
       (.I(1'b0),
        .O(eqa[25]));
  OBUF \eqa_OBUF[26]_inst 
       (.I(1'b0),
        .O(eqa[26]));
  OBUF \eqa_OBUF[27]_inst 
       (.I(1'b0),
        .O(eqa[27]));
  OBUF \eqa_OBUF[28]_inst 
       (.I(1'b1),
        .O(eqa[28]));
  OBUF \eqa_OBUF[29]_inst 
       (.I(1'b0),
        .O(eqa[29]));
  OBUF \eqa_OBUF[2]_inst 
       (.I(1'b0),
        .O(eqa[2]));
  OBUF \eqa_OBUF[30]_inst 
       (.I(1'b0),
        .O(eqa[30]));
  OBUF \eqa_OBUF[31]_inst 
       (.I(1'b0),
        .O(eqa[31]));
  OBUF \eqa_OBUF[3]_inst 
       (.I(1'b0),
        .O(eqa[3]));
  OBUF \eqa_OBUF[4]_inst 
       (.I(1'b1),
        .O(eqa[4]));
  OBUF \eqa_OBUF[5]_inst 
       (.I(1'b0),
        .O(eqa[5]));
  OBUF \eqa_OBUF[6]_inst 
       (.I(1'b0),
        .O(eqa[6]));
  OBUF \eqa_OBUF[7]_inst 
       (.I(1'b0),
        .O(eqa[7]));
  OBUF \eqa_OBUF[8]_inst 
       (.I(1'b0),
        .O(eqa[8]));
  OBUF \eqa_OBUF[9]_inst 
       (.I(1'b0),
        .O(eqa[9]));
  OBUF \eqb_OBUF[0]_inst 
       (.I(eimm32_OBUF),
        .O(eqb[0]));
  OBUF \eqb_OBUF[10]_inst 
       (.I(1'b0),
        .O(eqb[10]));
  OBUF \eqb_OBUF[11]_inst 
       (.I(1'b0),
        .O(eqb[11]));
  OBUF \eqb_OBUF[12]_inst 
       (.I(1'b0),
        .O(eqb[12]));
  OBUF \eqb_OBUF[13]_inst 
       (.I(1'b0),
        .O(eqb[13]));
  OBUF \eqb_OBUF[14]_inst 
       (.I(1'b0),
        .O(eqb[14]));
  OBUF \eqb_OBUF[15]_inst 
       (.I(1'b0),
        .O(eqb[15]));
  OBUF \eqb_OBUF[16]_inst 
       (.I(1'b0),
        .O(eqb[16]));
  OBUF \eqb_OBUF[17]_inst 
       (.I(1'b0),
        .O(eqb[17]));
  OBUF \eqb_OBUF[18]_inst 
       (.I(1'b0),
        .O(eqb[18]));
  OBUF \eqb_OBUF[19]_inst 
       (.I(1'b0),
        .O(eqb[19]));
  OBUF \eqb_OBUF[1]_inst 
       (.I(1'b1),
        .O(eqb[1]));
  OBUF \eqb_OBUF[20]_inst 
       (.I(1'b0),
        .O(eqb[20]));
  OBUF \eqb_OBUF[21]_inst 
       (.I(1'b0),
        .O(eqb[21]));
  OBUF \eqb_OBUF[22]_inst 
       (.I(1'b0),
        .O(eqb[22]));
  OBUF \eqb_OBUF[23]_inst 
       (.I(1'b0),
        .O(eqb[23]));
  OBUF \eqb_OBUF[24]_inst 
       (.I(1'b0),
        .O(eqb[24]));
  OBUF \eqb_OBUF[25]_inst 
       (.I(1'b0),
        .O(eqb[25]));
  OBUF \eqb_OBUF[26]_inst 
       (.I(1'b0),
        .O(eqb[26]));
  OBUF \eqb_OBUF[27]_inst 
       (.I(1'b0),
        .O(eqb[27]));
  OBUF \eqb_OBUF[28]_inst 
       (.I(eimm32_OBUF),
        .O(eqb[28]));
  OBUF \eqb_OBUF[29]_inst 
       (.I(1'b1),
        .O(eqb[29]));
  OBUF \eqb_OBUF[2]_inst 
       (.I(1'b0),
        .O(eqb[2]));
  OBUF \eqb_OBUF[30]_inst 
       (.I(1'b0),
        .O(eqb[30]));
  OBUF \eqb_OBUF[31]_inst 
       (.I(1'b0),
        .O(eqb[31]));
  OBUF \eqb_OBUF[3]_inst 
       (.I(1'b0),
        .O(eqb[3]));
  OBUF \eqb_OBUF[4]_inst 
       (.I(eimm32_OBUF),
        .O(eqb[4]));
  OBUF \eqb_OBUF[5]_inst 
       (.I(1'b1),
        .O(eqb[5]));
  OBUF \eqb_OBUF[6]_inst 
       (.I(1'b0),
        .O(eqb[6]));
  OBUF \eqb_OBUF[7]_inst 
       (.I(1'b0),
        .O(eqb[7]));
  OBUF \eqb_OBUF[8]_inst 
       (.I(1'b0),
        .O(eqb[8]));
  OBUF \eqb_OBUF[9]_inst 
       (.I(1'b0),
        .O(eqb[9]));
  OBUF ewmem_OBUF_inst
       (.I(1'b0),
        .O(ewmem));
  OBUF ewreg_OBUF_inst
       (.I(1'b1),
        .O(ewreg));
  OBUF \pc_OBUF[0]_inst 
       (.I(1'b0),
        .O(pc[0]));
  OBUF \pc_OBUF[10]_inst 
       (.I(pc_OBUF[10]),
        .O(pc[10]));
  OBUF \pc_OBUF[11]_inst 
       (.I(pc_OBUF[11]),
        .O(pc[11]));
  OBUF \pc_OBUF[12]_inst 
       (.I(pc_OBUF[12]),
        .O(pc[12]));
  OBUF \pc_OBUF[13]_inst 
       (.I(pc_OBUF[13]),
        .O(pc[13]));
  OBUF \pc_OBUF[14]_inst 
       (.I(pc_OBUF[14]),
        .O(pc[14]));
  OBUF \pc_OBUF[15]_inst 
       (.I(pc_OBUF[15]),
        .O(pc[15]));
  OBUF \pc_OBUF[16]_inst 
       (.I(pc_OBUF[16]),
        .O(pc[16]));
  OBUF \pc_OBUF[17]_inst 
       (.I(pc_OBUF[17]),
        .O(pc[17]));
  OBUF \pc_OBUF[18]_inst 
       (.I(pc_OBUF[18]),
        .O(pc[18]));
  OBUF \pc_OBUF[19]_inst 
       (.I(pc_OBUF[19]),
        .O(pc[19]));
  OBUF \pc_OBUF[1]_inst 
       (.I(1'b0),
        .O(pc[1]));
  OBUF \pc_OBUF[20]_inst 
       (.I(pc_OBUF[20]),
        .O(pc[20]));
  OBUF \pc_OBUF[21]_inst 
       (.I(pc_OBUF[21]),
        .O(pc[21]));
  OBUF \pc_OBUF[22]_inst 
       (.I(pc_OBUF[22]),
        .O(pc[22]));
  OBUF \pc_OBUF[23]_inst 
       (.I(pc_OBUF[23]),
        .O(pc[23]));
  OBUF \pc_OBUF[24]_inst 
       (.I(pc_OBUF[24]),
        .O(pc[24]));
  OBUF \pc_OBUF[25]_inst 
       (.I(pc_OBUF[25]),
        .O(pc[25]));
  OBUF \pc_OBUF[26]_inst 
       (.I(pc_OBUF[26]),
        .O(pc[26]));
  OBUF \pc_OBUF[27]_inst 
       (.I(pc_OBUF[27]),
        .O(pc[27]));
  OBUF \pc_OBUF[28]_inst 
       (.I(pc_OBUF[28]),
        .O(pc[28]));
  OBUF \pc_OBUF[29]_inst 
       (.I(pc_OBUF[29]),
        .O(pc[29]));
  OBUF \pc_OBUF[2]_inst 
       (.I(pc_OBUF[2]),
        .O(pc[2]));
  OBUF \pc_OBUF[30]_inst 
       (.I(pc_OBUF[30]),
        .O(pc[30]));
  OBUF \pc_OBUF[31]_inst 
       (.I(pc_OBUF[31]),
        .O(pc[31]));
  OBUF \pc_OBUF[3]_inst 
       (.I(pc_OBUF[3]),
        .O(pc[3]));
  OBUF \pc_OBUF[4]_inst 
       (.I(pc_OBUF[4]),
        .O(pc[4]));
  OBUF \pc_OBUF[5]_inst 
       (.I(pc_OBUF[5]),
        .O(pc[5]));
  OBUF \pc_OBUF[6]_inst 
       (.I(pc_OBUF[6]),
        .O(pc[6]));
  OBUF \pc_OBUF[7]_inst 
       (.I(pc_OBUF[7]),
        .O(pc[7]));
  OBUF \pc_OBUF[8]_inst 
       (.I(pc_OBUF[8]),
        .O(pc[8]));
  OBUF \pc_OBUF[9]_inst 
       (.I(pc_OBUF[9]),
        .O(pc[9]));
endmodule

module IDEXEpipeline
   (eimm32_OBUF,
    dinstOut,
    clk);
  output [0:0]eimm32_OBUF;
  input [0:0]dinstOut;
  input clk;

  wire clk;
  wire [0:0]dinstOut;
  wire [0:0]eimm32_OBUF;

  FDRE #(
    .INIT(1'b0)) 
    \eqb_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(dinstOut),
        .Q(eimm32_OBUF),
        .R(1'b0));
endmodule

module IFIDpipelineReg
   (dinstOut,
    pc,
    clk);
  output [0:0]dinstOut;
  input [0:0]pc;
  input clk;

  wire clk;
  wire [0:0]dinstOut;
  wire [0:0]pc;

  FDRE #(
    .INIT(1'b0)) 
    \dinstOut_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(pc),
        .Q(dinstOut),
        .R(1'b0));
endmodule

module ProgramCounter
   (out,
    clk);
  output [29:0]out;
  input clk;

  wire clk;
  wire [29:0]out;
  wire \pc[2]_i_2_n_0 ;
  wire \pc_reg[10]_i_1_n_0 ;
  wire \pc_reg[10]_i_1_n_1 ;
  wire \pc_reg[10]_i_1_n_2 ;
  wire \pc_reg[10]_i_1_n_3 ;
  wire \pc_reg[10]_i_1_n_4 ;
  wire \pc_reg[10]_i_1_n_5 ;
  wire \pc_reg[10]_i_1_n_6 ;
  wire \pc_reg[10]_i_1_n_7 ;
  wire \pc_reg[14]_i_1_n_0 ;
  wire \pc_reg[14]_i_1_n_1 ;
  wire \pc_reg[14]_i_1_n_2 ;
  wire \pc_reg[14]_i_1_n_3 ;
  wire \pc_reg[14]_i_1_n_4 ;
  wire \pc_reg[14]_i_1_n_5 ;
  wire \pc_reg[14]_i_1_n_6 ;
  wire \pc_reg[14]_i_1_n_7 ;
  wire \pc_reg[18]_i_1_n_0 ;
  wire \pc_reg[18]_i_1_n_1 ;
  wire \pc_reg[18]_i_1_n_2 ;
  wire \pc_reg[18]_i_1_n_3 ;
  wire \pc_reg[18]_i_1_n_4 ;
  wire \pc_reg[18]_i_1_n_5 ;
  wire \pc_reg[18]_i_1_n_6 ;
  wire \pc_reg[18]_i_1_n_7 ;
  wire \pc_reg[22]_i_1_n_0 ;
  wire \pc_reg[22]_i_1_n_1 ;
  wire \pc_reg[22]_i_1_n_2 ;
  wire \pc_reg[22]_i_1_n_3 ;
  wire \pc_reg[22]_i_1_n_4 ;
  wire \pc_reg[22]_i_1_n_5 ;
  wire \pc_reg[22]_i_1_n_6 ;
  wire \pc_reg[22]_i_1_n_7 ;
  wire \pc_reg[26]_i_1_n_0 ;
  wire \pc_reg[26]_i_1_n_1 ;
  wire \pc_reg[26]_i_1_n_2 ;
  wire \pc_reg[26]_i_1_n_3 ;
  wire \pc_reg[26]_i_1_n_4 ;
  wire \pc_reg[26]_i_1_n_5 ;
  wire \pc_reg[26]_i_1_n_6 ;
  wire \pc_reg[26]_i_1_n_7 ;
  wire \pc_reg[2]_i_1_n_0 ;
  wire \pc_reg[2]_i_1_n_1 ;
  wire \pc_reg[2]_i_1_n_2 ;
  wire \pc_reg[2]_i_1_n_3 ;
  wire \pc_reg[2]_i_1_n_4 ;
  wire \pc_reg[2]_i_1_n_5 ;
  wire \pc_reg[2]_i_1_n_6 ;
  wire \pc_reg[2]_i_1_n_7 ;
  wire \pc_reg[30]_i_1_n_3 ;
  wire \pc_reg[30]_i_1_n_6 ;
  wire \pc_reg[30]_i_1_n_7 ;
  wire \pc_reg[6]_i_1_n_0 ;
  wire \pc_reg[6]_i_1_n_1 ;
  wire \pc_reg[6]_i_1_n_2 ;
  wire \pc_reg[6]_i_1_n_3 ;
  wire \pc_reg[6]_i_1_n_4 ;
  wire \pc_reg[6]_i_1_n_5 ;
  wire \pc_reg[6]_i_1_n_6 ;
  wire \pc_reg[6]_i_1_n_7 ;
  wire [3:1]\NLW_pc_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_pc_reg[30]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \pc[2]_i_2 
       (.I0(out[0]),
        .O(\pc[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_7 ),
        .Q(out[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[10]_i_1 
       (.CI(\pc_reg[6]_i_1_n_0 ),
        .CO({\pc_reg[10]_i_1_n_0 ,\pc_reg[10]_i_1_n_1 ,\pc_reg[10]_i_1_n_2 ,\pc_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[10]_i_1_n_4 ,\pc_reg[10]_i_1_n_5 ,\pc_reg[10]_i_1_n_6 ,\pc_reg[10]_i_1_n_7 }),
        .S(out[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_6 ),
        .Q(out[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_5 ),
        .Q(out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[10]_i_1_n_4 ),
        .Q(out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[14]_i_1_n_7 ),
        .Q(out[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[14]_i_1 
       (.CI(\pc_reg[10]_i_1_n_0 ),
        .CO({\pc_reg[14]_i_1_n_0 ,\pc_reg[14]_i_1_n_1 ,\pc_reg[14]_i_1_n_2 ,\pc_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[14]_i_1_n_4 ,\pc_reg[14]_i_1_n_5 ,\pc_reg[14]_i_1_n_6 ,\pc_reg[14]_i_1_n_7 }),
        .S(out[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[14]_i_1_n_6 ),
        .Q(out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[14]_i_1_n_5 ),
        .Q(out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[14]_i_1_n_4 ),
        .Q(out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[18]_i_1_n_7 ),
        .Q(out[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[18]_i_1 
       (.CI(\pc_reg[14]_i_1_n_0 ),
        .CO({\pc_reg[18]_i_1_n_0 ,\pc_reg[18]_i_1_n_1 ,\pc_reg[18]_i_1_n_2 ,\pc_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[18]_i_1_n_4 ,\pc_reg[18]_i_1_n_5 ,\pc_reg[18]_i_1_n_6 ,\pc_reg[18]_i_1_n_7 }),
        .S(out[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[18]_i_1_n_6 ),
        .Q(out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[18]_i_1_n_5 ),
        .Q(out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[18]_i_1_n_4 ),
        .Q(out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[22]_i_1_n_7 ),
        .Q(out[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[22]_i_1 
       (.CI(\pc_reg[18]_i_1_n_0 ),
        .CO({\pc_reg[22]_i_1_n_0 ,\pc_reg[22]_i_1_n_1 ,\pc_reg[22]_i_1_n_2 ,\pc_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[22]_i_1_n_4 ,\pc_reg[22]_i_1_n_5 ,\pc_reg[22]_i_1_n_6 ,\pc_reg[22]_i_1_n_7 }),
        .S(out[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[22]_i_1_n_6 ),
        .Q(out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[22]_i_1_n_5 ),
        .Q(out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[22]_i_1_n_4 ),
        .Q(out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[26]_i_1_n_7 ),
        .Q(out[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[26]_i_1 
       (.CI(\pc_reg[22]_i_1_n_0 ),
        .CO({\pc_reg[26]_i_1_n_0 ,\pc_reg[26]_i_1_n_1 ,\pc_reg[26]_i_1_n_2 ,\pc_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[26]_i_1_n_4 ,\pc_reg[26]_i_1_n_5 ,\pc_reg[26]_i_1_n_6 ,\pc_reg[26]_i_1_n_7 }),
        .S(out[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[26]_i_1_n_6 ),
        .Q(out[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[26]_i_1_n_5 ),
        .Q(out[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[26]_i_1_n_4 ),
        .Q(out[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_7 ),
        .Q(out[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\pc_reg[2]_i_1_n_0 ,\pc_reg[2]_i_1_n_1 ,\pc_reg[2]_i_1_n_2 ,\pc_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pc_reg[2]_i_1_n_4 ,\pc_reg[2]_i_1_n_5 ,\pc_reg[2]_i_1_n_6 ,\pc_reg[2]_i_1_n_7 }),
        .S({out[3:1],\pc[2]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[30]_i_1_n_7 ),
        .Q(out[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[30]_i_1 
       (.CI(\pc_reg[26]_i_1_n_0 ),
        .CO({\NLW_pc_reg[30]_i_1_CO_UNCONNECTED [3:1],\pc_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_reg[30]_i_1_O_UNCONNECTED [3:2],\pc_reg[30]_i_1_n_6 ,\pc_reg[30]_i_1_n_7 }),
        .S({1'b0,1'b0,out[29:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[30]_i_1_n_6 ),
        .Q(out[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_6 ),
        .Q(out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_5 ),
        .Q(out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pc_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[2]_i_1_n_4 ),
        .Q(out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \pc_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_7 ),
        .Q(out[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pc_reg[6]_i_1 
       (.CI(\pc_reg[2]_i_1_n_0 ),
        .CO({\pc_reg[6]_i_1_n_0 ,\pc_reg[6]_i_1_n_1 ,\pc_reg[6]_i_1_n_2 ,\pc_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[6]_i_1_n_4 ,\pc_reg[6]_i_1_n_5 ,\pc_reg[6]_i_1_n_6 ,\pc_reg[6]_i_1_n_7 }),
        .S(out[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_6 ),
        .Q(out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_5 ),
        .Q(out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\pc_reg[6]_i_1_n_4 ),
        .Q(out[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
