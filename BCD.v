module bcdcounter (
    input clk, reset,
    output reg [3:0] digit
    );

always @ (posedge(clk), posedge(reset))
	begin
  	  if (reset) digit <= 4'b0101;
   	 else if (digit == 4'b1001) 
		digit <= 4'b0000;
   	 else 
		digit <= digit + 4'b0001;
	end
endmodule
