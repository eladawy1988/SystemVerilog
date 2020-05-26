// example SystemVerilog Typedef Class

 
class ABC;
  DEF   def;   // Error: DEF has not been declared yet
endclass
 
class DEF;
  ABC   abc;
endclass


/* output
[Base] addr=0x0
[Child] addr=0x0



*/
