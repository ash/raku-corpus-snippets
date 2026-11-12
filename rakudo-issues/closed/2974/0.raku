sub foobar() { say "foobar" }

my $x = "bar";
my &foo = ::("&foo$x");
foo();
