program Punto4;
  var numero: real;
  function Mayor(a: real):boolean;
  begin
    Mayor := a > 0;
  end;
  function Menor(a: real):boolean;
  begin
    Menor := a < 0;
  end;
begin
  writeln('Ingrese un numero: ');
  readln(numero);
  if Mayor(numero) then
    writeln('El numero es positivo')
  else if Menor(numero) then
    writeln('El numero es negativo')
  else
    writeln('El numero es cero  ');
end.