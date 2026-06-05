union([], L1, L1).
union([X|R1], L1, [X | R2]):-union(R1, L1, R2).

eliminarOcurrencia([],_,[]).
eliminarOcurrencia([X|R1],E,[X|R2]):- E =\= X,eliminarOcurrencia(R1,E,R2).
eliminarOcurrencia([X|R1],E,R2):- X =:= E, eliminarOcurrencia(R1,E,R2).

inversion([],[]).
inversion([X|R1],R2):-inversion(R1,[X|R2]).

correrIzqAux([],X,[X|[]]).
correrIzqAux([X2|R1],X,[X2|R2]):-correrIzqAux(R1,X,R2).
correrIzq([X|R1],R2):-correrAux(R1,X,R2).

correrDerAux([X|[]],[],X).
correrDerAux([X|R1],[X|R2],X2):-correrDerAux(R1,R2,X2).
correrDer([],[]).
correrDer([X|R1],[X2|R2]):-correrDerAux([X|R1],R2,X2).