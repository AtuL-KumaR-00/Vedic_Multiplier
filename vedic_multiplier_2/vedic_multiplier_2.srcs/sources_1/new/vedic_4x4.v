`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2022 10:57:21 PM
// Design Name: 
// Module Name: vedic_4x4
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


module vedic_4x4(a,b,c);
    input [3:0]a;
    input [3:0]b;
    output [7:0]c;
    wire [7:0]c;
    wire [3:0]q0;	
    wire [3:0]q1;	
    wire [3:0]q2;
    wire [3:0]q3;
    wire [5:0]temp1;
    wire [5:0]temp2;
    
    vedic_2x2 ins3(.A(a[1:0]),.B(b[1:0]),.C(q0));
    vedic_2x2 ins4(.A(a[3:2]),.B(b[1:0]),.C(q1));
    vedic_2x2 ins5(.A(a[1:0]),.B(b[3:2]),.C(q2));
    vedic_2x2 ins6(.A(a[3:2]),.B(b[3:2]),.C(q3));
    
    assign temp1 = {q1,2'b00} + {2'b00,q0};
    assign temp2 = temp1 + {q2,2'b00};
    assign c = {q3,4'b0000} + {2'b00,temp2};
    
endmodule

module vedic_2x2(A,B,C);
    input [1:0]A;
    input [1:0]B;
    output [3:0]C;
    
    wire [3:0]C;
    wire [3:0]temp ;
    //wire [3:0]C;
 
    assign C[0]=A[0]&B[0];
    assign temp[0] = A[1] & B[0];
    assign temp[1] = A[0] & B[1];
    assign temp[2] = A[1] & B[1];
    half_adder ins1(.a(temp[0]),.b(temp[1]),.sum(C[1]),.carry(temp[3]));
    half_adder ins2(.a(temp[2]),.b(temp[3]),.sum(C[2]),.carry(C[3]));
    //always @(c) C=c;
endmodule

module half_adder(a,b,sum, carry);
    input a;
    input b;
    output sum;
    output carry;
    wire sum;
    wire carry;
    assign sum = a ^ b;
    assign carry = a & b;
endmodule
