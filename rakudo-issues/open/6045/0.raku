sub foo(|) { }
my $a = 666;
foo :$a(42);  # No such method 'CALL-ME' for invocant of type 'Pair'
