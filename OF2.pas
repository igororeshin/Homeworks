const
  N = 1000;

var f1, f2 : text;
    a1, a2 : array of integer;
    l1, l2 : integer;

procedure merger(a1, a2 : array of integer; l1, l2 : integer);
var f : text;
    i, j : integer;
begin
assign(f, 'file3.txt');
rewrite(f);
  i := 1;
  j := 1;
  while (i <= l1) and (j <= l2) do
    begin
      if a1[i] < a2[j] then
        begin
          write(f, a1[i], ' ');
          inc(i);
        end
      else
        begin
          write(f, a2[j], ' ');
          inc(j);
        end;
    end;
  if (i > l1) then
    begin
      while (j <= l2) do
        begin
          write(f, a2[j], ' ');
          inc(j);
        end;
    end
  else
    begin
      while (i <= l1) do
        begin
          write(f, a1[i], ' ');
          inc(i);
        end;
    end;
close(f);
end;

begin
  assign(f1, 'file1.txt');
  assign(f2, 'file2.txt');
  reset(f1);
  reset(f2);
    setlength(a1, N+1);
    setlength(a2, N+1);
    l1 := 0;
    while not(eof(f1)) do 
      begin
        inc(l1);
        read(f1, a1[l1]);
      end;
    l2 := 0;
    while not(eof(f2)) do 
      begin
        inc(l2);
        read(f2, a2[l2]);
      end;
  close(f1);
  close(f2);
  merger(a1, a2, l1, l2);
end.
