`timescale 1ns / 1ps

module memory_model;
  reg [7:0] mem [7:0]; 
  integer i;
  reg [7:0] read_data;
  initial begin
    for (i = 0; i < 8; i = i + 1) begin
      mem[i] = i * 3;  
    end
    for (i = 0; i < 8; i = i + 1) begin
      read_data = mem[i];
      $display("mem[%0d] = %0d (0x%0h)", i, read_data, read_data);
    end
  end
endmodule
