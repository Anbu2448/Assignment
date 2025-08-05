`timescale 1ns / 1ps

module mux8to1usingmux4to1tb;
reg [7:0]a;
reg [2:0]s;
wire c;

mux8to1usingmux4to1 uut(.a(a), .s(s), .c(c));
initial begin
    $display("time\t s\t a\t\t c");
    $monitor("%0t\t %b\t %b\t %b", $time,s,a,c); 
    s=3'b000; #10;
    s=3'b001; #10;
    s=3'b010; #10;
    s=3'b011; #10;
    s=3'b100; #10;
    s=3'b101; #10;
    s=3'b110; #10;
    s=3'b111; #10;
    $finish;
    end
endmodule
