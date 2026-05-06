`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:06:42 05/05/26
// Design Name:    
// Module Name:    dmem
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
module dmem (
    input clk,
    input we,
    input [1:0] addr,
    input [3:0] wd,
    output [3:0] rd
);

reg [3:0] mem [3:0];

// Initialize memory
initial begin
    mem[0] = 0;
    mem[1] = 2; // value
    mem[2] = 3; // value
    mem[3] = 0;
end

assign rd = mem[addr];

always @(posedge clk) begin
    if (we)
        mem[addr] <= wd;
end

endmodule