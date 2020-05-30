// rand example

module tb;
  initial begin
      for (int i = 0; i < 10; i++)
        randcase
          0   :   $display ("Wt 1");
          5   :   $display ("Wt 5");
          3   :   $display ("Wt 3");
        endcase
    end
endmodule

 


/* output

Wt 5
Wt 5
Wt 3
Wt 5
Wt 5
Wt 3
Wt 5
Wt 3
Wt 3
Wt 5




*/
