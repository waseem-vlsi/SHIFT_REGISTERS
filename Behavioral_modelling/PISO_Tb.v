module PISO_shift_register_4bit_tb();
reg clk,reset, load;
reg [3:0]D;
wire Q;
PISO_shift_register_4bit DUT (.D(D), .clk(clk), .reset(reset), .load(load), .Q(Q));
initial
 begin 
 clk = 0;
 forever 
 #5 clk = ~clk;
 end 
 initial 
 begin 
 load = 1'b0; reset = 1'b1; D = 1'b0;
 #10 reset = 1'b0; 
 load = 1'b1;  D = 4'b1010;
 #10 load = 1'b0;
 #60 $finish;
 end 
 
endmodule
