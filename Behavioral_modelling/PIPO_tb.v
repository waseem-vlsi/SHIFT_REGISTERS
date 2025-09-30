
module PIPO_shift_register_4bit_tb();
    reg [3:0]D;
    reg clk, reset;
    wire [3:0]q;

    PIPO_shift_register_4bit DUT (.D(D), .clk(clk), .reset(reset), .q(q));

    // Clock generation (10 ns period)
    initial 
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial
     begin
       
        reset = 1'b1;
        D = 4'b0000;
        #12 reset = 1'b0;
        #3 D = 4'b1010;  
        #10 D = 4'b1111; 
        #10 D = 4'b0110; 
        #10 D = 4'b1101; 
        #10 D = 4'b0101; 

        #10 $finish;
    end
endmodule

