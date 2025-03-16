program ejercicio5;
procedure doble(numA,numB:integer; var dobleB: boolean);
    begin
      dobleB:= (numB = (numA * 2));
    end;
var 
    num1,num2,pares,paresB:integer;
    verif: boolean;
begin
    pares:=0;
    paresB:=0;
    readln(num1);
    readln(num2);  
    while (num1 <> 0) and (num2 <> 0) do begin
        pares:= pares+1;
        doble(num1,num2,verif);
        if (verif) then;
            paresB:=paresB+1;
        readln(num1);
        readln(num2);    
    end;
    if (num1 = 0) and(num2 = 0) then;
        pares:=pares+1;   
    writeln(pares);
    writeLn(paresB);
end.                