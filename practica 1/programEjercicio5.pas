program Ejercicio5;
var
    x, y, intentos: real;
begin
    read(x);
    y:=0 ;
    intentos:= 0;
    while (y<> (x*2)) and (intentos<10) do
        begin
            read(y);
            intentos:= intentos + 1;
            if (y<> (x*2)) then
                writeLn('intento no valido     ');
        end;   
    if (intentos=10) then     
        writeLn('se realizaron mas de 10 intentos')
    else    
        writeLn('correcto,el doble de X es', y:0:0 );    
end.