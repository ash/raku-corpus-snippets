sub foo($a, $b) {
    say "$a + $b = { $a + $b }";
}

sub bar(:$a, :$b) {
    say "$a + $b = { $a + $b }";
}

sub MAIN() {
    foo( 1, 2 );    # Works, says "1 + 2 = 3"
    foo( 1; 2 );    # Works, says "1 + 2 = 3"
    bar( :1a, :2b); # Works, says "1 + 2 = 3"
    bar( :1a; :2b); # Dies - "Unexpected named argument 'a' passed"
}
