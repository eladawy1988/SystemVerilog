// Example 2: Immediate Assertion in Testbench

class Packet;
  rand bit [7:0] addr;
 
  constraint c_addr { addr > 5; addr < 3; }
endclass
 
module tb;
  initial begin
    Packet m_pkt = new();
 
    assert(m_pkt.randomize());
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
