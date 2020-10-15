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


module sseg1_bcd_testbench();
   integer i ;
   
    reg [15:0] sw_t;
    wire dp_t;
    wire [6:0] seg_t;
    wire [3:0] an_t;

sseg1_bcd dut (
.sw(sw_t), .dp(dp_t), .seg(seg_t), .an(an_t)
    );

initial begin 
for (i=0; i <= 16'b1111111111111111; i=i+1) begin
    sw_t = i;
    #10; 
    end
$finish ;
end

endmodule 