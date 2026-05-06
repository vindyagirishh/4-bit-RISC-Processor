		  `timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:14:41 05/05/26
// Design Name:    
// Module Name:    alu
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

 module alu (
    input [3:0] a,
    input [3:0] b,
    input [1:0] op,
    output reg [3:0] y
);

always @(a or b or op) begin
    case (op)
        2'b00: y = a + b;   // ADD
        2'b01: y = a - b;   // SUB
        2'b10: y = a & b;   // AND
        2'b11: y = a | b;   // OR
        default: y = 4'b0000;
    endcase
end

endmodule

