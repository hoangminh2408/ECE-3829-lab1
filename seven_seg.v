`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2019 03:12:02 AM
// Design Name: 
// Module Name: seven_seg
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


module seven_seg(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input SEL1,
    input SEL2,
    output reg [6:0] segs,
    output reg an0,
    output reg an1,
    output reg an2,
    output reg an3
    );
    
    parameter zero = 7'b1000000;
    parameter one = 7'b1111001;
    parameter two = 7'b0100100;
    parameter three = 7'b0110000;
    parameter four = 7'b0011001;
    parameter five = 7'b0010010;
    parameter six = 7'b0000010;
    parameter seven = 7'b1111000;
    parameter eight = 7'b0000000;
    parameter nine = 7'b0010000;
    parameter ten = 7'b0001000;
    parameter eleven = 7'b0000011;
    parameter twelve = 7'b1000110;
    parameter thirteen = 7'b0100001;
    parameter fourteen = 7'b0000110;
    parameter fifteen = 7'b0001110;
    
    always @(SEL1)
        if(SEL1 && !SEL2) begin
             an0 = 1; an1 = 0; an2 = 1; an3 = 1;
             case(B)
                4'b0000: segs = zero;
                4'b0001: segs = one;
                4'b0010: segs = two;
                4'b0011: segs = three;
                4'b0100: segs = four;
                4'b0101: segs = five;
                4'b0110: segs = six;
                4'b0111: segs = seven;
                4'b1000: segs = eight;
                4'b1001: segs = nine;
                4'b1010: segs = ten;
                4'b1011: segs = eleven;
                4'b1100: segs = twelve;
                4'b1101: segs = thirteen;
                4'b1110: segs = fourteen;
                4'b1111: segs = fifteen;
            endcase
        end else if (SEL2 && !SEL1) begin
            an0 = 1; an1 = 1; an2 = 0; an3 = 1;
            case(C)
                4'b0000: segs = zero;
                4'b0001: segs = one;
                4'b0010: segs = two;
                4'b0011: segs = three;
                4'b0100: segs = four;
                4'b0101: segs = five;
                4'b0110: segs = six;
                4'b0111: segs = seven;
                4'b1000: segs = eight;
                4'b1001: segs = nine;
                4'b1010: segs = ten;
                4'b1011: segs = eleven;
                4'b1100: segs = twelve;
                4'b1101: segs = thirteen;
                4'b1110: segs = fourteen;
                4'b1111: segs = fifteen;
            endcase
         end else if (!SEL1 && !SEL2) begin
            an0 = 0; an1 = 1; an2 = 1; an3 = 1;
            case (A)
                4'b0000: segs = zero;
                4'b0001: segs = one;
                4'b0010: segs = two;
                4'b0011: segs = three;
                4'b0100: segs = four;
                4'b0101: segs = five;
                4'b0110: segs = six;
                4'b0111: segs = seven;
                4'b1000: segs = eight;
                4'b1001: segs = nine;
                4'b1010: segs = ten;
                4'b1011: segs = eleven;
                4'b1100: segs = twelve;
                4'b1101: segs = thirteen;
                4'b1110: segs = fourteen;
                4'b1111: segs = fifteen;
            endcase
          end else begin
            an0 = 1; an1 = 1; an2 = 1; an3 = 0;
            case (D)
                4'b0000: segs = zero;
                4'b0001: segs = one;
                4'b0010: segs = two;
                4'b0011: segs = three;
                4'b0100: segs = four;
                4'b0101: segs = five;
                4'b0110: segs = six;
                4'b0111: segs = seven;
                4'b1000: segs = eight;
                4'b1001: segs = nine;
                4'b1010: segs = ten;
                4'b1011: segs = eleven;
                4'b1100: segs = twelve;
                4'b1101: segs = thirteen;
                4'b1110: segs = fourteen;
                4'b1111: segs = fifteen;
            endcase
            end       
                
endmodule
