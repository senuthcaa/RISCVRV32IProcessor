module register(rd, rs1, rs2, r1, r2);

    input wire [4:0] rd;
    input wire [4:0] rs1;
    input wire [4:0] rs2;
    output reg [31:0] r1;
    output reg [31:0] r2;

    wire x0_en;
    wire [31:0] x0_in;
    wire [31:0] x0;
    register_n #(.N(32)) reg_x0 (.in(x0_in), .enable(x0_en), .clk(), .rst(rst), .Q(x0));

    wire x1_en;
    wire [31:0] x1_in;
    wire [31:0] x1;
    register_n #(.N(32)) reg_x1 (.in(x1_in), .enable(x1_en), .clk(), .rst(rst), .Q(x1));

    wire x2_en;
    wire [31:0] x2_in;
    wire [31:0] x2;
    register_n #(.N(32)) reg_x2 (.in(x2_in), .enable(x2_en), .clk(), .rst(rst), .Q(x2));

    wire x3_en;
    wire [31:0] x3_in;
    wire [31:0] x3;
    register_n #(.N(32)) reg_x3 (.in(x3_in), .enable(x3_en), .clk(), .rst(rst), .Q(x3));

    wire x4_en;
    wire [31:0] x4_in;
    wire [31:0] x4;
    register_n #(.N(32)) reg_x4 (.in(x4_in), .enable(x4_en), .clk(), .rst(rst), .Q(x4));

    wire x5_en;
    wire [31:0] x5_in;
    wire [31:0] x5;
    register_n #(.N(32)) reg_x5 (.in(x5_in), .enable(x5_en), .clk(), .rst(rst), .Q(x5));

    wire x6_en;
    wire [31:0] x6_in;
    wire [31:0] x6;
    register_n #(.N(32)) reg_x6 (.in(x6_in), .enable(x6_en), .clk(), .rst(rst), .Q(x6));

    wire x7_en;
    wire [31:0] x7_in;
    wire [31:0] x7;
    register_n #(.N(32)) reg_x7 (.in(x7_in), .enable(x7_en), .clk(), .rst(rst), .Q(x7));

    wire x8_en;
    wire [31:0] x8_in;
    wire [31:0] x8;
    register_n #(.N(32)) reg_x8 (.in(x8_in), .enable(x8_en), .clk(), .rst(rst), .Q(x8));

    wire x9_en;
    wire [31:0] x9_in;
    wire [31:0] x9;
    register_n #(.N(32)) reg_x9 (.in(x9_in), .enable(x9_en), .clk(), .rst(rst), .Q(x9));

    wire x10_en;
    wire [31:0] x10_in;
    wire [31:0] x10;
    register_n #(.N(32)) reg_x10 (.in(x10_in), .enable(x10_en), .clk(), .rst(rst), .Q(x10));

    wire x11_en;
    wire [31:0] x11_in;
    wire [31:0] x11;
    register_n #(.N(32)) reg_x11 (.in(x11_in), .enable(x11_en), .clk(), .rst(rst), .Q(x11));

    wire x12_en;
    wire [31:0] x12_in;
    wire [31:0] x12;
    register_n #(.N(32)) reg_x12 (.in(x12_in), .enable(x12_en), .clk(), .rst(rst), .Q(x12));

    wire x13_en;
    wire [31:0] x13_in;
    wire [31:0] x13;
    register_n #(.N(32)) reg_x13 (.in(x13_in), .enable(x13_en), .clk(), .rst(rst), .Q(x13));

    wire x14_en;
    wire [31:0] x14_in;
    wire [31:0] x14;
    register_n #(.N(32)) reg_x14 (.in(x14_in), .enable(x14_en), .clk(), .rst(rst), .Q(x14));

    wire x15_en;
    wire [31:0] x15_in;
    wire [31:0] x15;
    register_n #(.N(32)) reg_x15 (.in(x15_in), .enable(x15_en), .clk(), .rst(rst), .Q(x15));

    wire x16_en;
    wire [31:0] x16_in;
    wire [31:0] x16;
    register_n #(.N(32)) reg_x16 (.in(x16_in), .enable(x16_en), .clk(), .rst(rst), .Q(x16));

    wire x17_en;
    wire [31:0] x17_in;
    wire [31:0] x17;
    register_n #(.N(32)) reg_x17 (.in(x17_in), .enable(x17_en), .clk(), .rst(rst), .Q(x17));

    wire x18_en;
    wire [31:0] x18_in;
    wire [31:0] x18;
    register_n #(.N(32)) reg_x18 (.in(x18_in), .enable(x18_en), .clk(), .rst(rst), .Q(x18));

    wire x19_en;
    wire [31:0] x19_in;
    wire [31:0] x19;
    register_n #(.N(32)) reg_x19 (.in(x19_in), .enable(x19_en), .clk(), .rst(rst), .Q(x19));

    wire x20_en;
    wire [31:0] x20_in;
    wire [31:0] x20;
    register_n #(.N(32)) reg_x20 (.in(x20_in), .enable(x20_en), .clk(), .rst(rst), .Q(x20));

    wire x21_en;
    wire [31:0] x21_in;
    wire [31:0] x21;
    register_n #(.N(32)) reg_x21 (.in(x21_in), .enable(x21_en), .clk(), .rst(rst), .Q(x21));

    wire x22_en;
    wire [31:0] x22_in;
    wire [31:0] x22;
    register_n #(.N(32)) reg_x22 (.in(x22_in), .enable(x22_en), .clk(), .rst(rst), .Q(x22));

    wire x23_en;
    wire [31:0] x23_in;
    wire [31:0] x23;
    register_n #(.N(32)) reg_x23 (.in(x23_in), .enable(x23_en), .clk(), .rst(rst), .Q(x23));

    wire x24_en;
    wire [31:0] x24_in;
    wire [31:0] x24;
    register_n #(.N(32)) reg_x24 (.in(x24_in), .enable(x24_en), .clk(), .rst(rst), .Q(x24));

    wire x25_en;
    wire [31:0] x25_in;
    wire [31:0] x25;
    register_n #(.N(32)) reg_x25 (.in(x25_in), .enable(x25_en), .clk(), .rst(rst), .Q(x25));

    wire x26_en;
    wire [31:0] x26_in;
    wire [31:0] x26;
    register_n #(.N(32)) reg_x26 (.in(x26_in), .enable(x26_en), .clk(), .rst(rst), .Q(x26));

    wire x27_en;
    wire [31:0] x27_in;
    wire [31:0] x27;
    register_n #(.N(32)) reg_x27 (.in(x27_in), .enable(x27_en), .clk(), .rst(rst), .Q(x27));

    wire x28_en;
    wire [31:0] x28_in;
    wire [31:0] x28;
    register_n #(.N(32)) reg_x28 (.in(x28_in), .enable(x28_en), .clk(), .rst(rst), .Q(x28));

    wire x29_en;
    wire [31:0] x29_in;
    wire [31:0] x29;
    register_n #(.N(32)) reg_x29 (.in(x29_in), .enable(x29_en), .clk(), .rst(rst), .Q(x29));

    wire x30_en;
    wire [31:0] x30_in;
    wire [31:0] x30;
    register_n #(.N(32)) reg_x30 (.in(x30_in), .enable(x30_en), .clk(), .rst(rst), .Q(x30));

    wire x31_en;
    wire [31:0] x31_in;
    wire [31:0] x31;
    register_n #(.N(32)) reg_x31 (.in(x31_in), .enable(x31_en), .clk(), .rst(rst), .Q(x31));

    always @(*) begin
        case(rs1)
            5'd0 : r1 = x0;
            5'd1 : r1 = x1;
            5'd2 : r1 = x2;
            5'd3 : r1 = x3;
            5'd4 : r1 = x4;
            5'd5 : r1 = x5;
            5'd6 : r1 = x6;
            5'd7 : r1 = x7;
            5'd8 : r1 = x8;
            5'd9 : r1 = x9;
            5'd10 : r1 = x10;
            5'd11 : r1 = x11;
            5'd12 : r1 = x12;
            5'd13 : r1 = x13;
            5'd14 : r1 = x14;
            5'd15 : r1 = x15;
            5'd16 : r1 = x16;
            5'd17 : r1 = x17;
            5'd18 : r1 = x18;
            5'd19 : r1 = x19;
            5'd20 : r1 = x20;
            5'd21 : r1 = x21;
            5'd22 : r1 = x22;
            5'd23 : r1 = x23;
            5'd24 : r1 = x24;
            5'd25 : r1 = x25;
            5'd26 : r1 = x26;
            5'd27 : r1 = x27;
            5'd28 : r1 = x28;
            5'd29 : r1 = x29;
            5'd30 : r1 = x30;
            5'd31 : r1 = x31;
        endcase
    end

    always @(*) begin
        case(rs2)
            5'd0 : r2 = x0;
            5'd1 : r2 = x1;
            5'd2 : r2 = x2;
            5'd3 : r2 = x3;
            5'd4 : r2 = x4;
            5'd5 : r2 = x5;
            5'd6 : r2 = x6;
            5'd7 : r2 = x7;
            5'd8 : r2 = x8;
            5'd9 : r2 = x9;
            5'd10 : r2 = x10;
            5'd11 : r2 = x11;
            5'd12 : r2 = x12;
            5'd13 : r2 = x13;
            5'd14 : r2 = x14;
            5'd15 : r2 = x15;
            5'd16 : r2 = x16;
            5'd17 : r2 = x17;
            5'd18 : r2 = x18;
            5'd19 : r2 = x19;
            5'd20 : r2 = x20;
            5'd21 : r2 = x21;
            5'd22 : r2 = x22;
            5'd23 : r2 = x23;
            5'd24 : r2 = x24;
            5'd25 : r2 = x25;
            5'd26 : r2 = x26;
            5'd27 : r2 = x27;
            5'd28 : r2 = x28;
            5'd29 : r2 = x29;
            5'd30 : r2 = x30;
            5'd31 : r2 = x31;
        endcase
    end

endmodule