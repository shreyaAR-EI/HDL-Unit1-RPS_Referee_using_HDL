//rps refree
module rps_referee(
input[1:0] a,
input [1:0] b,
output win_a,win_b,
output tie
);

// data-flow description using continuous assignment and operators
// 00 - rock ; 01 - paper ; 10 - scissors
assign tie = ( a==b);
assign win_a = (!tie) && ( (a==2'b00 && b==2'b10) || // rock beats scissors
                           ( a==2'b01 && b==2'b00) || // paper beats rock
                            (a==2'b10 && b==2'b01) ); //scissors beats paper
                            
assign win_b = (!tie) && (!win_a);

endmodule
