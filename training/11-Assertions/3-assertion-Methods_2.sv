// S$rose example


module tb;
    bit a;
    bit clk;
 
  // This sequence states that 'a' should rise on every posedge clk
    sequence s_a;
      @(posedge clk) $rose(a);
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
# ** Error: Assertion error.
#    Time: 10 ns Started: 10 ns  Scope: tb File: 3-assertion-Methods_2.sv Line: 15
# [30] a=1
# [50] a=1
# ** Error: Assertion error.
#    Time: 50 ns Started: 50 ns  Scope: tb File: 3-assertion-Methods_2.sv Line: 15
# [70] a=1
# ** Error: Assertion error.
#    Time: 70 ns Started: 70 ns  Scope: tb File: 3-assertion-Methods_2.sv Line: 15
# [90] a=1
# ** Error: Assertion error.
#    Time: 90 ns Started: 90 ns  Scope: tb File: 3-assertion-Methods_2.sv Line: 15
# [110] a=1
# ** Error: Assertion error.
#    Time: 110 ns Started: 110 ns  Scope: tb File: 3-assertion-Methods_2.sv Line: 15
# [130] a=1
# ** Error: Assertion error.
#    Time: 130 ns Started: 130 ns  Scope: tb File: 3-assertion-Methods_2.sv Line: 15
# [150] a=0
# ** Error: Assertion error.
#    Time: 150 ns Started: 150 ns  Scope: tb File: 3-assertion-Methods_2.sv Line: 15
# [170] a=1
# [190] a=1
# ** Error: Assertion error.
#    Time: 190 ns Started: 190 ns  Scope: tb File: 3-assertion-Methods_2.sv Line: 15
# ** Note: $finish    : 3-assertion-Methods_2.sv(29)
#    Time: 210 ns  Iteration: 0  Instance: /tb
# End time: 12:49:52 on May 28,2020, Elapsed time: 0:00:05



*/
