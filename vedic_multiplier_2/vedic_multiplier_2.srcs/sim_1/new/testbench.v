`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2022 10:58:46 PM
// Design Name: 
// Module Name: testbench
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
module testbench;
    reg [3:0]a;
    reg [3:0]b;
    wire [7:0]c;
    vedic_4x4 uut(.a(a),.b(b),.c(c));
    initial begin
//    $monitor($time," a= %b, b=%b,  --- c= %b\n", 
//              a, b, c);
        #10;
        a=0;b=0;
        #100;
        a=4;b=2;
        #100;
        a=10;b=5;
        #100;
        a=9;b=
        
    end
//    initial begin
//    #100 $finish;
//    end
endmodule