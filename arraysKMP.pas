function search (a, b: array of integer; m, n : integer ) : integer;
var
  c: array of integer;
  k, i: integer;
begin
  setlength(c, 1+n);
  k := 0;
  for i := 2 to n do
  begin
    while (k > 0) and (b[k+1] <> b[i]) do
      k := c[k];
    if b[k+1] = b[i] then
      inc(k);
    c[i] := k;
  end;
  k := 0;
  for i := 1 to m do
   begin
    while (k > 0) and (b[k+1] <> a[i]) do
      k := c[k];
    if b[k+1] = a[i] then
      inc(k);
    if k = n then
    begin
      search := i-n+1;
      break;
    end;
  end;
end;

var 
  a, b : array of integer;
  res, m, n, i : integer;
  
begin
  writeln('Введите размерность массива A:');
  readln(m);
  setlength(a, m+1);
  writeln('Введите элементы массива A:');
  for i := 1 to m do
    begin
      readln(a[i]);
    end;
  writeln('Введите размерность массива B:');
  readln(n);
  setlength(b, n+1);
  writeln('Введите элементы массива B:');
  for i := 1 to n do
    begin
      readln(b[i]);
    end;
  res := search(a, b, m, n);
  if res = 0 then
    begin
      writeln('Массив B не входит в массив A!');
    end
  else
    begin
      writeln('Массив B входит в массив A начиная с элемента номер ', res);
    end;
end.
