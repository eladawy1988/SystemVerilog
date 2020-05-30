// Example 1: covergroup
 
module tb;
 
  // Declare some variables that can be "sampled" in the covergroup
  bit [1:0] mode;
  bit [2:0] cfg;
 
  // Declare a clock to act as an event that can be used to sample
  // coverage points within the covergroup
  bit clk;
  always #20 clk = ~clk;
 
  // "cg" is a covergroup that is sampled at every posedge clk
  covergroup cg @ (posedge clk);
    coverpoint mode;
  endgroup
 
  // Create an instance of the covergroup
  cg  cg_inst;
 
  initial begin
    // Instantiate the covergroup object similar to a class object
    cg_inst= new();
 
    // Stimulus : Simply assign random values to the coverage variables
    // so that different values can be sampled by the covergroup object
    for (int i = 0; i < 5; i++) begin
      @(negedge clk);
      mode = $random;
      cfg  = $random;
      $display ("[%0t] mode=0x%0h cfg=0x%0h", $time, mode, cfg);
    end
  end
 
  // At the end of 500ns, terminate test and print collected coverage
  initial begin
    #500 $display ("Coverage = %0.2f %%", cg_inst.get_inst_coverage());
    $finish;
  end
endmodule


/* output
# [40] mode=0x0 cfg=0x1
# [80] mode=0x1 cfg=0x3
# [120] mode=0x1 cfg=0x5
# [160] mode=0x1 cfg=0x2
# [200] mode=0x1 cfg=0x5
# Coverage = 50.00 %
# ** Note: $finish    : 1-covergroup.sv(39)



*/
