const
  K = 14; // Проходной балл
 
type
  data = record
    name : string;
    medal : boolean;
    exm : array [1..4] of byte;
  end;
  
function check(student : data): boolean;
var s, i : integer;
    r : boolean;
begin
  s := 0;
  r := false;
  for i := 1 to 4 do
    begin
      s := s + student.exm[i];
      if student.exm[i] = 5 then
        r := true;
    end;
  if ((r = true) and (student.medal = true)) or (s >= K) then
    result := true
  else
    result := false;
end;

var student : array of data;
    i, n : integer;
    f : text;
    b : boolean;
begin
  assign(f, 'file.txt');
  reset(f);
    readln(f, n);
    setlength(student, n+1);
    for i := 1 to n do
      readln(f, student[i].medal, student[i].exm[1], student[i].exm[2], student[i].exm[3], student[i].exm[4], student[i].name);
    for i := 1 to n do
      begin
        b := check(student[i]);
        if b = true then
          writeln(student[i].name);
      end;
  close(f);
end.
