function longest_word(s, s1 : string): string;
begin
  if length(s1) > length(s) then
    result := s1
  else
    result := s;
end;

var f : text;
    s, s1 : string;
    c : char;
begin
  assign(f, 'file.txt');
  reset(f);
    while not eof(f) do
      begin
        read(f, c);
        if (c <> ' ') then
          begin
            s1 := s1 + c;
            if eof(f) then
              s := longest_word(s, s1);
           end
        else
          begin
            s := longest_word(s, s1);
            s1 := '';
          end;
      end;
  close(f);
  write(s, ' ', length(s));
end.
