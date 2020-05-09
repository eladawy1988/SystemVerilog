// Example #3 - Adding multiple modifiers

 
module tb;
  string array [5] = '{"apple", "orange", "pear", "blueberry", "lemon"};
 
  initial begin
      for (int i = 0, j = array[i].len() - 1; i <  $size(array); i++, j--) begin
      array[i][j] = "0";
        $display ("array[%0d] = %s, %0dth index replaced by 0", i, array[i], j);
    end
  end
endmodule



/* output
array[0] = appl0, 4th index replaced by 0
array[1] = ora0ge, 3th index replaced by 0
array[2] = pe0r, 2th index replaced by 0
array[3] = b0ueberry, 1th index replaced by 0
array[4] = 0emon, 0th index replaced by 0
ncsim: *W,RNQUIE: Simulation is complete.

*/
