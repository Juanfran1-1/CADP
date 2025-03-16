program juego;
Uses crt;

var 
    xPlayer,yPlayer,horizontalIndex, verticalIndex:integer;
var tecla:Char;   
begin
    xPlayer := 4;
    yPlayer := 4;
    while true do
    begin 
    for horizontalIndex:= 1 to 14 do 
        begin
            for verticalIndex:= 1 to 14 do 
                begin
                    if(horizontalIndex = xPlayer) And (verticalIndex = yPlayer) then 
                        write('O')
                    else 
                        write('*');
                    write(' ')
                end;
            writeLn('')
        end;
        writeLn('presione tecla');   
        ReadLn(tecla);
        if tecla= 'w' then
            xPlayer:= xPlayer-1;
        if tecla= 's' then
            xPlayer:= xPlayer+1;
        if tecla= 'a' then
            yPlayer:= yPlayer-1;
        if tecla= 'd' then
            yPlayer:= yPlayer+1;    
        writeLn(tecla);   
        ClrdScr; 
    end;
end.