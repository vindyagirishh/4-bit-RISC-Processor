

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:19:09 05/05/2026
// Design Name:   cpu
// Module Name:   cpu_tb.v
// Project Name:  riscproc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////



module cpu_tb;

reg clk, reset;

cpu uut (.clk(clk), .reset(reset));

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;        // ? VERY IMPORTANT
    reset = 1;

    #10 reset = 0;  // ? release reset

    #80 $finish;   // ? simulation time
end

endmodule