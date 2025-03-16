program ejercicio1p2;
var 
    n5,i,suma,num:integer;
begin     
    suma:= 0;
    n5:=0;
    for i:= 1 to 10 do begin;
            write('escriba un numero: ');
            readln(num);
            suma := (suma + num);
            if (5<num) then
                n5:= n5+1
    end;
    writeln('la suma de todos los numeros ingresados es igual a: ' , suma);
    writeln('la cantidad de numeros mayores a 5 es igual a  ', n5);         
end.           
