// Array Locator Methods Optional 'with' clause



module tb;
  int array[9] = '{4, 7, 2, 5, 7, 1, 6, 3, 1};
  int res[$];
 
  initial begin   
    res = array.min();
    $display ("min          : %p", res);
 
    res = array.max();
    $display ("max          : %p", res);
 
    res = array.unique();
    $display ("unique       : %p", res);
 
    res = array.unique(x) with (x < 3);
    $display ("unique       : %p", res);
 
    res = array.unique_index;
    $display ("unique_index : %p", res);
  end
endmodule




/*output 

# min          : '{1}
# max          : '{7}
# unique       : '{1, 2, 3, 4, 5, 6, 7}
# unique       : '{4, 2}
# unique_index : '{5, 2, 7, 0, 3, 6, 1}


*/
