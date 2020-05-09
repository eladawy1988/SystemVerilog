// Array Ordering Methods



module tb;
  int array[9] = '{4, 7, 2, 5, 7, 1, 6, 3, 1};
 
  initial begin   
    array.reverse();
    $display ("reverse  : %p", array);
 
    array.sort();
    $display ("sort     : %p", array);
 
    array.rsort();
    $display ("rsort    : %p", array);
 
    for (int i = 0; i < 5; i++) begin
      array.shuffle();
      $display ("shuffle Iter:%0d  = %p", i, array);
    end
  end
endmodule



/*output 

# reverse  : '{1, 3, 6, 1, 7, 5, 2, 7, 4}
# sort     : '{1, 1, 2, 3, 4, 5, 6, 7, 7}
# rsort    : '{7, 7, 6, 5, 4, 3, 2, 1, 1}
# shuffle Iter:0  = '{3, 7, 7, 6, 1, 5, 4, 2, 1}
# shuffle Iter:1  = '{1, 4, 2, 1, 3, 5, 6, 7, 7}
# shuffle Iter:2  = '{1, 5, 7, 3, 4, 6, 1, 7, 2}
# shuffle Iter:3  = '{7, 7, 1, 4, 5, 3, 2, 6, 1}
# shuffle Iter:4  = '{1, 7, 7, 6, 2, 5, 3, 4, 1}



*/
