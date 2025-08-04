`timescale 1ns / 1ps
module memory_2d_model;
  reg [7:0] mem [3:0][3:0];
  integer row, col;
  initial begin
    for (row = 0; row < 4; row = row + 1) begin
      for (col = 0; col < 4; col = col + 1) begin
        mem[row][col] = row * 10 + col;
      end
    end
    $display("mem[3][2] = %0d (0x%0h)", mem[3][2], mem[3][2]);
    $display("-- Full 2D Memory Content --");
    for (row = 0; row < 4; row = row + 1) begin
      for (col = 0; col < 4; col = col + 1) begin
        $write("%3d ", mem[row][col]);
      end
      $write("\n");
    end
  end
endmodule

