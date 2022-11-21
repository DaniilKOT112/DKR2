function Pos(subs, s: string; from: integer): integer;
begin
  if (subs = nil) or (subs.Length = 0) or (from > s.Length) then
    Result := 0
  else Result := s.IndexOf(subs, from - 1, System.StringComparison.Ordinal) + 1;
end;
procedure Delete(var s: string; index, count: integer);
begin
  if (index < 1) or (index > s.Length) or (count <= 0) then
    Exit;
  if index + count - 1 > s.Length then
    count := s.Length - index + 1;
  s := s.Remove(index - 1, count);
end;
begin
  var s:= readstring('Введите строку');
  var pod_s:= readstring('Введите подстроку');
  var len := length(pod_s);
  var i := pos(pod_s, s);
  if i > 0 then
  begin
    delete(s, i, len);
    var lens := length(s);
    if pos(pod_s, s) > 0 then
      for i := lens - len downto 1 do
      begin
        var c := 0;
        for var j := 1 to len do
          if s[i + j - 1] = pod_s[j] then
            c := c + 1;
        if c = len then
        begin
          delete(s, i, len);
        end;
      end;
  end;
  println(s);
end.

