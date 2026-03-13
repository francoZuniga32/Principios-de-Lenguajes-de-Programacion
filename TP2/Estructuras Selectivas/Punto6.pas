program Punto6;
  var nota: integer;

begin
  writeln('Ingrese la nota del alumno;');
  readln(nota);

  {
    los operadores no siguien un orden de izq -> der
    cuando tenemos operadores como var > 10 and 4 < 5 
    da un error sobre tipos.
    consultar a los profesores como funciona esto.
  }

  if nota = 10 then
    writeln('Excelente')
  else 
  if (nota >= 7) and (nota <= 10) then
    writeln('Muy bien')
  else
    if (nota >= 4) and (nota < 7) then
      writeln('Bien')
    else 
      if (nota >= 0) and (nota < 4) then
        writeln('Desaprobado')
      else
        writeln('Nota invalida')

end.