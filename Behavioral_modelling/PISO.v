`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: IIT JAMMU
// Engineer: WASEEM
// 
// Create Date: 30.09.2025 00:54:39
// Design Name: SISO
// Module Name: SIPO_shift_register_4bit
// Project Name: SHIFT_REGISTERS
// 
//////////////////////////////////////////////////////////////////////////////////


module PISO_shift_register_4bit(
input [3:0]D,
input clk,reset, load,
output reg Q);
reg [3:0]q;
always@(posedge clk or posedge reset)
begin 
if(reset)
q <= 4'b0000;
else if (load == 1)
q <= D;
else if (load == 0)
  q <= {1'b0, q[3:1]}; 
  end 
  always@(*)
  begin 
  Q = q[0]; 
  end 
endmodule
