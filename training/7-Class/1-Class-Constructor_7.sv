// Typed constructors


class C; 
endclass
 
class D extends C;
endclass
 
module tb;
   initial begin
      C c = D::new;
   end
endmodule

module tb;
	initial begin
		D d = new;
		C c = d;
	end
endmodule


/* output

# ** Note: (vsim-3813) Design is being optimized due to module recompilation...
# ** Warning: 1-Class-Constructor_7.sv(17): (vopt-2244) Variable 'd' is implicitly static. You must either explicitly declare it as static or automatic
# or remove the initialization in the declaration of variable.
# ** Warning: 1-Class-Constructor_7.sv(18): (vopt-2244) Variable 'c' is implicitly static. You must either explicitly declare it as static or automatic
# or remove the initialization in the declaration of variable.



*/
