program punto7;
  var acumulado, numero: integer;
begin
  acumulado := 0;
  numero := 1;

  repeat
    writeln('Ingrese un numero (0 para finalizar): ');
    readln(numero);
    acumulado := acumulado + numero;
    writeln('El numero ingresado es: ', numero);
    writeln('El acumulado es: ', acumulado);
  until (numero = 0);

  
end.