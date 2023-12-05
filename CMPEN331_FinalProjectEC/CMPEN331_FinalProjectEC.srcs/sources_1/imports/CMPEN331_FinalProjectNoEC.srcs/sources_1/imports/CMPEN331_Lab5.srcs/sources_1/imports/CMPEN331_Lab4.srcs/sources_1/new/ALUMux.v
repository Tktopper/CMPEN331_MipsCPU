`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 12:22:05 AM
// Design Name: 
// Module Name: ALUMux
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


module ALUMux(
    input [31:0] eb,    // Input B data from the ALU
    input [31:0] eimm32, // Immediate value from the pipeline
    input ealuimm,        // Mux control signal
    output reg [31:0] b  // Output data selected by the Mux
);

always @(*) begin
    case(ealuimm)
        1'b0: b <= eb; 
        1'b1: b <= eimm32;
    endcase
end

endmodule // End of the module 

