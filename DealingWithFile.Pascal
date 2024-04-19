Type M2=array[1..12,1..12] of integer;
var x,c,i,j,n,maxSTR,x1,y1,maxHTR,x2,y2:integer;
 A:M2;
 f:file of integer;
 st:string;
 str:text;
begin
 readln(st);
 assign(f,st);
 rewrite(f);
 Randomize;
 for i:=1 to 144 do
 begin
 // readln(x); 
 x:=random(50)-20;
 write(f,x);
 end;
 close(f); 
 reset(f);
for i:=1 to 12 do 
 begin
 for j:=1 to 12 do
 begin
 read(f,a[i,j]); 
 write(a[i,j]:4);
 end; 
 writeln;
 end;
 close(f); 
 
 maxSTR := A[1,1]; x1 := 1; y1 := 1;
 i := 1;
 while i <= 12 do begin
 for j := 1 to 12 do begin
 if A[i,j] > maxSTR then begin
 maxSTR := A[i,j];
 x1 := i; 
 y1 := j;
 end;
 end;
 i += 3
 end;
 maxHTR := A[1,1]; x2 := 1; y2 := 1;
 for i := 1 to 6 do 
 for j := 1 to i do begin
 if A[i,j] > maxHTR then begin
 maxHTR := A[i,j];
 x2 := i;
 y2 := j
 end; 
 end;
 for i := 1 to 6 do
 for j := 7 to (7 - i + 6) do begin
 if A[i,j] > maxHTR then begin
 maxHTR := A[i,j];
 x2 := i;
 y2 := j
 end; 
 end;
 A[x1,y1] := maxHTR;
 A[x2,y2] := maxSTR;
 assign(str,'pasc.txt');
 rewrite(str);
 writeln('модифицированная матрица А');
 for i:=1 to 12 do 
 begin
 for j:=1 to 12 do begin
 write(str,A[i,j]:4);
 write(A[i,j]:4);
 end;
 writeln(str);
 writeln
 end; 
 close(str);
 writeln('полученные результаты');
 writeln('maxSTR = ',maxSTR,'; x1 = ',x1,'; y1 = ',y1);
 writeln('maxHTR = ',maxHTR,'; x2 = ',x2,'; y2 = ',y2);
end.
