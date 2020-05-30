// Example : With solve - before


class ABC;
  rand  bit      a;
  rand  bit [1:0]   b;
 
  constraint c_ab { a -> b == 3'h3; 
 
            // Tells the solver that "a" has
            // to be solved before attempting "b"
            // Hence value of "a" determines value 
            // of "b" here
                    solve a before b;
                  }
endclass
 
module tb;
  initial begin
    ABC abc = new;
    for (int i = 0; i < 8; i++) begin
      abc.randomize();
      $display ("a=%0d b=%0d", abc.a, abc.b);
    end
  end
endmodule



/* output

array = '{'h4, 'h2, 'h2, 'h4, 'h8}

*/
