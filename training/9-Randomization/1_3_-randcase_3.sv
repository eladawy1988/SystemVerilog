// rand example

module tb;
  initial begin
      for (int i = 0; i < 10; i++)
        randcase
          0   :   $display ("Wt 1");
          0   :   $display ("Wt 5");
          0   :   $display ("Wt 3");
        endcase
    end
endmodule

 


/* output




*/
