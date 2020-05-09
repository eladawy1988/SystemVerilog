// continue


 
module tb;
    initial begin
 
      // This for loop increments i from 0 to 9 and exit
      for (int i = 0 ; i < 10; i++) begin 
 
        // Let's create a condition such that the 
        // for loop 
        if (i == 7) 
          continue;
 
        $display ("Iteration [%0d]", i);
      end
    end
endmodule  

 


/* output
Iteration [0]
Iteration [1]
Iteration [2]
Iteration [3]
Iteration [4]
Iteration [5]
Iteration [6]
Iteration [7]

*/
