program Punto8;
  var numero, i, j: integer;
begin
  numero := 1;
  i := 0;
  j := 0;
  writeln('Ingrese un numero: ');
  readln(numero);
  if (numero mod 2 ) = 0 then
    i := numero + 1  
  else
    i := numero + 2;

  for j := j to 15 do
  begin
    writeln(i);
    i := i + 2;
  end;

end.