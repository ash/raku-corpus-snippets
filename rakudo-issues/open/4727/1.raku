proto f(Str, |) {*}
multi f($a)     { dd $a }
my $b = 42;
f $b; # OUTPUT: «42»
