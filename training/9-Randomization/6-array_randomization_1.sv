// Static Arrays randomize example

 
 
 
class Packet;
  rand bit [3:0]   s_array [7];   // Declare a static array with "rand"
endclass
 
module tb;
  Packet pkt;
 
  // Create a new packet, randomize it and display contents
  initial begin
    pkt = new();
    pkt.randomize();
    $display("queue = %p", pkt.s_array);
  end 
endmodule



/* output


queue = '{'hf, 'hf, 'h2, 'h9, 'he, 'h4, 'ha}


*/
