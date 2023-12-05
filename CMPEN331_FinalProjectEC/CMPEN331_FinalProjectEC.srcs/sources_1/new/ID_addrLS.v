`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 09:49:56 AM
// Design Name: 
// Module Name: ID_addrLS
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


module ID_addrLS(
    input [25:0] addr,
    output reg [25:0] jpc
    );
    always @ (*)
        begin
            jpc = addr << 2;
        end
endmodule
