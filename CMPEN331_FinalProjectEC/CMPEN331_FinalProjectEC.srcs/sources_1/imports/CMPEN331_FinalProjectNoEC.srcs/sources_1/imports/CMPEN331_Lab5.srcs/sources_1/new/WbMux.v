`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2023 12:16:51 PM
// Design Name: 
// Module Name: WbMux
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


module WbMux(
    input [31:0] walu,
    input [31:0] wdo,
    input wm2reg,
    output reg [31:0] wbData
    );
    
    always @ (*)
        begin
            if (wm2reg == 0)
                wbData = walu;
            else
                wbData = wdo;
        end
endmodule
