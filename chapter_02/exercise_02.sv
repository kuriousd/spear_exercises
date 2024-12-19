module exercise_02 ();

    initial begin
        bit [7:0] my_mem[3];
        logic [3:0] my_logicmem[4];
        logic [3:0] my_logic;

        my_mem = '{default:8'hA5};
        my_logicmem = '{0,1,2,3};
        my_logic = 4'hF;
        
        my_logic = my_logicmem[1];
        $display("my_mem[2] = my_logicmem[4] no es posible, 4 fuera de rango");
        $display("my_logic = my_logicmem[4] no es posible, 4 fuera de rango");
        $display("my_logicmem[3] = my_mem[3] no es posible, 3 fuera de rango");
        $display("my_mem[3] = my_logic no es posible, 3 fuera de rango");
        $display("my_logic = %d",my_logic);
        $display("my_logic = my_mem[1] solo es posible con un cast");
        $display("el último ejercicio o tiene una errata o no tiene sentido");

    end
    
endmodule
