// Example-2 : SystemVerilog repeat


module tb;
  bit clk;
  always #10 clk = ~clk;
 
  initial begin
    bit [2:0] num = $random;
 
    $display ("[%0t] Repeat loop is going to start with num = %0d", $time, num);
    repeat (num) @(posedge clk);
    $display ("[%0t] Repeat loop has finished", $time);
    $finish;
  end
endmodule


/* output

# [0] Repeat loop is going to start with num = 4
# [70] Repeat loop has finished

*/
