// polymorphism example (Assign Base Class to Child Class


class Packet;
   int addr;
 
   function new (int addr);
      this.addr = addr;
   endfunction
 
  function display ();
    $display ("[Base] addr=0x%0h", addr);
  endfunction
endclass
 
// A subclass called 'ExtPacket' is derived from the base class 'Packet' using
// 'extends' keyword which makes 'EthPacket' a child of the parent class 'Packet'
// The child class inherits all variables and methods from the parent class
class ExtPacket extends Packet;
 
  // This is a new variable only available in child class
  int data;     
 
   function new (int addr, data);
      super.new (addr);   // Calls 'new' method of parent class
      this.data = data;
   endfunction
 
  function display ();
    $display ("[Child] addr=0x%0h data=0x%0h", addr, data);
  endfunction
endclass

module tb;
	Packet      bc; 	// bc stands for BaseClass
	ExtPacket   sc; 	// sc stands for SubClass
	initial begin
		bc = new (32'hface_cafe);
		//sc = bc; //It is illegal to directly assign a variable of a superclass type to a variable of one of its subclass types and hence you'll get a compilation error.
		$cast (sc, bc);
		bc.display ();
	end

endmodule


/* output

[Base] addr=0xfeedfeed
[Child] addr=0xfeedfeed data=0x12345678


*/
