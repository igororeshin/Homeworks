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

procedure write_transp_matrix(a : matrix);
var i, j : integer;
begin
  for i := 1 to 3 do
    begin
      for j := 1 to 3 do
        begin
          write(a[j,i]);
        end;
      writeln;
    end;
end;

begin
  read_matrix;
  write_transp_matrix(a);
end.
