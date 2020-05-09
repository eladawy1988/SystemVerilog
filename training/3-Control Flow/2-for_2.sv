// Example #2 -  Multiple Initializations

module tb;
  string array [5] = '{"apple", "orange", "pear", "blueberry", "lemon"};
 
  initial begin
      for (int i = 0, j = 2; i < $size(array); i++) begin
      array[i][j] = "0";
        $display ("array[%0d] = %s, %0dth index replaced by 0", i, array[i], j);
    end
  end
endmodule




/* output
# array[0] = ap0le, 2th index replaced by 0
# array[1] = or0nge, 2th index replaced by 0
# array[2] = pe0r, 2th index replaced by 0
# array[3] = bl0eberry, 2th index replaced by 0
# array[4] = le0on, 2th index replaced by 0


*/
