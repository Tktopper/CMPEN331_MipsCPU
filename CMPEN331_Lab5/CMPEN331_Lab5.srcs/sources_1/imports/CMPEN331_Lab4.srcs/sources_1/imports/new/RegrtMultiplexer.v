`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 12:14:07 PM
// Design Name: 
// Module Name: RegrtMultiplexer
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


module RegrtMultiplexer(
    // Inputs
    input [4:0] rt,     // Input register value rt
    input [4:0] rd,     // Input register value rd
    input regrt,        // Control signal to select the output (0 for rd, 1 for rt)

    // Output
    output reg [4:0] destReg  // Output register value (selected based on the control signal)
);

always @(*)
begin
    if (regrt == 0)
        destReg = rd;    // If regrt is 0, select rd as the output.
    else
        destReg = rt;    // If regrt is 1, select rt as the output.
end

endmodule // End of the module

