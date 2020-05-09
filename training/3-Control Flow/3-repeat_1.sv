// Example-1 : SystemVerilog repeat



module tb;
  initial begin
    repeat (5) begin
      $display ("Repeat this statement");
    end
  end
endmodule

/* output

Repeat this statement
Repeat this statement
Repeat this statement
Repeat this statement
Repeat this statement


*/
