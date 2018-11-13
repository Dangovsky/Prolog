DOMAINS
   day, year = real.
   first_name, second_name, month, hobby = symbol.
PREDICATES
   nondeterm birth(second_name, first_name, day, month, year)
   nondeterm like(second_name, first_name, hobby)
CLAUSES
   birth(ivanova, lena, 22, june, 1971).
   birth(petrov, sergrei, 25, october, 1973).
   birth(sidorova, olya, 1, december, 1974).
   like(ivanova, lena, books).
   like(ivanova, lena, dancing).
   like(petrov, sergrei, video).   
   like(sidorova, olya, cinema).
GOAL
   %birth(Second_name, First_name, _, _, 1971).
   %birth(Second_name, First_name, _, october, _).
   %like(Second_name, First_name, books).
   like(Second_name, First_name, books) , like(Second_name, First_name, dancing).