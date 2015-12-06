type
    matrix = array [1..3, 1..3] of integer;

var a : matrix;

procedure read_matrix();
var i, j : integer;
begin
  for i := 1 to 3 do
    for j := 1 to 3 do
      begin
        readln(a[i,j]);
      end;
end;

procedure min_element(a : matrix);
var i, j, min : integer;
begin
  for i := 1 to 3 do 
    begin
        min := a[i, 1];
        for j := 2 to 3 do 
            if a[i, j] < min then min := a[i, j];
        writeln('Минимальное значение в строке', ' ', i, ' : ', min);
    end;
end;

begin
  read_matrix;
  min_element(a);
end.
