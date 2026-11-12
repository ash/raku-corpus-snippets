sub composer(*@elems) { my % = @elems }
BEGIN composer('warm', 1);

sub collect-three($i) {
    my @seen;
    for ^3 -> $j {
        @seen.push: composer('n', $i + $j);
    }
    @seen
}

for 1..5000 -> $i {
    my @seen = collect-three($i);
    unless @seen.map({ .WHERE }).unique.elems == 3 {
        say "ALIASED at iter $i: the same hash object was returned twice";
        exit 1;
    }
}
say "all ok";
