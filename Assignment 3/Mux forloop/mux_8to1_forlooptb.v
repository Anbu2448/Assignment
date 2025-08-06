`timescale 1ns / 1ps

module mux_8to1_forlooptb;
reg [7:0]a0;
reg [2:0]s0;
wire y;

mux_8to1_forloop uut(.a0(a0), .s0(s0), .y(y));
initial begin
    $monitor("%0t\a0t %b\s0t %b\yt %b",$time, a0,s0,y);
    a0=8'b11010110;
    s0=3'b000;#10
    s0=3'b001;#10
    s0=3'b010;#10
    s0=3'b011;#10
    s0=3'b100;#10
    s0=3'b101;#10
    s0=3'b110;#10
    s0=3'b111;#10
    $finish;
    end
endmodule
