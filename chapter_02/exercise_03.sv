module exercise_03 ();

    initial begin
        automatic bit [11:0] my_array[4] = '{12'h012, 12'h345, 12'h678, 12'h9AB};

        $display("for:");
        for (int idx = 0; idx<$size(my_array); idx++)
            $write("0x%2b ", my_array[idx][5:4]);
        $display;

        $display("foreach:");
        foreach (my_array[idx])
            $write("0x%2b ", my_array[idx][5:4]);
        $display;
    end
    
endmodule
