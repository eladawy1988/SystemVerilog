// Simple expressions

 
  class myClass;
      rand bit [3:0] min, typ, max;
      rand bit [3:0] fixed;
 
      constraint my_range { 3 < min;
                            typ < max;
                            typ > min;
                            max < 14; }
 
      constraint c_fixed { fixed == 5; }
 
      function string display ();
        return $sformatf ("min=%0d typ=%0d max=%0d fixed=%d", min, typ, max, fixed);
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

# itr=0 min=9 typ=12 max=13 fixed= 5
# itr=1 min=6 typ=10 max=12 fixed= 5
# itr=2 min=6 typ=7 max=9 fixed= 5
# itr=3 min=8 typ=12 max=13 fixed= 5
# itr=4 min=10 typ=11 max=12 fixed= 5
# itr=5 min=7 typ=10 max=11 fixed= 5
# itr=6 min=8 typ=9 max=11 fixed= 5
# itr=7 min=5 typ=12 max=13 fixed= 5
# itr=8 min=5 typ=6 max=7 fixed= 5
# itr=9 min=4 typ=7 max=10 fixed= 5



*/
