function is_digit(c: char): boolean;
begin
  is_digit := ('0' <= c) and (c <= '9');
end;

function to_digit(c : char): integer;
begin
  if is_digit(c)d = true then
    begin
      to_digit := integer(c) - integer('0');
    end
  else
    begin
      to_digit := -1;
    end;
end;

var 
  c : char;
  a : integer;
begin
  read(c);
  a := to_digit(c);
  write(a);
end.
