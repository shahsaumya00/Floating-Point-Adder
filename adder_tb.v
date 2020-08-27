module adder_tb;
reg [31:0] operand_1,operand_2;
reg clk;
wire [31:0] Sum;
wire done;

adder DUT(.operand_1(operand_1),.operand_2(operand_2),.clk(clk),.Sum(Sum));
initial 
begin 
clk=1'b0;
operand_1=32'b00111111111000000000000000000000;
operand_2=32'b01000001010110100000000000000000;
#40
$display("%b\n",Sum);

operand_1=32'b00111111000110000000000000000000;
operand_2=32'b01000001010110100000000000000000;
// clk=1'b0;
#40
$display("%b\n",Sum);

//operand_1=32'b00111111010110000000000000000000;
//operand_2=32'b01001001110110100000000000000000;
// #20
// $display("%b\n",Sum);

// operand_1=32'b00111111100110000000000000000000;
// operand_2=32'b01000001110110100000000000000000;
// $display("%b\n",Sum);
// #50
$finish;
end
always #1 clk=!clk;
endmodule

//VERIFIED :: Testbench for addition
// module addition_tb;
// reg [23:0] shifted_mantissa_1;
// reg [23:0] shifted_mantissa_2;
// reg clk;
// reg reset;
// wire [24:0] mantissa_sum;
// addition DUT(shifted_mantissa_1,shifted_mantissa_2,clk,reset,mantissa_sum);
// initial begin
//     shifted_mantissa_1=24'b000111000000000000000000;
//     shifted_mantissa_2=24'b110110100000000000000000;
//     clk=1'b0;
//     #10 
//     $display("%b\n",mantissa_sum);
//     $finish;
// end
// always #1 clk=!clk;
// endmodule

//VERIFIED :: Testbench for Normalisation
// module normalisation_tb;
// reg [24:0] mantissa_sum;
// reg [7:0] new_exponent;
// reg clk;
// reg reset;
// wire [23:0] mantissa_final;
// wire [7:0] exponent_final;

// normalisation DUT(mantissa_sum,new_exponent,clk,reset,mantissa_final,exponent_final);

// initial begin
//     mantissa_sum= 25'b0111101100000000000000000;
//     new_exponent= 8'b10000011;
//     clk=1'b0;
//     #50
//     $display("mantissa_final:%b\n",mantissa_final);
//     $display("exponent_final:%b\n",exponent_final);
//     $finish;
// end
// always #1 clk=!clk;
// endmodule



//VERIFIED :: Testbench for compare and shift
// module cas_tb;
// reg [23:0] cas_mantissa_1;
// reg [23:0] cas_mantissa_2;
// reg [7:0] cas_exponent_1;
// reg [7:0] cas_exponent_2;
// reg clk;
// reg reset;
// wire [23:0] cas_shifted_mantissa_1;
// wire [23:0] cas_shifted_mantissa_2;
// wire [7:0] cas_new_exponent;
// wire done_1;

// compandshift DUT(cas_mantissa_1,cas_mantissa_2,cas_exponent_1,cas_exponent_2,clk,reset,cas_shifted_mantissa_1,cas_shifted_mantissa_2,cas_new_exponent,done_1);
// initial begin
//     cas_mantissa_1=  24'b111000000000000000000000;
//     cas_mantissa_2=  24'b110110100000000000000000;
//     cas_exponent_1= 8'b01111111;
//     cas_exponent_2= 8'b10000010;
//     clk=1'b0;
//     #30
//     $display("%b\n",cas_shifted_mantissa_1);
//     $display("%b\n",cas_shifted_mantissa_2);
//     $display("%b\n",cas_new_exponent);
//     $display(done_1);
//     $finish;
// end

// always #1 clk=!clk;
// endmodule
