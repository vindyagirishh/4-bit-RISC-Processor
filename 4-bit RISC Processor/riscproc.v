`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:04:43 05/05/26
// Design Name:    
// Module Name:    riscproc
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
module riscproc (
    input [1:0] opcode,
    output reg reg_we,
    output reg mem_we,
    output reg mem_to_reg,
    output reg [1:0] alu_op
);

always @(opcode) 
begin
    // Default values (prevents latches)
    reg_we = 0;
    mem_we = 0;
    mem_to_reg = 0;
    alu_op = 2'b00;

    case (opcode)
        2'b00: begin // ADD
            reg_we = 1;
            alu_op = 2'b00;
        end

        2'b01: begin // SUB
            reg_we = 1;
            alu_op = 2'b01;
        end

        2'b10: begin // LOAD
            reg_we = 1;
            mem_to_reg = 1;
        end

        2'b11: begin // STORE
            mem_we = 1;
        end
    endcase
end
endmodule