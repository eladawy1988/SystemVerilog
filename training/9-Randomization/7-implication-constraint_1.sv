// example

 
class ABC;
  rand bit [2:0] mode;
  rand bit [3:0] len;
 
  constraint c_mode { mode == 2 -> len > 10; }
endclass
 
module tb;
  initial begin
    ABC abc = new;
    for(int i = 0; i < 10; i++) begin
      abc.randomize();
      $display ("mode=%0d len=%0d", abc.mode, abc.len);
    end
  end
endmodule



/* output


mode=1 len=11
mode=6 len=3
mode=3 len=9
mode=7 len=11
mode=3 len=15
mode=2 len=12
mode=3 len=6
mode=2 len=12
mode=4 len=9
mode=7 len=13


*/
