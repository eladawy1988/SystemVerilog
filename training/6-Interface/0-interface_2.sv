// cpunter example

 
`timescale 1ns/1ns

interface cnt_if #(parameter WIDTH = 4) (input bit clk);
  logic       rstn;
  logic       load_en;
  logic [WIDTH-1:0] load;
  logic [WIDTH-1:0] count;
  logic       down;
  logic       rollover;
endinterface
 

 
// This module accepts an interface object as the port list
module counter_ud  #(parameter WIDTH = 4) (cnt_if _if);
  always @ (posedge _if.clk or negedge _if.rstn) begin
    if (!_if.rstn)
       _if.count <= 0;
    else 
      if (_if.load_en)
        _if.count <= _if.load;
      else begin
        if (_if.down)
          _if.count <= _if.count - 1;
        else
          _if.count <= _if.count + 1;
      end
  end
 
  assign _if.rollover = &_if.count;
endmodule



// Interface definition is the same as before
 
module tb;
  reg clk;
 
  // TB Clock Generator used to provide the design
  // with a clock -> here half_period = 10ns => 50 MHz
  always #10 clk = ~clk;
 
  cnt_if     cnt_if0 (clk);
 
  // Note that here we just have to pass the interface handle
  // to the design instead of connecting each individual signal
  counter_ud  c0 (cnt_if0);
 
  // Stimulus remains the same as before

 initial begin
    bit load_en, down;
    bit [3:0] load;
    int delay;
 
    $monitor("[%0t] down=%0b load_en=%0b load=0x%0h count=0x%0h rollover=%0b", 
      $time, cnt_if0.down, cnt_if0.load_en, cnt_if0.load, cnt_if0.count, cnt_if0.rollover);
 
    // Initialize testbench variables
    clk <= 0;
    cnt_if0.rstn <= 0;
    cnt_if0.load_en <= 0;
    cnt_if0.load <= 0;
    cnt_if0.down <= 0;
 
    // Drive design out of reset after 5 clocks
    repeat (5) @(posedge clk);
    cnt_if0.rstn <= 1;
 
    // Drive stimulus -> repeat 5 times
    for (int i = 0; i < 5; i++) begin
 
      // Drive inputs after some random delay 
       delay = $urandom_range (1,30);
      #(delay);
 
      // Randomize input values to be driven
      std::randomize(load, load_en, down);
 
      // Assign tb values to interface signals
      cnt_if0.load <= load;
      cnt_if0.load_en <= load_en;
      cnt_if0.down <= down;
    end
 
    // Wait for 5 clocks and finish simulation
    repeat(5) @ (posedge clk);
    $finish;
  end
endmodule

/* output

# [0] down=0 load_en=0 load=0x0 count=0x0 rollover=0
# [110] down=0 load_en=0 load=0x0 count=0x1 rollover=0
# [119] down=0 load_en=0 load=0xc count=0x1 rollover=0
# [130] down=0 load_en=0 load=0xc count=0x2 rollover=0
# [139] down=0 load_en=0 load=0x6 count=0x2 rollover=0
# [143] down=1 load_en=1 load=0x8 count=0x2 rollover=0
# [150] down=1 load_en=1 load=0x8 count=0x8 rollover=0
# [170] down=0 load_en=1 load=0xc count=0x8 rollover=0
# [183] down=0 load_en=1 load=0x0 count=0x8 rollover=0
# [190] down=0 load_en=1 load=0x0 count=0x0 rollover=0




*/
