`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2023 06:29:40 PM
// Design Name: 
// Module Name: Fwd_FwdMuxB
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


module Fwd_FwdMuxB(
    input [1:0] fwdb,
    input [31:0] qb,
    input [31:0] r,
    input [31:0] mr,
    input [31:0] mdo,
    output reg [31:0] fwdBout
    );
    
    always @ (*) begin
        case(fwdb)
                2'b00: fwdBout <= qb;
                2'b01: fwdBout <= r;
                2'b10: fwdBout <= mr;
                2'b11: fwdBout <= mdo;
         endcase
    end
    
endmodule
