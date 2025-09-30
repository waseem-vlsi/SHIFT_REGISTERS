module SIPO_shift_register_4bit_tb( );
    reg D, clk, reset;
    wire [3:0]Q;

    SIPO_shift_register_4bit DUT (.D(D), .clk(clk), .reset(reset), .Q(Q));

    // Clock generation (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial
     begin
       
        reset = 1'b1;
        D = 1'b0;
        #12 reset = 1'b0;
        #3 D = 1'b1;  
        #10 D = 1'b1; 
        #10 D = 1'b0; 
        #10 D = 1'b1; 
        #10 D = 1'b0; 
        #10 D = 1'b0; 
        #10 D = 1'b1; 

        #200 $finish;
    end
endmodule
