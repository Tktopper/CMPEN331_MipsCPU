`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 10:53:11 AM
// Design Name: 
// Module Name: ControlUnit
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

module ControlUnit( //control unit module of the cpu
    //inputs
    input [5:0] op,
    input [5:0] func,
    //outputs
    output reg wreg,
    output reg m2reg,
    output reg wmem,
    output reg [3:0] aluc,
    output reg aluimm,
    output reg regrt
    );

    always @ (*) begin //always block that will continually update 
        case (op) //case statement of the op code portion of dinstOut which is connected in the datapath module. 
            6'b000000: // R-type instructions
            begin
                case (func) //case statement to check which operation is performed.
                    6'b100000: // ADD instruction
                    begin
                        // Set control signals for ADD instruction
                        wreg = 1'b1; // Write to the register file
                        m2reg = 1'b0; // Do not write to memory
                        wmem = 1'b0; // Do not write to memory
                        aluc = 4'b0010; // ALU operation for addition
                        aluimm = 1'b0; // ALU source from registers
                        regrt = 1'b0; // Destination register address
                    end
                    default: // Default behavior for unspecified func values
                    begin
                        // Set default control signals here
                        // You can assign default values or behavior
                        // for cases where func is unspecified
                        // For example, you can set all signals to 0.
                        wreg = 1'b0;
                        m2reg = 1'b0;
                        wmem = 1'b0;
                        aluc = 4'b0000;
                        aluimm = 1'b0;
                        regrt = 1'b0;
                    end
                endcase
            end
            6'b100011: // LW instruction
            begin
                // Set control signals for LW instruction
                wreg = 1'b1; // Write to the register file
                m2reg = 1'b1; // Write to memory
                wmem = 1'b0; // Do not write to memory
                aluc = 4'b0010; // ALU operation for addition
                aluimm = 1'b1; // ALU source from registers
                regrt = 1'b1; // Destination register address
            end
            default: // Default behavior for unspecified op values
            begin
                // Set default control signals here for unspecified op values
                // You can assign default values or behavior for cases where op is unspecified.
                // For example, you can set all signals to 0.
                wreg = 1'b0;
                m2reg = 1'b0;
                wmem = 1'b0;
                aluc = 4'b0000;
                aluimm = 1'b0;
                regrt = 1'b0;
            end
        endcase
    end

endmodule
