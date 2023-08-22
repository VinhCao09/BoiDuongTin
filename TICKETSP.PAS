var fi,fo: text;
N,K,p1,p2,c,l,tien1,tien2: integer;
BEGIN
	assign(fi,'TICKETS.INP');
	assign(fo,'TICKETS.OUT');
	reset(fi);
	read(fi,N,K,p1,p2);
	rewrite(fo);
	if N<=K then write(fo,p2);
	c:=N div K;
	l:=N - k;
	Tien1:=c*p2+l*p1;
	tien2:=(c+1)*p2;
	if tien1>tien2 then write(fo,tien2) else write(fo,tien1);
close(fi);
close(fo);
end.
