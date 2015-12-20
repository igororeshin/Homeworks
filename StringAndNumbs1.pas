function is_digit(c : char): boolean;
begin
  is_digit := ('0' <= c) and (c <= '9');
end;

var
  c : char;
  a : boolean;
begin
  readln(c);
  a := is_digit(c);
  if a = true then
    write('Символ является цифрой')
  else
    write('Символ не является цифрой');
end.
