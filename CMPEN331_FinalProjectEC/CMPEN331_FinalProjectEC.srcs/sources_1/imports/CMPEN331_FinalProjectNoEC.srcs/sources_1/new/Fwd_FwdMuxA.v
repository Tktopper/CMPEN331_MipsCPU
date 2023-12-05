`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2023 06:29:40 PM
// Design Name: 
// Module Name: Fwd_FwdMuxA
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


module Fwd_FwdMuxA(
    input [1:0] fwda,
    input [31:0] qa,
    input [31:0] ealu,
    input [31:0] malu,
    input [31:0] mdo,
    output reg [31:0] da
    );
    
    always @ (*) begin
        case(fwda)
                2'b00: da <= qa;
                2'b01: da <= ealu;
                2'b10: da <= malu;
                2'b11: da <= mdo;
         endcase
    end
endmodule
