program dkr2_1;

const
  n = 10;
  
var
  a: array [1..n] of integer;
  i, s, sar: integer;
  
begin
  writeln('Введите массив:');
  for i:=1 to n do
  begin
    read(a[i]);
    s+= a[i];
  end;
  writeln('Среднеарифметическое в массиве: ', sar:= s/n)
end.