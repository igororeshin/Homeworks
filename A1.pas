function to_digit(c : char): integer;
begin
  to_digit := integer(c) - integer('0');
end;

procedure column(s1, s2 : string; l, d : integer);
var a : array of integer;
    i, k : integer;
begin
  setlength(a, l+1);
  for i := l downto 1 do
    begin
      if i > d then
        begin
          a[i] := a[i] + to_digit(s1[i]) + to_digit(s2[i-d]);
          if a[i] > 9 then
            begin
              a[i] := a[i] - 10;
              a[i-1] := a[i-1] + 1;
            end;
        end
      else
        begin  
          a[i] := a[i] + to_digit(s1[i]);
          if a[i] > 9 then
            begin
              a[i] := a[i] - 10;
              a[i-1] := a[i-1] + 1;
            end;
        end;
    end;
  for i := 0 to l do
    begin
      k := k*10 + a[i];
    end;
  writeln(k);
end;

var s1, s2, s : string;
    a : array of integer;
    l, d : integer;
begin
  readln(s1);
  readln(s2);
  if length(s2) > length(s1) then
    begin
      s := s1;
      s1 := s2;
      s2 := s;
    end;
  l := length(s1);
  d := length(s1) - length(s2);
  column(s1, s2, l, d);
end.
