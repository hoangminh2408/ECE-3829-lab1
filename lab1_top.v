`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2019 06:46:35 PM
// Design Name: 
// Module Name: lab1_top
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


module lab1_top(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input SEL1,
    input SEL2,
    input SEL3,
    input SEL4,
    output wire [6:0] segs,
    output wire an0,
    output wire an1,
    output wire an2,
    output wire an3,
    output reg [15:0] led
    );
    seven_seg number_1(A, B, C, D, SEL1, SEL2, segs, an0, an1, an2, an3);
    always @ (SEL3)
    if (SEL3 && !SEL4) begin
        led = 0;
        led = 8'b1010110;
    end else if (!SEL3 && SEL4) begin
        led = 0;
        if (A + B >= 5'b10000) begin
            led = A + B - 5'b10000;
        end else
            led = A + B;
    end else if (SEL3 && SEL4) begin
        led = 0;
        led = 16'b0011100000101001;
    end else begin
        led = 0;
        led = A ^ B;
    end
endmodule
