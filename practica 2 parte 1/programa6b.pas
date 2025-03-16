program eje6b;
function numeros:integer;
    var 
        num,par:integer; 
    begin 
        par:=0;
        repeat
            read(num);
            if (num mod 2 = 0) then 
                begin
                if (num > par) then 
                    begin 
                        par:=num;
                    end;    
                end;
        until (num < 0);
        write('el numero par maximo es',par);
        numeros:=par;
    end;
begin
    numeros;      
end.    