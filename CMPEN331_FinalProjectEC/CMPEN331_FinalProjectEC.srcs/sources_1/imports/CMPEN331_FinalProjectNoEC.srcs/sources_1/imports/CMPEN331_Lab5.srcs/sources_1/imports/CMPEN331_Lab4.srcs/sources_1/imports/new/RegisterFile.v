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


module RegisterFile(
    // Inputs
    input [4:0] rs,     // Input for the source register (rs)
    input [4:0] rt,     // Input for the target register (rt)
    
    //Lab 5 Inputs
    input [4:0] wrn,
    input [31:0] wbData,
    input wwreg,
    input clk, clrn,

    // Outputs
    output reg [31:0] qa,  // Output for the value stored in the source register
    output reg [31:0] qb   // Output for the value stored in the target register
    
);


reg [31:0] register [0:31]; // 32x32 array for registers (register file)

// Initialize all registers to 0
integer r;
initial begin
    for (r = 0; r <= 31; r = r + 1) begin
        register[r] = 0;  // Initialize each register to 0.
        
//    register[0] = 32'h00000000;
//    register[1] = 32'hA00000AA;
//    register[2] = 32'h10000011;
//    register[3] = 32'h20000022;
//    register[4] = 32'h30000033;
//    register[5] = 32'h40000044;
//    register[6] = 32'h50000055;
//    register[7] = 32'h60000066;
//    register[8] = 32'h70000077;
//    register[9] = 32'h80000088;
//    register[10] = 32'h90000099;
    
    end
end

always @ (*) // Always block to update qa and qb based on the input rs and rt values.
begin
    qa = register[rs];  // Output qa is the value stored in the source register (rs).
    qb = register[rt];  // Output qb is the value stored in the target register (rt).
end

always @ (negedge clk)
    begin
        if (wwreg == 1)
            register[wrn] = wbData;
    end

//always @ (negedge clk or posedge clrn)
//    begin
//            if ((wrn != 0) && wwreg) begin // not reg[0] & enabled
//                register[wrn] <= wbData; // write d to reg[wn]
//        end
//        else if (!clrn)
//            for (r = 1; r < 32; r = r + 1)
//                register[r] <= 0; // reset
//     end

endmodule // End of the module

