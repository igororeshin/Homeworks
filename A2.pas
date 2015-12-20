procedure periodicity(a : array of integer; n : integer);
var r : boolean;
    i, k, p : integer;
begin
  r := false;
  p := 0;
  for k := 1 to (n div 2) do 
  begin
    for i := 1 to n - k do
      begin
        if a[i] = a[i + k] then
          inc(p);
      end;
    if p = n - k then
      begin
        writeln('Периодичность = ', k, ' ');
        r := true;
      end
    else
      if (k = n div 2) and (r = false) then
        writeln('Нет периодичности')
      else
        p := 0;
  end;
end;

var
  i, n : integer;
  a : array of integer;

begin
  readln(n);
  setlength(a, n+1);
  for i := 1 to n do
    readln(a[i]);
  periodicity(a, n);
end.
