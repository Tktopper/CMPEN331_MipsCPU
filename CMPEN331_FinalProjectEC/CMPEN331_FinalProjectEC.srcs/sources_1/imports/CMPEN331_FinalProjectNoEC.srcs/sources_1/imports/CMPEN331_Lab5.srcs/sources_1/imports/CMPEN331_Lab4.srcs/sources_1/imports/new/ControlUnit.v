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
    input [5:0] op, func,
    
    //final project inputs
    input [4:0] rs, rt, mrn, ern,
    input mm2reg, mwreg, em2reg, ewreg,
    
    //Extra Credit Input
    input rsrtequ,
    
    //outputs
    output reg wreg, m2reg, wmem, aluimm, regrt,
    output reg [3:0] aluc,
    
    //final project outputs
    output reg [1:0] fwda, fwdb,
    output reg wpcir,
    
    //Extra Credit Outputs
    output reg sext, shift, jal, 
    output reg [1:0] pcsrc
    );
    
    reg regUsage = 1'b1;
	
    initial begin  
	    wreg <= 0; //RegWrite  
	    m2reg <= 0; //Mem2Reg  
        wmem <= 0; //Write Memory  
        aluimm <= 0; //ALU source  
        regrt <= 0; //Reg Destination  
        pcsrc <= 2'b00;
	end  
	
    always @ (*) begin //always block that will continually update    
        case (op) //case statement of the op code portion of dinstOut which is connected in the datapath module. 
            6'b000000: // R-type instructions
            begin
                case (func) //case statement to check which operation is performed.
                    6'b100000: begin
                        aluc = 4'b0010; //ADD Operation
                          wreg = 1'b1; // Write to the register file
                          m2reg = 1'b0; // Do not write to memory
                          wmem = 1'b0; // Do not write to memory
                          aluimm = 1'b0; // ALU source from registers
                          regrt = 1'b0; // Destination register address 
                          sext = 1'bx;
                          jal = 1'b0;
                          shift = 1'b0;
                          pcsrc = 2'b00;
                        end
                        
                    6'b100010: begin
                        aluc = 4'b0110; //SUB
                          wreg = 1'b1; // Write to the register file
                          m2reg = 1'b0; // Do not write to memory
                          wmem = 1'b0; // Do not write to memory
                          aluimm = 1'b0; // ALU source from registers
                          regrt = 1'b0; // Destination register address 
                          sext = 1'bx;
                          jal = 1'b0;
                          shift = 1'b0;
                          pcsrc = 2'b00;                        
                        end 
                        
                    6'b100100: begin
                        aluc = 4'b0000; //AND Operation
                          wreg = 1'b1; // Write to the register file
                          m2reg = 1'b0; // Do not write to memory
                          wmem = 1'b0; // Do not write to memory
                          aluimm = 1'b0; // ALU source from registers
                          regrt = 1'b0; // Destination register address 
                          sext = 1'bx;
                          jal = 1'b0;
                          shift = 1'b0;
                          pcsrc = 2'b00;
                        end
                        
                    6'b100101: begin
                        aluc = 4'b0001; //OR
                          wreg = 1'b1; // Write to the register file
                          m2reg = 1'b0; // Do not write to memory
                          wmem = 1'b0; // Do not write to memory
                          aluimm = 1'b0; // ALU source from registers
                          regrt = 1'b0; // Destination register address 
                          sext = 1'bx;
                          jal = 1'b0;
                          shift = 1'b0;
                          pcsrc = 2'b00;
                        end 
                        
                    6'b100110: begin
                        aluc = 4'b0011; //XOR Operation
                          wreg = 1'b1; // Write to the register file
                          m2reg = 1'b0; // Do not write to memory
                          wmem = 1'b0; // Do not write to memory
                          aluimm = 1'b0; // ALU source from registers
                          regrt = 1'b0; // Destination register address 
                          sext = 1'bx;
                          jal = 1'b0;
                          shift = 1'b0;
                          pcsrc = 2'b00;
                        end
                        
                    6'b000000: begin
                        aluc = 4'b0111; //sll
                          wreg = 1'b1; // Write to the register file
                          m2reg = 1'b0; // Do not write to memory
                          wmem = 1'b0; // Do not write to memory
                          aluimm = 1'b0; // ALU source from registers
                          regrt = 1'b0; // Destination register address 
                          sext = 1'bx;
                          jal = 1'b0;
                          shift = 1'b1;
                          pcsrc = 2'b00;
                        end
     
                    6'b000010: begin
                        aluc = 4'b1110; //srl
                          wreg = 1'b1; // Write to the register file
                          m2reg = 1'b0; // Do not write to memory
                          wmem = 1'b0; // Do not write to memory
                          aluimm = 1'b0; // ALU source from registers
                          regrt = 1'b0; // Destination register address 
                          sext = 1'bx;
                          jal = 1'b0;
                          shift = 1'b1;
                          pcsrc = 2'b00;
                        end
                        
                    6'b000011: begin 
                        aluc = 4'b1001; //sra 
                          wreg = 1'b1; // Write to the register file
                          m2reg = 1'b0; // Do not write to memory
                          wmem = 1'b0; // Do not write to memory
                          aluimm = 1'b0; // ALU source from registers
                          regrt = 1'b0; // Destination register address 
                          sext = 1'bx;
                          jal = 1'b0;
                          shift = 1'b1;
                          pcsrc = 2'b00;
                        end
                    
                    6'b001000: 
                        begin aluc = 4'bxxxx; //jr
                          wreg = 1'b0; // Write to the register file
                        //  m2reg = 1'bx; // Do not write to memory
                          wmem = 1'b0; // Do not write to memory
                          aluimm = 1'bx; // ALU source from registers
                          regrt = 1'bx; // Destination register address 
                          sext = 1'bx;
                          jal = 1'bx;
                          shift = 1'bx;
                          pcsrc = 2'b10;
                        end  
                endcase
            end
            
            6'b001000: //addi
            begin
                wreg <= 1'b1;
                regrt <= 1'b1;
                jal <= 1'b0;
                m2reg <= 1'b0;
                shift <= 1'b0;
                aluimm <= 1'b1;
                sext <= 1'b1;
                aluc <= 4'b0010;
                wmem <= 1'b0;
                pcsrc <= 2'b00;
            end
            6'b00001100: //andi
            begin
                wreg <= 1'b1;
                regrt <= 1'b1;
                jal <= 1'b0;
                m2reg <= 1'b0;
                shift <= 1'b0;
                aluimm <= 1'b1;
                sext <= 1'b0;
                aluc <= 4'b0000;
                wmem <= 1'b0;
                pcsrc <= 2'b00;
            end
            6'b001101: //ori
            begin
                wreg <= 1'b1;
                regrt <= 1'b1;
                jal <= 1'b0;
                m2reg <= 1'b0;
                shift <= 1'b0;
                aluimm <= 1'b1;
                sext <= 1'b0;
                aluc <= 4'b0001;
                wmem <= 1'b0;
                pcsrc <= 2'b00;
            end
            6'b001110: //xori
            begin
                wreg <= 1'b1;
                regrt <= 1'b1;
                jal <= 1'b0;
                m2reg <= 1'b0;
                shift <= 1'b0;
                aluimm <= 1'b1;
                sext <= 1'b0;
                aluc <= 4'b0011;
                wmem <= 1'b0;
                pcsrc <= 2'b00;
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
                jal = 1'b0;
                shift = 1'b0;
                pcsrc = 2'b00;
                sext = 1'b1;
            end
          6'b101011: //SW instruction
            begin
                wreg = 1'b0;
                m2reg = 1'b0;
                wmem = 1'b1;
                aluc = 4'b0010;
                aluimm = 1'b1;
                regrt = 1'bx; 
                jal = 1'b0;
                shift = 1'b0;
                pcsrc = 2'b00;
                sext = 1'b1;
            end
          6'b000100: //BEQ instruction
            begin
                wreg = 1'b0;
                //m2reg = 1'bx; /***/
                wmem = 1'b0;
                aluc = 4'b0011;
                aluimm = 1'b0;
                regrt = 1'bx; 
                jal = 1'bx;
                shift = 1'b0;
                sext = 1'b1;
                if (rsrtequ == 1)
                    pcsrc <= 2'b01;
                else
                    pcsrc <= 2'b00;
            end 
          6'b000101: //BNE instruction
            begin
                wreg = 1'b0;
               // m2reg = 1'bx; /***/
                wmem = 1'b0;
                aluc = 4'b0011;
                aluimm = 1'b0;
                regrt = 1'bx; 
                jal = 1'bx;
                shift = 1'b0;
                sext = 1'b1;
                if (rsrtequ == 1)
                    pcsrc <= 2'b01;
                else
                    pcsrc <= 2'b00;
            end  
              
            6'b001111: //lui
            begin
                wreg <= 1'b1;
                regrt <= 1'b1;
                jal <= 1'b0;
                m2reg <= 1'b0;
                shift <= 1'bx;
                aluimm <= 1'b1;
                sext <= 1'bx;
                aluc <= 4'b0100;
                wmem <= 1'b0;
                pcsrc <= 2'b00;
            end
            6'b000010: //j
            begin
                wreg <= 1'b0;
                regrt <= 1'bx;
                jal <= 1'bx;
                m2reg <= 1'bx;
                shift <= 1'bx;
                aluimm <= 1'bx;
                sext <= 1'bx;
                aluc <= 4'bxxxx;
                wmem <= 1'b0;
                pcsrc <= 2'b11;
            end
            6'b000011: //jal
            begin
                wreg <= 1'b1;
                regrt <= 1'bx;
                jal <= 1'b1;
                //m2reg <= 1'bx; /****/
                shift <= 1'bx;
                aluimm <= 1'bx;
                sext <= 1'bx;
                aluc <= 4'bxxxx;
                wmem <= 1'b0;
                pcsrc <= 2'b11;
            end          
        endcase
    end
    
    
//stall
    always @ (*) 
        begin
            if ((ewreg == 1'b1) && (em2reg == 1'b1) && (ern != 5'b0) && (regUsage == 1'b1)
            && ((ern == rs) || (ern == rt))) begin
                wreg = 1'b0;
                wmem = 1'b0;
                wpcir = 1'b0;
            end 
            else begin
                wpcir = 1'b1;
            end
// forwarding
            if ((ewreg == 1'b1) && (ern != 5'b0) && (ern == rs) && (em2reg == 1'b0)) begin
                fwda = 2'b01;
        end
            else if ((mwreg == 1'b1) && (mrn != 5'b0) && (mrn == rs) && (mm2reg == 1'b0)) begin
                fwda = 2'b10;
        end
            else if ((mwreg == 1'b1) && (mrn != 5'b0) && (mrn == rs) && (mm2reg == 1'b1)) begin
                fwda = 2'b11;
        end
            else begin
                fwda = 2'b00;
        end
            if ((ewreg == 1'b1) && (ern != 5'b0) && (ern == rt) && (em2reg == 1'b0)) begin
                fwdb = 2'b01;
        end
            else if ((mwreg == 1'b1) && (mrn != 5'b0) && (mrn == rt) && (mm2reg == 1'b0)) begin
                fwdb = 2'b10;
        end
            else if ((mwreg == 1'b1) && (mrn != 5'b0) && (mrn == rt) && (mm2reg == 1'b1)) begin
                fwdb = 2'b11;
        end
            else begin
                fwdb = 2'b00;
            end
        end

endmodule
