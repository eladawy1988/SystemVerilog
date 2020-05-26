// example SystemVerilog Typedef Class

 
typedef class DEF;  // Inform compiler that DEF might be 
                    // used before actual class definition
class ABC;
  DEF   def;      // Okay: Compiler knows that DEF 
                  // declaration will come later
endclass
class DEF;
  ABC   abc;
endclass

/* output




*/
