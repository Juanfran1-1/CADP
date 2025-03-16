program Ejercicio4;
var
    num, numMin, numMin2: integer;
    i: integer;
begin
    numMin:= 9999;
    numMin2:= 9999;
    for i:= 1 to 5 do 
    begin
        write('Ingrese un numero: ');
        read(num);
            if (numMin >= num) then
            begin
                numMin2:= numMin; 
                numMin:= num; 
            end
            else if (numMin>numMin2) then;
                numMin2:= num;
    end;
    writeln('El primer numero minimo es: ',numMin);
    write('El segundo numero minimo es: ',numMin2);
end.  
{4a: cambiar el  for por un until y repeat , poner como condicion que el programa termine cuando numero sea=0} 
{4b:program eje4;
var 
    numin1,numin,num,:integer;
begin
    numin1:= 9999;
    numin:= 9999;
    repeat 
        write('ingrese un numero a continuacion: ');
        read(num);;
        if (num<numin) then begin;
            numin:= (num);
            end;
        if (num>=numin) and (numin1>numin) then begin;
            numin1:= (num);
            end;
    until (num=0);
        writeLn('el numero mas bajo ingresado ha sido: ', numin);
        writeLn('el seguno numero mas bajo ingresado ha sido: ', numin1);
end. }


            