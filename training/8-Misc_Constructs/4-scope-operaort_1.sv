// scope operaot  example : 1. Defining extern function

class ABC;
  int   data;
 
  extern virtual function void display();
endclass
 
// Definition of an external function using scope
// resolution operator
function void ABC::display();
  $display("data = 0x%0h", data);
endfunction
 
module tb;
  initial begin  
    ABC abc = new();
    abc.data = 32'hface_cafe;
    abc.display();
  end
endmodule



/* output

data = 0xfacecafe
ncsim: *W,RNQUIE: Simulation is complete.



*/
