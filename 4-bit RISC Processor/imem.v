`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:12:45 05/05/26
// Design Name:    
// Module Name:    imem
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

	  module imem (
    input [3:0] addr,
    output [7:0] instr
);

reg [7:0] mem [15:0];

initial begin
    mem[0] = 8'b10_00_00_01; // LOAD R0, [1]
    mem[1] = 8'b10_01_00_10; // LOAD R1, [2]
    mem[2] = 8'b00_00_01_00; // ADD R0, R1
    mem[3] = 8'b11_00_00_11; // STORE R0, [3]
	  mem[4] = 8'b00000000;
    mem[5] = 8'b00000000;
    mem[6] = 8'b00000000;
    mem[7] = 8'b00000000;
end

assign instr = mem[addr];

endmodule

