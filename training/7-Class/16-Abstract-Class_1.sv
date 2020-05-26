// example Abstract Class Example


 
virtual class BaseClass;
  int data;
 
  function new();
    data = 32'hc0de_c0de;
  endfunction
endclass
 
module tb;
  BaseClass base;
  initial begin
    base = new();
    $display ("data=0x%0h", base.data);
  end
endmodule


/* output


compiler error


*/
