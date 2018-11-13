PREDICATES
   check(real, real, real)
CLAUSES
   check(F, S, T) :- F + S > T , F + T > S , T + S > F.
GOAL
   write("first = "), readreal(F),
   write("second = "), readreal(S),
   write("third = "), readreal(T),
   check(F, S, T).