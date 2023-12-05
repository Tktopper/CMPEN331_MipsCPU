`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 10:02:15 AM
// Design Name: 
// Module Name: pcAdder
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


module pcAdder( //creation of the module used for the PC adder module in the cpu.
    input [31:0] pc, //input of pc set to be 32 bits wide.
    output reg [31:0] nextPc //output register of next pc that is also 32 bits wide.
);

    always @(*) begin //always block that changes ony any signal used to continually update nextPc.
        nextPc <= pc + 32'b00000000000000000000000000000100; //setting nextPc equal to ithe input of pc plus a unsigned binary 32 bit 4.
    end //end always block

endmodule //end of this module
