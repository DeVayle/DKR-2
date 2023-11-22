program dkr2_2;

var
  s, ps, t: string;
  i, iFirst, iLast, k: integer;

begin
  write('Введите строку: ');
  readln(s);
  write('Введите подстроку: ');
  readln(ps);
  
  // нахождение первого и последнего вхождения //
  i:= 1;
  while (i<=length(s)) and (length(ps)>0) do
  begin
    k:= 0;
    while ((i + k)<=length(s)) and (k<length(ps)) and (s[i+k] = ps[k+1]) do inc(k);
    if k=Length(ps) then
    begin
      if iFirst=0 then iFirst:= i
      else iLast:= i;
      inc(i, k);
    end
    else inc(i);
  end;
  
  // удаление подстрок из строки //
  t:= '';
  if iFirst>0 then
  begin
    i:= 1;
    while i<=Length(s) do
    begin
      if (i=iFirst) or (i=iLast) then inc(i, Length(ps))
      else
      begin
        t:= t+s[i];
        inc(i);
      end;
    end;  
    s:= t;
  end;
  writeln(s);
end.