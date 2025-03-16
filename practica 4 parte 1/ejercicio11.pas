program ejercicio11;
const 
    dimF=2;
type
    publicacion=record
        titulo:string;
        autor:string;
        likes:integer;
        comentarios:integer;
        clicks:integer;
    end;
    vector = array[1..dimF]of publicacion;
procedure cargarvector(var v:vector);
var
    i:integer;
    begin
        writeln('A continuacion ingrese datos de la primera publicacion ');
        for i:= 1 to dimF do begin
            write('Ingrese titulo de la publicacion: ');
            readln(v[i].titulo);
            write('Ingrese autor de la publicacion: ');
            readln(v[i].autor);
            write('Ingrese cantidad de likes de la publicacion: ');
            readln(v[i].likes);
            write('Ingrese cantidad de comentarios de la publicacion: ');
            readln(v[i].comentarios);
            write('Ingrese cantidad de clicks a la publicacion: ');
            readln(v[i].clicks);
            writeln('Los datos han sido agregados con exito.');
            writeln('---------------------------------------------------------');
            writeln('Ingrese datos de la siguiente publicacion a continuacion.');
         end;
    end;
procedure maximo(tfa:string;cfa:integer;var tfm:string;var cfm:integer);
begin
    if(cfa>cfm) then begin
    tfm:=tfa;
    cfm:=cfa;
    end;
end;                
procedure procesarvector(v:vector;var tfm:string;var cv:integer);
var     
    i,cfm:integer;
begin
    cfm:=0;
    for i:= 1 to dimF do begin
        maximo(v[i].titulo,v[i].clicks,tfm,cfm);
        if(v[i].autor='nicote') then begin
            cv:=cv+1;
        end;
        writeln('La publicacion de ',v[i].autor,' llamada ',v[i].titulo,' ha recibido ',v[i].likes,' likes.'); 
    end;
end;
var
    v:vector;
    tfm:string;
    cv:integer;
begin
    cv:=0;
    cargarvector(v);
    procesarvector(v,tfm,cv);
    writeln('La publicacion que mas likes tuvo fue ',tfm);
    writeln('Nicote ha tenido un total de: ',cv,' publicaciones.');
end.   
