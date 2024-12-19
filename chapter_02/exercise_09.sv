module exercise_09 ();

    typedef bit[6:0] field_t;
    typedef struct {
        field_t header;
        field_t cmd;
        field_t data;
        field_t crc;
    } packet_t;

    packet_t the_packet;

    initial begin
        the_packet.header = 7'h5A;
        $display("packet coontents: %p", the_packet);
    end

endmodule
