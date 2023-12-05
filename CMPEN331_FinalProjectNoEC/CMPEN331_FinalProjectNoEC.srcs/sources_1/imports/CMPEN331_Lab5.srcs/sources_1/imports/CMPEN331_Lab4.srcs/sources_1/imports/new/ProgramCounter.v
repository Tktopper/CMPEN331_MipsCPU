`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 09:47:44 AM
// Design Name: 
// Module Name: ProgramCounter
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



module ProgramCounter(
    input clk,            // Clock input necessary as PC only updates on the positive edge of the clock.
    input [31:0] nextPc, // Input from the PC adder looped back to update the next PC.
    
    //final project input
    input wpcir,
    
    output reg [31:0] pc // Output of the PC module.
    
);

initial
    begin
        pc = 32'd100;      // Initializing the PC value to start at 100 in decimal.
    end

always @(posedge clk)
    begin
      if (wpcir == 1)
        pc = nextPc;      // Update PC to be nextPc only on the positive edge of the clock.
    end

endmodule // End of the module

