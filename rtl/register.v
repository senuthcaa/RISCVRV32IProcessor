module register(rd, rs1, rs2, r1, r2);

    input wire [4:0] rd;
    input wire [4:0] rs1;
    input wire [4:0] rs2;
    output reg [31:0] r1;
    output reg [31:0] r2;

    wire x0_en;
    wire [31:0] x0_in;
    wire [31:0] x0_out;
    register_n #(.N(32)) x0 (
        .in(x0_in),
        .enable(x0_en),
        .clk(),
        .rst(rst),
        .Q(x0_out)
    );

    always @(*) begin
        case(rs1)
            5'd0 : r1 = x0_out;
            5'd1 : r1 = x1_out;
            5'd2 : r1 = x2_out;
            5'd3 : r1 = x3_out;
            5'd4 : r1 = x4_out;
            5'd5 : r1 = x5_out;
            5'd6 : r1 = x6_out;
            5'd7 : r1 = x7_out;
            5'd8 : r1 = x8_out;
            5'd9 : r1 = x9_out;
            5'd10 : r1 = x10_out;
            5'd11 : r1 = x11_out;
            5'd12 : r1 = x12_out;
            5'd13 : r1 = x13_out;
            5'd14 : r1 = x14_out;
            5'd15 : r1 = x15_out;
            5'd16 : r1 = x16_out;
            5'd17 : r1 = x17_out;
            5'd18 : r1 = x18_out;
            5'd19 : r1 = x19_out;
            5'd20 : r1 = x20_out;
            5'd21 : r1 = x21_out;
            5'd22 : r1 = x22_out;
            5'd23 : r1 = x23_out;
            5'd24 : r1 = x24_out;
            5'd25 : r1 = x25_out;
            5'd26 : r1 = x26_out;
            5'd27 : r1 = x27_out;
            5'd28 : r1 = x28_out;
            5'd29 : r1 = x29_out;
            5'd30 : r1 = x30_out;
            5'd31 : r1 = x31_out;
        endcase
    end

    always @(*) begin
        case(rs2)
            5'd0 : r2 = x0_out;
            5'd1 : r2 = x1_out;
            5'd2 : r2 = x2_out;
            5'd3 : r2 = x3_out;
            5'd4 : r2 = x4_out;
            5'd5 : r2 = x5_out;
            5'd6 : r2 = x6_out;
            5'd7 : r2 = x7_out;
            5'd8 : r2 = x8_out;
            5'd9 : r2 = x9_out;
            5'd10 : r2 = x10_out;
            5'd11 : r2 = x11_out;
            5'd12 : r2 = x12_out;
            5'd13 : r2 = x13_out;
            5'd14 : r2 = x14_out;
            5'd15 : r2 = x15_out;
            5'd16 : r2 = x16_out;
            5'd17 : r2 = x17_out;
            5'd18 : r2 = x18_out;
            5'd19 : r2 = x19_out;
            5'd20 : r2 = x20_out;
            5'd21 : r2 = x21_out;
            5'd22 : r2 = x22_out;
            5'd23 : r2 = x23_out;
            5'd24 : r2 = x24_out;
            5'd25 : r2 = x25_out;
            5'd26 : r2 = x26_out;
            5'd27 : r2 = x27_out;
            5'd28 : r2 = x28_out;
            5'd29 : r2 = x29_out;
            5'd30 : r2 = x30_out;
            5'd31 : r2 = x31_out;
        endcase
    end

endmodule