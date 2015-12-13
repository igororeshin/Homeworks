var
  f1, f2: text;

function check(f1, f2: text): boolean;
var
  c1, c2: char;
  b: boolean;
begin
  read(f1, c1);
  read(f2, c2);
  while (not eof(f1)) and (not eof(f2)) do
  begin
    if (c1 = c2) then
    begin
      read(f1, c1);
      read(f2, c2);
      if eof(f2) then
      begin
        b := true;
      end;
    end
    else
    begin
      read(f1, c1);
    end;
  end;
  result := b; 
end;

begin
  assign(f1, 'input.txt');
  assign(f2, 'output.txt');
  reset(f1);
  reset(f2); 
  writeln(check(f1, f2));
end.
