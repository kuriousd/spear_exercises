
/* 
Durante este ejercicio, he descubierto que Verilator no devuelve los mismos
resultados que sí hace Questa (EDA Playground) siguiendo ejemplos del autor
en el libro para colas de tipo int

En este ejercicio he aprendido que no es posible tratar valores como signed
en una declaración bit[23:0], por definición es unsigned.exercise_08

Existen tipos signed como byte, short o int. No tiene mucho sentido crear
una cola de números signed de 24 bits por los siguientes motivos:
- Cada posición acabaría ocupando en memoria 32 bits
- Dejamos de sacar ventaja de las built-in array methods que ahorrarían tiempo

Por tanto, tiene más sentido usar una cola de tipo int y convertir luego a
24 bits si fuera necesario en el momento del uso.

Podríamos hacer la excepción del ejercicio y desarrollar un algoritmo de sorted
con variables auxiliares, uso de funciones pop y push front.

*/

module exercise_08 ();

    // Create a 3-byte queue and initialize it with 2, -1 and 127
    bit [23:0] queue_bit [$] = {1, -2, 127};
    bit [23:0] temp_q[$];

    initial begin
        automatic int qsum = 0;
        $display("queue elements %p", queue_bit);

        // Print out the sum of the queue in the decimal radix
        qsum = int'(queue_bit.sum);
        $display("queue elements sum %d", qsum);

        // Print out the min and max values in the quote
        temp_q = queue_bit.max;
        $display("queue max %d", temp_q[0]);

        temp_q = queue_bit.min;
        $display("queue min %d", temp_q[0]);

        // Sort all values in the queue and print out the resulting queue
        queue_bit.sort;
        $display("queue sorted %p", queue_bit);

        //Print out the index of any negative values in the queue
        // Todo depende del enfoque del ejercicio, por mi parte he considerado
        // que no puede haber valores negativos en un array de bit 24
        // foreach (queue_bit[i])
        //     if (queue_bit[i] < 0)
        //         $display("negative number in queue: %d", queue_bit[i]);

        // Print out the positive values in the queue
        // Como un bit[23:0] es unsigned, todo será positivo                
        foreach (queue_bit[i])
            if (queue_bit[i] > 0)
                $display("positive number in queue: %d", queue_bit[i]);                

        // Reverse sort all values in the queue and print out the resulting queue
        queue_bit.reverse;
        $display("queue reverse sorted %p", queue_bit);

    end

endmodule
