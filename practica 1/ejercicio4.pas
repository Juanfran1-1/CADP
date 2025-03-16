program eje8;
var
letra:char;
contador,vocales:integer;
begin
  contador:=1;
  vocales:=0;
  while (contador<>3) do
    begin
        writse un caracteln('Ingreer');
        read(letra);
        if ((letra='a') or (letra='e') or (letra='i') or (letra='o') or (letra='u')) then
            vocales:=vocales + 1;
        contador:=contador + 1;
    end;
  if vocales=3 then
    writeln('se han ingresado 3 letras vocales')
  else
    writeln('se ingresaron ',contador-vocales, ' letras que no fueron vocales')
end.