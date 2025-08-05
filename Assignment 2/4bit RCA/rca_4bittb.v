`timescale 1ns / 1ps

module rca_4bittb;
reg [3:0] a, b;
reg Cin;
wire [3:0] sum;
wire Cout;

rca_4bit uut(.a(a), .b(b), .Cin(Cin), .sum(sum), .Cout(Cout));
initial begin
        $display("Time\t a\t b\t Cin\t|\t sum\t Cout");
        $monitor("%0dns\t %b\t %b\t %b\t|\t %b\t %b", 
                  $time, a, b, Cin, sum, Cout);
        a = 4'b0000; b = 4'b0000; Cin = 0; #10;
        a = 4'b0001; b = 4'b0010; Cin = 0; #10;
        a = 4'b0101; b = 4'b0011; Cin = 0; #10;
        a = 4'b1111; b = 4'b0001; Cin = 0; #10;
        a = 4'b1111; b = 4'b1111; Cin = 1; #10;
        a = 4'b1000; b = 4'b1000; Cin = 1; #10;
        $finish;
        end
endmodule
