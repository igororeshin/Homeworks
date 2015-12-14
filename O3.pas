const
  N = 4;

var
  a: array [1..N] of integer;
  i, p: integer;

begin
  for i := 1 to N do
  begin
    readln(a[i]);
  end;
  for i := 1 to N do
  begin
    p := i;
    while (p > 1) and (a[p] < a[p - 1]) do
    begin
      a[p] := a[p] + a[p - 1];
      a[p - 1] := a[p] - a[p - 1];
      a[p] := a[p] - a[p - 1];
      p := p - 1;
    end;
  end;
  for i := 1 to N do
    write(a[i], ' ');
end.
