program ejercicio5;
procedure doble(numA:integer;numB:integer;var dobleB:boolean);
    begin
      dobleB:=(numB=(numA*2));
    end;
var 
    num1,num2,pares,paresB:integer;
    2B:boolean;
begin
    pares:=0;
    paresB:=0;
    readln(num1);
    readln(num2);    
    while ((num1 <> 0) and (num <> 0)) do begin;
        pares:=pares+1;
        doble(num1,num2,2B);
        if (2B) then;
            paresB:=paresB+1;
    end;
    writeln(pares);
    writeLn(paresB)
end                