module exercise_05 ();

    initial begin
        bit [31:0] my_array2 [5];

        my_array2[4][30] = 1'b1;
        my_array2[3] = 32'b1;
        for (int i = 0; i < 5; i++ ) begin
            for (int j = 0; j < 31; j++ ) begin
                $write("%b", my_array2[i][j]);
            end
            $display;
        end
        
    end
    
endmodule
