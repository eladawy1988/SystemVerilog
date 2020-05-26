// prgrom modukae

//---------------------------------------------------------------------
//design code
//---------------------------------------------------------------------
module design_ex(output bit [7:0] addr);
  initial begin
    addr <= 10;
  end  
endmodule
 
//---------------------------------------------------------------------
//testbench
//---------------------------------------------------------------------
program testbench(input bit [7:0] addr);
  initial begin
    $display("\t Addr = %0d",addr);
  end
endprogram
//---------------------------------------------------------------------
//testbench top
//---------------------------------------------------------------------
module tb;
  wire [7:0] addr;
 
  //design instance
  design_ex dut(addr);
 
  //testbench instance
  testbench test(addr);
endmodule



/* output


data = 0xcafecafe


*/
