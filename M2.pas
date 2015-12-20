const
  N = 5;
  
type
  matrix = array [1..N] of array[1..N] of integer ;

var
  a: matrix;

procedure readMatrix(var a: matrix);
var 
  i, j : integer;
begin
  for i := 1 to N do
    for j := 1 to N do
      readln(a[i, j]);
  writeln();
end;

function magic_square (a: matrix): boolean;
var
  r : boolean;
  b, c : array[1..N] of real;
  i, j : integer;
begin
  r := true;
  for i := 1 to N do
    for j := 1 to N do
    begin
      b[i] := b[i] + a[i,j];
      c[j] := c[j] + a[i,j];
    end;
  for i := 1 to N do
    if b[i] <> c[i] then
      r := false;
  result := r;
end;

begin
  readMatrix(a);
  if magic_square(a) then
    write('Магический квадрат')
  else
    write('Не магический квадрат');
end.
