`timescale 1ns / 1ps
//define our module and it's inputs/outputs
module top(
	input CLK,
	input BTN1,
	input BTN2,
	input BTN3,
	input BTN_N,
	input [7:0] sw,
	output [4:0] led,
	output [6:0] seg,
	output ca
    );

//define wires and registers here
	wire [6:0] disp0,disp1;
	wire displayClock;
	wire wire1, wire2;
	
//parallel assignments can go here
	assign disp0 = 0;
	assign disp1 = 0;
	assign led[3:1]=5'b0;
	assign led[0]=wire1;
	assign led[4]=wire2;
	assign wire1=BTN1;
	assign wire2=BTN3;

//always @ blocks can go here
//	always @(sensitivity list) begin
//		commmands-to-run-when-triggered;
//	end

//instantiate modules here
	nibble_to_seven_seg nibble0(
		.nibblein(),
		.segout()
	);	 
	 
	clkdiv displayClockGen(
		.clk(CLK),
		.clkout(displayClock)
	);

	seven_seg_mux display(
		.clk(displayClock),
		.disp0(disp0),
		.disp1(disp1),
		.segout(seg),
		.disp_sel(ca)
	);

endmodule
