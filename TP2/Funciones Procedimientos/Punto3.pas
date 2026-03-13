program Punto3;
  var a, b , are, per: integer;


function Perimetro(a, b: integer; var per: integer): integer;
begin
  Perimetro := 2 * (a + b);
end;

procedure Area(a, b: integer; var are: integer);
begin
  are := a * b;
end;

begin
  writeln('Ingrese un numero: ');
  readln(a);
  writeln('Ingrese otro numero:');
  readln(b);
  writeln('Area:');
  Area(a, b, are);
  writeln(are);
  writeln('Perimetro:');
  per := Perimetro(a, b, per);
  writeln(per);
  
end.
