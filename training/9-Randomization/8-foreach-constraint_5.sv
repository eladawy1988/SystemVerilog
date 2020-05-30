// Example : Array Reduction Iterative Constraint


class ABC;
  rand bit[3:0] array [5];
 
  // Intrepreted as int'(array[0]) + int'(array[1]) + .. + int'(array[4]) == 20;
  constraint c_sum { array.sum() with (int'(item)) == 20; }
 
endclass
 
module tb;
  initial begin
    ABC abc = new;
    abc.randomize();
    $display ("array = %p", abc.array);
  end
endmodule
 



/* output

array = '{'h4, 'h2, 'h2, 'h4, 'h8}

*/
