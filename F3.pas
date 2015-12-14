var f : text;
    n, p, i, j, k : integer;
    a : array of integer;
    c : char;
    
begin
assign(f, 'file.txt');
rewrite(f);
  readln(n);
  setlength(a, n+1);
  for i := 1 to n do
    readln(a[i]);
  for i := 1 to n do
      begin
        p := 4;
        k := 1000;
        while (a[i] div k) = 0 do
          begin
            dec(p);
            k := k div 10;
          end;
        while p <> 0 do
          begin
            j := a[i] div k;
            a[i] := a[i] mod k;
            dec(p);
            k := k div 10;
            c := chr(integer('0') + (j));
            write(f, c);
          end;
        write(f, ' ');
      end;
close(f);
end.
