DOMAINS
   symbol_list = symbol*.
PREDICATES
   nondeterm container(symbol)
   nondeterm liquid(symbol)
   nondeterm in(symbol, symbol)
   nondeterm not_in(symbol, symbol)
   len(symbol_list, integer)
CLAUSES
   container(bank).
   container(bottle).
   container(jug).   
   container(cup).
   liquid(compote).
   liquid(lemonade).   
   liquid(milk).
   liquid(water).
   not_in(bottle, water).
   not_in(bottle, milk).
   not_in(cup, milk).
   not_in(jug, lemonade).
   not_in(jug, compote).
   not_in(bank, lemonade).
   not_in(bank, water).
   not_in(bank, milk).

   len([],0). 
   len([_|T],N)  :-  len(T,X),  N  =  X+1.
   
   in(L,C) :- liquid(L), container(C),	
        findall(L1,in(C, L1),Z1), len(Z1,N1),
        findall(C1,in(C1, L),Z2), len(Z2,N2),
   	findall(C2,not_in(C2, L),Z4), len(Z4,N4),
   	N1+N2 <= 0, N4 >= 3, not(not_in(C, L)).
   	
   in(L,C) :- liquid(L), container(C),	
        findall(L1,in(C, L1),Z1), len(Z1,N1), 
        findall(C1,in(C1, L),Z2), len(Z2,N2),
   	findall(L2,not_in(C, L2),Z3), len(Z3,N3),
   	N1+N2 <= 0, N3 >= 3, not(not_in(C, L)).

   in(L,C) :- liquid(L), container(C),	
        findall(L1,in(C, L1),Z1), len(Z1,N1), 
        findall(C1,in(C1, L),Z2), len(Z2,N2),
   	findall(C2,not_in(C2, L),Z4), len(Z4,N4),
   	N1+N2 >= 2, N4 >= 2, not(not_in(C, L)).
   	
   in(L,C) :- liquid(L), container(C),	
        findall(L1,in(_, L1),Z1), len(Z1,N1), 
        findall(C1,in(C1,_),Z2), len(Z2,N2),
   	findall(L2,not_in(C, L2),Z3), len(Z3,N3),
   	N1+N2 >= 2, N3 >= 2, not(not_in(C, L)).


   %in(L, C) :- liquid(L), container(C), not(in(_, L)), not(in(C, _)), not(not_in(C, L)).
GOAL
   in(L, C).
