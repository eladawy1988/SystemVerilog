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
    // Ensure that both signals are high at posedge clk
    assert property (@(posedge clk) a & b);   
 
  endmodule



/* output

[# [0] push=0 full=1 pop=1 empty=1
# [FAIL] pop when fifo empty !
# [10] push=1 full=0 pop=1 empty=1
# [PASS] push when fifo not full
# [FAIL] pop when fifo empty !
# [30] push=1 full=1 pop=1 empty=0
# [FAIL] push when fifo full !
# [PASS] pop when fifo not empty
# [50] push=1 full=0 pop=0 empty=1
# [PASS] push when fifo not full
# [70] push=1 full=1 pop=0 empty=1
# [FAIL] push when fifo full !
# ** Note: $finish    : 1-immediate-assertion.sv(48)
#    Time: 100 ns  Iteration: 0  Instance: /tb


*/
