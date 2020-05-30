// Example 1: coverpoint
 
module tb;
 
  bit [1:0] mode;
  bit [2:0] cfg;
 
  bit clk;
  always #20 clk = ~clk;
 
  // "cg" is a covergroup that is sampled at every posedge clk
  // This covergroup has two coverage points, one to cover "mode"
  // and the other to cover "cfg". Mode can take any value from
  // 0 -> 3 and cfg can take any value from 0 -> 7
  covergroup cg @ (posedge clk);
 
    // Coverpoints can optionally have a name before a colon ":"
    cp_mode    : coverpoint mode;
    cp_cfg_10  : coverpoint cfg[1:0];
    cp_cfg_lsb : coverpoint cfg[0];
    cp_sum     : coverpoint (mode + cfg);
  endgroup
 
  cg  cg_inst;
 
  initial begin
    cg_inst= new();
 
    for (int i = 0; i < 5; i++) begin
      @(negedge clk);
      mode = $random;
      cfg  = $random;
      $display ("[%0t] mode=0x%0h cfg=0x%0h", $time, mode, cfg);
    end
  end
 
  initial begin
    #500 $display ("Coverage = %0.2f %%", cg_inst.get_inst_coverage());
    $finish;
  end
endmodule

 
  // At the end of 500ns, terminate test and print collected coverage
  initial begin
    #500 $display ("Coverage = %0.2f %%", cg_inst.get_inst_coverage());
    $finish;
  end
endmodule


/* output
[40] mode=0x0 cfg=0x1
[80] mode=0x1 cfg=0x3
[120] mode=0x1 cfg=0x5
[160] mode=0x1 cfg=0x2
[200] mode=0x1 cfg=0x5
Coverage = 78.12 %




*/
