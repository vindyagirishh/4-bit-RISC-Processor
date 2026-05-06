`timescale 1ns / 1ps////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:15:53 05/05/26
// Design Name:    
// Module Name:    regfile
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

module regfile (
    input clk,
    input we,              // write enable
    input [1:0] rs,        // read select
    input [1:0] rd,        // write select
    input [3:0] wd,        // write data
    output [3:0] a,        // read data 1
    output [3:0] b         // read data 2
);

reg [3:0] R [3:0];        // 4 registers (R0–R3)

// Initialize registers
integer i;
initial begin
    for (i = 0; i < 4; i = i + 1)
        R[i] = 0;
end

assign a = R[rs];
assign b = R[rd];

always @(posedge clk) begin
    if (we)
        R[rd] <= wd;
end

endmodule
