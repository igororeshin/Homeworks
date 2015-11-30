function to_digit(c : char): integer;
begin
  to_digit := integer(c) - integer('0');
end;

var 
  c : char;
  a : integer;
begin
  read(c);
  a := to_digit(c);
  write(a);
end.
