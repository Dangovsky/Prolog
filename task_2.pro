PREDICATES
   nondeterm pow(real, real, real)
CLAUSES
   pow(1,1,Pow) :- Pow<1 ; Pow>4, write("Error"), !.
   pow(N,Out, 2) :- Out = N * N.
   pow(N,Out, 3) :- Out = N * N * N.
GOAL
   write("N = "), readreal(N),
   write("pow = "), readreal(Pow), pow(N, Out, Pow).