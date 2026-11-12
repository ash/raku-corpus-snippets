class Foo { }
sub make-mixin {
    my $value := 42;
    return Foo.new but role :: {
        method get-value { $value }
    }
}
(^100_000).race.map: -> $i {
    die "Died at iteration $i" without make-mixin.get-value;
}
