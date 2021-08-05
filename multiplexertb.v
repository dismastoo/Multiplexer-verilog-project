//multiplexer testbench//

module multiplexertb;
wire out;
reg ctrl,in1,in2;
multiplexer uut(out,ctrl,in1,in2);
initial
begin
        $monitor($time," out=%b,ctrl=%b,in1=%b,in2=%b",out,ctrl,in1,in2);
           ctrl=0;in1=0;in2=0;
          #1 in1=1;in2=0;
          #1 in1=0;in2=0;
             #1 in1=1; in2 =1;
          #1 ctrl =1;
          #1 in1=0;in2=0;
          #1 in1=1;in2=0;
          #1 in1=0;in2=1;
              #1 in1=1;in2=1;
          #10 $finish;
end
endmodule
          
