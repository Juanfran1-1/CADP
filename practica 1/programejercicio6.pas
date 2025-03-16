program ejercicio6;
var 
    prom:real;
    qal,qalp,ald,legajo:integer;
begin
    qal:= 0 ;
    qalp:= 0;
    ald:= 0 ;
    repeat
        read(legajo);
        if (legajo <> -1) then
            begin   
                read(prom);
                qal:=qal +1;
            end;
            if (prom= 6) then
            begin
                qalp:= qalp+1;
            end;
            if (prom>8) and (legajo <2500) then 
                ald:= ald+1 ;
    until (legajo= -1);           
        writeLn(ald*100/qal);
        writeLn(qalp);
        writeLn(qal);
        writeln(ald);
end.    

   