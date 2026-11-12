say :(Int, Int) ~~ :(Int, Int); # True
say :(::T, Int) ~~ :(::T, Int); # True
say :(::T, T)   ~~ :(::T, T);   # No such method 'ACCEPTS' for invocant of type 'T'
