`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 09:49:56 AM
// Design Name: 
// Module Name: EXE_f
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


module EXE_f(
    input [4:0]  ern0,
    input ejal,
    output reg [4:0] ern
    );
    
        always @ (*)
            begin
                case(ejal)
                    1'b0: ern = ern0;
                    1'b1: ern = 5'b11111;
                endcase
            end
    
    
endmodule
