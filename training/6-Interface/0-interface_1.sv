// cpunter example


module counter_ud 
  #(parameter WIDTH = 4)
  ( 
  input           clk,
  input           rstn,
  input wire [WIDTH-1:0]  load,
  input           load_en,
  input           down,
  output           rollover,
  output reg [WIDTH-1:0]  count 
);
 
  always @ (posedge clk or negedge rstn) begin
    if (!rstn)
       count <= 0;
    else 
      if (load_en)
        count <= load;
      else begin
        if (down)
          count <= count - 1;
        else
          count <= count + 1;
      end
  end
 
  assign rollover = &count;
endmodule 


interface cnt_if #(parameter WIDTH = 4) (input bit clk);
  logic       rstn;
  logic       load_en;
  logic [WIDTH-1:0] load;
  logic [WIDTH-1:0] count;
  logic       down;
  logic       rollover;
endinterface
 
module tb;
  reg clk;
 
  // TB Clock Generator used to provide the design
  // with a clock -> here half_period = 10ns => 50 MHz
  always #10 clk = ~clk;
 
  cnt_if     cnt_if0 (clk);
  counter_ud  c0 (   .clk     (cnt_if0.clk),
                    .rstn     (cnt_if0.rstn),
                    .load     (cnt_if0.load),
                    .load_en   (cnt_if0.load_en),
                    .down     (cnt_if0.down),
                    .rollover   (cnt_if0.rollover),
                    .count     (cnt_if0.count));
 
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
