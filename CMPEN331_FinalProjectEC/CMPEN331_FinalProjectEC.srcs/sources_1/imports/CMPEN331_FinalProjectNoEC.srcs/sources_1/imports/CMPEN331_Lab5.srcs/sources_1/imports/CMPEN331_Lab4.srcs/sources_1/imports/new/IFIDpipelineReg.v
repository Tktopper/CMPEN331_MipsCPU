`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 10:46:34 AM
// Design Name: 
// Module Name: IFIDpipelineReg
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


module IFIDpipelineReg( //IFID pipeline
    input clk, //clock input needed as dinstOut only updates on the positive edge of clock.
    input [31:0] instOut, //input
    
    //EC Input
    input [31:0] pc4,
    
    //final project input
    input wpcir,
    
    output reg [31:0] dinstOut, //output
    
    //EC Output
    output reg [31:0] dpc4
    );
    
    always @ (posedge clk) //always block that will only update dinstOut on the positive edge of the clock. dinstOut is to the instOut input of this module.
        begin
         if (wpcir == 1)
            dinstOut <= instOut;
            dpc4 <= pc4;
        end
        
endmodule //end module
