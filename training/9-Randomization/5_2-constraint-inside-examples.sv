// SimInverted inside operator expressions

 
  class myClass;

      rand bit [2:0] typ;

      constraint inv_range { ! (typ inside {[3:6]}); }

      function string display ();
        return $sformatf ("typ=%0d",typ);
      endfunction
 
  endclass
 
    module tb;
       initial begin
          for (int i = 0; i < 10; i++) begin
           automatic  myClass cls = new ();
             cls.randomize();
             $display ("itr=%0d %s", i, cls.display());
          end
       end
    endmodule

/* output

# mode = 0x4
# mode = 0x3
# mode = 0x5
# mode = 0x3
# mode = 0x6

*/
