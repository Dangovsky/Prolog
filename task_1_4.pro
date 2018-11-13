DOMAINS
   name, avoided = symbol
PREDICATES
   nondeterm avoid(name, name, avoided)
   nondeterm character(name).
CLAUSES
   character(kolobok).
   character(grandfather).
   character(grandmother).
   character(rabbit).
   character(wolf).
   character(bear).
   character(fox).
   
   avoid(kolobok, Character, Avoid) :- character(Character), not(Character = fox), Avoid = yes.
   avoid(kolobok, Character, Avoid) :- character(Character), Character = fox, Avoid = no.
GOAL
   avoid(Who_avoid_wolf, wolf, yes).
   %avoid(Who_not_avoid_fox, fox, no).
   %avoid(Who_avoid_wolf_and_grandfather, wolf, yes), avoid(Who_avoid_wolf_and_grandfather, grandmother, yes).
   %character(Character).