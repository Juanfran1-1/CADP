program ejercicio2;
var     
    pos,maximo,num,i:integer;
begin
    maximo:= 0;
    pos:=0;
    for i:= 1 to 10 do begin;
        write('escriba un numero a continuacion :  ');
        read(num);
        if (num>maximo) then
            begin
                maximo:=(num);
                pos:=(i);
            end;    
    end; 
    write('el numero mas alto ingresado fue :  ' , maximo, ',  ingresado en la posicion: ',pos );       
end.                