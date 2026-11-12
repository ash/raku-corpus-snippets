
sub bla((:$m)) {
    say "m -> $m"
}

bla class C {
    has $.m = 42;
    method m { 13 }
}.new
