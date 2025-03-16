program nicobobo;
type
  rango= 1..5;
  sesion = record
    titulo:string;
    artista:string;
    genero:rango;
    vis:integer;
  end;
  lista=^nodo;
  nodo=record
    dato:sesion;
    sig:lista;
  end;  
  vector=array[rango]of integer;
procedure crear(var l:lista);
begin
  l:=nil;
end;  
procedure leersesion(var s:sesion); 
begin 
  writeln('ingresar datos');
  readln(s.titulo);
  writeln('a');
  readln(s.artista);
  writeln('g');
  readln(s.genero);
  writeln('v');
  readln(s.vis);  
end;
procedure iv(var v:vector);
var
  i:integer;
begin
  for i:= 1 to 5 do begin
    v[i]:=0;
  end;
end;
procedure insertarordenado(var l:lista;s:sesion);
var
  nuevo,ant,act:lista;
begin
  new(nuevo);
  nuevo^.dato:=s;
  ant:=l;
  act:=l;
  while(act<>nil) and (s.titulo<act^.dato.titulo) do begin
    ant:=act;
    act:=act^.sig;
    end;
  if(act=ant) then begin
    l:=nuevo;
  end  
  else begin
    ant^.sig:=nuevo;
  end;
end;  
procedure cargarlista(var l:lista);
var
  s:sesion;
begin
  repeat
    leersesion(s);
    insertarordenado(l,s);
  until (s.artista='pp');
end;
function pi(v:integer):boolean;
var
  aux,par,impar:integer;
begin
  par:=0;
  impar:=0;
  while(v<>0) do begin
    aux:=v mod 10;
    if(aux mod 2=0)then begin
      par:=par+1;
    end
    else impar:=impar+1;
    v:= v div 10;
  end;
  pi:=(par=impar);
end;  
function cumple(g:rango;v:integer):boolean;
begin
  cumple:=((g=2)and pi(v));
end;
procedure maximo(v:vector;var codmax1,codmax2:rango);
var
  max1,max2,i:integer;
begin
  max1:=-9999;
  max2:=-9999;
  for i:=1 to 5 do begin
    if(v[i]>max1) then begin
      max2:=max1;
      max1:=v[i];
      codmax2:=codmax1;
      codmax1:=i;
     end
    else if(v[i]>max2) then begin
      max2:=v[i];
      codmax2:=i;
    end; 
    end;
  end;      
procedure procesarlista(l:lista;var codmax1,codmax2:rango;var v:vector);
var
  cant:integer;
begin
  cant:=0;
  while(l<>nil) do begin
    if(cumple(l^.dato.genero,l^.dato.vis))then begin;
      cant:=cant+1;
    end;  
    v[l^.dato.genero]:=v[l^.dato.genero]+l^.dato.vis;
    l:=l^.sig;
  end;
  maximo(v,codmax1,codmax2);
  writeln('cumplieron ',cant);
end; 
procedure recorrerlista(var l:lista;t:string);
var
  ant,act:lista;
begin
  ant:=l;
  act:=l;
  while(act<>nil) and (act^.dato.titulo<t) do begin
    ant:=act;
    act:=act^.sig;
    end;
  if (act<>nil) and (act^.dato.titulo<t) then begin
    if(act=l)then begin
      l:=l^.sig;
    end  
    else
      ant^.sig:=act^.sig;
    dispose(act);  
    end;
end;    
procedure limpiado(l:lista);
begin
  while(l<>nil)do begin
    writeln(l^.dato.genero);
    writeln(l^.dato.artista);
    writeln(l^.dato.titulo);
    writeln(l^.dato.vis);
    l:=l^.sig;
  end;  
end;
var 
  l:lista;codmax1,codmax2:rango;  
  v:vector;
  t:string;
begin
  codmax1:=1;
  codmax2:=1;
  crear(l);
  iv(v);
  cargarlista(l);
  procesarlista(l,codmax1,codmax2,v);
  writeln(codmax1,'    ',codmax2);
  writeln('read t');
  read(t);
  recorrerlista(l,t);
  limpiado(l);
end.  