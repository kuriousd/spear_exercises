module exercise_01();
  // a) Create a 512 element integer array
  int int_array [512];
  // b) Create a 9-bit addess variable to index into the array
  bit [8:0] index_array;
  
  initial begin
    // c) Initialize the last location in the array to 5
    index_array = 0;
    int_array[511] = 5;
    #10ns
    // d) Call a task, my_task(), and pass the array and the address
    my_task(int_array, index_array);
  end
  
  // e) Create my_task() that takes two inputs: a constant 512-element integer array
  // passed by reference, and a 9-bit address. The task calls a function, print_int(),
  // and passes the array element indexed by the address, pre-decrementing the address
  task automatic my_task (const ref int array [512], input bit [8:0] address);
    address = address - 1; // address will result in -1, as bit is unsigned: 511
    print_int(array[address]);
  endtask
  
  // f) Create print_int() that prints out the simulation time and the value of the
  // input. The function has no return value
  function void print_int(int value);
    $timeformat(-9, 3, "ns", 8);
    $display("%t ns value = %0d", $realtime, value);
  endfunction
  
endmodule