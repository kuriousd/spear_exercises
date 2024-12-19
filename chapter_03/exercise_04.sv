module exercise_04();
  // Create the SystemVerilog code to specify that the time should be printed
  // in ps (picoseconds), display 2 digits to the rifht of the decimal point, and
  // use as few characters as possible
  initial begin
    $timeformat(-12, 2, "ps", 6);
    $display("%t", $realtime);
    #1ps
    $display("%0t", $realtime);
    #10ps
    $display("%t", $realtime);
  end
  
endmodule