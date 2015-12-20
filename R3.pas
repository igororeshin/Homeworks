type
  points = record
    x: real;
    y: real;
  end;

var a : array of points;
    n, i : integer;
    r : real;
    b : boolean;

function count(x, y : real): boolean;
begin
  if (x*x + y*y) = r*r then
    result := true
  else
    result := false;
end;

begin
  readln(r);
  readln(n);
  setlength(a, n+1);
  for i := 1 to n do
    begin
      readln(a[i].x);
      readln(a[i].y);
    end;
  b := true;
  for i := 1 to n do
    begin
      b := count(a[i].x, a[i].y);
      if b = false then
        break;
    end;
  if b = true then
    writeln('Все точки принадлежат окружности')
  else
    writeln('К сожалению, не все точки принадлежат окружности');
end.
