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
    reg clk;
    reg clrn;
    wire [31:0] pc;
    wire [31:0] dinstOut;
    wire [31:0] ealu;
    wire [31:0] malu;
    wire [31:0] wbData;
    
    initial begin
        clk <= 1'b0;
        clrn <=1'b0;
    end

Datapath Datapath(.clrn(clrn), .clk(clk), .pc(pc), .dinstOut(dinstOut), .ealu(ealu), .malu(malu), .wbData(wbData));

    // Clock generation
    always begin
        #5;
        clk = ~clk;
    end
    always begin
        #2; clrn = 1'b1;
        
    end
   
endmodule

