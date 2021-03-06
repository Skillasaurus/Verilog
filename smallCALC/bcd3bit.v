`timescale 1ns / 1ps
module bcd3bit(BCD, s0, s1, s2, s3, s4, s5, s6);
output s0, s1, s2, s3, s4, s5, s6;
input [2:0] BCD;
reg s0, s1, s2, s3, s4, s5, s6;
always @ (BCD)
begin // BCD to 7-segment decoding
case (BCD) // s0 - s6 are active low
4'b000: begin s0=0; s1=0; s2=0; s3=1; s4=0; s5=0; s6=0; end
4'b001: begin s0=1; s1=0; s2=1; s3=1; s4=0; s5=1; s6=1; end
4'b010: begin s0=0; s1=1; s2=0; s3=0; s4=0; s5=1; s6=0; end
4'b011: begin s0=0; s1=0; s2=1; s3=0; s4=0; s5=1; s6=0; end
4'b100: begin s0=1; s1=0; s2=1; s3=0; s4=0; s5=0; s6=1; end
4'b101: begin s0=0; s1=0; s2=1; s3=0; s4=1; s5=0; s6=0; end
4'b110: begin s0=0; s1=0; s2=0; s3=0; s4=1; s5=0; s6=0; end
4'b111: begin s0=1; s1=0; s2=1; s3=1; s4=0; s5=1; s6=0; end
default: begin s0=1; s1=0; s2=1; s3=1; s4=0; s5=1; s6=0; end
endcase
end
endmodule // end bcd_to_7seg