`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT JAMMU
// Engineer: WASEEM
// 
// Create Date: 30.09.2025 00:54:39
// Design Name: SISO
// Module Name: PIPO_shift_register_4bit_tb
// Project Name: SHIFT_REGISTERS
// 
//////////////////////////////////////////////////////////////////////////////////


module PIPO_shift_register_4bit(
input [3:0]D,
input clk,reset,
output reg [3:0]q);
always@(posedge clk or reset)
begin 
if(reset)
q <=4'b0000;
else
begin 
q[0] <= D[0];
q[1] <= D[1];
q[2] <= D[2];
q[3] <= D[3];
end
end
endmodule
