`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 05:59:31 PM
// Design Name: 
// Module Name: up_counter
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


module up_counter(
input clk,rst,
input ld,
input [3:0] ldvalue,
output [3:0] dout
    );
reg [3:0] temp;
 
 initial begin
 temp = 0;
 end
  always@(posedge clk)
  begin
  if(rst == 1'b1)
  begin 
  temp <= 4'b0000;
  end
  
  else
   begin
   if(ld == 1'b1)
   temp <= ldvalue;
   else
   temp <= temp + 1;
   end
    end
    
    assign dout = temp;
endmodule
