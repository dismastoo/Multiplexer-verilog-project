//single bit Multiplexer//

module multiplexer(out,ctrl,in1,in2);
input ctrl,in1,in2;
output out;
assign out = ctrl ? in1: in2;   //Conditional Expression? true expression : false expression. if true,true expression is evaluated else false expession//


endmodule
