`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 12:26:19 PM
// Design Name: 
// Module Name: dd6b
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


module dd6b(
    input [5:0] B,
    output [3:0] tens,
    output [3:0] ones
    );
   
    wire [2:0] c1_out;
    wire [2:0] c2_out;
   
    assign tens[3] = 1'b0 ;
   
    add3 C1 (
    .num({1'b0 , B[5:3]}), 
    .numout({tens[2], c1_out[2:0]})
    );
    
    add3 C2(
    .num({c1_out[2:0], B[2]}), 
    .numout({tens[1], c2_out[2:0]})
    );
    
     add3 C3(
    .num({c2_out[2:0], B[1]}), 
    .numout({tens[0], ones[3:1]})
    );
    
    assign ones[0] = B[0];
endmodule
