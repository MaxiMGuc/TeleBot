type T2 = array[1..10,1..10] of integer;
var i,j,max,min,minC,y:integer;
    A:T2;
function F2(L:integer):integer;
var maxL,j,i, sum:integer;
begin
sum:=0;
 for j:=1 to 10 do sum+=A[L,j];
 if sum>0 then begin
  maxL:=A[L,1];
   for j:=2 to 10 do 
     if maxL<A[L,j] then maxL:=A[L,j];
 end;
 F2:=maxL
end;
procedure P3(NL:integer; var minC, C:integer);
var j:integer;
begin
 minC:=A[1,NL];
 C:=1;
 for j:=2 to 10 do
   if minC>A[j,NL] then begin
     minC:=A[j,NL];
     c:=j
   end;
end;
begin
//пользователь вводит элементы матрицы 
 for i:=1 to 10 do begin
   for j:=1 to 10 do begin
     writeln('A[',i,',',j,']=?');
     readln(A[i,j]);
   end;
   writeln;
 end;
 for i:=1 to 10 do begin
   max:=F2(i);
   if max>0 then 
     writeln('i=',i:2,' max=',max:4);
 end;
 for j:=1 to 10 do begin
   if A[1,j]<0 then begin
     P3(j,minC,y);
     writeln('j=',j:2,' min=',minC:4);
   end;
 end;
end.
