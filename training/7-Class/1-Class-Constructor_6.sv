// BWhen the new function is declared as static or virtual

class ABC;
  string fruit;
 
  // Note that the constructor is defined as "virtual" which is not allowed
  // in SystemVerilog. Class constructor cannot be "static" either
  virtual function new ();
    fruit = "Apple";
  endfunction
 
endclass
 
// Instantiate the class object and print its contents
module tb;
    initial begin
      ABC abc = new();
      $display ("fruit = %s", abc.fruit);
    end
endmodule


/* output

** Warning: 1-Class-Constructor_6.sv(8): (vlog-2620) Class constructors cannot be declared 'virtual'.
** Warning: 1-Class-Constructor_6.sv(17): (vlog-2244) Variable 'abc' is implicitly static. You must either explicitly declare it as static or automatic
or remove the initialization in the declaration of variable.
-- Compiling package _12dClass2dConstructor_6_sv_unit
** Warning: 1-Class-Constructor_6.sv(8): (vlog-2620) Class constructors cannot be declared 'virtual'.
-- Compiling module tb
** Warning: 1-Class-Constructor_6.sv(8): (vlog-2620) Class constructors cannot be declared 'virtual'.
** Warning: 1-Class-Constructor_6.sv(17): (vlog-2244) Variable 'abc' is implicitly static. You must either explicitly declare it as static or automatic
or remove the initialization in the declaration of variable.


# fruit = Apple


*/
