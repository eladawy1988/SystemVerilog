// Example : Turn off non-static constraint


class ABC;
  rand bit [3:0]  a;
 
  // "c1" is non-static, but "c2" is static
  constraint c1 { a > 5; }
  static constraint c2 { a < 12; }
endclass
 
module tb;
  initial begin
    ABC obj1 = new;
    ABC obj2 = new;
 
    // Turn non-static constraint
    obj1.c2.constraint_mode(0);
 
    for (int i = 0; i < 5; i++) begin
      obj1.randomize();
      obj2.randomize();
      $display ("obj1.a = %0d, obj2.a = %0d", obj1.a, obj2.a);
    end
  end
endmodule



/* output

obj1.a = 15, obj2.a = 12
obj1.a = 9, obj2.a = 15
obj1.a = 14, obj2.a = 6
obj1.a = 11, obj2.a = 11
obj1.a = 12, obj2.a = 11




*/
