program eje8;
type
    rango=0..1000;
var 
    max,ventasmes,mayordia,montomes,ventasdia,montodia,i:integer;
    monto:rango;
begin
ventasmes:=0;
ventasdia:=0;
montomes:=0;
montodia:=0;
max:=-9999;
mayordia:=-9999;
for i:= 1 to 5 do begin
    writeln('Dia numero ', i);
    repeat begin
        write('escriba el monto del producto: ');
        read(monto);
        if monto<>0 then begin
            ventasdia:=ventasdia + 1;
            montodia:=montodia + monto;
            end;    
        end;
    until (monto = 0);
    if(ventasdia > max) then begin
    max:=ventasdia;
    mayordia:=i;
    end;    
    ventasmes:=(ventasmes + ventasdia);
    montomes:=(montomes + montodia);
    ventasdia:=0;
    montodia:=0;
end;        
    writeln('durante el mes se registraron: ', ventasmes, ' venta/s en total');
    writeLn('se recaudo un total de: ' ,montomes, ' en total');
    writeLn('el dia que mas ventas se realizaron fue el dia:  ',mayordia);
end.    