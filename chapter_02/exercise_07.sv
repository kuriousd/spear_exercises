module exercise_07 ();

    // Representa la memoria de un procesador de 24 bits
    // Rango de memoria de 2^30
    // 0x0 después de reset
    // ISR en última dirección disponible 0xFFFFFF
    bit [23:0] mem[bit[29:0]];
    const bit [29:0] max_address = 2**30-1;

    initial begin
        // PC empieza a 0x00 después de reset
        mem[30'h0] = 24'hA50400; // Jump to location 0x400 for the main code
        $display("mem[0x0] = 0x%6h", mem[30'h0]);
        mem[30'h400] = 24'h123456; // Instruction 1 located at location 0x400
        $display("mem[0x400] = 0x%6h", mem[30'h400]);
        mem[30'h401] = 24'h789ABC; // Instruction 2 located at location 0x401 (este direccionamiento es raro, pero en el ejercicio dice esto)
        $display("mem[0x401] = 0x%6h", mem[30'h401]);
        mem[max_address] = 24'h0F1E2D; // ISR = Return from interrupt
        $display("mem[0x%h] = 0x%6h", max_address, mem[max_address]);
        $display("Contenidos del array asociativo %p", mem);
        $display("Tamaño del array %1d", mem.size);
    end
    
endmodule
