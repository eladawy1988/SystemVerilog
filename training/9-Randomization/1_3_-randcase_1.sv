// rand example

module tb;
  initial begin
      for (int i = 0; i < 10; i++)
        randcase
          1   :   $display ("Wt 1");
          5   :   $display ("Wt 5");
          3   :   $display ("Wt 3");
        endcase
    end
endmodule
 


/* output


# itr=0 data=0x0
# itr=1 data=0x6
# itr=2 data=0x4
# itr=3 data=0x3
# itr=4 data=0x1
# itr=5 data=0x7
# itr=6 data=0x5
# itr=7 data=0x2
# itr=8 data=0x5
# itr=9 data=0x1 



*/
