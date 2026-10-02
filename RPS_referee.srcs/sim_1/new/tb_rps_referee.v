`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2026 19:57:30
// Design Name: 
// Module Name: tb_rps_referee
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_rps_referee;

    reg [1:0] a;
    reg [1:0] b;
    wire win_a;
    wire win_b;
    wire tie;

    // Instantiate the Unit Under Test (UUT)
    rps_referee uut (
        .a(a),
        .b(b),
        .win_a(win_a),
        .win_b(win_b),
        .tie(tie)
    );

    initial begin
        // Case 1: Rock vs Rock -> Tie
        a = 2'b00; b = 2'b00;
        #10;

        // Case 2: Rock vs Scissors -> Player A wins
        a = 2'b00; b = 2'b10;
        #10;

        // Case 3: Paper vs Scissors -> Player B wins
        a = 2'b01; b = 2'b10;
        #10;

        // Case 4: Scissors vs Paper -> Player A wins
        a = 2'b10; b = 2'b01;
        #10;

        // Case 5: Paper vs Paper -> Tie
        a = 2'b01; b = 2'b01;
        #10;

        $finish;
    end

endmodule