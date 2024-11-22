`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2024 18:35:54
// Design Name: 
// Module Name: verify
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


module verify();
reg clk,clr,mode;
wire [3:0]count;

BCD uut(clk,clr,mode,count);

initial
begin
$monitor("clk=%b,clr=%b,count=%b,mode=%b",clk,clr,count,mode);
clk=0;
forever
#5 clk=~clk;
end

initial
#3 clr = 1; 

initial
begin
#10 clr = 0;
#15 mode = 1;
#100 mode = 0;
#500 $finish;



end
endmodule
