// Example : Dynamic Arrays/Queues


class ABC;
  rand bit[3:0] darray [];     // Dynamic array -> size unknown
  rand bit[3:0] queue [$];     // Queue -> size unknown
 
  // Assign size for the queue if not already known
  constraint c_qsize  { queue.size() == 5; }
 
  // Constrain each element of both the arrays
  constraint c_array  { foreach (darray[i])                
                darray[i] == i;              
                        foreach (queue[i]) 
                          queue[i] == i + 1;
                      } 
 
    // Size of an array can be assigned using a constraint like
    // we have done for the queue, but let's assign the size before
    // calling randomization
    function new ();
    darray = new[5];   // Assign size of dynamic array
  endfunction
endclass
 
module tb;
 
  initial begin
    ABC abc = new;
    abc.randomize();
    $display ("array = %p
queue = %p", abc.darray, abc.queue);
  end
endmodule




/* output

array = '{'h0, 'h1, 'h2, 'h3, 'h4}
queue = '{'h1, 'h2, 'h3, 'h4, 'h5}


*/
