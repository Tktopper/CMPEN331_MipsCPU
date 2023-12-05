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
    input [31:0] ealu,
    input [31:0] malu,
    input [31:0] mdo,
    output reg [31:0] db
    );
    
    always @ (*) begin
        case(fwdb)
                2'b00: db <= qb;
                2'b01: db <= ealu;
                2'b10: db <= malu;
                2'b11: db <= mdo;
         endcase
    end
    
endmodule


