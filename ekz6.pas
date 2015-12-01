function longest_word(longest, current : string): string;
begin
  if length(current) > length(longest) then
    result := current
  else
    result := longest;
end;

var f : text;
    longest, current : string;
    c : char;
begin
  assign(f, 'file.txt');
  reset(f);
    while not eof(f) do
      begin
        read(f, c);
        if (c <> ' ') then
          begin
            current := current + c;
            if eof(f) then
              longest := longest_word(longest, current);
           end
        else
          begin
            longest := longest_word(longest, current);
            current := '';
          end;
      end;
  close(f);
  write(longest, ' ', length(longest));
end.
