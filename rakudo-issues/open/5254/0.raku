sub foo(@a) { say [@a.elems, +@a] };
foo(List); # [1 0]

my @b := List; 
say [@b.elems, +@b]; # [1 0]
