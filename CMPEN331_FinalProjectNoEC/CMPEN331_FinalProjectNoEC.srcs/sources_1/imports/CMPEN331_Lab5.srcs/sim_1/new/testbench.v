`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 03:55:40 PM
// Design Name: 
// Module Name: TestBench
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


module TestBench;

    // Inputs
    reg clk;
    // Add other input signals here

    // Outputs
    wire [31:0] pc;
    wire [31:0] dinstOut;
    wire ewreg;
    wire em2reg;
    wire ewmem;
    wire [3:0] ealuc;
    wire ealuimm;
    wire [4:0] edestReg;
    wire [31:0] eqa;
    wire [31:0] eqb;
    wire [31:0] eimm32;
    
       //lab 4 - EXEMEM
     wire mwreg;
     wire mm2reg;
     wire mwmem;
     wire [4:0] mdestReg;
     wire [31:0] mr;
     wire [31:0] mqb;
    
    //lab 4 - MEMWB
     wire wwreg;
     wire wm2reg;
     wire [4:0] wdestReg;
     wire [31:0] wr;
     wire [31:0] wdo;
     
    
    initial begin
        clk <= 1'b0;
    end

    // Instantiate the Datapath module
    Datapath datapath(
        .clk(clk), 
        .pc(pc), 
        .dinstOut(dinstOut), 
        .ewreg(ewreg), 
        .em2reg(em2reg), 
        .ewmem(ewmem), 
        .ealuc(ealuc), 
        .ealuimm(ealuimm), 
        .edestReg(edestReg), 
        .eqa(eqa), 
        .eqb(eqb), 
        .eimm32(eimm32),
        .mwreg(mwreg),
        .mm2reg(mm2reg),
        .mwmem(mwmem),
        .mdestReg(mdestReg),
        .mr(mr),
        .mqb(mqb),
	    .wwreg(wwreg),
        .wm2reg(wm2reg),
        .wdestReg(wdestReg),
        .wr(wr),
        .wdo(wdo)
    );
    

    // Clock generation
    always begin
        #10;
        clk = ~clk;
    end

endmodule

