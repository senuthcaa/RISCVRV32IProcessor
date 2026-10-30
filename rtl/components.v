module sign_extend(in, out);

    parameter IN_WIDTH = 20;

    input wire [IN_WIDTH-1:0] in;
    output wire [31:0] out;

    assign output = {12{in[IN_WIDTH-1]},in}

endmodule

module alu(input_a, input_b, alu_op, result);

    input wire signed [31:0] input_a;
    input wire signed [31:0] input_b;
    input wire [2:0] alu_op;
    output reg signed [31:0] result;

    localparam
		ADD = 3'd0;
        SUB = 3'd1;

    always @(*) begin
        case (alu_op)
            ADD : result = input_a + input_b; //simplified
            SUB : result = input_a - input_b;
            default: 
        endcase
    end

endmodule

module register_n(in, enable, clk, rst, Q);

    parameter N = 32;

    input wire [N-1:0] in;
    input wire clk;
    input wire rst;
    output reg [N-1:0] out;

    always @(posedge clk) begin
        if (rst) Q <= {N{1'b0}};
        else begin
            if (enable) Q <= in;
            else Q <= Q;
        end
    end

endmodule

module FSM(rst, clk, enable, state);

    input wire rst;
    input wire clk;
    input wire enable;
    
    output reg [4:0] state;
    reg [4:0] next_state;

    localparam
        FETCH = 5'b00001,
        DECODE = 5'b00010,
        EXECUTE = 5'b00100,
        MEMORY = 5'b01000,
        WRITEBACK = 5'b10000;

	always @(posedge clk) begin
        if (rst) state <= FETCH;
		else begin
            if (enable) state <= next_state;
            else state <= state;
		end
	end
	
	always @(*) begin
        next_state = state;
        case (state)
            FETCH : next_state = DECODE;
            DECODE : next_state = EXECUTE;
            EXECUTE : next_state = MEMORY;
            MEMORY : next_state = WRITEBACK;
            WRITEBACK : next_state = FETCH;
            default : next_state = FETCH;
		endcase
	end

endmodule