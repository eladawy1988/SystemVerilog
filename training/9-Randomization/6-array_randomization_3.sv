//Dynamic Arrays randomize example

 
class Packet;
  rand bit [3:0]   queue [$];   // Declare a queue with "rand"
 
  // Constrain size of queue between 5 and 10  
  constraint c_array { queue.size() == 4; }
endclass
 
module tb;
  Packet pkt;
 
  // Create a new packet, randomize it and display contents
  initial begin
    pkt = new();
    pkt.randomize();
 
    // Tip : Use %p to display arrays
    $display("queue = %p", pkt.queue);
  end 
endmodule


/* output


queue = '{'hf, 'hf, 'h2, 'h9}


*/
