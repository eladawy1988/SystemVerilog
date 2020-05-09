// Example #2: Multidimensional Arrays

 
module tb;
  int md_array [5][2] = '{'{1,2}, '{3,4}, '{5,6}, '{7,8}, '{9,10}};
 
  initial begin
      // First iterate through the first dimension using "i"
      foreach (md_array[i])
        // For each element in first dimension "i", iterate through the
        // second dimension using "j"
        foreach (md_array[i][j])
          $display("md_array[%0d][%0d] = %0d", i, j, md_array[i][j]);      
  end
endmodule
 



/* output
md_array[0][0] = 1
md_array[0][1] = 2
md_array[1][0] = 3
md_array[1][1] = 4
md_array[2][0] = 5
md_array[2][1] = 6
md_array[3][0] = 7
md_array[3][1] = 8
md_array[4][0] = 9
md_array[4][1] = 10

*/
