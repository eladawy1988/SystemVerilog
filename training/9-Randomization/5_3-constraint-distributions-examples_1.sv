// Weighted distributions expressions := operator

 
  class myClass;
    rand bit [2:0] typ;
    constraint dist1   {  typ dist { 0:=20, [1:5]:=50, 6:=40, 7:=10}; }
  endclass
 
  module tb;
    initial begin
      for (int i = 0; i < 10; i++) begin
       automatic myClass cls = new ();
        cls.randomize();
        $display ("itr=%0d typ=%0d", i, cls.typ);
      end
    end
  endmodule

/* output

# itr=0 typ=2
# itr=1 typ=1
# itr=2 typ=6
# itr=3 typ=6
# itr=4 typ=4
# itr=5 typ=3
# itr=6 typ=6
# itr=7 typ=5
# itr=8 typ=5
# itr=9 typ=1

*/
