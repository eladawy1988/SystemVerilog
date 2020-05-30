// Example #1

module tb;
      bit a, b;
      bit clk;
 
      always #10 clk = ~clk;
 
      initial begin
          for (int i = 0; i < 10; i++) begin
              @(posedge clk);
              a <= $random;
              b <= $random;
              $display("[%0t] a=%0b b=%0b", $time, a, b);
          end
          #10 $finish;
      end
 
    // This assertion runs for entire duration of simulation
    // Ensure that atleast 1 of the two signals is high on every clk
    assert property (@(posedge clk) a | b);   
 
  endmodule 


/* output

# [10] a=0 b=0
# ** Error: Assertion error.
#    Time: 10 ns Started: 10 ns  Scope: tb File: 2-concurrent-assertions_2.sv Line: 21
# [30] a=0 b=1
# [50] a=1 b=1
# [70] a=1 b=1
# [90] a=1 b=0
# [110] a=1 b=1
# [130] a=0 b=1
# [150] a=1 b=0
# [170] a=1 b=0
# [190] a=1 b=0
# ** Note: $finish    : 2-concurrent-assertions_2.sv(16)



*/
