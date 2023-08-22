var fi,fo: text;
	x,y:array[1..10] of integer;
	s: real;
        i: integer;
BEGIN
	assign(fi,'DT.INP');
	assign(fo,'DT.OUT');
	reset(fi);
	rewrite(fo);
	for i:=1 to 3 do
	readln(fi,x[i],y[i]);
{ABx:=A[2]-A[1];
ABy:=B[2]-B[1];
ACx:=A[3]-A[1];
ACy:=B[3]-B[1];
AB:=sqrt(ABx*ABx+ABy*ABy);
AC:=sqrt(ACx*ACx+ACy*ACy);}
S:=(1/2*abs((x[2]-x[1])*(y[3]-y[1])-(x[3]-x[1])*(y[2]-y[1])));
write(fo,S:2:2);
close(fi);
close(fo);
end.
