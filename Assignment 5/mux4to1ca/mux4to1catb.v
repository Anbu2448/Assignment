`timescale 1ns / 1ps

module mux4to1catb;
    reg i0, i1, i2, i3;
    reg S0, S1;
    wire Y;
    mux4to1ca uut (
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .S0(S0), .S1(S1),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t | S1=%b S0=%b | i3=%b i2=%b i1=%b i0=%b | Y=%b",
                  $time, S1, S0, i3, i2, i1, i0, Y);

        #10 i0 = 1; S0 = 0; S1 = 0;  
        #10 i1 = 1; S0 = 1; S1 = 0;  
        #10 i2 = 1; S0 = 0; S1 = 1; 
        #10 i3 = 1; S0 = 1; S1 = 1; 

        #10 i0 = 0; i1 = 0; i2 = 0; i3 = 0; 
        #10 $finish;
    end

endmodule

