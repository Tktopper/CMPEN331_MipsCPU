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
    input [4:0] drn,  // Destination register address
    input [31:0] da,      // Value from source register A
    input [31:0] db,      // Value from source register B
    input [31:0] dimm32,   // 32-bit immediate value
    input clk,            // Clock signal
    
    //EC Input
    input [31:0] dpc4,
    input shift, jal,

    // Outputs
    output reg ewreg,     // Output for write enable signal
    output reg em2reg,    // Output for write enable signal (M2 stage)
    output reg ewmem,     // Output for memory write enable signal
    output reg [3:0] ealuc,   // Output for ALU control signal
    output reg ealuimm,   // Output for ALU immediate value
    output reg [4:0] ern0,   // Output for destination register address
    output reg [31:0] ea,  // Output for source register A value
    output reg [31:0] eb,  // Output for source register B value
    output reg [31:0] eimm32, // Output for 32-bit immediate value
    
    //EC Output
    output reg [31:0] epc4,
    output reg ejal, eshift
);

// On the positive edge of the clock, update the output signals with the input values.
always @ (posedge clk)
begin
    ewreg = wreg;
    em2reg = m2reg;
    ewmem = wmem;
    ealuc = aluc;
    ealuimm = aluimm;
    ern0 = drn;
    ea = da;
    eb = db;
    eimm32 = dimm32;
    epc4 = dpc4;
    ejal = jal;
    eshift = shift;
end
endmodule // End of the module

