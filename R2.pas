type
  points = record
    x: integer;
    y: integer;
  end;
  
var a : array of points;
    i, n, j, k, b : integer;
    c : boolean;
    
function check(coord : points): boolean;
begin
  if coord.y = (k*coord.x + b) then
    result := true
  else
    result := false;
end;

begin
  writeln('Введите k и b из уравнения y = kx + b');
  readln(k);
  readln(b);
  writeln('Введите количество точек и координаты каждой точки');
  readln(n);
  setlength(a, n+1);
  for i := 1 to n do
    begin
      readln(a[i].x);
      readln(a[i].y);
    end;
  for i := 1 to n do
    begin
      c := check(a[i]);
      if c = false then
        break;
    end;
  if c = true then
    writeln('Все точки лежат на одной прямой')
  else
    writeln('Мы выражаем вам глубокое сочувствие, но не все точки лежат на одной прямой');
end.
