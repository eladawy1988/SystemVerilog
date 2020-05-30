// Implication Operator

 
class ABC;
  rand bit [3:0] mode;
  rand bit      mod_en;
 
  // If 5 <= mode <= 11, mod_en should be 1
  constraint c_mode {  mode inside {[4'h5:4'hB]} -> mod_en == 1; }
endclass
 
module tb;
  initial begin
    ABC abc = new;
    for (int i = 0; i < 10; i++) begin
      abc.randomize();
      $display ("mode=0x%0h mod_en=0x%0h", abc.mode, abc.mod_en);
    end
  end
endmodule




/* output


mode=0xf mod_en=0x1
mode=0x9 mod_en=0x1
mode=0x3 mod_en=0x1
mode=0xe mod_en=0x1
mode=0x1 mod_en=0x1
mode=0x0 mod_en=0x0
mode=0x1 mod_en=0x0
mode=0xe mod_en=0x0
mode=0x5 mod_en=0x1
mode=0x0 mod_en=0x0



*/
