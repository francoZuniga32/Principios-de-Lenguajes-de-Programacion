program Traza ;
    var x , y , z , p : integer ;
function promedio ( a : integer ; var b : integer ): integer ; 
begin 
    b := 4;
    promedio := ( a + b ) div 2;
end ;

begin 
    x := 10; 
    y := 5; 
    z := promedio (x , y ); { z = 7 } 
    writeln(z);
    writeln(y);
    x := z + y ; { x = 11 }
    writeln(x);
end.
