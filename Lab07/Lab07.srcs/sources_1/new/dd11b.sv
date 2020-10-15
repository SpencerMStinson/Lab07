`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2020 05:01:45 PM
// Design Name: 
// Module Name: dd11b
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


module dd11b(
    input [10:0] B,
    output [3:0] ones,
    output [3:0] tens,
    output [3:0] hundreds,
    output [3:0] thousands
    );
    wire [3:0] c1o;
    wire [3:0] c2o;
    wire [3:0] c3o;
    wire [3:0] c4o;
    wire [3:0] c5o;
    wire [3:0] c6o;
    wire [3:0] c7o;
    wire [3:0] c9o;
    wire [3:0] c10o; 
    wire [3:0] c11o;
    wire [3:0] c12o; 
    wire [3:0] c14o;
         
     add3 C1 (
    .num({1'b0 , B[10:8]}), 
    .numout(c1o[3:0])
    );
    
    add3 C2(
    .num({c1o[2:0], B[7]}), 
    .numout(c2o [3:0])
    );
    
     add3 C3(
    .num({c2o[2:0], B[6]}), 
    .numout(c3o[3:0])
    );
    
    add3 C4 (
    .num({c3o[2:0] , B[5]}), 
    .numout(c4o[3:0])
    );
    
    add3 C5(
    .num({c4o[2:0], B[4]}), 
    .numout(c5o[3:0])
    );
    
     add3 C6(
    .num({c5o[2:0], B[3]}), 
    .numout(c6o[3:0])
    );
    
     add3 C7 (
    .num({c6o[2:0] , B[2]}), 
    .numout(c7o[3:0])
    );
    
    add3 C8(
    .num({c7o[2:0], B[1]}), 
    .numout({tens[0], ones[3:1]})
    );
    
     add3 C9(
    .num({0, c1o[3], c2o[3], c3o[3]}), 
    .numout(c9o[3:0])
    );
     
     add3 C10(
    .num({c9o[2:0], c4o[3]}), 
    .numout(c10o[3:0])
    );
    
    add3 C11(
    .num({c10o[2:0], c5o[3]}), 
    .numout(c11o[3:0])
    );
   
    add3 C12(
    .num({c11o[2:0], c6o[3]}), 
    .numout(c12o[3:0])
    );
    
     add3 C13(
    .num({c12o[2:0], c7o[3]}), 
    .numout({hundreds[0], tens[3:1]})
    );
    
    add3 C14(
    .num({1'b0, c9o[3], c10o[3], c11o[3]}), 
    .numout({thousands[1], c14o[2:0]})
    );
    
    add3 C15(
    .num({c14o[2:0], c12o[3]}), 
    .numout({thousands[0],hundreds[3:1]})
    );
    
    assign ones[0] = B[0];
    assign thousands[3:2]= 2'b00;
endmodule
