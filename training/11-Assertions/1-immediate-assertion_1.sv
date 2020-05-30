// Example 1: Immediate Assertion in Design

 interface my_if(input bit clk);
  logic pop;
  logic push;
  logic empty;
  logic full;
endinterface
 
module my_des (my_if _if);
  always @ (posedge _if.clk) begin
    if (_if.push) begin
      // Immediate assertion and ensures that
      // fifo is not full when push is 1
      a_push: assert (!_if.full) begin
          $display("[PASS] push when fifo not full");
      end else begin
          $display("[FAIL] push when fifo full !");
      end
    end 
    if (_if.pop) begin
      // Immediate assertion to ensure that fifo is not 
      // empty when pop is 1
      a_pop: assert (!_if.empty) begin
          $display ("[PASS] pop when fifo not empty");
      end else begin
          $display ("[FAIL] pop when fifo empty !");
      end
    end
  end
endmodule 

module tb;
  bit clk;
  always #10 clk <= ~clk;
  my_if _if (clk);  
  my_des u0 (.*);
  initial begin
    for (int i = 0; i < 5; i++) begin
      _if.push  <= $random;
      _if.pop   <= $random;
      _if.empty <= $random;
      _if.full  <= $random;
      $strobe("[%0t] push=%0b full=%0b pop=%0b empty=%0b",
              $time, _if.push, _if.full, _if.pop, _if.empty);
      @(posedge clk);
    end
    #10 $finish;
  end             
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
