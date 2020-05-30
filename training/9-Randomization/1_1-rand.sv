// rand example

class Packet;
  rand bit [2:0] data;
endclass
 
module tb;
  initial begin
    Packet pkt = new ();
    for (int i = 0 ; i < 10; i++) begin
      pkt.randomize ();
      $display ("itr=%0d data=0x%0h", i, pkt.data);
    end
  end
endmodule



/* output


# itr=0 data=0x0
# itr=1 data=0x4
# itr=2 data=0x6
# itr=3 data=0x2
# itr=4 data=0x1
# itr=5 data=0x3
# itr=6 data=0x2
# itr=7 data=0x4
# itr=8 data=0x5
# itr=9 data=0x0



*/
