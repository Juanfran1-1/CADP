program eje6;
type
    codigo=1..200;
var 
    cm,cm1,numero:codigo;
    preciomin,precio:real;
    i,par:integer;
begin
    preciomin:=9999;
    cm:=1;
    cm1:=1;
    par:=0;
    for i:= 1 to 5 do
        begin   
            write('ingrese el codigo del producto: ');
            read(numero);
            write('ingrese el percio del producto;  ');
            read(precio);
            if (precio<=preciomin) then begin;
                cm1:=(cm);
                cm:=(numero);
                end;
            if (precio > 16) and (numero mod 2=0) then 
                par:=par + 1;
        end;                    
    writeln('el codigo del producto mas barato es: ',cm);
    writeln('el codigo del producto segundo mas barato es: ',cm1);
    writeln('la cantidad de productos que su codigo es par es de: ',par);
end.    
        
