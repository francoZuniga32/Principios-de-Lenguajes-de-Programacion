program Punto2;
  var a, b , d, e: integer;

function  Suma(a ,b:integer):integer;
begin
  Suma := a + b;
end;

function Resta(a, b:integer):integer;
begin
  Resta := a-b;
end;

procedure Prod(a, b:integer);
  var res : integer;
begin
  res := a * b;
  writeln(res);
end;

procedure Divi(a, b: integer);
  var res : integer;
begin
  res := a div b; 
  writeln(res);
end;

begin
  writeln('Ingrese un numero: ');
  readln(a);
  writeln('Ingrese otro numero:');
  readln(b);
  
  d := Suma(a, b);
  writeln(d);
  e := Resta(a, b);
  writeln(e);
  Prod(a, b);
  Divi(a, b);
  
end.
