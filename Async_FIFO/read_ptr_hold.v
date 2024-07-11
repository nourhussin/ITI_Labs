`include "binary_to_gray.v"
module read_ptr_hold #(parameter depth = 45)(

    input wire [$clog2(depth)-1 : 0] gray_write_ptr,

    output wire empty_flag,
    output wire[$clog2(depth)-1 : 0] gray_read_ptr, binary_read_ptr
    );


endmodule