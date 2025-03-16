program TESTEST;
Uses crt;
type 
    Nombre = String[50];
    Puntero = ^Nombre;
    ArrPunteros = array[1..2500] of Puntero;
procedure cargarVector(var v: ArrPunteros;var cuenta:integer);
    var
        i: longint;
    begin
        for i:=1 to 10 do begin
            new(v[i]); //Asignarle una dirección de memoria al puntero actual
            //write('Ingrese un nombre: >'); readln(v[i]^); //Almacenar un texto dentro de la dirección de memoria
            v[i]^:= 'A0F5';
            writeln(sizeof(v[i]^),' bytes'); //Siempre va a ocupar 51 bytes el String[50]
            cuenta:= cuenta + sizeof(v[i]^);
        end;
        writeln('Ahora mismo en la memoria dinámica se están usando ',cuenta,' bytes');
    end;
procedure desvincularDirecciones(var v: ArrPunteros;cuenta:integer);
    var
        i: longint;
    begin
        for i:=1 to 10 do begin
            dispose(v[i]);
            writeln('La dirección de memoria apuntada en el Puntero N°',i,' del Vector fue borrada.');
            writeln('MEMORIA DINÁMICA LIBERADA - ',sizeof(v[i]^),' bytes');
            cuenta:= cuenta + sizeof(v[i]^);
        end;
        writeln('Ahora mismo en la memoria dinámica se están usando 0 bytes');
    end;
var
    Punteros: ArrPunteros; //Una variable de tipo puntero ocupa una cantidad de memoria fija, independiente del tipo de dato al que apunta (4 bytes).
    Pausa: string;
    c:integer;
begin
    writeln(sizeof(Punteros),' bytes'); //Pesa 20.000 bytes (2500 * 8 (peso del Puntero sin inicializar o tener dirección asignada))
    cargarVector(Punteros,c);
    writeln('ingrese "si" si desea liberar memoria dinamica:');
    writeLn('----------------------------');
    writeLn('"ingrese "no" si quiere retener la memoria dinamica:"');
    writeLn('----------------------------');
    writeLn('"ingrese "0" para concluir:');
    writeLn('----------------------------');
    read(Pausa);
    if (pausa=('si')) then begin
       desvincularDirecciones(Punteros,c);
    end;
    if(pausa=('0')) then begin
       ClrScr; 
       write('"El programa ha finalizado"');
    end; 

end.