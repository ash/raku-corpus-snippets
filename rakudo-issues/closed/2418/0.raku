role Iface {
    method x {...}
    method y {...}
}

role R does Iface {
    method x {42};
    has $.y;
}

my $a does R;
