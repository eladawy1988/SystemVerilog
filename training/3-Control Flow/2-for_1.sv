// Example #1 -  Array Iteration

 
module tb;
  string array [5] = '{"apple", "orange", "pear", "blueberry", "lemon"}; 
  initial begin
    for (int i = 0; i < $size(array); i++)
      $display ("array[%0d] = %s", i, array[i]);
  end
endmodule 
 



/* output
array[0] = apple
array[1] = orange
array[2] = pear
array[3] = blueberry
array[4] = lemon


*/
