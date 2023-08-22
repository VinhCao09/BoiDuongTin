var	fi,fo: text;
	N,M,i,j,M1,N1: integer; ok: boolean;
BEGIN
	assign(fi,'THUYEN.INP');
	assign(fo,'THUYEN.OUT');
	reset(fi);
	read(fi,N,M);
	rewrite(fo);
	{if N=M then write(fo,N);}
	{if N>M then
		BEGIN} 
		ok:=false;
		N1:=N; M1:=M;
		for i:=1 to M do
			begin
		        N1:=N*i;
				for j:=1 to N do
				begin
				M1:=M*j;
				if M1=N1 then 
							begin write(fo,M1); 
									ok:=true;
									break; 
							end;

				end;
			if ok=true then break;
			end;
                
close(fi);
close(fo);
END.
