`include "binary_to_gray.v"
module write_ptr_hold #(parameter depth = 45)(

    input wire [$clog2(depth)-1 : 0] gray_read_ptr,

    output wire full_flag,
    output wire[$clog2(depth)-1 : 0] gray_write_ptr, binary_write_ptr
    );


endmodule