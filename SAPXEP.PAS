var A:Array[1..100] of string;
	fi,fo: text;
	s,x: string;
        i,j,d: integer;
BEGIN
	assign(fi,'sapxau.inp');
	assign(fo,'sapxau.out');
	reset(fi);
	read(fi,s);
	rewrite(fo);
	j:=1; d:=0;
	For i:=1 to length(s) do
	begin

			if s[i] in ['a'..'z'] then
				begin
				A[j]:=A[j]+S[i];
				
				end;
			if (s[i] in [' ']) and (s[i+1] in ['a'..'z']) then begin
																j:=j+1;
																d:=d+1;
																end;
			{if (s[i] in [' ']) and (s[i+1] in [' ']) then {delete(s,i+1,1)} }

    end;
//so sanh
for j:=d downto 2 do
		for i:=1 to j-1 do
		if length(A[i])> length(A[i+1]) then
			begin
			x:=A[i];
			A[i]:=A[i+1];
			A[i+1]:=x;
			end;
for i:=1 to d do write(fo,A[i],' ');


close(fi);
close(fo);
end.

