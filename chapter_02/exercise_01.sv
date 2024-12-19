module exercise_01 ();

    initial begin
        byte my_byte;
        integer my_integer;
        int my_int;
        bit [15:0] my_bit;
        shortint my_short_int1;
        shortint my_short_int2;

        my_byte = byte'($bits(my_byte));
        my_integer = 32'b000_1111_xxxx_zzzz;
        my_int = my_integer;
        my_bit = 16'h8000;
        my_short_int1 = my_bit;
        my_short_int2 = my_short_int1-1;

        $display("%d bits signed, rango de -127 a 127", my_byte);
        $display("%d", my_int);
        $display("%d", my_bit);
        $display("%d", my_short_int1);
        $display("%d", my_short_int2);

    end
    
endmodule
