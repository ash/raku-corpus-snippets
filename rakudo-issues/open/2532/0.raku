use v6.c;

unit module My::Main;
our %*SUB-MAIN-OPTS is export = ( 'named-anywhere' => True);

multi sub MAIN() is export {
    say 1;
}

multi sub MAIN('a', :$pa) is export {
    say $pa;
}
