module condidate (
//    input [3:0] A,
    input clk,rst,
  output reg [3:0] D
  
);

 reg [3:0] c[8:0][8:0];
 reg [3:0] i,j,k,l,x,y,z,w,m,n,o,p,pos;
 reg [4:0] state;

parameter s0 = 4'b0000, s1 = 4'b0001, s2 = 4'b0010, s3 = 4'b0011, s4 = 4'b0100, s5 = 4'b0101, s6 = 4'b0110, 
s7 = 4'b0111, s8 = 4'b1000, s9 = 4'b1001, s10 = 4'b1010, s11 = 4'b1011, s12 = 4'b1100, s13 = 4'b1101, s14 = 4'b1110,
s15 = 4'b1111,s16 = 5'b10000, s17 = 5'b10001,s18 = 5'b10010,s19 = 5'b10011,s20 = 5'b10100,s21 = 5'b10101,s22 = 5'b10110,
s23 = 5'b10111,s24 = 5'b11000,s25 = 5'b11001,s26 = 5'b11010, s27 = 5'b11011, s28 = 5'b11100;


  always @(posedge clk) begin
    if(rst == 0) state = s1;
    else state <= nxt_state;
    case (state)
       s0 : begin
           o = 4'b0000;
           p = 4'b0000;
         nxt_state = s1;
       end
       s1 : begin
           c[0][0] = 2;
           c[0][1] = 0;
           c[0][2] = 0;
           c[0][3] = 5;
           c[0][4] = 0;
           c[0][5] = 4;
           c[0][6] = 3;
           c[0][7] = 8;
           c[0][8] = 0;
           c[1][0] = 9;
           c[1][1] = 5;
           c[1][2] = 4;
           c[1][3] = 6;
           c[1][4] = 8;
           c[1][5] = 3;
           c[1][6] = 2;
           c[1][7] = 7;
           c[1][8] = 1;
           c[2][0] = 6;
           c[2][1] = 8;
           c[2][2] = 3;
           c[2][3] = 2;
           c[2][4] = 7;
           c[2][5] = 1;
           c[2][6] = 9;
           c[2][7] = 5;
           c[2][8] = 0;
           c[3][0] = 8;
           c[3][1] = 9;
           c[3][2] = 0;
           c[3][3] = 7;
           c[3][4] = 0;
           c[3][5] = 2;
           c[3][6] = 6;
           c[3][7] = 4;
           c[3][8] = 5;
           c[4][0] = 7;
           c[4][1] = 4;
           c[4][2] = 0;
           c[4][3] = 1;
           c[4][4] = 5;
           c[4][5] = 9;
           c[4][6] = 8;
           c[4][7] = 3;
           c[4][8] = 0;
           c[5][0] = 0;
           c[5][1] = 3;
           c[5][2] = 2;
           c[5][3] = 0;
           c[5][4] = 0;
           c[5][5] = 6;
           c[5][6] = 7;
           c[5][7] = 0;
           c[5][8] = 9;
           c[6][0] = 4;
           c[6][1] = 6;
           c[6][2] = 9;
           c[6][3] = 3;
           c[6][4] = 1;
           c[6][5] = 8;
           c[6][6] = 5;
           c[6][7] = 2;
           c[6][8] = 7;
           c[7][0] = 3;
           c[7][1] = 2;
           c[7][2] = 5;
           c[7][3] = 4;
           c[7][4] = 6;
           c[7][5] = 7;
           c[7][6] = 1;
           c[7][7] = 9;
           c[7][8] = 0;
           c[8][0] = 0;
           c[8][1] = 0;
           c[8][2] = 8;
           c[8][3] = 0;
           c[8][4] = 2;
           c[8][5] = 5;
           c[8][6] = 4;
           c[8][7] = 6;
           c[8][8] = 3;
         nxt_state= s2;
       end
       s26 : begin
           o = 0;
           p = 0;
         nxt_state= s27;
       end
       s27 : begin
           D = c[o][p];
           p = p + 1;
           if(p == 9)begin
               o = o + 1;
               p = 0;
           end
         if(o == 9) state= s28;
         else nxt_state= s27;
       end
       s18 : begin
         c[x][y] = n;
         nxt_state= s5;
       end
       
       s2 : begin
        k = 4'b0000;
        l = 4'b0000;
        w = 4'b0000;
         nxt_state= s3;
        end
    s3 : begin
      m = 4'b0001;
      nxt_state= s4;
    end
    s4 : begin
        pos = 4'b0000;
        i = k;
        j = l;
      if(c[i][j] == m) nxt_state= s5;
      else nxt_state= s6;
    end
    s5 : begin
      m = m + 1;
      if(m == 10) nxt_state= s19;
      else nxt_state= s4;
    end
    s6 : begin
      j = j + 1;
      if(j == (l+3)) nxt_state= s7; 
      else nxt_state= s22;
    end
    s7 : begin
      i = i + 1;
      if(i == (k+3)) nxt_state= s9;
      else nxt_state= s8;
    end
    s8 : begin
      j = l;
      if(c[i][j] == m) nxt_state= s5;
      else nxt_state= s6;
    end
    s9 : begin
        i = k;
        j = l;
       if(c[i][j] == 0) nxt_state= s13;
      else nxt_state= s10;
    end
    s10 : begin
      j = j + 1;
       if(j == (l+3)) nxt_state= s11;
      else if(c[i][j] == 0) nxt_state= s13;
      else nxt_state= s23;
    end
    s11 : begin
      i = i + 1;
      if((i == (k+3)) && pos == 1) nxt_state= s18;
      else if((i == (k+3)) && pos != 1) nxt_state= s5;
      else nxt_state= s12;
    end
    s12 : begin
      j = l;
      if(c[i][j] == 0) nxt_state= s13;
      else nxt_state= s10;
    end
    s13 : begin 
      z = 0;
       if(c[z][j] == m) nxt_state= s10;
      else nxt_state= s14;
    end
    s14 :begin 
      z = z + 1;
      if(z == 9) nxt_state= s15;
      else if(c[z][j] == m) nxt_state= s10;
      else nxt_state= s24;
    end
    s15 : begin
      z = 0;
      if(c[i][z] == m) nxt_state= s10;
      else nxt_state= s16;
    end
    s16 :begin
      z = z + 1;
       if(z == 9) nxt_state= s17;
      else if(c[i][z] == m) nxt_state= s10;
      else nxt_state= s25;
    end
    s17 : begin
        pos = pos + 1;
        x = i;
        y = j;
        n = m;
      nxt_state= s10;
    end
    
    s19 : begin
      w = w + 1;
       if(w == 1 || w == 2 || w == 4 || w == 5 || w == 7 || w == 8) nxt_state= s20; 
      else if(w == 3 || w == 6) nxt_state= s21; 
      else nxt_state= s26;
    end
    s20 : begin
      l = l + 3;
       nxt_state= s3;
    end
    s21 : begin
        l = 0;
        k = k + 3;
      nxt_state= s3;
    end
    s22 : if(c[i][j] == m) nxt_state= s5; else nxt_state= s6;
    s23 : nxt_state= s10;
    s24 : nxt_state= s14;
    s25 : nxt_state= s16;
        
    endcase  
end
endmodule