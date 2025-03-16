program perrosxxx; //programa perros modificado con procesos registros y arreglos
const
  dimf=10;
type
  perro=record
    nombre:string[12];
    raza:string[12];
    edad:integer; 
  end;
  vector = array[1..dimf] of perro;
procedure leerperro(var p:perro);
  begin
  writeln('Ingrese en nombre del perro:  ');readLn(p.nombre);
  writeln('Ingrese la raza del perro:  ');readLn(p.raza);
  writeln('Ingrese la edad del perro:  ');readLn(p.edad);
  end;  
procedure cargarvector(var v:vector;var dimL:integer);
  var
    i:integer;
    p:perro;
  begin
    i:=0;
    leerperro(p);
    while (dimL <= dimf) and (p.raza <> ('xxx')) do begin;
      i:=i+1;
      dimL:=dimL + 1;
      v[i]:=p;
      leerperro(p);
    break  
    end;
  end;

procedure procesarperros(v:vector;dimL:integer;var a2:integer;var bob:integer);
  var
  i:integer;
  begin
    for i:=1 to dimL do begin;                                                                          
      while(v[i].raza <> ('xxx')) do begin;
        if (v[i].nombre = ('bob')) then begin
          bob:=bob+1;
        end;
        if (v[i].edad >=2) then begin
          a2:=a2 + 1;
        end; 
      break  
      end;
    end; 
  end;
var 
  v: vector;
  dimL:integer;
  bob,a2:integer;
begin
   dimL:=0;
   a2:=0;
   bob:=0; 
   cargarvector(v,dimL);
   procesarperros(v,dimL,a2,bob);
   writeln('Hay una cantidad de  ',bob,'  perros llamados bob ');
   writeLn('Hay una cantidad de  ',a2,'  perros con mas de 2 años');

end. 