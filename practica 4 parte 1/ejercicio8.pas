program ejercicio8;
const 
    alumnos=4;
    ano=2023;
type
    alumno = record
        nro:integer;
        dni:integer;
        nombre:string;
        apellido:string;
        nacimiento:integer;
    end;
    vector=array [1..alumnos] of alumno;
procedure leeralumno(var a:alumno);
begin
    write('   -ingrese nro de inscripcion: ');
    readln(a.nro);
    write('   -ingrese dni del alumno: ');
    readln(a.dni);
    write('   -ingrese apellido del alumno: ');
    readln(a.apellido);
    write('   -ingrese el nombre del alumno: ');
    readln(a.nombre);
    write('   -ingrese ano de nacimiento del alumno: ');
    readln(a.nacimiento);
end;
function espar(d:integer):boolean;
var
    aux,par,impar:integer;
begin
    par:=0;
    impar:=0;
    repeat
        aux:= d mod 10;
        if (aux mod 2) = 0 then begin
            par:= par + 1 ;
        end else begin
            impar:= impar+1 ;
        end;
        d:=d div 10;
    until (aux=0);
    espar:= (impar=0);
end;
procedure m(a:alumno;var edad1,edad2:integer;var nombre1,nombre2,apellido1,apellido2:string);
begin   
    if((ano-(a.nacimiento))>edad1) then begin
        edad2:=edad1;
        edad1:=(ano-(a.nacimiento));
        nombre2:=nombre1;
        nombre1:=a.nombre;
        apellido2:=apellido1;
        apellido1:=a.apellido;
    end    
    else if((ano-(a.nacimiento))>edad2)then begin
        edad2:=(ano-(a.nacimiento));
        nombre2:=a.nombre;
        apellido2:=a.apellido;    
    end;
end;
procedure procesarvector(var v:vector;var e1,e2,cant:integer;var n1,n2,a1,a2:string;var par:boolean);
var
    i:integer;
begin
    writeln('ingrese los datos del alumno ' );
    for i := 1 to alumnos do begin
        leeralumno(v[i]);
        m(v[i],e1,e2,n1,n2,a1,a2); 
        if espar(v[i].dni) then begin
            cant:=cant+1; 
        end;            
    writeln('el alumno ha sido ingresado con exito');
    writeln('ingrese los datos del siguiente alumno: '); 
    end;
end;
var
    par:boolean;
    v:vector;
    c,e1,e2:integer;
    n1,n2,a1,a2:string;
    p:real;
begin
    c:=0;
    e1:=0;
    e2:=0;
    a1:=(' ');
    a2:=(' ');
    n1:=(' ');
    n2:=(' ');
    p:=0;
    procesarvector(v,e1,e2,c,n1,n2,a1,a2,par);
    p:=(c/alumnos)*100;
    writeln('el porcentaje de alumnos con dni par fue de: ',p:2:2);
    writeln('el alumno mas grande es: ',n1,' ',a1,' con ',e1,' anos');
    writeln('el segundo alumno mas grande es: ',n2,' ',a2,' con ',e2,' anos');
end.        