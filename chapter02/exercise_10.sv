module exercise_10 ();

    // Create a user-defined type, nibble, of 4 bits
    typedef bit[3:0] nibble;

    // Create a real variable, r, and initialize it to 4.33
    real r = 4.33;

    // Create a short int variable, i_pack
    shortint i_pack;

    /* Create an unpacked array, k, containing 4 elements of your 
       user defined type nibble and initialize it to
       4'h0, 4'hF, 4'hE, and 4'hD
    */
    nibble k [4] = '{4'h0, 4'hF, 4'hE, 4'hD};

    initial begin
        
        // Print out k
        $display("print out k: %p", k);
        
        // Stream k into i_pack right to left on a bit basis and print it out
        $display("Stream k into i_pack right to left on a bit basis and print it out");
        foreach (k[i,j])
            $write("0b%b, ", k[i][j]);
        $display;
        
        // Stream k into i_pack right to left on a nibble basis and print it out
        $display("Stream k into i_pack right to left on a nibble basis and print it out");
        foreach (k[i])
            $write("0x%h, ", k[i]);
        $display;
        
        // Type convert real r into a nibble, assign it to k[0], and print out k
        k[0] = nibble'(r);
        $display("print out k: %p", k);
    end


endmodule
