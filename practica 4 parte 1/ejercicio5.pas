program eje5;
const
    numeros=9;
type
    vector=array[0..numeros] of integer;
procedure procesarnumero(var v:vector;n:integer);
begin
    repeat
        v[n mod 10]:=v[n mod 10] + 1;
        n:=n div 10;
    until (n=0);
end;        
procedure nouti(v:vector);
var
    i:integer;
begin
    for i:= 0 to numeros do begin
        if (v[i]=0) then begin
            write(i,' ');
        end; 
    end;
end;
procedure m(v:vector;var digmax:integer);
    var
        i,aux:integer;
    begin
        aux:=-1;
        for i:=0 to numeros do begin
            if (v[i]>aux) then begin
                aux:=v[i];
                digmax:=i;
        end;
        end;
    end;    
procedure cantidad(v:vector);
var
    i:integer;
begin
    for i:=0 to numeros do begin
        if(v[i]>0) then begin
            if (v[i]=1) then
                writeln(i, ' se ha utilizado: ',v[i],' vez')
            else    
                writeln(i,' se ha utilizado: ', v[i],' veces');
        end;
    end;        
end;
var
    v:vector;
    dg:integer;
    num:integer;
begin
    dg:=0;
    write('ingrese su primer numero: ');
    read(num);
    while ( num <> -1) do begin
        procesarnumero(v,num);
        write('ingrese otro numero:');
        read(num);
    end;
    writeln('los digitos no utilizados han sido:');
    nouti(v);
    m(v,dg);
    writeln('     ');   
    writeln('el numero mas utilizado fue: ', dg);
    cantidad(v);
end.        