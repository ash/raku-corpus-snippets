subset CAT of Code where {.arity == 2}; multi xz(CAT :$x!) {$x(3,5).say}; multi xz(CAT $x = * <=> *) { say $x(3,5); }; xz()
