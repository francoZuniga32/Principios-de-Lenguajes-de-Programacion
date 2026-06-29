%La Tenes Adentro Erick%

%rotar n elementos%
fragmentar([],_,_,[],[]).
fragmentar(L1, N, N,[],L1). 
fragmentar([X|L1],I, N, [X|R], R2) :- I @< N, I2 is I + 1, fragmentar(L1, I2, N, R, R2). 

unir(L1,[],L1).
unir(L1, [X|L2], [X|R]) :- unir(L1, L2, R).

rotar(L1,N,R) :- fragmentar(L1,0,N,R1,R2), unir(R1,R2,R).


%filtrar umbral%

mayores([],_,[],0).
mayores([X1|L1], U,[X1|R], C2) :- X1 @>= U,mayores(L1, U, R, C), C2 is C + 1.
mayores([_|L1], U, R, C) :- mayores(L1, U, R, C).
