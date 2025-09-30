`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT JAMMU
// Engineer: WASEEM
// 
// Create Date: 30.09.2025 00:54:39
// Design Name: SISO
// Module Name: SIPO_shift_register_4bit
// Project Name: SHIFT_REGISTERS
//////////////////////////////////////////////////////////////////////////////////


module SIPO_shift_register_4bit(
input D,clk,reset,
output reg [3:0]Q);
reg [3:0]q;
always@(posedge clk or reset)
begin 
if(reset)
q <=4'b0000;
else 
q <= {D,q[3:1]};
Q[0] <= q[3];
Q[1] <= q[2];
Q[2] <= q[1];
Q[3] <= q[0];
end
endmodule
