`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 12:35:14 AM
// Design Name: 
// Module Name: DataMemory
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

module DataMemory( // data memory, ram
input clk, // clock
input [31:0] malu, // ram address (addr)
input [31:0] mb, // data in (to memory) (datain)
input mwmem, // write enable (we)
output [31:0] mdo // data out (from memory) (dataout)
);
reg [31:0] ram [0:31]; // ram cells: 32 words * 32 bits
assign mdo = ram[malu[6:2]]; // use 5-bit word address
always @ (posedge clk) begin
if (mwmem) ram[malu[6:2]] = mb; // write ram
end
integer i;
initial begin // ram initialization
for (i = 0; i < 32; i = i + 1)
ram[i] = 0;
// ram[word_addr] = data // (byte_addr) item in data array
ram[5'h14] = 32'h000000a3; // (50) data[0] 0 + a3 = a3
ram[5'h15] = 32'h00000027; // (54) data[1] a3 + 27 = ca
ram[5'h16] = 32'h00000079; // (58) data[2] ca + 79 = 143
ram[5'h17] = 32'h00000115; // (5c) data[3] 143 + 115 = 258
// ram[5'h18] should be 0x00000258, the sum stored by sw instruction
end
endmodule

//module DataMemory(
//    input [31:0] malu,     // Memory read address
//    input [31:0] mb,    // Data to be written to memory
//    input mwmem,         // Memory write control signal
//    input clk,           // Clock signal
//    output reg [31:0] mdo // Data read from memory
//);

//// Define a data memory array with 64 words
//reg [31:0] dataMemory [0:63];

//// Initialize data memory with some values (words 0-9)
//initial begin
//    dataMemory[0] = 32'hA00000AA;
//    dataMemory[1] = 32'h10000011;
//    dataMemory[2] = 32'h20000022;
//    dataMemory[3] = 32'h30000033;
//    dataMemory[4] = 32'h40000044;
//    dataMemory[5] = 32'h50000055;
//    dataMemory[6] = 32'h60000066;
//    dataMemory[7] = 32'h70000077;
//    dataMemory[8] = 32'h80000088;
//    dataMemory[9] = 32'h90000099;
//end

//always @(*) begin
//    // Reading: Set mdo to the value at the memory read address (bits 7:2 of mr)
//    mdo = dataMemory[malu[7:2]];
//end

//always @(negedge clk) begin
//    // Writing: If mwmem is 1, write the value in mqb to the memory at the read address
//    if (mwmem == 1) begin
//        //dataMemory[mr[7:2]] <= mqb;
//        dataMemory[malu] <= mb;
//    end
//end

//endmodule // End of the module


