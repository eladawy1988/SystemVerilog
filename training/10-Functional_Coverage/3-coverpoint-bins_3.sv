// Fixed Number of automatic bins


 
module tb;
  bit [2:0] mode;
 
  // This covergroup does not get sample automatically because
  // the sample event is missing in declaration
   covergroup cg;
    coverpoint mode {
 
      // Declares 4 bins for the total range of 8 values
      // So bin0->[0:1] bin1->[2:3] bin2->[4:5] bin3->[6:7]
      bins range[4] = {[0:$]};
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
Coverage = 75.00 %
ncsim: *W,RNQUIE: Simulation is complete.


*/
