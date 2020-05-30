// Simple Sequence


module tb;
    bit a;
    bit clk;
 
  // This sequence states that a should be high on every posedge clk
    sequence s_a;
      @(posedge clk) a;
    endsequence
 
    // When the above sequence is asserted, the assertion fails if 'a'
    // is found to be not high on any posedge clk
    assert property(s_a);
 
 
  always #10 clk = ~clk;
 
  initial begin
      for (int i = 0; i < 10; i++) begin        
        a = $random;
        @(posedge clk);
 
        // Assertion is evaluated in the preponed region and 
        // use $display to see the value of 'a' in that region
        $display("[%0t] a=%0d", $time, a);
      end
      #20 $finish;
    end
endmodule
 



/* output

<pre># [10] a=0
# ** Error: Assertion error.
#    Time: 10 ns Started: 10 ns  Scope: tb File: 3-assertion-Methods_1.sv Line: 15
# [30] a=1
# [50] a=1
# [70] a=1
# [90] a=1
# [110] a=1
# [130] a=1
# [150] a=0
# ** Error: Assertion error.
#    Time: 150 ns Started: 150 ns  Scope: tb File: 3-assertion-Methods_1.sv Line: 15
# [170] a=1
# [190] a=1
# ** Note: $finish    : 3-assertion-Methods_1.sv(29)
#    Time: 210 ns  Iteration: 0  Instance: /tb
# End time: 12:39:18 on May 28,2020, Elapsed time: 0:00:06

*/
