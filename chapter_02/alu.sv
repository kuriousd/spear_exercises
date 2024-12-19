`include "enum.svh"

module alu (
    input opcode_e opcode,
    input logic [3:0] a,
    input logic [3:0] b,
    output logic [3:0] c
);
    logic reduct;

    always_comb begin
        case (opcode)
            ADD:
                c = b+a;
            SUB:
                c = a-b;
            BITWISE_INVERT:
                c = ~a;
            REDUCTION:
                c = {3'b0,{|b}};
            default:
                c = 0;
        endcase
    end

endmodule