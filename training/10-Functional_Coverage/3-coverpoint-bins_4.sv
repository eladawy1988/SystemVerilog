// Split fixed number of bins between a given range


 
module tb;
  bit [2:0] mode;
 
  // This covergroup does not get sample automatically because
  // the sample event is missing in declaration
  covergroup cg;
    coverpoint mode {
 
      // Defines 3 bins 
      // Two bins for values from 1:4, and one bin for value 7
      // bin1->[1,2] bin2->[3,4], bin3->7
      bins range[3] = {[1:4], 7};
    }
  endgroup
  // Stimulus : Simply randomize mode to have different values and
  // manually sample each time
  initial begin
    cg cg_inst = new();
    for (int i = 0; i < 5; i++) begin
    #10 mode = $random;
      $display ("[%0t] mode = 0x%0h", $time, mode);
      cg_inst.sample();
    end
    $display ("Coverage = %0.2f %%", cg_inst.get_inst_coverage());
  end
 
endmodule



/* output

[10] mode = 0x4
[20] mode = 0x1
[30] mode = 0x1
[40] mode = 0x3
[50] mode = 0x5
Coverage = 66.67 %
ncsim: *W,RNQUIE: Simulation is complete.

*/
