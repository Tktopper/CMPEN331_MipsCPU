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


module IDEXEpipeline(
    // Inputs
    input wreg,           // Control signal for writing to the register file
    input m2reg,          // Control signal for writing to the register file (M2 stage)
    input wmem,           // Control signal for writing to memory
    input [3:0] aluc,     // ALU control signal
    input aluimm,         // ALU immediate value
    input [4:0] destReg,  // Destination register address
    input [31:0] qa,      // Value from source register A
    input [31:0] qb,      // Value from source register B
    input [31:0] imm32,   // 32-bit immediate value
    input clk,            // Clock signal

    // Outputs
    output reg ewreg,     // Output for write enable signal
    output reg em2reg,    // Output for write enable signal (M2 stage)
    output reg ewmem,     // Output for memory write enable signal
    output reg [3:0] ealuc,   // Output for ALU control signal
    output reg ealuimm,   // Output for ALU immediate value
    output reg [4:0] edestReg,   // Output for destination register address
    output reg [31:0] eqa,  // Output for source register A value
    output reg [31:0] eqb,  // Output for source register B value
    output reg [31:0] eimm32 // Output for 32-bit immediate value
);

// On the positive edge of the clock, update the output signals with the input values.
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

endmodule // End of the module

