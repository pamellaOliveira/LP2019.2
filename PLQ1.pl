amava('carlos', 'dora').
amava('dora', 'lia').
amava('lia', 'lea').
amava('lea', 'paulo').
amava('paulo', 'juca').
amava('juca', 'dora').
amava('dora', 'carlos').
amava('carlos', 'dora').
amava('dora', 'rita').
amava('rita', 'dito').
amava('dito', 'rita').
amava('rita', 'carlos').
amava('dora', 'pedro').
amava('pedro', 'filhadepedro').
amava('filhadepedro', 'carlos').
amava('dora', 'carlos').
amava('dira', 'lea').
amava('dora', 'paulo').
amava('dora', 'juca').
amava('dora', 'dito').
amava('dora', 'filhadepedro').

rivais(X,Y) :-
    amava(X,Z),
    amava(Y,Z),
    X\=Y.

casal(X,Y) :-
    amava(X,Y),
    amava(Y,X),
    X @< Y.


% amava('carlos', X)
% b) rivais(X,Y)
% c) casal(X,Y)