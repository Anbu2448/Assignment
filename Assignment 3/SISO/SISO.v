`timescale 1ns / 1ps

module SISO( 
    input wire clk,
    input wire rst,      
    input wire sin,       
    output reg sout     
);
    reg q0, q1, q2;      
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q0 <= 0;
            q1 <= 0;
            q2 <= 0;
            sout <= 0;
        end else begin
            sout <= q2;   
            q2 <= q1;
            q1 <= q0;
            q0 <= sin;  
        end
    end
endmodule

