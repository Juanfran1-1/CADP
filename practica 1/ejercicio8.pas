program ejercicio8;
var
   c1,c2,c3:char;
   c,n:integer;
begin
    c:=0;
    n:=0;
    writeln('ingrese primer caracter');
    read(c1);
    writeln('ingrese segundo caracter');
    read(c2);
    writeln('ingrese tercer caracter');
    read(c3);
    while (c<>3) do
        begin
        if ((c1<>'a') or (c1<>'b') or (c1<>'c') or (c1<>'d') or (c1<>'e')) then
            n:= n+1; 
            c:=c+1; 
        if ((c2<>'a') or (c2<>'b') or (c2<>'c') or (c2<>'d') or (c2<>'e')) then
            n:=n+1; 
            c:=c+1;    
        if ((c3<>'a') or (c3<>'b') or (c3<>'c') or (c3<>'d') or (c3<>'e')) then
            n:=n+1;
            c:=c+1; 
        end;    
end.              


