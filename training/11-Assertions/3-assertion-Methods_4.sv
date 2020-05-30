// $stable example


module tb;
    bit a;
    bit clk;
 
  // This sequence states that 'a' should rise on every posedge clk
    sequence s_a;
      @(posedge clk) $stable(a);
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

# [10] a=0
# [30] a=1
# ** Error: Assertion error.
#    Time: 30 ns Started: 30 ns  Scope: tb File: 3-assertion-Methods_4.sv Line: 15
# [50] a=1
# [70] a=1
# [90] a=1
# [110] a=1
# [130] a=1
# [150] a=0
# ** Error: Assertion error.
#    Time: 150 ns Started: 150 ns  Scope: tb File: 3-assertion-Methods_4.sv Line: 15
# [170] a=1
# ** Error: Assertion error.
#    Time: 170 ns Started: 170 ns  Scope: tb File: 3-assertion-Methods_4.sv Line: 15
# [190] a=1
# ** Note: $finish    : 3-assertion-Methods_4.sv(29)
#    Time: 210 ns  Iteration: 0  Instance: /tb


*/
