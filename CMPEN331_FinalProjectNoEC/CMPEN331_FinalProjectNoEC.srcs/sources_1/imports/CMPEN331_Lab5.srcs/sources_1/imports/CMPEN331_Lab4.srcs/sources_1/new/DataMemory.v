`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 12:35:14 AM
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(
    input [31:0] mr,     // Memory read address
    input [31:0] mqb,    // Data to be written to memory
    input mwmem,         // Memory write control signal
    input clk,           // Clock signal
    output reg [31:0] mdo // Data read from memory
);

// Define a data memory array with 64 words
reg [31:0] dataMemory [0:63];

// Initialize data memory with some values (words 0-9)
initial begin
    dataMemory[0] = 32'hA00000AA;
    dataMemory[1] = 32'h10000011;
    dataMemory[2] = 32'h20000022;
    dataMemory[3] = 32'h30000033;
    dataMemory[4] = 32'h40000044;
    dataMemory[5] = 32'h50000055;
    dataMemory[6] = 32'h60000066;
    dataMemory[7] = 32'h70000077;
    dataMemory[8] = 32'h80000088;
    dataMemory[9] = 32'h90000099;
end

always @(*) begin
    // Reading: Set mdo to the value at the memory read address (bits 7:2 of mr)
    mdo = dataMemory[mr[7:2]];
end

always @(negedge clk) begin
    // Writing: If mwmem is 1, write the value in mqb to the memory at the read address
    if (mwmem == 1) begin
        //dataMemory[mr[7:2]] <= mqb;
        dataMemory[mr] <= mqb;
    end
end

endmodule // End of the module

