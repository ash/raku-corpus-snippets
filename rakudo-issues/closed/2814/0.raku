<a b c d e f>.classify( * eq 'a'|'c'|'f' ).say; #2813  OUTPUT: «{False => [a b b b c c d d d e e e f f], True => [a c f]}␤» 
(1..5).classify( * == 1|3|5 ).say; # OUTPUT: «{False => [1 2 2 2 3 3 4 4 4 5 5], True => [1 3 5]}␤»  
