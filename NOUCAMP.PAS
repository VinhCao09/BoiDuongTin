var A,B: Array[1..100] of integer;
	fi,fo: text;
	N,M,K,i,j: integer;
        ok: boolean;
BEGIN
	assign(fi,'NOUCAMP.INP');
	assign(fo,'NOUCAMP.OUT');
	reset(fi);
	read(fi,N,M);
	rewrite(fo);
	For i:=1 to M do
	read(fi,A[i]);
	//gan gia tri cho B[i] theo thu tu;
	For i:=1 to N do
		For j:=1 to M do
		If i=A[j] then B[i]:=A[j];
	
	For i:=1 to N do
        If i<>B[i] then write(fo,i,' ');
close(fi);
close(fo);
end.
