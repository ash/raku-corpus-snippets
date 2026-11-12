class C {
    has $.a;
    method b is raw { $.a }
};

my $o = C.new;
$o.b = 42;
say $o.a;
