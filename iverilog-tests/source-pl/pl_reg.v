module pl_reg #(parameter WIDTH = 32)(
    input clk, rst,
    input en, clr,
    input [WIDTH-1:0] in,
    output reg [WIDTH-1:0] out
    );

    wire en_i  = (en  === 1'bz) ? 1'b1 : en;
    wire clr_i = (clr === 1'bz) ? 1'b0 : clr;

    always@(posedge clk, posedge rst)
      begin
          if(rst)
              out <= 0;
          else if(clr_i)
              out <= 0;
          else if(en_i)
              out <= in;
      end

endmodule
