`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2024 18:27:17
// Design Name: 
// Module Name: BCD
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


module BCD(clk,clr,mode,count);
input clk,clr,mode;
output reg [3:0]count;

always @(posedge clk or posedge clr)
begin
if(clr==1'b1)
count<=4'b0000;
else

if(mode==1'b1)
begin

if(count==4'b1001)
count<=4'b0000;
else
count<=count+1;
end

else
begin
if(count==4'b0000)
count<=4'b1001;
else
count<=count-1;

end

end

endmodule
