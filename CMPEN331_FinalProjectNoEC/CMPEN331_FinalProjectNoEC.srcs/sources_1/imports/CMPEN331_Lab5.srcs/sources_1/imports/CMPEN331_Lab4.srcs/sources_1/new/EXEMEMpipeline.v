`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 12:30:48 AM
// Design Name: 
// Module Name: EXEMEMpipeline
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


module EXEMEMpipeline(
    input ewreg,            // Control signal for writing to the register file
    input em2reg,           // Control signal for writing to the register file (Memory stage)
    input ewmem,            // Control signal for writing to memory
    input [4:0] edestReg,   // Destination register address
    input [31:0] r,         // Result from the ALU
    input [31:0] eqb,       // Value from source register B
    input clk,              // Clock signal

    output reg mwreg,       // Output for write enable signal
    output reg mm2reg,      // Output for write enable signal (M2 stage)
    output reg mwmem,       // Output for memory write enable signal
    output reg [4:0] mdestReg, // Output for destination register address
    output reg [31:0] mr,    // Output for result from the ALU
    output reg [31:0] mqb    // Output for value from source register B
);

always @ (posedge clk)
begin
    mwreg = ewreg;
    mm2reg = em2reg;
    mwmem = ewmem;
    mdestReg = edestReg;
    mr = r;
    mqb = eqb;
end

endmodule // End of the module

