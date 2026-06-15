union([], L1, L1).
union([X|R1], L1, [X | R2]):-union(R1, L1, R2).

eliminarOcurrencia([],_,[]).
eliminarOcurrencia([X|R1],E,[X|R2]):- E =\= X,eliminarOcurrencia(R1,E,R2).
eliminarOcurrencia([X|R1],E,R2):- X =:= E, eliminarOcurrencia(R1,E,R2).

% invertir una lista %
invertirAux([],R,R).
invertirAux([X|L1],R1,R):- invertirAux(L1,[X|R1],R). 

invertir([X|L1], R):- invertirAux(L1,[X|[]],R).

correrIzqAux([],X,[X|[]]).
correrIzqAux([X2|R1],X,[X2|R2]):-correrIzqAux(R1,X,R2).
correrIzq([X|R1],R2):-correrAux(R1,X,R2).

correrDerAux([X|[]],[],X).
correrDerAux([X|R1],[X|R2],X2):-correrDerAux(R1,R2,X2).
correrDer([],[]).
correrDer([X|R1],[X2|R2]):-correrDerAux([X|R1],R2,X2).

%parcial 2025 fabris%
suma_cuadrado([],0).
suma_cuadrado([X|L1], R2):-
   	suma_cuadrado(L1, R),
    S is X * X,
    R2 is S + R.

%parcial 2025 carus%
buscar_elemento([X1|_],[X2|_],X3,X2):- X1 == X3.
buscar_elemento([X1|L1],[_|L2],X3,R):- X1 \== X3, buscar_elemento(L1,L2,X3,R).

asociado(_,_,[],[],0).
asociado(L1,L2,[X3|L3],[R|Cod],S):- 
    buscar_elemento(L1,L2,X3,R), 
    asociado(L1,L2,L3,Cod,S2),
    S is R + S2.

    
