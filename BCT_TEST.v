module bcdTEST();
	reg clk, reset;
	wire [3:0] digit;

	bcdcounter uut (
        .clk(clk), 
        .reset(reset),
	.digit(digit)
    );

	initial begin 
		clk=0;
		forever #5 clk=~clk;
	end

	initial begin
		reset=1;
		#10;
		reset=0;
	end
endmodule 
