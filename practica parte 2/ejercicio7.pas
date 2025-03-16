program eje7;
var
    p,piloto1,piloto2,piloto3,piloto4:string;
    tiempo1,tiempo2,tiempo3,tiempo4:integer;
    t,i:integer;
begin
    piloto1:= '';
    piloto2:= '';
    piloto3:= '';
    piloto4:= '';
    tiempo1:=9999;
    tiempo2:=9999;
    tiempo3:=1;
    tiempo4:=1;
    for i:= 1 to 7 do 
    begin
        write('ingrese nombre del piloto: ');
        readLn(p);
        write('ingrese tiempo del piloto: ');
        readLn(t);
        writeLn('----------');
        if (t < tiempo1) then begin;
            tiempo2:=tiempo1;
            tiempo1:=t;
            piloto2:=piloto1;
            piloto1:=p;
            end
        else if (t < tiempo2) then begin;
            tiempo2:=t;
            piloto2:=p;
            end;
        if (t > tiempo3) then begin;
            tiempo4:=tiempo3;
            piloto4:=piloto3;
            tiempo3:=t;
            piloto3:=p;
            end
        else if (t > tiempo4) then begin;
            tiempo4:=t;
            piloto4:=p;
            end;
    end;        
    writeLn('el piloto que termino 1º fue: ', piloto1 ,(' ') , ('su tiempo ha sido: ' ), tiempo1 );  
    writeLn('el piloto que termino 2º fue: ', piloto2 ,(' ') , ('su tiempo ha sido: ' ), tiempo2 );
    writeLn('el piloto que termino 3º fue: ', piloto3 ,(' ') , ('su tiempo ha sido: ' ), tiempo3 );
    writeLn('el piloto que termino 4º fue: ', piloto4 ,(' ') , ('su tiempo ha sido: ' ), tiempo4 ); 
end.    