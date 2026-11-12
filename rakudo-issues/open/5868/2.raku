role Bar {
    has $.get-value;
}
sub make-mixin {
    my $value := 42;
    return Foo.new but Bar($value);
}
