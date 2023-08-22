var	fi,fo: text;
        N,i,T,d: integer;
BEGIN
	assign(fi,'UOCSO.INP');
	assign(fo,'UOCSO.OUT');
	reset(fi);
	rewrite(fo);
	read(fi,N);
	T:=1; d:=0;
	For i:=1 to N do
		T:=T*i;
	For i:=1 to T do
	if T mod i=0 then d:=d+1;
	write(fo,d) ;
	
close(fi);
close(fo);
end.
