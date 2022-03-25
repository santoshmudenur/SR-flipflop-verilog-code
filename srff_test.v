
module srff_test();
reg s,r,clk=0;
wire q,qbar;

srff DUT(.s(s),.r(r),.clk(clk),.q(q),.qbar(qbar));

initial begin
        $monitor($time,"s=%b r=%b q=%b qbar=%b ",s,r,q,qbar);

//forever 

#10 s=1; r=0;
#10 s=0;r=0;
#10 s=0;r=1;
#10 s=0;r=0;
#10 s=1;r=1;
#10;
end
always #5 clk=~clk;
endmodule
