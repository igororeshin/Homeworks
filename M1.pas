var   
  a, b: array [,] of integer;
  n, m : integer;
  
procedure read_matrix();
var 
  i, j: integer;
begin
  for i := 1 to m do    
        for j := 1 to n do 
          read(a[i, j]);
end;

procedure saddle_points(a, b: array [,] of integer);
var 
  i, j: integer; 
  rowmin, rowmax, colmin, colmax: real;
begin
    writeln('Седловые точки:');
    for i := 1 to n do 
      begin
        colmin := a[1, i];
        colmax := colmin;
        for j := 2 to m do 
          begin
            if a[j, i] < colmin then 
              colmin := a[j, i];
            if a[j, i] > colmax then 
              colmax := a[j, i];
          end; 
        for j := 1 to m do   
          begin
            if a[j, i] = colmin then 
              b[j, i] := b[j, i] + 1;
            if a[j, i] = colmax then 
              b[j, i] := b[j, i] - 3;
          end;
      end;
     for i := 1 to m do 
      begin
        rowmin := a[i, 1];
        rowmax := rowmin;
     for j := 2 to n do 
      begin
        if a[i, j] < rowmin then 
          rowmin := a[i, j];
        if a[i, j] > rowmax then 
          rowmax := a[i, j];
      end;
     for j := 1 to n do   
      begin
        if a[i, j] = rowmin then 
          b[i, j] := b[i, j] - 3;
        if a[i, j] = rowmax then 
          b[i, j] := b[i, j] + 1;  
        if (b[i, j] = 2) or (b[i, j] = -6) or (b[i, j] = -4) then 
          write(a[i, j], '  ')
        else write('-', '  ');
    end;
    writeln();
  end;
end;

begin
  readln(m, n);
  setlength(a, m+1, n+1);
  setlength(b, m+1, n+1);
  read_matrix();
  saddle_points(a, b);
end.
