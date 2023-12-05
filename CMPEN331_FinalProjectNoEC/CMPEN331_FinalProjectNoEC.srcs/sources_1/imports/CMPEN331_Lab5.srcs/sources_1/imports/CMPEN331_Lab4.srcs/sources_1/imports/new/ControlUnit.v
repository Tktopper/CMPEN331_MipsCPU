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
    
    //final project inputs
    input [4:0] rs, 
    input [4:0] rt,
    input [4:0] mdestReg,
    input mm2reg,
    input mwreg,
    input [4:0] edestReg,
    input em2reg,
    input ewreg,
    
    //outputs
    output reg wreg,
    output reg m2reg,
    output reg wmem,
    output reg [3:0] aluc,
    output reg aluimm,
    output reg regrt,
    
    //final project outputs
    output reg [1:0] fwda,
    output reg [1:0] fwdb,
    output reg wpcir
    
    );
    
    reg regUsage = 1'b1;
	
    initial begin  
	    wreg <= 0; //RegWrite  
	    m2reg <= 0; //Mem2Reg  
        wmem <= 0; //Write Memory  
        aluimm <= 0; //ALU source  
        regrt <= 0; //Reg Destination  
	end  
	
    always @ (*) begin //always block that will continually update    
        case (op) //case statement of the op code portion of dinstOut which is connected in the datapath module. 
            6'b000000: // R-type instructions
            begin
                  wreg = 1'b1; // Write to the register file
                  m2reg = 1'b0; // Do not write to memory
                  wmem = 1'b0; // Do not write to memory
                  aluimm = 1'b0; // ALU source from registers
                  regrt = 1'b0; // Destination register address 

                case (func) //case statement to check which operation is performed.
                    6'b100000: aluc = 4'b0010; //ADD Operation
                    6'b100010: aluc = 4'b0110; //SUB Operation
                    6'b100100: aluc = 4'b0000; //AND Operation
                    6'b100101: aluc = 4'b0001; //OR Operation
                    6'b100110: aluc = 4'b0011; //XOR Operation
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
          6'b101011: //SW instruction
            begin
                wreg = 1'b0;
                m2reg = 1'b0;
                wmem = 1'b1;
                aluc = 4'b0010;
                aluimm = 1'b1;
                regrt = 1'b1; 
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
    
    
//stall
    always @ (*) 
        begin
            if ((ewreg == 1'b1) && (em2reg == 1'b1) && (edestReg != 5'b0) && (regUsage == 1'b1)
            && ((edestReg == rs) || (edestReg == rt))) begin
                wreg = 1'b0;
                wmem = 1'b0;
                wpcir = 1'b0;
            end 
            else begin
                wpcir = 1'b1;
            end
// forwarding
            if ((ewreg == 1'b1) && (edestReg != 5'b0) && (edestReg == rs) && (em2reg == 1'b0)) begin
                fwda = 2'b01;
        end
            else if ((mwreg == 1'b1) && (mdestReg != 5'b0) && (mdestReg == rs) && (mm2reg == 1'b0)) begin
                fwda = 2'b10;
        end
            else if ((mwreg == 1'b1) && (mdestReg != 5'b0) && (mdestReg == rs) && (mm2reg == 1'b1)) begin
                fwda = 2'b11;
        end
            else begin
                fwda = 2'b00;
        end
            if ((ewreg == 1'b1) && (edestReg != 5'b0) && (edestReg == rt) && (em2reg == 1'b0)) begin
                fwdb = 2'b01;
        end
            else if ((mwreg == 1'b1) && (mdestReg != 5'b0) && (mdestReg == rt) && (mm2reg == 1'b0)) begin
                fwdb = 2'b10;
        end
            else if ((mwreg == 1'b1) && (mdestReg != 5'b0) && (mdestReg == rt) && (mm2reg == 1'b1)) begin
                fwdb = 2'b11;
        end
            else begin
                fwdb = 2'b00;
            end
        end

endmodule
