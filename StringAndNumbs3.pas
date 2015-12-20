function to_digit(c : char): integer;
begin
  to_digit := integer(c) - integer('0');
end;

function array_to_number(a : array of char; l : integer): integer;
var i, digit, res : integer;
begin
  for i := 1 to l do
    begin
      digit := to_digit(a[i]);
      res := res*10 + digit;
    end;
  array_to_number := res;
end;

var 
  a : array of char;
  l, i, b : integer; 
begin
  readln(l);
  setlength(a, l+1);
  for i := 1 to l do
    readln(a[i]);
  b := array_to_number(a, l);
  write(b);
end.
