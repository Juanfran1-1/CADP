program JugamosConListas;
type
  lista = ^nodo;
  nodo = record
    num : integer;
    sig : lista;
  end;
procedure armarNodo(var L: lista; v: integer);
var
aux : lista;
begin
new(aux);
aux^.num := v;
aux^.sig := L;
L := aux;
end;
procedure leerLista(l:lista);
  begin
    while(l<>nil) do begin;
    writeLn(l^.num);
    l:=l^.sig;
    end; 
  end;  
procedure modificar(var l:lista;v:integer);
var
  aux:lista;
  begin
    aux:=l;
    while(l<>nil) do begin;
      l^.num:=l^.num + v;
      l:=l^.sig;
    end;  
    l:=aux;
  end;  
var   
  valor:integer;
  pri:lista;    
begin 
  pri:=nil;
  read(valor);
  while(valor<>0)do begin;  
    armarNodo(pri,valor);
    writeLn('otro valor');
    read(valor);
  end;
  writeLn('la lista contiene los valores:');
  leerLista(pri);
  writeln('ingresar valor a sumar:');
  read(valor);
  modificar(pri,valor);
  leerLista(pri);

end.  