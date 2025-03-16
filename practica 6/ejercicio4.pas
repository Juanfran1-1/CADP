program eje5;
type
    auto=record
        marca:string;
        modelo:string;
        precio:real;
    end;
procedure leerauto(var a:auto);
begin
    writeLn('ingrese marca del vehiculo');
    readLn(a.marca);
    writeLn('ingrese modelo del vehiculo');
    readLn(a.modelo);
    writeLn('ingrese precio del vehiculo');
    readLn(a.precio);
end;   
procedure am(a:auto;var pm:real;var mm,mom:string);
begin
    iF(pm<a.precio)then begin
        pm:=a.precio;
        mm:=a.marca;
        mom:=a.modelo;
    end;
end;   
procedure procesarRegistro(var a:auto;var pm:real;var mm:string;var mom:string);
var
    promedio:real;
    nombre:string;
    cant:integer;
begin
    promedio:=0;
    nombre:=('');
    cant:=0;
    leerauto(a);
    nombre:=a.marca;
        while (a.marca=nombre) and (a.marca<>'zzz') do begin 
            if(a.marca=nombre) then  begin
                cant:=cant + 1;
                promedio:=promedio + a.precio;;
                am(a,pm,mm,mom);
            end;    
            leerauto(a);
        end;
        promedio:=promedio/cant;
        writeLn('el promedio de la marca  ',  nombre ,'ha sido  ', promedio:2:2);
    end;
var
    a:auto;
    mm,mom:string;
    pm:real;
begin
    pm:=0;
    mm:=('');
    mom:=('');
    leerauto(a);
    while (a.marca<>'zzz') do begin
        procesarRegistro(a,pm,mm,mom);
    end;
    writeLn('el auto mas caro tiene un costo de:' ,  pm:2:2  , ' de la marca',  mm ,'modelo',  mom);
end.    