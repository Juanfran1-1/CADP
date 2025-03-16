program ejercicio6;
type
    productos=record
        tipo:string;
        precio:real;
        codigo:integer;
    end;    
procedure producto(var p:productos);
    begin
        writeln('ingrese tipo del producto: ') ; readln(p.tipo);
        writeln('ingrese precio del producto: ') ; readln(p.precio);
        writeln('ingrese codigo del producto: '); readln(p.codigo);
    end;
procedure codigosyprecios(p:productos;var barat1:real;var barat2:real;var pantcaro:real;var codbarat:integer;var codbarat2:integer;var pantcod:integer);        
    begin
        if (p.precio < barat1) then 
            begin
                barat2:=barat1;
                codbarat2:=codbarat;
                barat1:=p.precio;
                codbarat:=p.codigo;
            end
        else if(p.precio < barat2) then
            begin
                barat2:=p.precio;
                codbarat2:=p.codigo;
            end;   
        if ( p.tipo = 'pantalon') then
            pantcaro:=p.precio;
            pantcod:=p.codigo;
    end;
var
    i,codb,codb2,codP:integer;
    promedio,precb1,precb2,precP:real;
    pp: productos;
begin   
    precb1:=1000000; precb2:=1000000;precP:=0;promedio:=0;
    codP:=0;codb:=0;codb2:=0;
    producto(pp);
    while (pp.tipo <>('zzz')) do begin;
        promedio:=promedio + pp.precio;
        codigosyprecios(pp,precb1,precb2,precP,codb,codb2,codP);
        producto(pp); 
    end;    
    promedio:=promedio/100;
    writeln('---------------------------------');
    writeln('los codigos mas baratos fueron 1: ',codb, ' 2: ',codb2);
    writeln('el promedio fue: ',promedio:2:2);
    writeln('el codigo del pantalon mas caro fue: ', codP );
end.    
{codigo real 
program ejercicio6;
procedure producto(var precio:real;var codigo:integer;var tipo:string);
    begin
        writeln('ingrese tipo del producto: ') ; readln(tipo);
        writeln('ingrese precio del producto: ') ; readln(precio);
        writeln('ingrese codigo del producto: '); readln(codigo);
    end;
procedure codigosyprecios(nuevotipo:string;nuevoprecio:real;nuevocod:integer;var barat1:real;var barat2:real;var pantcaro:real;var codbarat:integer;var codbarat2:integer;var pantcod:integer);
    begin
        if (nuevoprecio < barat1) then 
            begin
                barat2:=barat1;
                codbarat2:=codbarat;
                barat1:=nuevoprecio;
                codbarat:=nuevocod
            end
        else if(nuevoprecio < barat2) then
            begin
                barat2:=nuevoprecio;
                codbarat2:=nuevocod;
            end;
        if ( nuevotipo = 'pantalon') then
            pantcaro:=nuevoprecio;
            pantcod:=nuevocod;
    end;
var
    i,cod,codb,codb2,codP:integer;
    promedio,prec,precb1,precb2,precP:real;
    t:string;
begin
    precb1:=1000000; precb2:=1000000;precP:=0;promedio:=0;
    codP:=0;codb:=0;codb2:=0;
    for i:= 1 to 100 do begin
        producto(prec,cod,t);
        promedio:=promedio + prec;
        codigosyprecios(t,prec,cod,precb1,precb2,precP,codb,codb2,codP);
    end;
    promedio:=promedio/100;
    writeln('---------------------------------');
    writeln('los codigos mas baratos fueron 1: ',codb, ' 2: ',codb2);
    writeln('el promedio fue: ',promedio);
    writeln('el codigo del pantalon mas caro fue: ', codP );
end.}