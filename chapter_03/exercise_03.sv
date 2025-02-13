module exercise_03;
  
  int new_address1, new_address2;

  bit clk;
  initial begin
    fork
      my_task2(21, new_address1);
      my_task2(20, new_address2);
    join
    $display("new_address1 = %0d", new_address1);
    $display("new_address2 = %0d", new_address2);
  end

  initial
    forever #50 clk = !clk;

  task my_task2(input int address, output int new_address);
    @(clk);
    new_address = address;
  endtask

endmodule