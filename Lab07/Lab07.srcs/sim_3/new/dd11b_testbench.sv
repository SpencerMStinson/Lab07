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


module dd11b_testbench();
   integer i ;
   
    reg [10:0] B_t;
    wire [3:0] ones_t;
    wire [3:0] tens_t;
    wire [3:0] hundreds_t;
    wire [3:0] thousands_t;

dd11b dut(
.B(B_t), .ones(ones_t), .tens(tens_t), .hundreds(hundreds_t), .thousands(thousands_t)
);

initial begin 
for (i=0; i <= 11'b11111111111; i=i+1) begin
    B_t = i;
    #10; 
    end
$finish ;
end




endmodule 