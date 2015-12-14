var a, b, h, y, x : real;
    n, j, i : integer;
    mas : array [,] of real;
    
function count(a, x : real): real;
begin
  count := (exp(x) + exp(-a))/(1 + a*a + x*x);
end;

function ksi(mas : array [,] of real; i, n : integer): real;
var j : integer;
begin
  mas[n+1,i] := mas[1,i];
  for j := 2 to n do
    begin
      if mas[n+1,i] > abs(mas[j,i]) then
        begin
          mas[n+1,i] := abs(mas[j,i]);
        end;
    end;
   ksi := mas[n+1,i];
end;

function psi(mas : array [,] of real; i, n : integer): real;
var j : integer;
begin
  for j := 1 to n do
    begin
      if mas[0,i] < abs(mas[j,i]) then
        begin
          mas[0,i] := abs(mas[j,i]);
        end;
    end;
  psi := mas[0,i];
end;

begin
  writeln('Введите h, b, n:');
  readln(h, b, n);  // Вводим значения h, b, n
  setlength(mas,n+2,4);
  for i := 1 to 3 do  // Запускаем внешний цикл
    begin
      writeln(#13#10, 'Введите a', i, ':');
      readln(a);  // Вводим значение a
        for j := 1 to n do  // Запускаем внутренний цикл
          begin
            x := b + j*h;
            mas[j,i] := count(a, x);  // Получаем j-ое значение y
            writeln('y(', j, ') = ', mas[j,i]);  // Выводим j-ое значение y на экран
          end;
      mas[n+1,i] := ksi(mas, i, n);
      mas[0,i] := psi(mas, i, n);
      writeln('Минимальный модуль серии = ', mas[n+1,i]);  // Выводим число ψ на экран
      writeln('Максимальный модуль серии = ', mas[0,i], #13#10);  // Выводим число ψ на экран
    end;
end.
