`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    23:11:51 05/05/26
// Design Name:    
// Module Name:    cpu
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

 module cpu (
    input clk,
    input reset
);

reg [3:0] pc;
wire [7:0] instr;

wire [1:0] opcode = instr[7:6];
wire [1:0] rd = instr[5:4];
wire [1:0] rs = instr[3:2];
wire [1:0] imm = instr[1:0];

wire [3:0] a, b, alu_out, mem_out, write_data;

wire reg_we, mem_we, mem_to_reg;
wire [1:0] alu_op;

// Modules
imem IM (.addr(pc), .instr(instr));
regfile RF (.clk(clk), .we(reg_we), .rs(rs), .rd(rd), .wd(write_data), .a(a), .b(b));
alu ALU (.a(a), .b(b), .op(alu_op), .y(alu_out));
dmem DM (.clk(clk), .we(mem_we), .addr(imm), .wd(a), .rd(mem_out));
riscproc CU (.opcode(opcode), .reg_we(reg_we), .mem_we(mem_we), .mem_to_reg(mem_to_reg), .alu_op(alu_op));

// MUX
assign write_data = (mem_to_reg) ? mem_out : alu_out;

// PC Logic
always @(posedge clk or posedge reset) begin
    if (reset)
        pc <= 0;
    else if (pc < 4)   // only valid instructions
        pc <= pc + 1;
    else
        pc <= pc;      // hold
end

endmodule

