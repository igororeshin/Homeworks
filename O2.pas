 var a : array of integer;
     i, j, l, max, k, p, n : integer;
     
 begin
  readln(n);
  setlength(a, n);
  for i := 0 to n-1 do
    readln(a[i]);
  l := n - 1;
  for i := l downto 1 do
    begin
      max := a[i];
      for j := i - 1 downto 0 do
        begin
          if (max < a[j]) then
            begin
              max := a[j];
              k := j;
            end;
        end;
      p := a[k];
      a[k] := a[i];
      a[i] := p;
    end;
  for i := 0 to n-1 do
    write(a[i], ' ');
end.
