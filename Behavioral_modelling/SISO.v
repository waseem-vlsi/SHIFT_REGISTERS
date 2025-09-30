`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT JAMMU
// Engineer: WASEEM
// 
// Create Date: 30.09.2025 00:54:39
// Design Name: SISO
// Module Name: SISO_shift_register_4bit
// Project Name: SHIFT_REGISTERS
//////////////////////////////////////////////////////////////////////////////////


module SISO_shift_register_4bit(
input D,clk,reset,
output reg Q);
reg [3:0]q;
always@(posedge clk or reset)
begin 
if(reset)
q <=4'b0000;
else 
q <= {D,q[3:1]};
Q <= q[0];
end
endmodule
