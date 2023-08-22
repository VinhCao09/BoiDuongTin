var     fi,fo:text;
        A,B:array[1..100] of integer;
        N,M,i,j,x:integer;
BEGIN
//doc
Assign(fi,'daycon.inp');
Assign(fo,'daycon.out');
reset(fi);
rewrite(fo);
read(fi,N,M);
For i:=1 to n do
read(fi,A[i]);
//sap xep
        for i:=1 to N do
                begin
                if A[i]<M then
                        begin
                        for j:=i to N do
                                begin
                                B[i]:=B[i]+A[j];
                                if B[i]=M then
                                        begin
                                        for x:=i to j do write(fo,A[x]:2);
                                        writeln(fo);
                                        end;
                                if B[i]>M then break;
                                end;

                        end;
                if B[i]=M then writeln(fo,A[i]);
                end;
        close(fi);
        close(fo);
end.
