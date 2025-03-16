program ejercicio7;
var 
    codigo,p1,p2,n1: real ;
begin
    n1:= 0;
    WriteLn ('ingrese codigo' );
    read(codigo);
    while (codigo<>32767) do  
        begin   
            writeln('ingrese precio del producto');
            read(p1);
            writeln('ingrese nuevo precio');
            read(p2);
            
            n1:=((110/100) * p1);
            if (p2<=n1) then
                writeln ('el nuevo precio no supera en un 10% al precio inicial')
            else 
                writeln ('el precio nuevo supera en un 10% al precio inicial');    
        end;    
end.            



