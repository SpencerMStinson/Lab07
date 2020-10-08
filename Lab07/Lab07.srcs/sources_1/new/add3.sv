`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 11:42:33 AM
// Design Name: 
// Module Name: add3
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


module add3(
    input [3:0] num,
    output reg [3:0] numout
    );
    always @* 
    if (num > 4)
        numout = num + 3 ;
    else 
       numout = num ;

endmodule
