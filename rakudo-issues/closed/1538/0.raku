sub foo($z) {
    my $x = ‘HERE: ’;
    $x ~= $_ for (« foo {$z} », 99);
    say $x;
}

foo 111;
foo 222;
foo 333;
foo 444;
