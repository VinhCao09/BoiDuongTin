var fi,fo: text;
	A: Array[1..100000] of longint;
	i,j,N,B,K,T: longint;
BEGIN
	assign(fi,'TINH_TONG.INP');
	assign(fo,'TINH_TONG.OUT');
	reset(fi);
	read(fi,N,K,B);
for i:=1 to N do
	readln(fi,A[i]);
	rewrite(fo);
i:=0;
Repeat

        i:=i+1;
        if A[i] <> A[i+N] then A[i+N]:=A[i+N]+A[i];

Until   i=10000;
//
	for i:=1 to 10000 do
                if (i>=B) and (i<B+K) then T:=T+A[i];
write(T);


close(fi);
close(fo);
end.
