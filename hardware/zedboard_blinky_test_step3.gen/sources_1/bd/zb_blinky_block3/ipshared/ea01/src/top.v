module top (
    input wire clk,
    input wire count_en,
    input wire reset_n,
    output wire [7:0] led
);

reg [31:0] counter;

// assign led[7:0] = counter[0+:8];
assign led[7:0] = counter[23+:8];

always @(posedge clk) begin
    if(!reset_n) begin
        counter <= 0;
    end
    else begin
        if(count_en) begin
            counter <= counter + 1;
        end
    end
end

endmodule
