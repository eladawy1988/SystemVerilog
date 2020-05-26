// scope operaot  example :2. Accessing static methods and functions

class ABC;
  static int   data;
 
  static function void display();
    $display("data = 0x%0h", data);
  endfunction
endclass
 
module tb;
  initial begin
        ABC a1, a2;
 
        // Assign to static variable before creating 
        // class objects, and display using class_type and
        // scope resolution operator
    ABC::data = 32'hface_cafe;
    ABC::display();
 
        a1 = new();
        a2 = new();
        $display ("a1.data=0x%0h a2.data=0x%0h", a1.data, a2.data);
  end
endmodule



/* output

data = 0xfacecafe
a1.data=0xfacecafe a2.data=0xfacecafe
ncsim: *W,RNQUIE: Simulation is complete.


*/
