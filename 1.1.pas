begin
  var mas: array of integer; var cnt: integer;
  begin
    cnt := readinteger('Введите количество элементов');
    setlength(mas, cnt);
    write('Введите элементы массива');
    for var i := 0 to cnt - 1 do
    begin
      mas[i] := readinteger();
    end;
    
  end;
  begin
    var b := 1;
    var e := 2;
    var modul := abs(mas[b] - mas[e]);
    for var i := 0 to cnt - 1 do
      for var j := i + 1 to cnt - 1 do
        if modul > abs(mas[i] - mas[j]) then 
        begin
          b := i;
          e := j;
          modul := abs(mas[i] - mas[j]);
        end;
    println(b, ' ', e, ' ', mas);
  end;
end.
