program ejercicio3;
type    
    promedio= 1..10;
var 
    nombre:string;
    alu8,alu:promedio;
    nota:promedio;
begin
    alu:= 1;
    alu8:= 1;
    repeat
        write('escriba el nombre de alumno: ');
        readln(nombre);
        write('ingrese nota: ');
        readln(nota);
        if (nota>=8) then begin;
            alu8:= alu8+1;
        end;
        if (nota=7) then begin;
            alu:= alu+1;
        end;           
    until (nombre = ('Zidane Zinedine'));   
    writeln('los alumnos con 8 o mas fueron: ', alu8);
    writeln('los alumnos con nota 7 fueron: ' , alu);
end.    
