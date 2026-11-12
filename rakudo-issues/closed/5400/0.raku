my $t = True;
while $t {
    FIRST { $t = False };
    say 1;
}
