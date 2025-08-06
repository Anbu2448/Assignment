`timescale 1ns / 1ps

module SISOtb;
    reg clk;
    reg rst;
    reg sin;
    wire sout;
 SISO uut (.clk(clk), .rst(rst), .sin(sin), .sout(sout));
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        $display("Time\tclk\trst\tsin\tq_out");
        $monitor("%0t\t%b\t%b\t%b\t%b", $time, clk, rst, sin, sout);
        rst = 1; sin = 0; #10;
        rst = 0; sin = 1; #10;
        $finish;
        end
endmodule
