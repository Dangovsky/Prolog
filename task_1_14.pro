PREDICATES
   nondeterm human(symbol)
   nondeterm dog(symbol)
   nondeterm cat(symbol)
   nondeterm color(symbol, symbol)
   nondeterm have(symbol, symbol)
   nondeterm dont_have_human(symbol)
CLAUSES
   human(anatoly).
   human(nikolai).
   human(ivan).
   dog(rex).
   dog(drughok).   
   dog(mykhtar).
   cat(muska).    
   cat(strelka).
   cat(murka).
   color(rex, pyatnisti).
   color(drughok, orange).
   color(mykhtar, white).
   color(muska, brown).
   color(strelka, black).
   color(murka, orange).
   
   %anatoly
   have(Human, Animal) :- Human=anatoly, color(Animal, brown) ; color(Animal, black), Human=anatoly.
   %nikolai
   have(Human, Animal) :- cat(Animal), Human=nikolai, not(have(anatoly, Animal)), not(color(Animal, white)).   
   have(Human, Animal) :- dog(Animal), Human=nikolai, not(have(anatoly, Animal)), not(color(Animal, white)).
   %ivan
   have(Human, Animal) :- Human=ivan, Animal=muska, not(have(nikolai, Animal)), not(have(nikolai, mykhtar)), not(have(anatoly, mykhtar)).
   
   dont_have_human(Animal) :- cat(Animal), not(have(_,Animal)) ; dog(Animal), not(have(_,Animal)).
GOAL
   dont_have_human(Animal).
