`timescale 1ns / 1ps

module threeconsecutive_clk_pulse(
    input clk,
    input reset_n,
    input x,
    output reg y
);

localparam S0  = 3'b000,  
        S1_0   = 3'b001,  
        S2_0   = 3'b010,  
        S3_0   = 3'b011,  
        S1_1   = 3'b100,  
        S2_1   = 3'b101,  
        S3_1   = 3'b110;  

     reg [2:0]state, next_state;
    always @(*) begin
        case (state)
            S0: begin
                if (x == 1'b0) 
                next_state = S1_0;
                else          
                 next_state = S1_1;
            end
            S1_0: begin
                if (x == 1'b0)
                 next_state = S2_0;
                else          
                 next_state = S1_1;
            end
            S2_0: begin
                if (x == 1'b0) 
                next_state = S3_0;
                else          
                 next_state = S1_1;
            end
            S3_0: begin
                if (x == 1'b0)
                 next_state = S3_0; 
                else          
                 next_state = S1_1;
            end
            S1_1: begin
                if (x == 1'b1)
                 next_state = S2_1;
                else          
                 next_state = S1_0;
            end
            S2_1: begin
                if (x == 1'b1)
                 next_state = S3_1;
                else          
                 next_state = S1_0;
            end
            S3_1: begin
                if (x == 1'b1) 
                 next_state = S3_1;
                else          
                 next_state = S1_0;
            end
            default: next_state = S0;
        endcase
    end

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            state <= S0;
            y <= 1'b0;
        end else begin
            state <= next_state;
            case (next_state)
                S3_0, S3_1: y <= 1'b1;
                default:y <= 1'b0;
            endcase
        end
    end
endmodule