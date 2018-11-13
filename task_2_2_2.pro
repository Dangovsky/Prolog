PREDICATES
   nondeterm check(real, real, real)
CLAUSES
   check(F, S, T) :- F*F + S*S = T*T ;  F*F + T*T = S*S ;  T*T + S*S = F*F.
GOAL
   write("first = "), readreal(F),
   write("second = "), readreal(S),
   write("third = "), readreal(T),
   check(F, S, T).