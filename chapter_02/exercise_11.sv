module exercise_11 ();
    // Create an enumerated type of the opcodes: opcode_e
    `include "enum.svh"

    // Create a variable, opcode, of type opcode_e
    opcode_e opcode;
    logic [3:0] a,b,c;

    initial begin
        // Loop through all the values of variable opcode every 10ns
        a=2;
        b=1;
        opcode = ADD;

        for (int i = 0; i < opcode.num(); i++) begin
            $display("opcode: %0s", opcode.name());
            #10;
            $display("a=%0h b=%0h c=%0h", a, b, c);
            opcode = opcode.next();
        end

    end

    alu the_alu(.opcode(opcode),
                .a(a),
                .b(b),
                .c(c));

endmodule
