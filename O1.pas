var
    a: array of integer;
    i, j, k, n: integer;
 
begin
   readln(n);
   setlength(a, n+1);
   for i := 1 to n do 
    readln(a[i]);
   for i := 1 to n-1 do
    for j := 1 to n-i do
      if a[j] > a[j+1] then 
        begin
          k := a[j];
          a[j] := a[j+1];
          a[j+1] := k
        end;
   for i := 1 to n do
    writeln(a[i]);
end.
