`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 12:25:45 PM
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile( //register file module of the cpu.
    //inputs
    input [4:0] rs, 
    input [4:0] rt,
    //outputs
    output reg [31:0] qa,
    output reg [31:0] qb
    );
    
    reg [31:0] register [0:31]; //32x32 array for registers
        
    //initalize all register to a 0
    integer r;
    initial begin
        for (r = 0; r <= 31; r = r + 1) begin
            register[r] = 0;
        end
    end 
    
    always @ (*) //always block to update qa and qb to be the array address for a specific register. this will update on any signal.
        begin
            qa = register[rs];
            qb = register[rt];
        end
    
endmodule
