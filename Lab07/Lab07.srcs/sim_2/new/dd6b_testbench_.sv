`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 11:57:16 AM
// Design Name: 
// Module Name: add3_testbench
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


module dd6b_testbench_ ();
integer i;
    reg  [5:0] B_t;
    wire [3:0] tens_t;
    wire [3:0] ones_t;

dd6b dut(
.B(B_t), .tens(tens_t), .ones(ones_t)
);
initial begin 
for (i=0; i <= 6'h111111; i=i+1) begin
    B_t = i;
    #10; 
    end
$finish ;
end

endmodule 