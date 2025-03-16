program eje5;
var 
    num,numMax,numMin,suma:integer;
begin
    numMax:=-1;
    numMin:=9999;
    suma:=0;
    repeat
      write('ingrese numero: ');
      read(num);
      suma:=suma+num;
      if (num<=numMin) then begin;
        numMin:=(num);
        end;
      if (num>numMax) then begin;
        numMax:=(num);
        end;
    until (num=100);
        writeLn('numero maximo ingresado: ',numMax);
        writeLn('numero minimo ingresado: ',numMin);
        writeLn('el total de la suma de todos los numeros ingrewsasdos ha sido: ',suma);
end.           