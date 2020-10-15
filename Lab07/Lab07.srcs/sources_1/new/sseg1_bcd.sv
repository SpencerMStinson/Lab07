`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2020 08:30:57 PM
// Design Name: 
// Module Name: sseg1_bcd
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


module sseg1_bcd(
    input [15:0] sw,
    output dp,
    output [6:0] seg,
    output [3:0] an
    );
    wire [3:0] in0;
    wire [3:0] in1;
    wire [3:0] f;
    wire [3:0] g;

    wire [3:0] num; 
    
    dd11b m11( 
    .B(sw[10:0]), 
    .ones(in0), 
    .tens(in1), 
    .hundreds(f), 
    .thousands(g));
   
     mux4_2b mm( 
     .A(in1), 
     .B(in0), 
     .sel(sw [15]), 
     .out(num) );
   
    sseg_decoder ms(
    .num(num), 
    .sseg(seg));

    assign an[3:2] = 2'b11;
    assign dp = 1'b1;
    assign an[0] = ~sw[15];
    assign an[1] = sw[15] ;
  
endmodule
