program Punto5;
  var numero1, numero2: integer;
  function DivisiblePor(a: integer; b: integer): boolean;
  begin
    DivisiblePor := (a mod b) = 0;          
  end;

begin
  writeln('Ingrese el primer numero: ');
  readln(numero1);
  writeln('Ingrese el segundo numero: ');
  readln(numero2);
  
  if DivisiblePor(numero1, numero2) then
    writeln(numero1, ' es divisible por ', numero2)
  else
    writeln(numero1, ' no es divisible por ', numero2);
end.