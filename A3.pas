var
  a: array of integer;
  n, max, k, i: integer;
  
begin
  readln(n);
  setlength(a, n+1);
  for i := 1 to n do
    readln(a[i]);
  max := 0;
  k := 1;
  for i := 1 to n-1 do
    if a[i] < a[i + 1]  
      then inc(k)
    else 
      begin
        if max < k then 
          max := k;
        k := 1; 
      end;
  writeln(max);
end.
