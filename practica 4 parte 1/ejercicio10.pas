program eje10;
const 
    dimF=20;
type
    vector=array[1..dimF]of real;
procedure cargarvector(var v:vector;var dimL:integer);
var
    i:integer;
    salario:real;
begin
    i:=1;
    Write('Ingrese salario:');
    readln(salario);
    while(salario<>0) and (i<dimF) do begin
        v[i]:=salario;
        dimL:= i;
        Write('Ingrese siguiente salrio:');
        readln(salario);
        i:=i+1;
    end;
end; 
procedure incrementar(var v:vector;dimL:integer);
var
    i:integer;
begin
    for i:=1 to dimL do begin
        writeln('El salario es de ',v[i]:2:2);
        v[i]:=v[i]*1.15;
        writeln('El salario incrementado ahora es de ',v[i]:2:2);
    end;
end;    
procedure promedio(v:vector;dimL:integer);
var
    i:integer;
    promedio:real;
begin
    promedio:=0;
    for i:=1 to dimL do begin
        promedio:=promedio+v[i];
    end; 
    writeln('El promedio es de salarios es de ',promedio:2:2);   
end;
var
    v:vector;
    dimL:integer;
begin        
    dimL:=1;
    cargarvector(v,dimL);
    promedio(v,dimL);
    writeln('---------');
    incrementar(v,dimL);
    promedio(v,dimL);
end.    