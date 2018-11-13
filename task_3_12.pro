DOMAINS
   name, dress_color = symbol
PREDICATES 
   nondeterm girl(name)
   nondeterm color(dress_color)
   nondeterm find(name, dress_color)
CLAUSES
   girl(anny).
   girl(valya).
   girl(nadya).   
   girl(galya).
   color(green).
   color(blue).   
   color(white).
   color(pink).
   
   find(Name, Color) :- girl(Name), color(Color), Color = green, not(Name = anny), not(Name = valya), not(Name = galya).
   find(Name, Color) :- girl(Name), color(Color), Color = white, not(Color = pink), not(Name = valya), not(find(Name,green)),
                        not(Name = galya).
   find(Name, Color) :- girl(Name), color(Color), Name = galya, not(Color = blue), not(Color = green), not(find(anny,Color)), not(find(valya,Color)). 
   find(Name, Color) :- girl(Name), color(Color), Name = valya, not(Color = pink), not(Color = green), not(find(anny,Color)), not(find(galya,Color)).
GOAL
   find(Name, Color).