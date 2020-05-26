// castinf example

typedef enum { PENNY=1, FIVECENTS=5, DIME=10, QUARTER=25, DOLLAR=100 } Cents;
 
module tb;
  Cents   myCent;
 
  initial begin
//    $cast (myCent, 10 + 5 + 10);
	myCent = 10 + 5 +10 ;
    $display ("Money=%s", myCent.name());
  end
endmodule


/* output


data = 0xcafecafe


*/
