`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 12:38:27 AM
// Design Name: 
// Module Name: MEMWBpipeline
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


module MEMWBpipeline(
    input mwreg,              // Control signal for writing to the register file
    input mm2reg,             // Control signal for writing to the register file (Memory Stage)
    input [4:0] mrn,     // Destination register address
    input [31:0] malu,          // Result from the data memory
    input [31:0] mdo,        // Data read from the data memory
    input clk,                // Clock signal

    output reg wwreg,         // Output for write enable signal
    output reg wm2reg,        // Output for write enable signal (Memory stage)
    output reg [4:0] wrn, // Output for destination register address
    output reg [31:0] walu,    // Output for result from the data memory
    output reg [31:0] wdo    // Output for data read from the data memory
);

always @ (posedge clk)
begin
    wwreg = mwreg;
    wm2reg = mm2reg;
    wrn = mrn;
    walu = malu;
    wdo = mdo;
end

endmodule // End of the module

