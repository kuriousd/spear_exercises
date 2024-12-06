module exercise_04 ();

    initial begin
        logic my_array1[5][31];

        my_array1[4][30] = 1'b1;
        my_array1[29][4] = 1'b1;
        for (int i = 0; i < 5; i++ ) begin
            for (int j = 0; j < 31; j++ ) begin
                $write("%b", my_array1[i][j]);
            end
            $display;
        end
        
    end
    
endmodule
