/*
   This file was generated automatically by the Mojo IDE version B1.3.3.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module comparator_3 (
    input [5:0] alufn,
    input z,
    input v,
    input n,
    output reg [7:0] comp
  );
  
  
  
  always @* begin
    comp = 1'h0;
    
    case (alufn[1+1-:2])
      2'h1: begin
        comp[0+0-:1] = z;
      end
      2'h2: begin
        comp[0+0-:1] = n ^ v;
      end
      2'h3: begin
        comp[0+0-:1] = z | (n ^ v);
      end
      default: begin
        comp[0+0-:1] = 1'h0;
      end
    endcase
  end
endmodule