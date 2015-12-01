function to_digit(c : char): integer;
begin
  result := integer(c) - integer('0');
end;

var 
  f : text;
  sum, digit, number : integer;
  c : char;
begin
  assign(f, 'file.txt');
  reset(f);
    while not eof(f) do
      begin
        read(f, c);
        if (c <> ' ') then
          begin
            digit := to_digit(c);
            number := number*10 + digit;
            if eof(f) then
              sum := sum + number;
          end
         else
          begin
            sum := sum + number;
            number := 0;
          end;
      end;
  close(f);
  writeln(sum);
end.
