program eje14;
const 
    dimf=1000;
type
    myc=record
        monto: real;
        cantarq: integer;
    end;    
    codigo = array [1..1000] of myc;
    rangon= 0..9999;
    rangot= string[60];
    proyecto = record
        pais:rangot;
        cod:-1..1000;
        nombre:rangot;
        rol:1..5;
        horas:rangon;
        c:codigo;
    end;    
    vector=array[1..dimf]of proyecto;
function salario(rol,cant:integer):real;
    begin
        case rol of
            1: salario:= cant * 35.20;  
            2: salario:= cant * 27.45; 
            3: salario:= cant * 31.03; 
            4: salario:= cant * 44.28;
            5: salario:= cant * 39.87; 
        end;
    end;      
procedure leerproyecto(var p:proyecto);
begin
    write('País de residencia del participante: '); readln(p.pais);
    write('Nombre del proyecto: '); readln(p.nombre);
    write('Rol del participante en el proyecto: '); readln(p.rol);
    write('Cantidad de horas trabajadas: '); readln(p.horas);
end;              
procedure leerVector(var v: vector; var dimL: integer);
    var
        i: integer;
    begin
        i:= 1; 
        write('Codigo del proyecto: '); readln(v[i].cod);
        while (v[i].cod <> -1) and (dimL <= dimF) do begin //Terminar si el código ingresado es -1 o la dimensión lógica es igual a la física
            leerProyecto(v[i]);
            i:= i + 1;
            write('Codigo del proyecto: '); readln(v[i].cod);
        end;
        dimL:= i-1;
    end;
procedure min(c: codigo; var montomin: real; var codmin: integer);
    var
        i: integer;
    begin
        montoMin:= 99999;
        codMin:= 0;
        for i:= 1 to 1000 do begin
            if (c[i].monto < montomin) then begin
                montomin:= c[i].monto;
                codmin:= i;
            end;
        end;
    end;   
procedure leerarq(c: codigo);
    var
        i: integer;
    begin
        for i:= 1 to 1000 do begin
            if(c[i].cantarq<>0)then begin
                writeln('El proyecto codigo ',i,' tiene ',c[i].cantarq,' arquitectos de software');
            end;
            
        end;
    end;   
procedure procesarVector(v: vector; dimL: integer; var horasadm, cmin: integer; var montoarg, pmin: real);
    var
        i: integer;
    begin
        for i:= 1 to dimL do begin //Recorrer todos los espacios llenos del vector
            if (v[i].pais = 'argentina') then begin //punto a
                montoarg:= montoarg + salario(v[i].rol, v[i].horas);
            end;
            if (v[i].rol = 3) then begin //punto b
                horasadm:= horasadm + v[i].horas;
            end;
            v[i].c[v[i].cod].monto:= v[i].c[v[i].cod].monto + salario(v[i].rol, v[i].horas); //Incrementar el monto por código del proyecto - punto c
            if (v[i].rol = 4) then begin //punto d
                v[i].c[v[i].cod].cantarq:= v[i].c[v[i].cod].cantarq + 1;
            end;
        end;
        min(v[i].c, pmin, cmin);
        leerarq(v[i].c);
    end;
var
    v: vector;
    dimL, montomin, horasadm: integer;
    pmin, montoarg: real;
begin
    montoarg:= 0;
    pmin:= 99999;
    montomin:= 0;
    horasadm:= 0;
    leerVector(v, dimL);
    writeln('-----------------------------------');
    procesarVector(v, dimL, horasadm, montomin, montoarg, pmin);
    writeln('El monto total invertido en desarrolladores con residencia en Argentina: $',montoarg:2:2);
    writeln('La cantidad total de horas trabajadas por Administradores de bases de datos: ',horasadm,'hs');
    writeln('El codigo del proyecto con menor monto invertido: ',montomin);
end.    